import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/OptionBloc/options_bloc.dart';
import '../blocs/OptionBloc/options_state.dart';
import 'list_tile_options.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: BlocProvider(
        create: (_) => OptionsBloc(),
        child: BlocBuilder<OptionsBloc, OptionsState>(
            builder: (ctx, optionsState) {
              if (optionsState is OptionsStateLoading) {
                return const CircularProgressIndicator();
              } else if(optionsState is OptionsStateLoaded) {
                return  Column(
                  children: [
                    for(MapEntry<String,IconData> me in optionsState.titles.entries)
                      OptionListTile(title: me.key, iconData: me.value)
                  ],
                );
              }
              else {
                return const Text("Some error occurred");
              }
            }),
      ),
    );
  }
}
