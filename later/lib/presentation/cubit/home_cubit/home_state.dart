abstract class HomeState {}

class HomeEmpty extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  HomeLoaded(this.recordsList);

  final Stream<List<RecordModel>> recordsList;
}

class HomeError extends HomeState {}
