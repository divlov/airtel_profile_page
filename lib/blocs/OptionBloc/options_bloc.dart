import 'package:airtel_profile_page_flutter/blocs/OptionBloc/options_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class OptionsBloc extends Cubit<OptionsState>{


  Map<String,IconData> titles= {
    'thanks benefits': Icons.card_giftcard_rounded,
    'find a store': Icons.location_pin,
    'transactions':Icons.loop,
    'track requests':Icons.calendar_today_outlined,
    'orders':Icons.check_box_outline_blank,
    'subscriptions':Icons.subscriptions_outlined
  };

  //we can also pass the data directly like this and changing the type of Cubit
  // OptionsBloc() : super({..._titles});

  // i have done like this just for illustration
  OptionsBloc():super(OptionsState()){
    emit(OptionsStateLoading());
    emit(OptionsStateLoaded(titles));
  }


}