import 'package:flutter/material.dart';
import 'package:workly/constans.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactInfoTile(title: 'Address', text: 'Mogambo street 7'),
        ContactInfoTile(title: 'governorate', text: 'Aleppo'),
        ContactInfoTile(title: 'Email', text: 'info@mogambotek.com'),
        ContactInfoTile(title: 'Phone', text: '+90 555 123 4567'),
        ContactInfoTile(title: 'website', text: 'mogambotek@website.com'),
      ],
    );
  }
}

class ContactInfoTile extends StatelessWidget {
  final String title;
  final String text;

  const ContactInfoTile({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          Flexible(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
