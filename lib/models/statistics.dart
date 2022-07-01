import 'dart:math';

class SocialStatisticData {
  int fans;
  int followed;
  int posts;

  SocialStatisticData({
    required this.fans,
    required this.followed,
    required this.posts,
  });

  factory SocialStatisticData.demo({required int posts}) {
    var rng = Random.secure();
    return SocialStatisticData(
      fans: rng.nextInt(100),
      followed: rng.nextInt(100),
      posts: posts,
    );
  }
}
