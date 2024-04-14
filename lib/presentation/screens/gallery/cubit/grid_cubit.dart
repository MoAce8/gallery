import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'grid_state.dart';

class GridCubit extends Cubit<GridState> {
  GridCubit() : super(GridOnline());
  static GridCubit get(context) => BlocProvider.of<GridCubit>(context);

  bool online = true;

  setGrid(){
    online = !online;
    if(online){
      emit(GridOnline());
    }else{
      emit(GridOffline());
    }
  }
}
