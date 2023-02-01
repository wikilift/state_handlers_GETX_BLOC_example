import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../models/user_to_test.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ChangeUserAgeEvent>((event, emit) {
      if (!state.existUser) {
        print("no existe usuario");
        return;
      } else {
        emit(UserSetState(state.user!.copyWith(age: event.age)));
      }
    });
    on<AddProfessionEvent>((event, emit) {
      if (!state.existUser) {
        print("no existe usuario");
        return;
      } else {
        final professions = [...state.user!.profession, event.professions];
        emit(UserSetState(state.user!.copyWith(profession: professions)));
      }
    });
    on<ActivateUser>((event, emit) {
      //print("activate user called");
      emit(UserSetState(event.user));
    });
  }
}
