import 'package:authentication_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DashboardSearchBar extends StatelessWidget {
  const DashboardSearchBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashboardSearch,
            style: textTheme.displayMedium?.apply(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          const Icon(
            Icons.search,
            size: 25,
          ),
        ],
      ),
    );
  }
}
