class CalculatorModel {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorModel(
      {required this.mathResult, required this.firstNumber, required this.secondNumber, required this.operation});
  CalculatorModel copyWith({
    final String? mathResult,
    final String? firstNumber,
    final String? secondNumber,
    final String? operation,
  }) =>
      CalculatorModel(
          mathResult: mathResult ?? this.mathResult,
          firstNumber: firstNumber ?? this.firstNumber,
          secondNumber: secondNumber ?? this.secondNumber,
          operation: operation ?? this.operation);
}
