import 'package:flutter/material.dart';

import '../components/ReusableCard.dart';
import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  static const routeName = '/results';

  // final String bmiResult;
  // final String resultText;
  // final String interpretation;
  //
  // ResultsPage({
  //   @required this.bmiResult,
  //   @required this.resultText,
  //   @required this.interpretation,
  // });

  @override
  Widget build(BuildContext context) {
    final ResultsPageArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.resultText,
                    style: resultTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    args.interpretation,
                    textAlign: TextAlign.center,
                    style: bmiBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RECALCULATE',
            onPress: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

class ResultsPageArguments {
  ResultsPageArguments({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
}
