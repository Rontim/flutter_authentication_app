import 'package:authentication_app/src/constants/sizes.dart';
import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/widget/banner.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/widget/category.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/widget/appbar.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/widget/latest_addition.dart';
import 'package:authentication_app/src/features/core/screens/dashboard/widget/search.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* -- Dashboard Header -- */
              Text(tDashboardTitle, style: textTheme.bodyMedium),
              Text(tDashboardHeading, style: textTheme.displayMedium),

              /* -- Dashboard Search -- */
              const SizedBox(height: tDashboardPadding),
              DashboardSearchBar(textTheme: textTheme),

              /* -- Dashboard Categories -- */
              const SizedBox(height: tDashboardPadding),
              DashboardCategory(textTheme: textTheme),

              /* -- Dashboard Banner -- */
              const SizedBox(height: tDashboardPadding),
              DashboardBanner(textTheme: textTheme),

              /* -- Dashboard Latest Addition -- */
              const SizedBox(height: tDashboardPadding),
              Text(tDashboardLatest,
                  style: textTheme.headlineMedium?.apply(fontSizeFactor: 1.2)),
              DashboardLatest(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}
