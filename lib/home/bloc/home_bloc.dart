import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superhero_ui/home/services/location.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required LocationService locationService})
      : _locationService = locationService,
        super(HomeState.initial()) {
    on<FetchCurrentLocation>(_onFetchCurrentLocation);
  }

  final LocationService _locationService;

  Future<void> _onFetchCurrentLocation(
    FetchCurrentLocation event,
    Emitter<HomeState> emit,
  ) async {
    final cityName = await _locationService.getCityName();
    emit(state.copyWith(cityName: cityName));
  }
}
