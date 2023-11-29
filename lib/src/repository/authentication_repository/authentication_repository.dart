import 'package:authentication_app/src/features/authentication/screens/welcome/welcome.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:authentication_app/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
        firebaseUser.value != null
            ? Get.offAll(() => const Dashboard())
            : Get.offAll(() => const WelcomeScreen());
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar('Error', 'The provided phone number is not valid.');
        } else {
          Get.snackbar('Error', 'Error: ${e.message}');
        }
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        print('Time Out');
      },
    );
  }

  Future<bool> verifyOtp(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId.value, smsCode: otp));

    return credentials.user != null;
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE EXCEPTION: ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION: ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.offAll(() => const WelcomeScreen());
    } on FirebaseException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE EXCEPTION: ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION: ${ex.message}');
      throw ex;
    }
  }

  Future<void> logOut() async => await _auth.signOut();
}
