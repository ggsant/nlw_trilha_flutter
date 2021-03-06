import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/core/shared/widgets/progress_indicator_widget.dart';

class QuizzCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double valuePercent;
  final VoidCallback onTap;

  const QuizzCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.valuePercent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(height: 10),
            Text(title),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(completed, style: AppTextStyles.body11),
                ),
                Expanded(
                  flex: 2,
                  child: ProgresIndicatorWidget(
                    value: valuePercent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
