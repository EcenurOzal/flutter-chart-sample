import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_task_argedor/data/services/chart_data_services.dart';
import 'package:flutter_tech_task_argedor/feature/cubit/chart_state.dart';

class ChartCubit extends Cubit<ChartState> {
  ChartCubit()
      : super(
          ChartState(
            chartStatus: ChartStatus.initial,
          ),
        );

  void init() async {
    emit(
      state.copyWith(
        chartStatus: ChartStatus.loading,
      ),
    );

    //Api call
    var result = await ChartDataServices().getChartData();

    emit(
      state.copyWith(
        chartStatus: ChartStatus.success,
        model: result,
      ),
    );
  }

  void toggleCandle() async {
    emit(
      state.copyWith(
        isCandleChartVisible: !state.isCandleChartVisible,
      ),
    );
  }

  void toggleLine() async {
    emit(
      state.copyWith(
        isLineChartsVisible: !state.isLineChartsVisible,
      ),
    );
  }
}
