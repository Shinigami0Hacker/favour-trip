import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String author;
  final String content;
  final DateTime datePost;
  final String? avatarURL;

  const Comment({
    super.key,
    required this.author,
    required this.content,
    required this.datePost,
    this.avatarURL
    });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        avatarURL != null ? Image.network(avatarURL!) : Image.asset(""),
        Expanded(child: Row(
            children: [

            ],
        ))
      ],
    );
  }
}
