import 'package:bulsuconnect/theme/color.dart';
import 'package:bulsuconnect/utils/string.dart';
import 'package:flutter/material.dart';

class OnBoardingTile extends StatelessWidget {
  final int pageIndex;
  OnBoardingTile({super.key, required this.pageIndex});

  final List<Map<String, dynamic>> _boardDetail = [
    {
      'header1': 'BulSU',
      'header2': 'Connect',
      'caption': AppString.caption1,
      'alignment': TextAlign.left
    },
    {
      'header1': 'Social Media',
      'header2': 'Platform',
      'caption': AppString.caption2,
      'alignment': TextAlign.center
    },
    {
      'header1': 'Hunting',
      'header2': 'Job Application',
      'caption': AppString.caption3,
      'alignment': TextAlign.end
    },
  ];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    var data = _boardDetail[pageIndex];
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(data['header1'],
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: data['alignment']),
          Text(data['header2'],
              style: textTheme.titleLarge!.copyWith(
                  color: AppColor.primary, fontWeight: FontWeight.bold),
              textAlign: data['alignment']),
          const SizedBox(height: 12.0),
          Text(
            data['caption'],
            style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w300),
            textAlign: data['alignment'],
          ),
        ],
      ),
    );
  }
}
