import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';
import 'package:real_estate_app/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        color: kSecondaryColor,
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(
                recommendation.name!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              subtitle: Text(
                recommendation.source!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              recommendation.text!,
              maxLines: 4,
              style: TextStyle(height: 1.5),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ));
  }
}
