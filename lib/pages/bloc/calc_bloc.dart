import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_handlers/bloc/bloc_claculator/calculator_bloc.dart';
import 'package:states_handlers/widgets/results_widget.dart';

import '../../widgets/calc_button.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  void sendNumber(String s, CalculatorBloc bloc) {
    bloc.add(AddNumberEvent(s));
  }

  void setOpration(String s, CalculatorBloc bloc) {
    bloc.add(AddOperation(s));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CalculatorBloc>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('CalculatorBloc')),
        body: SafeArea(
          child: Container(
            color: Colors.black12,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                const ResultsWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => bloc.add(ResetACEvent()),
                    ),
                    CalculatorButton(
                      text: '+/-',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => print('not implemented'),
                    ),
                    CalculatorButton(
                      text: 'del',
                      bgColor: const Color(0xffA5A5A5),
                      onPressed: () => bloc.add(DeleteFunction()),
                    ),
                    CalculatorButton(
                      text: '/',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => setOpration('/', bloc),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '7',
                      onPressed: () => sendNumber('7', bloc),
                    ),
                    CalculatorButton(
                      text: '8',
                      onPressed: () => sendNumber('8', bloc),
                    ),
                    CalculatorButton(
                      text: '9',
                      onPressed: () => sendNumber('9', bloc),
                    ),
                    CalculatorButton(
                      text: 'X',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => setOpration('X', bloc),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '4',
                      onPressed: () => sendNumber('4', bloc),
                    ),
                    CalculatorButton(
                      text: '5',
                      onPressed: () => sendNumber('5', bloc),
                    ),
                    CalculatorButton(
                      text: '6',
                      onPressed: () => sendNumber('6', bloc),
                    ),
                    CalculatorButton(
                      text: '-',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => setOpration('-', bloc),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '1',
                      onPressed: () => sendNumber('1', bloc),
                    ),
                    CalculatorButton(
                      text: '2',
                      onPressed: () => sendNumber('2', bloc),
                    ),
                    CalculatorButton(
                      text: '3',
                      onPressed: () => sendNumber('3', bloc),
                    ),
                    CalculatorButton(
                      text: '+',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => setOpration('+', bloc),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '0',
                      big: true,
                      onPressed: () => sendNumber('0', bloc),
                    ),
                    CalculatorButton(
                      text: '.',
                      onPressed: () => sendNumber('.', bloc),
                    ),
                    CalculatorButton(
                      text: '=',
                      bgColor: const Color(0xffF0A23B),
                      onPressed: () => bloc.add(CalculateResult()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
