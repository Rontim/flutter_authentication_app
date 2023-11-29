import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(
        'E. App',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(
            right: 20,
            top: 7,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(
                tUserProfileImage,
              ),
            ),
            onPressed: () {
              AuthenticationRepository.instance.logOut();
            },
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
