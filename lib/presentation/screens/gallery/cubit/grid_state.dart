part of 'grid_cubit.dart';

@immutable
abstract class GridState {}

class GridOnline extends GridState {}

class GridOffline extends GridState {}