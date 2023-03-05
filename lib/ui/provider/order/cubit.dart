import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iso_app/ui/provider/order/states.dart';

class HomeCubit extends Cubit<OrderStates>{
  HomeCubit():super(InitialState());
  HomeCubit get(context)=>BlocProvider.of(context);
  int click=0;
 BottomNavigationBar getBottomNavigationBar(){
   return BottomNavigationBar(
     onTap: (tap) {
         tap=click;
         emit(NavigationBarClickState());
       },
       items:const [
         BottomNavigationBarItem(icon: Icon(Icons.add)),
         BottomNavigationBarItem(icon: Icon(Icons.remove)),
       ]

   );
 }

}