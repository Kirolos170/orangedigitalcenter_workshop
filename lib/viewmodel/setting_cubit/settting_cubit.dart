import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'settting_state.dart';

class SetttingCubit extends Cubit<SetttingState> {
  SetttingCubit() : super(SetttingInitial());
  static SetttingCubit get(context)=> BlocProvider.of(context);

}
