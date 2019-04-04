import 'package:flutter/material.dart';

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;
  final Color scaleColor = Colors.white;

  TimeSeriesSales(this.time, this.sales);
}
