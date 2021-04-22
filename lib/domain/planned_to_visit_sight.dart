/*
* This data class represents user's planned to visit sight
*/
class PlannedToVisitSight {
  const PlannedToVisitSight({
    required this.name,
    this.latitude,
    this.longitude,
    this.url,
    this.details,
    this.type
  });

  final String name;
  final double? latitude;
  final double? longitude;
  final String? url;
  final String? details;
  final String? type;
}