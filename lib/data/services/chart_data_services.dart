import '../../models/models.dart';

class ChartDataServices {
  ChartDataServices._privateConstructor();

  static final ChartDataServices _instance =
      ChartDataServices._privateConstructor();

  factory ChartDataServices() {
    return _instance;
  }
  Future<ChartModel> getChartData() async {
    //Simulate API call

    //
    await Future.delayed(const Duration(seconds: 2));

    //
    return ChartModel(
        candleChartData: getCandleChartData(),
        firstLineChart: getFirstLineChartData(),
        secondLineChart: getLineSecondChartData(),
        thirdLineChart: [],
        columnChart: getColumnChartData());
  }

  List<CandleChartSampleData> getCandleChartData() {
    return <CandleChartSampleData>[
      CandleChartSampleData(
          dateTime: DateTime(2023, 01, 11),
          open: 5098.97,
          high: 5101.19,
          low: 5095.36,
          close: 5097.13),
      CandleChartSampleData(
          dateTime: DateTime(2023, 01, 18),
          open: 5098.41,
          high: 5101.46,
          low: 5093.42,
          close: 5101.42),
      CandleChartSampleData(
          dateTime: DateTime(2023, 01, 25),
          open: 5101.52,
          high: 5101.53,
          low: 5092.39,
          close: 5097.34),
      CandleChartSampleData(
          dateTime: DateTime(2023, 02, 01),
          open: 5096.47,
          high: 5097.33,
          low: 5093.69,
          close: 5094.02),
      CandleChartSampleData(
          dateTime: DateTime(2023, 02, 08),
          open: 5093.13,
          high: 5096.35,
          low: 5092.59,
          close: 5093.99),
      CandleChartSampleData(
          dateTime: DateTime(2023, 02, 15),
          open: 5091.02,
          high: 5094.89,
          low: 5090.61,
          close: 5092.04),
      CandleChartSampleData(
          dateTime: DateTime(2023, 02, 22),
          open: 5096.31,
          high: 5098.0237,
          low: 5098.0237,
          close: 5096.31),
      CandleChartSampleData(
          dateTime: DateTime(2023, 02, 29),
          open: 5099.86,
          high: 5106.75,
          low: 5099.65,
          close: 5106.01),
      CandleChartSampleData(
          dateTime: DateTime(2023, 03, 07),
          open: 5102.39,
          high: 5102.83,
          low: 5100.15,
          close: 5102.26),
      CandleChartSampleData(
          dateTime: DateTime(2023, 03, 14),
          open: 5101.91,
          high: 5106.5,
          low: 5101.78,
          close: 5105.92),
      CandleChartSampleData(
          dateTime: DateTime(2023, 03, 21),
          open: 5105.93,
          high: 5107.65,
          low: 5104.89,
          close: 5105.67),
      CandleChartSampleData(
          dateTime: DateTime(2023, 03, 28),
          open: 5106.0,
          high: 5110.42,
          low: 5104.88,
          close: 5109.99),
      CandleChartSampleData(
          dateTime: DateTime(2023, 04, 04),
          open: 5110.42,
          high: 5112.19,
          low: 5108.121,
          close: 5108.66),
      CandleChartSampleData(
          dateTime: DateTime(2023, 04, 11),
          open: 5108.97,
          high: 5112.39,
          low: 5108.66,
          close: 5109.85),
      CandleChartSampleData(
          dateTime: DateTime(2023, 04, 18),
          open: 5108.89,
          high: 5108.95,
          low: 5104.62,
          close: 5105.68),
      CandleChartSampleData(
          dateTime: DateTime(2023, 04, 25),
          open: 5105.0,
          high: 5105.65,
          low: 5092.51,
          close: 5093.74),
      CandleChartSampleData(
          dateTime: DateTime(2023, 05, 02),
          open: 5093.965,
          high: 5095.9,
          low: 5091.85,
          close: 5092.72),
      CandleChartSampleData(
          dateTime: DateTime(2023, 05, 09),
          open: 5093.0,
          high: 5093.77,
          low: 5089.47,
          close: 5090.52),
      CandleChartSampleData(
          dateTime: DateTime(2023, 05, 16),
          open: 5092.39,
          high: 5095.43,
          low: 5091.65,
          close: 5095.22),
      CandleChartSampleData(
          dateTime: DateTime(2023, 05, 23),
          open: 5095.87,
          high: 5100.73,
          low: 5095.67,
          close: 5100.35),
      CandleChartSampleData(
          dateTime: DateTime(2023, 05, 30),
          open: 5099.6,
          high: 5100.4,
          low: 5096.63,
          close: 5097.92),
      CandleChartSampleData(
          dateTime: DateTime(2023, 06, 06),
          open: 5097.99,
          high: 5101.89,
          low: 5097.55,
          close: 5098.83),
      CandleChartSampleData(
          dateTime: DateTime(2023, 06, 13),
          open: 5098.69,
          high: 5099.12,
          low: 5095.3,
          close: 5095.33),
      CandleChartSampleData(
          dateTime: DateTime(2023, 06, 20),
          open: 5096.0,
          high: 5096.89,
          low: 5092.65,
          close: 5093.4),
      CandleChartSampleData(
          dateTime: DateTime(2023, 06, 27),
          open: 5093.0,
          high: 5096.465,
          low: 5091.5,
          close: 5095.89),
      CandleChartSampleData(
          dateTime: DateTime(2023, 07, 04),
          open: 5095.39,
          high: 5096.89,
          low: 5094.37,
          close: 5096.68),
      CandleChartSampleData(
          dateTime: DateTime(2023, 07, 11),
          open: 5096.75,
          high: 5099.3,
          low: 5096.73,
          close: 5098.78),
      CandleChartSampleData(
          dateTime: DateTime(2023, 07, 18),
          open: 5098.7,
          high: 5101.0,
          low: 5098.31,
          close: 5098.66),
      CandleChartSampleData(
          dateTime: DateTime(2023, 07, 25),
          open: 5098.25,
          high: 5104.55,
          low: 5096.42,
          close: 5104.21),
      CandleChartSampleData(
          dateTime: DateTime(2023, 08, 01),
          open: 5104.41,
          high: 5107.65,
          low: 5104.0,
          close: 5107.48),
      CandleChartSampleData(
          dateTime: DateTime(2023, 08, 08),
          open: 5107.52,
          high: 5108.94,
          low: 5107.16,
          close: 5108.18),
      CandleChartSampleData(
          dateTime: DateTime(2023, 08, 15),
          open: 5108.14,
          high: 5110.23,
          low: 5108.08,
          close: 5109.36),
      CandleChartSampleData(
          dateTime: DateTime(2023, 08, 22),
          open: 5108.86,
          high: 5109.32,
          low: 5106.31,
          close: 5106.94),
      CandleChartSampleData(
          dateTime: DateTime(2023, 08, 29),
          open: 5106.62,
          high: 5108.0,
          low: 5105.5,
          close: 5107.73),
      CandleChartSampleData(
          dateTime: DateTime(2023, 09, 05),
          open: 5107.9,
          high: 5108.76,
          low: 5103.13,
          close: 5103.13),
      CandleChartSampleData(
          dateTime: DateTime(2023, 09, 12),
          open: 5102.65,
          high: 5116.13,
          low: 5102.53,
          close: 5114.92),
      CandleChartSampleData(
          dateTime: DateTime(2023, 09, 19),
          open: 5115.19,
          high: 5116.18,
          low: 5111.55,
          close: 5112.71),
      CandleChartSampleData(
          dateTime: DateTime(2023, 09, 26),
          open: 5111.64,
          high: 5114.64,
          low: 5111.55,
          close: 5113.05),
      CandleChartSampleData(
          dateTime: DateTime(2023, 10, 03),
          open: 5112.71,
          high: 5114.56,
          low: 5112.28,
          close: 5114.06),
      CandleChartSampleData(
          dateTime: DateTime(2023, 10, 10),
          open: 5115.02,
          high: 5118.69,
          low: 5114.72,
          close: 5117.63),
      CandleChartSampleData(
          dateTime: DateTime(2023, 10, 17),
          open: 5117.33,
          high: 5118.21,
          low: 5113.8,
          close: 5116.6),
      CandleChartSampleData(
          dateTime: DateTime(2023, 10, 24),
          open: 5117.1,
          high: 5118.36,
          low: 5113.31,
          close: 5113.72),
      CandleChartSampleData(
          dateTime: DateTime(2023, 10, 31),
          open: 5113.65,
          high: 5114.23,
          low: 5108.11,
          close: 5108.84),
      CandleChartSampleData(
          dateTime: DateTime(2023, 11, 07),
          open: 5110.08,
          high: 5111.72,
          low: 5105.83,
          close: 5108.43),
      CandleChartSampleData(
          dateTime: DateTime(2023, 11, 14),
          open: 5107.71,
          high: 5110.54,
          low: 5104.08,
          close: 5110.06),
      CandleChartSampleData(
          dateTime: DateTime(2023, 11, 21),
          open: 5114.12,
          high: 5115.42,
          low: 5115.42,
          close: 5114.12),
      CandleChartSampleData(
          dateTime: DateTime(2023, 11, 28),
          open: 5111.43,
          high: 5112.465,
          low: 5108.85,
          close: 5109.9),
      CandleChartSampleData(
          dateTime: DateTime(2023, 12, 05),
          open: 5110.0,
          high: 5114.7,
          low: 5108.25,
          close: 5113.95),
      CandleChartSampleData(
          dateTime: DateTime(2023, 12, 12),
          open: 5113.29,
          high: 5116.73,
          low: 5112.49,
          close: 5115.97),
      CandleChartSampleData(
          dateTime: DateTime(2023, 12, 19),
          open: 5115.8,
          high: 5117.5,
          low: 5115.59,
          close: 5116.52),
      CandleChartSampleData(
          dateTime: DateTime(2023, 12, 26),
          open: 5116.52,
          high: 5118.0166,
          low: 5115.43,
          close: 5115.82),
    ];
  }

