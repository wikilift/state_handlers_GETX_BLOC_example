part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class AddNumberEvent extends CalculatorEvent {
  final String number;

  AddNumberEvent(this.number);
}

class AddOperation extends CalculatorEvent {
  final String operation;

  AddOperation(this.operation);
}

class CalculateResult extends CalculatorEvent {}

class DeleteFunction extends CalculatorEvent {}

class ResetACEvent extends CalculatorEvent {
  final CalculatorModel model = CalculatorModel(firstNumber: "0", mathResult: "", operation: "", secondNumber: "");
}
