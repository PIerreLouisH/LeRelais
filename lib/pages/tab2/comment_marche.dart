import 'package:flutter/material.dart';

class CommentMarche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment ça marche'),
        backgroundColor: Color(0xFF00A5AB),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 600.0,
              child: Image.asset(
                'assets/images/comment.jpg', // Replace with your image file
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
