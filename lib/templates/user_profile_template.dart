import 'package:flutter/material.dart';
import '../organisms/user_card.dart';

class UserProfileTemplateBody extends StatelessWidget {
  final String name;
  final String email;
  final String avatarUrl;

  const UserProfileTemplateBody({
    super.key,
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: UserCard(
        name: name,
        email: email,
        avatarUrl: avatarUrl,
      ),
    );
  }
}
