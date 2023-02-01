import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:states_handlers/models/calculator_model.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorInitialState()) {
    on<CalculatorEvent>((event, emit) {
      if (event is ResetACEvent) {
        emit(CalculatorSetState(event.model));
      }
    });
    on<AddNumberEvent>((event, emit) {
      if (state.model?.mathResult == "" || state.model?.mathResult == null) {
        if (state.model?.operation == null || state.model?.operation == "") {
          emit(CalculatorSetState(state.model!.copyWith(
              firstNumber: (state.model!.firstNumber == '0')
                  ? '${state.model!.firstNumber.substring(1)}${event.number}'
                  : '${state.model!.firstNumber}${event.number}')));
        } else {
          emit(CalculatorSetState(state.model!.copyWith(
              secondNumber: (state.model!.secondNumber == '0')
                  ? '${state.model!.secondNumber.substring(1)}${event.number}'
                  : '${state.model!.secondNumber}${event.number}')));
        }
      }
    });
    on<AddOperation>((event, emit) {
      if (state.model?.operation == null || state.model?.operation == "") {
        emit(CalculatorSetState(state.model!.copyWith(operation: event.operation)));
      }
    });
    on<CalculateResult>((event, emit) {
      if (state.model?.firstNumber == '' || state.model?.firstNumber == null) {
        return;
      } else if (state.model?.secondNumber == '' || state.model?.secondNumber == null) {
        return;
      } else {
        double first = 0;
        double second = 0;
        double result = 0;
        try {
          first = double.parse(state.model!.firstNumber);
          second = double.parse(state.model!.secondNumber);
        } catch (e) {
          print(e);
        }

        switch (state.model!.operation) {
          case "X":
            result = first * second;
            break;
          case "/":
            result = first / second;
            break;
          case "-":
            result = first - second;
            break;
          case "+":
            result = first + second;
            break;
          default:
            break;
        }
        emit(CalculatorSetState(state.model!.copyWith(mathResult: result.toString())));
      }
    });
    on<DeleteFunction>((event, emit) {
      if (state.model?.mathResult == "" || state.model?.mathResult == null) {
        if (state.model?.operation == null || state.model?.operation == "") {
          if (state.model?.firstNumber == '0') return;

          emit(CalculatorSetState(state.model!
              .copyWith(firstNumber: state.model!.firstNumber.substring(0, state.model!.firstNumber.length - 1))));
        } else {
          emit(CalculatorSetState(state.model!
              .copyWith(firstNumber: state.model!.secondNumber.substring(0, state.model!.secondNumber.length - 1))));
        }
      }
    });
  }
}
