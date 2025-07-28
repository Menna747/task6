
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent {
  final String email;
  final String password;
  final String confirmPassword;

  SignUpSubmitted({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpSubmitted>((event, emit) {
      // simulate signup logic
    });
  }
}
