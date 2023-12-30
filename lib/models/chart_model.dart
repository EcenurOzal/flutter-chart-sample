// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_tech_task_argedor/models/line_chart_model.dart';

import 'candle_chart_sample_data_model.dart';

class ChartModel {
  List<CandleChartSampleData> candleChartData;
  List<LineChartSampleData> firstLineChart;
  List<LineChartSampleData> secondLineChart;
  List<LineChartSampleData> thirdLineChart;
  List<LineChartSampleData> columnChart;
  ChartModel({
    required this.candleChartData,
    required this.firstLineChart,
    required this.secondLineChart,
    required this.thirdLineChart,
    required this.columnChart,
  });
}
