import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String location;
  final double temperatureCelsius;

  const Weather({
    required this.location,
    required this.temperatureCelsius,
  });

  @override
  List<Object> get props => [location, temperatureCelsius];

  double get temperatureFahrenheit => temperatureCelsius * 1.8 + 32;

  @override
  String toString() {
    return 'Weather { location: $location, temperatureCelsius: $temperatureCelsius, temperatureFahrenheit: $temperatureFahrenheit }';
  }
}
