part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

// peristiwa yang akan terjadi
class HomeGetMovies extends HomeEvent {}
