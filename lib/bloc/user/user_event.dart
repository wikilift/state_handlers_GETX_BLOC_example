part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final UserToTest user;

  ActivateUser(this.user);
}

class ChangeUserAgeEvent extends UserEvent {
  final int age;

  ChangeUserAgeEvent(this.age);
}

class AddProfessionEvent extends UserEvent {
  final String professions;

  AddProfessionEvent(this.professions);
}
