// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_tech_task_argedor/models/chart_model.dart';

enum ChartStatus {
  initial,
  loading,
  error,
  success,
}

class ChartState {
  final ChartStatus chartStatus;
  final ChartModel? model;
  final bool isCandleChartVisible;
  final bool isLineChartsVisible;
  ChartState({
    this.isCandleChartVisible = true,
    this.isLineChartsVisible = true,
    required this.chartStatus,
    this.model,
  });

  ChartState copyWith({
    ChartStatus? chartStatus,
    ChartModel? model,
    bool? isCandleChartVisible,
    bool? isLineChartsVisible,
  }) {
    return ChartState(
      chartStatus: chartStatus ?? this.chartStatus,
      model: model ?? this.model,
      isCandleChartVisible: isCandleChartVisible ?? this.isCandleChartVisible,
      isLineChartsVisible: isLineChartsVisible ?? this.isLineChartsVisible,
    );
  }
}
