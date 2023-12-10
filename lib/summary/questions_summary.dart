import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer.dart';
import 'package:quiz_app/summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Answer> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.transparent,
              Colors.transparent,
              Colors.black
            ],
            stops: [
              0.0,
              0.1,
              0.9,
              1.0
            ], // 10% purple, 80% transparent, 10% purple
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: summaryData.map((data) {
              return SummaryItem(data);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
