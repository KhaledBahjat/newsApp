import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/health.avif',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Long title of the news goes here and it is very long title of the news goes here and it is very long',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Subtitle of the news goes here and it is very long subtitle of the news goes here and it is very long',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
