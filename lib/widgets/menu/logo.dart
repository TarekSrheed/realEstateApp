import 'package:flutter/material.dart';

import '../../constans.dart';

class logo extends StatelessWidget {
  const logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        // margin: EdgeInsets.only(right: kDefaultPadding),
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            Spacer(),
            Text(
              'Real Estate',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'Modern home with great \n interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
