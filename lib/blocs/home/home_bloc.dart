import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nonton/models/movie_model.dart';
import 'package:nonton/services/movie_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is HomeGetMovies) {
        try {
          emit(HomeLoading());
          final nowPlayingMovies = await MovieService().getPlayingNowMovies();
          final upComingMovies = await MovieService().getUpcComingMovies();
          emit(HomeSucces(nowPlayingMovies, upComingMovies));
        } catch (e) {
          emit(HomeFailed());
        }
      }
    });
  }
}
