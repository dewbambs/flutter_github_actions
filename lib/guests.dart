import 'package:equatable/equatable.dart';

class Guest extends Equatable {
  final String guid;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? email;
  final String? guestNotes;
  final int totalBookingCount;
  final List<GuestTag> guestTags;

  const Guest({
    required this.guid,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.guestNotes,
    required this.totalBookingCount,
    required this.guestTags,
  });

  @override
  List<Object?> get props => [
        guid,
        firstName,
        lastName,
        phoneNumber,
        email,
        guestNotes,
        totalBookingCount,
        guestTags,
      ];

  bool get isVIP => guestTags.contains(GuestTag.VIP);

  // override toString
  @override
  String toString() =>
      'Guest { guid: $guid, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, guestNotes: $guestNotes, totalBookingCount: $totalBookingCount, guestTags: $guestTags }';
}

enum GuestTag { VIP }
