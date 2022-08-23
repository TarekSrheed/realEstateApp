import 'package:flutter/material.dart';
import 'package:real_estate_app/constans.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildcontactinfo('Address', 'Station Street 5'),
        buildcontactinfo('City', 'innsbruck'),
        buildcontactinfo('Country', 'Austria'),
        buildcontactinfo('Email', 'email@website.com'),
        buildcontactinfo('Mobile', '+43 123 456 789'),
        buildcontactinfo('Website', 'my@website com'),
      ],
    );
  }
}

Widget buildcontactinfo(String title, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title:',
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          text,
        ),
      ],
    ),
  );
}