  List<LineChartSampleData> getLineSecondChartData() {
    return <LineChartSampleData>[
      LineChartSampleData(dateTime: DateTime(2023, 01, 11), price: 5110.36),
      LineChartSampleData(dateTime: DateTime(2023, 01, 18), price: 5092.84),
      LineChartSampleData(dateTime: DateTime(2023, 01, 25), price: 5091.39),
      LineChartSampleData(dateTime: DateTime(2023, 02, 01), price: 5099.0),
      LineChartSampleData(dateTime: DateTime(2023, 02, 08), price: 5090.77),
      LineChartSampleData(dateTime: DateTime(2023, 02, 15), price: 5110.6),
      LineChartSampleData(dateTime: DateTime(2023, 02, 22), price: 5104.82),
      LineChartSampleData(dateTime: DateTime(2023, 02, 29), price: 5091.14),
      LineChartSampleData(dateTime: DateTime(2023, 03, 07), price: 5105.72),
      LineChartSampleData(dateTime: DateTime(2023, 03, 14), price: 5106.44),
      LineChartSampleData(dateTime: DateTime(2023, 03, 21), price: 5103.57),
      LineChartSampleData(dateTime: DateTime(2023, 03, 28), price: 5100.5),
      LineChartSampleData(dateTime: DateTime(2023, 04, 04), price: 5107.78),
      LineChartSampleData(dateTime: DateTime(2023, 04, 11), price: 5105.89),
      LineChartSampleData(dateTime: DateTime(2023, 04, 18), price: 5100.49),
      LineChartSampleData(dateTime: DateTime(2023, 04, 25), price: 5109.52),
      LineChartSampleData(dateTime: DateTime(2023, 05, 02), price: 5107.02),
      LineChartSampleData(dateTime: DateTime(2023, 05, 09), price: 5106.73),
      LineChartSampleData(dateTime: DateTime(2023, 05, 16), price: 5105.88),
      LineChartSampleData(dateTime: DateTime(2023, 05, 23), price: 5106.42),
      LineChartSampleData(dateTime: DateTime(2023, 05, 30), price: 5105.76),
      LineChartSampleData(dateTime: DateTime(2023, 06, 06), price: 5102.54),
      LineChartSampleData(dateTime: DateTime(2023, 06, 13), price: 5103.39),
      LineChartSampleData(dateTime: DateTime(2023, 06, 20), price: 5107.69),
      LineChartSampleData(dateTime: DateTime(2023, 06, 27), price: 5101.66),
      LineChartSampleData(dateTime: DateTime(2023, 07, 04), price: 5107.14),
      LineChartSampleData(dateTime: DateTime(2023, 07, 11), price: 5100.79),
      LineChartSampleData(dateTime: DateTime(2023, 07, 18), price: 5101.73),
      LineChartSampleData(dateTime: DateTime(2023, 07, 25), price: 5099.48),
      LineChartSampleData(dateTime: DateTime(2023, 08, 01), price: 5094.3),
      LineChartSampleData(dateTime: DateTime(2023, 08, 08), price: 5092.74),
      LineChartSampleData(dateTime: DateTime(2023, 08, 15), price: 5096.03),
      LineChartSampleData(dateTime: DateTime(2023, 08, 22), price: 5097.89),
      LineChartSampleData(dateTime: DateTime(2023, 08, 29), price: 5093.11),
      LineChartSampleData(dateTime: DateTime(2023, 09, 05), price: 5091.14),
      LineChartSampleData(dateTime: DateTime(2023, 09, 12), price: 5102.36),
      LineChartSampleData(dateTime: DateTime(2023, 09, 19), price: 5092.82),
      LineChartSampleData(dateTime: DateTime(2023, 09, 26), price: 5093.65),
      LineChartSampleData(dateTime: DateTime(2023, 10, 03), price: 5105.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 10), price: 5106.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 17), price: 5102.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 24), price: 5101.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 31), price: 5103.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 07), price: 5104.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 14), price: 5105.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 21), price: 5103.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 28), price: 5095.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 05), price: 5093.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 12), price: 5095.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 19), price: 5096.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 26), price: 5097.14),
    ];
  }

  List<LineChartSampleData> getColumnChartData() {
    return <LineChartSampleData>[
      LineChartSampleData(dateTime: DateTime(2023, 01, 11), price: 300.36),
      LineChartSampleData(dateTime: DateTime(2023, 01, 18), price: 305.84),
      LineChartSampleData(dateTime: DateTime(2023, 01, 25), price: 310.39),
      LineChartSampleData(dateTime: DateTime(2023, 02, 01), price: 200.0),
      LineChartSampleData(dateTime: DateTime(2023, 02, 08), price: 100.77),
      LineChartSampleData(dateTime: DateTime(2023, 02, 15), price: 259.6),
      LineChartSampleData(dateTime: DateTime(2023, 02, 22), price: 250.82),
      LineChartSampleData(dateTime: DateTime(2023, 02, 29), price: 132.14),
      LineChartSampleData(dateTime: DateTime(2023, 03, 07), price: 125.72),
      LineChartSampleData(dateTime: DateTime(2023, 03, 14), price: 231.44),
      LineChartSampleData(dateTime: DateTime(2023, 03, 21), price: 423.57),
      LineChartSampleData(dateTime: DateTime(2023, 03, 28), price: 123.5),
      LineChartSampleData(dateTime: DateTime(2023, 04, 04), price: 353.78),
      LineChartSampleData(dateTime: DateTime(2023, 04, 11), price: 123.89),
      LineChartSampleData(dateTime: DateTime(2023, 04, 18), price: 353.49),
      LineChartSampleData(dateTime: DateTime(2023, 04, 25), price: 352.52),
      LineChartSampleData(dateTime: DateTime(2023, 05, 02), price: 123.02),
      LineChartSampleData(dateTime: DateTime(2023, 05, 09), price: 231.73),
      LineChartSampleData(dateTime: DateTime(2023, 05, 16), price: 213.88),
      LineChartSampleData(dateTime: DateTime(2023, 05, 23), price: 213.42),
      LineChartSampleData(dateTime: DateTime(2023, 05, 30), price: 432.76),
      LineChartSampleData(dateTime: DateTime(2023, 06, 06), price: 411.54),
      LineChartSampleData(dateTime: DateTime(2023, 06, 13), price: 400.39),
      LineChartSampleData(dateTime: DateTime(2023, 06, 20), price: 380.69),
      LineChartSampleData(dateTime: DateTime(2023, 06, 27), price: 390.66),
      LineChartSampleData(dateTime: DateTime(2023, 07, 04), price: 413.14),
      LineChartSampleData(dateTime: DateTime(2023, 07, 11), price: 123.79),
      LineChartSampleData(dateTime: DateTime(2023, 07, 18), price: 432.73),
      LineChartSampleData(dateTime: DateTime(2023, 07, 25), price: 123.48),
      LineChartSampleData(dateTime: DateTime(2023, 08, 01), price: 432.3),
      LineChartSampleData(dateTime: DateTime(2023, 08, 08), price: 321.74),
      LineChartSampleData(dateTime: DateTime(2023, 08, 15), price: 398.03),
      LineChartSampleData(dateTime: DateTime(2023, 08, 22), price: 321.89),
      LineChartSampleData(dateTime: DateTime(2023, 08, 29), price: 367.11),
      LineChartSampleData(dateTime: DateTime(2023, 09, 05), price: 211.14),
      LineChartSampleData(dateTime: DateTime(2023, 09, 12), price: 80.36),
      LineChartSampleData(dateTime: DateTime(2023, 09, 19), price: 154.82),
      LineChartSampleData(dateTime: DateTime(2023, 09, 26), price: 55.65),
      LineChartSampleData(dateTime: DateTime(2023, 10, 03), price: 70.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 10), price: 100.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 17), price: 35.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 24), price: 250.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 31), price: 164.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 07), price: 123.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 14), price: 422.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 21), price: 123.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 28), price: 421.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 05), price: 89.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 12), price: 321.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 19), price: 66.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 26), price: 99.14),
    ];
  }

  List<LineChartSampleData> getFirstLineChartData() {
    return <LineChartSampleData>[
      LineChartSampleData(dateTime: DateTime(2023, 01, 11), price: 5090.36),
      LineChartSampleData(dateTime: DateTime(2023, 01, 18), price: 5096.84),
      LineChartSampleData(dateTime: DateTime(2023, 01, 25), price: 5091.39),
      LineChartSampleData(dateTime: DateTime(2023, 02, 01), price: 5099.0),
      LineChartSampleData(dateTime: DateTime(2023, 02, 08), price: 5090.77),
      LineChartSampleData(dateTime: DateTime(2023, 02, 15), price: 5090.6),
      LineChartSampleData(dateTime: DateTime(2023, 02, 22), price: 5094.82),
      LineChartSampleData(dateTime: DateTime(2023, 02, 29), price: 5091.14),
      LineChartSampleData(dateTime: DateTime(2023, 03, 07), price: 5095.72),
      LineChartSampleData(dateTime: DateTime(2023, 03, 14), price: 5096.44),
      LineChartSampleData(dateTime: DateTime(2023, 03, 21), price: 5093.57),
      LineChartSampleData(dateTime: DateTime(2023, 03, 28), price: 5090.5),
      LineChartSampleData(dateTime: DateTime(2023, 04, 04), price: 5097.78),
      LineChartSampleData(dateTime: DateTime(2023, 04, 11), price: 5095.89),
      LineChartSampleData(dateTime: DateTime(2023, 04, 18), price: 5090.49),
      LineChartSampleData(dateTime: DateTime(2023, 04, 25), price: 5099.52),
      LineChartSampleData(dateTime: DateTime(2023, 05, 02), price: 5090.02),
      LineChartSampleData(dateTime: DateTime(2023, 05, 09), price: 5091.73),
      LineChartSampleData(dateTime: DateTime(2023, 05, 16), price: 5097.88),
      LineChartSampleData(dateTime: DateTime(2023, 05, 23), price: 5096.42),
      LineChartSampleData(dateTime: DateTime(2023, 05, 30), price: 5095.76),
      LineChartSampleData(dateTime: DateTime(2023, 06, 06), price: 5092.54),
      LineChartSampleData(dateTime: DateTime(2023, 06, 13), price: 5093.39),
      LineChartSampleData(dateTime: DateTime(2023, 06, 20), price: 5097.69),
      LineChartSampleData(dateTime: DateTime(2023, 06, 27), price: 5091.66),
      LineChartSampleData(dateTime: DateTime(2023, 07, 04), price: 5097.14),
      LineChartSampleData(dateTime: DateTime(2023, 07, 11), price: 5090.79),
      LineChartSampleData(dateTime: DateTime(2023, 07, 18), price: 5091.73),
      LineChartSampleData(dateTime: DateTime(2023, 07, 25), price: 5099.48),
      LineChartSampleData(dateTime: DateTime(2023, 08, 01), price: 5094.3),
      LineChartSampleData(dateTime: DateTime(2023, 08, 08), price: 5092.74),
      LineChartSampleData(dateTime: DateTime(2023, 08, 15), price: 5096.03),
      LineChartSampleData(dateTime: DateTime(2023, 08, 22), price: 5097.89),
      LineChartSampleData(dateTime: DateTime(2023, 08, 29), price: 5093.11),
      LineChartSampleData(dateTime: DateTime(2023, 09, 05), price: 5091.14),
      LineChartSampleData(dateTime: DateTime(2023, 09, 12), price: 5092.36),
      LineChartSampleData(dateTime: DateTime(2023, 09, 19), price: 5092.82),
      LineChartSampleData(dateTime: DateTime(2023, 09, 26), price: 5093.65),
      LineChartSampleData(dateTime: DateTime(2023, 10, 03), price: 5105.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 10), price: 5106.84),
      LineChartSampleData(dateTime: DateTime(2023, 10, 17), price: 5102.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 24), price: 5103.14),
      LineChartSampleData(dateTime: DateTime(2023, 10, 31), price: 5107.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 07), price: 5108.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 14), price: 5102.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 21), price: 5101.14),
      LineChartSampleData(dateTime: DateTime(2023, 11, 28), price: 5098.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 05), price: 5098.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 12), price: 5095.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 19), price: 5094.14),
      LineChartSampleData(dateTime: DateTime(2023, 12, 26), price: 5095.14),
    ];
  }
}
