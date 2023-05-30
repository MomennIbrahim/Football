part of 'football_cubit.dart';

abstract class FootballState {}

class FootballInitial extends FootballState {}

class FootballLoadingState extends FootballState {}
class FootballSuccessState extends FootballState {}
class FootballErrorState extends FootballState {}
