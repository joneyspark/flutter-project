import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor;

  ListTitleWidget(
      {required this.title,
      required this.subtitle,
      this.leadingIcon = Icons.label,
      this.trailingIcon = Icons.label,
      this.listTileColor,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(
            width: 1.0,
            color: Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        leading: IconButton(
          icon: Icon(leadingIcon),
          onPressed: () {},
          color: iconColor,
        ),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          onPressed: () {},
        ),
      ),
    );
  }
}
