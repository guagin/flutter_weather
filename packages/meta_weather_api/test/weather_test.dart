import 'package:meta_weather_api/meta_weather_api.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', (){
    group('fromJson', (){
      test(
        'returns WeatherState.unknown'
        'from unsupported weather_state_abbr', () {
          expect(
            Weather.fromJson(<String, dynamic>{
              'id': 4907479830888448,
              'weather_state_name': 'UNKNOWN',
              'weather_state_abbr': '-',
              'wind_direction_compass': 'UNKNOWN',
              'created': '2020-10-26T00:20:01.840132Z',
              'applicable_date': '2020-10-26',
              'min_temp': 7.939999999995,
              'max_temp': 13.23999999998,
              'the_temp': 12.825,
              'wind_speed': 7.87677,
              'wind_direction': 246.17946983,
              'air_pressure': 997.0,
              'humidity': 73,
              'visibility': 11.03772,
              'predictability': 73,
            }),
            isA<Weather>().having(
                (w) => w.weatherStateAbbr,
                'abbr',
                WeatherState.unknown,
            ),
          );
        });
    });

    group('WeatherStateX', (){
      const weatherState = WeatherState.showers;
      test('abbr returns correct string abbreviation', (){
        expect(weatherState.abbr, 's');
      });
    });
  });
}