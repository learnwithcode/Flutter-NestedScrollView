import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/post/dp.jpg',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Samantha Smith',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                '@imsamanthasmith',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '1.2m',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Liked',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '12.8k',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Followers',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '1.9k',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Following',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
