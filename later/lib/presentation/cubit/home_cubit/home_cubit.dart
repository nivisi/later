import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:later/domain/usecases/watch_all_records_use_case.dart';
import 'home_state.dart';

@lazySingleton
class HomePageCubit extends Cubit<HomeState> {
  HomePageCubit({required this.useCase}) : super(HomeEmpty());

  final WatchAllRecordsUseCase useCase;

  void fetchRecords() {
    emit(HomeLoading());
    var streamRecords = useCase.call();

    if (streamRecords != null) {
      emit(HomeLoaded(streamRecords));
    } else {
      emit(HomeError());
    }
  }
}