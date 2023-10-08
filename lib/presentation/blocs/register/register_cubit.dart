import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

  void onSubmit() {
    print('Submit: $state');
  }

  void usernameChnage(String value) {
    emit(state.copyWith(username: value));
  }

  void emailChnage(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChnage(String value) {
    emit(state.copyWith(password: value));
  }
}
