import 'package:flutter/material.dart';
import 'package:demo20220701/models/statistics.dart';

import 'avatars.dart';
import 'statistics.dart';
import 'tags.dart';

class Profile extends StatelessWidget {
  final String bio;
  final SocialStatisticData socialStatisticData;
  const Profile({
    required this.bio,
    required this.socialStatisticData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 84,
                height: 84,
                child: const UserAvatar(dimension: 72),
              ),
              Statistics(
                statistic: socialStatisticData,
                width: MediaQuery.of(context).size.width - 144,
                height: 72,
              ),
            ],
          ),
          Wrap(
            spacing: 4,
            runSpacing: 4,
            children: List.generate(3, (i) => UserTag(text: 'Tag #${i + 1}')),
          ),
          const SizedBox(height: 4),
          Text(bio),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
