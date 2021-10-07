part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailed extends HomeState {}

class HomeSucces extends HomeState {
  final List<MovieModel> nowPlayingMovies;
  final List<MovieModel> upComingMovies;

  const HomeSucces(this.nowPlayingMovies, this.upComingMovies);

  @override
  List<Object> get props => [nowPlayingMovies, upComingMovies];
}
