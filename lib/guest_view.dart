import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_actions/cubit/guest_cubit.dart';

import 'guests.dart';

class GuestView extends StatefulWidget {
  const GuestView({Key? key}) : super(key: key);

  static Route materialRoute() {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (context) => GuestCubit(),
        child: const GuestView(),
      ),
    );
  }

  @override
  State<GuestView> createState() => _GuestViewState();
}

class _GuestViewState extends State<GuestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GuestCubit, GuestSearchState>(
            builder: (context, state) {
              print('state: ${state.guests}');
              return Text('Guests count: ${state.guests[0].firstName}');
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<GuestCubit>().updateGuest(
                    const Guest(
                      guid: 'guid',
                      firstName: 'name changed',
                      lastName: 'lastName',
                      phoneNumber: 'phoneNumber',
                      email: 'email',
                      guestNotes: 'guestNotes',
                      totalBookingCount: 2,
                      guestTags: [],
                    ),
                  );
            },
            child: const Text('Add guest'),
          ),
        ],
      ),
    );
  }
}
