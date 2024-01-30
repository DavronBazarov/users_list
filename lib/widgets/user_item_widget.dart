import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  UserItem(
      {required this.phone, required this.imageUrl, required this.fullName});

  final String fullName;
  final String phone;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:  CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(fullName),
        subtitle: Text(phone),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            )),
      ),
    );
  }
}
