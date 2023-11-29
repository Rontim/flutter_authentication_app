import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/features/core/models/dashboard/categories_model.dart';
import 'package:flutter/material.dart';

class DashboardCategory extends StatelessWidget {
  const DashboardCategory({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;

    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            height: 50,
            width: 170,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Center(
                    child: Text(list[index].title,
                        style:
                            textTheme.titleLarge?.apply(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
