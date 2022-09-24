part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}
class SignupSucess extends SignupState {}
class SignupFail extends SignupState {}
