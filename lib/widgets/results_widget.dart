import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_handlers/widgets/sub_result.dart';

import '../bloc/bloc_claculator/calculator_bloc.dart';
import 'line_separator.dart';
import 'main_result.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(children: [
          SubResult(text: state.model?.firstNumber ?? ""),
          SubResult(text: state.model?.operation ?? ""),
          SubResult(text: state.model?.secondNumber ?? ""),
          LineSeparator(),
          MainResultText(text: state.model?.mathResult ?? ""),
        ]);
      },
    );
  }
}
