import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/image_strings.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tSecondaryColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Image(image: AssetImage(tBookMarkImage)),
                    ),
                    Flexible(
                      child: Image(image: AssetImage(tDashboardBannerImage)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  tDashboardBannerTitle1,
                  style: textTheme.titleLarge?.apply(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardBannerSubTitle,
                  style: textTheme.bodyMedium?.apply(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        Expanded(
          child: Column(
            children: [
              //Card
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tCardBgColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Image(image: AssetImage(tBookMarkImage))),
                        Flexible(
                            child: Image(
                                image: AssetImage(tDashboardBannerImage1))),
                      ],
                    ),
                    Text(tDashboardBannerTitle2,
                        style: textTheme.headlineMedium,
                        overflow: TextOverflow.ellipsis),
                    Text(tDashboardBannerSubTitle,
                        style: textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text(tDashboardButton)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
