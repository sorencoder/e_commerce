import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class FirebaseBloc extends Bloc<LoginEvent, LoginState> {
  FirebaseBloc() : super(InitialState()) {
    on<LoginSuccessfulEvent>((event, emit) => emit(LoginSuccessfulState()));
    on<LoginUnsuccessfulEvent>((event, emit) => emit(LoginUnsuccesfulState()));
  }
}
