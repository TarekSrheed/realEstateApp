import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobileLarge(context)
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: bulidIconInfo(
                      context,
                      '65+',
                      'Clients',
                      Icons.supervisor_account,
                    ),
                  ),
                  Expanded(
                    child: bulidIconInfo(
                      context,
                      '139+',
                      'Projects',
                      Icons.location_on,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: bulidIconInfo(
                      context,
                      '30+',
                      'Countries',
                      Icons.public,
                    ),
                  ),
                  Expanded(
                    child: bulidIconInfo(
                      context,
                      '13k+',
                      'Stars',
                      Icons.star,
                    ),
                  ),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bulidIconInfo(
                context,
                '65+',
                'Clients',
                Icons.supervisor_account,
              ),
              bulidIconInfo(
                context,
                '139+',
                'Projects',
                Icons.location_on,
              ),
              bulidIconInfo(
                context,
                '30+',
                'Countries',
                Icons.public,
              ),
              bulidIconInfo(context, '13k+', 'Stars', Icons.star),
            ],
          );
  }

  Column bulidIconInfo(
      BuildContext context, String num, String text, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 50),
        const SizedBox(
          height: 10,
        ),
        Text(
          num,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: kPrimaryColor,
                fontSize: 30,
              ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
