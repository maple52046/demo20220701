import 'package:flutter/material.dart';
import 'package:demo20220701/models/statistics.dart';

const green = Color.fromRGBO(26, 188, 156, 1);

class Statistics extends StatelessWidget {
  final SocialStatisticData statistic;
  final double width;
  final double height;
  const Statistics({
    required this.statistic,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Statistic(label: '粉絲', count: statistic.fans),
              Statistic(label: '追蹤', count: statistic.followed),
              Padding(
                // align to mail button
                padding: const EdgeInsets.only(right: 2),
                child: Statistic(label: '貼文', count: statistic.posts),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: green,
                  ),
                  alignment: Alignment.center,
                  width: width - 60,
                  height: 22,
                  child: const Text(
                    '追蹤',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const InkWell(child: Icon(Icons.mail, color: green, size: 32)),
            ],
          ),
        ],
      ),
    );
  }
}

class Statistic extends StatelessWidget {
  final String label;
  final int count;
  const Statistic({
    required this.label,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
