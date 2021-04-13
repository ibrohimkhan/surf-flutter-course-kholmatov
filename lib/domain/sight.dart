/*
* This data class represents user's Sight
*/
class Sight {
  const Sight({
    required this.name,
    this.lat,
    this.lon,
    this.url,
    this.details,
    this.type
  });

  final String name;
  final double? lat;
  final double? lon;
  final String? url;
  final String? details;
  final String? type;
}