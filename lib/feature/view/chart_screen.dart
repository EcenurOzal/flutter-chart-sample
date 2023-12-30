import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/models.dart';
import '../cubit/chart_cubit.dart';
import '../cubit/chart_state.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChartCubit()..init(),
      child: const ChartView(
        title: 'BTC',
      ),
    );
  }
}

class ChartView extends StatefulWidget {
  const ChartView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ChartViewState createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  late TrackballBehavior _trackballBehavior;
  late TrackballBehavior _trackballBehaviorColumn;
  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    _trackballBehaviorColumn = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 18, 21, 54),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CustomAppBar(widget: widget),
              ),
            ),
            body: BlocBuilder<ChartCubit, ChartState>(
              builder: (context, state) {
                return state.chartStatus == ChartStatus.loading
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.white12,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                ChartToggleButtons(
                                  state: state,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Please select a chart type",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                          ),
                          SfCartesianChart(
                            legend: const Legend(
                              isVisible: false,
                            ),
                            trackballBehavior: _trackballBehavior,
                            margin: const EdgeInsets.only(bottom: 0, top: 10),
                            series: [
                              if (state.isCandleChartVisible) ...[
                                CandleSeries<CandleChartSampleData, DateTime>(
                                  dataSource: state.model!.candleChartData,
                                  name: 'Sales',
                                  dataLabelSettings: const DataLabelSettings(
                                      isVisible: false,
                                      showCumulativeValues: true),
                                  xValueMapper:
                                      (CandleChartSampleData sales, _) =>
                                          sales.dateTime,
                                  lowValueMapper:
                                      (CandleChartSampleData sales, _) =>
                                          sales.low,
                                  highValueMapper:
                                      (CandleChartSampleData sales, _) =>
                                          sales.high,
                                  openValueMapper:
                                      (CandleChartSampleData sales, _) =>
                                          sales.open,
                                  closeValueMapper:
                                      (CandleChartSampleData sales, _) =>
                                          sales.close,
                                ),
                              ],
                              if (state.isLineChartsVisible) ...[
                                SplineSeries<LineChartSampleData, DateTime>(
                                  name: 'First',
                                  dataSource: state.model!.firstLineChart,
                                  xValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.dateTime,
                                  yValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.price,
                                  width: 1,
                                ),
                                SplineSeries<LineChartSampleData, DateTime>(
                                  name: 'Second',
                                  dataSource: state.model!.secondLineChart,
                                  color: Colors.blue,
                                  xValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.dateTime,
                                  yValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.price,
                                  width: 1,
                                ),
                              ]
                            ],
                            plotAreaBorderColor: Colors.transparent,
                            primaryXAxis: DateTimeAxis(
                              majorTickLines: const MajorTickLines(width: 0),
                              dateFormat: DateFormat('dd/MM hh:mm'),
                              intervalType: DateTimeIntervalType.days,
                              isVisible: true,
                              majorGridLines: MajorGridLines(
                                width: 0.5,
                                color: Colors.grey.shade50.withOpacity(0.43),
                              ),
                              minorGridLines: MinorGridLines(
                                width: 0.5,
                                color: Colors.grey.shade50.withOpacity(0.43),
                              ),
                              axisLine: const AxisLine(
                                width: 0,
                              ),
                              labelStyle: const TextStyle(
                                color: Colors.transparent,
                                fontSize: 0,
                              ),
                            ),
                            primaryYAxis: NumericAxis(
                              majorTickLines: const MajorTickLines(width: 0),
                              minimum: 5080,
                              maximum: 5130,
                              interval: 10,
                              labelStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                              majorGridLines: const MajorGridLines(width: 0),
                              numberFormat:
                                  NumberFormat.simpleCurrency(decimalDigits: 0),
                            ),
                          ),
                          //
                          SizedBox(
                            height: 150,
                            child: SfCartesianChart(
                              legend: const Legend(
                                isVisible: false,
                              ),
                              margin: const EdgeInsets.all(0),
                              trackballBehavior: _trackballBehaviorColumn,
                              series: [
                                ColumnSeries<LineChartSampleData, DateTime>(
                                  dataSource: state.model!.columnChart,
                                  xValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.dateTime,
                                  yValueMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.price,
                                  width: 1,
                                  pointColorMapper:
                                      (LineChartSampleData sales, _) =>
                                          sales.price! > 200
                                              ? const Color.fromARGB(
                                                  255, 55, 146, 58)
                                              : Colors.red,
                                ),
                              ],
                              plotAreaBorderColor: Colors.transparent,
                              primaryXAxis: DateTimeAxis(
                                majorTickLines: const MajorTickLines(width: 0),
                                dateFormat: DateFormat('dd/MM hh:mm'),
                                intervalType: DateTimeIntervalType.days,
                                labelStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                                majorGridLines: MajorGridLines(
                                  width: 0.5,
                                  color: Colors.grey.shade50.withOpacity(0.43),
                                ),
                                minorGridLines: MinorGridLines(
                                  width: 0.5,
                                  color: Colors.grey.shade50.withOpacity(0.43),
                                ),
                                axisLine: const AxisLine(
                                  width: 0,
                                ),
                              ),
                              primaryYAxis: NumericAxis(
                                majorTickLines: const MajorTickLines(width: 0),
                                minimum: 0,
                                maximum: 500,
                                interval: 500,
                                isVisible: true,
                                numberFormat: NumberFormat.simpleCurrency(
                                    decimalDigits: 0),
                                majorGridLines: const MajorGridLines(
                                    width: 0, color: Colors.transparent),
                                labelStyle: const TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 17,
                                ),
                                axisLine: const AxisLine(
                                  width: 0,
                                ),
                              ),
                            ),
                          ),

                          //
                          const SizedBox(
                            height: 10,
                          ),

                          //
                          const CustomDivider(),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: AverageText(),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: buildText(),
                          )
                        ],
                      );
              },
            )));
  }

  Column buildText() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomText(
                title: "24H High (EUR)",
                subtitle: "5,684.77",
              ),
            ),
            Expanded(
              child: CustomText(
                title: "24H Low (EUR)",
                subtitle: "5,261.41",
              ),
            ),
            Expanded(
              child: CustomText(
                title: "24H Vol",
                subtitle: "415,964.04",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomText(
                title: "Cap (EUR)",
                subtitle: "92.04B",
              ),
            ),
            Expanded(
              child: CustomText(
                title: "Circulation (BTC)",
                subtitle: "17.20M",
              ),
            ),
            Spacer()
          ],
        ),
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomText({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class AverageText extends StatelessWidget {
  const AverageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "5,350.26 EUR",
          style: TextStyle(
            color: Colors.red,
            fontSize: 17,
          ),
        ),
        Text(
          "= 6,111.34 USD -5.27%",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      color: Colors.black,
    );
  }
}

class ChartToggleButtons extends StatelessWidget {
  final ChartState state;
  const ChartToggleButtons({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade50.withOpacity(0.43),
          width: 0.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () => context.read<ChartCubit>().toggleCandle(),
              child: Icon(Icons.bar_chart_outlined,
                  color:
                      state.isCandleChartVisible ? Colors.cyan : Colors.grey),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => context.read<ChartCubit>().toggleLine(),
              child: Icon(Icons.auto_graph_outlined,
                  color: state.isLineChartsVisible ? Colors.cyan : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.widget,
  });

  final ChartView widget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 18, 21, 54),
      title: Column(
        children: [
          Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          const Text(
            "Global average",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      leading: const Icon(
        Icons.arrow_back_outlined,
        color: Colors.white,
      ),
      actions: const [
        Icon(
          Icons.notifications_none_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
