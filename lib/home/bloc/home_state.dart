part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({required this.cityName});

  static HomeState initial() => const HomeState(cityName: 'Unknown');

  final String cityName;

  HomeState copyWith({String? cityName}) =>
      HomeState(cityName: cityName ?? this.cityName);

  @override
  List<Object?> get props => [cityName];
}
