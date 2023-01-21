// import 'current.dart';
// import 'daily.dart';
// import 'hourly.dart';
// import 'minutely.dart';

// class WeatherModel {
//   double? lat;
//   double? lon;
//   String? timezone;
//   int? timezoneOffset;
//   Current? current;
//   List<Minutely>? minutely;
//   List<Hourly>? hourly;
//   List<Daily>? daily;

//   WeatherModel({
//     this.lat,
//     this.lon,
//     this.timezone,
//     this.timezoneOffset,
//     this.current,
//     this.minutely,
//     this.hourly,
//     this.daily,
//   });

//   factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
//         lat: (json['lat'] as num?)?.toDouble(),
//         lon: (json['lon'] as num?)?.toDouble(),
//         timezone: json['timezone'] as String?,
//         timezoneOffset: json['timezone_offset'] as int?,
//         current: json['current'] == null
//             ? null
//             : Current.fromJson(json['current'] as Map<String, dynamic>),
//         minutely: (json['minutely'] as List<dynamic>?)
//             ?.map((e) => Minutely.fromJson(e as Map<String, dynamic>))
//             .toList(),
//         hourly: (json['hourly'] as List<dynamic>?)
//             ?.map((e) => Hourly.fromJson(e as Map<String, dynamic>))
//             .toList(),
//         daily: (json['daily'] as List<dynamic>?)
//             ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
//             .toList(),
//       );

//   Map<String, dynamic> toJson() => {
//         'lat': lat,
//         'lon': lon,
//         'timezone': timezone,
//         'timezone_offset': timezoneOffset,
//         'current': current?.toJson(),
//         'minutely': minutely?.map((e) => e.toJson()).toList(),
//         'hourly': hourly?.map((e) => e.toJson()).toList(),
//         'daily': daily?.map((e) => e.toJson()).toList(),
//       };
// }
