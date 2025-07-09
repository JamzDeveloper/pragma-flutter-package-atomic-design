import 'package:design_system_package/design_system_package.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;
  final Color? color;

  const UserCard({
    super.key,
    required this.name,
    required this.email,
    required this.avatarUrl,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.white,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(avatarUrl)),
        title: CustomText(name),
        subtitle: CustomText(email),
        trailing: CustomIcon(icon: Icons.message),
      ),
    );
  }
}
