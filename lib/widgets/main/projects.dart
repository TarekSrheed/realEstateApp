import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          height: kDefaultPadding * 1.5,
          indent: 100,
          endIndent: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: kDefaultPadding),
          child: Text(
            'Our Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Responsive(
          desktop: buildGridView(
            demoProjects.length,
            3,
            0.75,
            (context, index) => ProjectsCard(
              project: demoProjects[index],
            ),
          ),
          mobile: buildGridView(
            demoProjects.length,
            1,
            0.75,
            (context, index) => ProjectsCard(
              project: demoProjects[index],
            ),
          ),
          tablet: buildGridView(
            demoProjects.length,
            MediaQuery.of(context).size.width < 900 ? 2 : 3,
            0.75,
            (context, index) => ProjectsCard(
              project: demoProjects[index],
            ),
          ),
          mobileLarge: buildGridView(
            demoProjects.length,
            2,
            0.75,
            (context, index) => ProjectsCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }

  GridView buildGridView(
    int itemCount,
    int crossAxisCount,
    double childAspectRatio,
    IndexedWidgetBuilder itemBuilder,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
