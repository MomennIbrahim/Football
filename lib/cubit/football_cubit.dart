import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/remote_data/remote_data.dart';
import '../models/football_model.dart';

part 'football_state.dart';

class FootballCubit extends Cubit<FootballState> {
  FootballCubit() : super(FootballInitial());

  static FootballCubit get(context) => BlocProvider.of(context);

  FootballModel? footballModel;

  void getResults()  {

    emit(FootballLoadingState());

    DioHelper.getData(url: 'matches/327125/head2head').then((value) {
      footballModel = FootballModel.fromJson(value.data);
      print(footballModel!.matches!.length);
      emit(FootballSuccessState());
    }).catchError((error) {
      emit(FootballErrorState());
      print(error.toString());
    });
  }
}
