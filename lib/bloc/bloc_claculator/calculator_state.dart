part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState {
  final CalculatorModel? model;

  const CalculatorState({this.model});
}

class CalculatorInitialState extends CalculatorState {
  CalculatorInitialState()
      : super(model: CalculatorModel(firstNumber: "0", mathResult: "", operation: "", secondNumber: ""));
}

class CalculatorSetState extends CalculatorState {
  final CalculatorModel newUser;

  const CalculatorSetState(this.newUser) : super(model: newUser);
}
