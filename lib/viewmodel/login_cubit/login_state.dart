part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginSucsses extends LoginState {}
class LoginFail extends LoginState {}
