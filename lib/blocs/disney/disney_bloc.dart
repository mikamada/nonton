import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nonton/models/disney_model.dart';
import 'package:nonton/services/disney_service.dart';

part 'disney_event.dart';
part 'disney_state.dart';

class DisneyBloc extends Bloc<DisneyEvent, DisneyState> {
  DisneyBloc() : super(DisneyInitial()) {
    on<DisneyEvent>((event, emit) async {
      if (event is DisneyGetMovie) {
        try {
          emit(DisneyLoading());
          final data = await DisneyService().getUpComingMovies();
          emit(DisneySucces(data));
        } catch (e) {
          emit(DisneyFailed());
        }
      }
    });
  }
}
