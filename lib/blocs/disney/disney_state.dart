part of 'disney_bloc.dart';

abstract class DisneyState extends Equatable {
  const DisneyState();

  @override
  List<Object> get props => [];
}

class DisneyInitial extends DisneyState {}

class DisneyLoading extends DisneyState {}

class DisneyFailed extends DisneyState {}

class DisneySucces extends DisneyState {
  final List<DisneyModel> data;

  const DisneySucces(this.data);

  @override
  List<Object> get props => [data];
}
