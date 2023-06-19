//
//  ViewController.swift
//  test_pod
//
//  Created by teddy zollver on 17/06/2023.
//

import UIKit
import DGCharts

protocol UIViewTag {
    func value() -> Int
}

extension UIView {
    
    func findSubviews(tag:UIViewTag) -> UIView? {
        return self.subviews.first(where: { $0.tag == tag.value() })
    }
    
}

class ViewController: UIViewController {

    enum Tag: Int, UIViewTag {
        case HStack = 2, VStack = 1

        func value() -> Int { self.rawValue }
    }
    
    lazy var lineCharView: LineChartView = {
        let chartView = LineChartView()
        chartView.backgroundColor = .gray
        chartView.rightAxis.enabled = false
        
        let yAxis = chartView.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        yAxis.setLabelCount(5, force: false)
        yAxis.labelTextColor = .red
        yAxis.axisLineColor = .red
        yAxis.labelPosition = .outsideChart
        
        let xAxis = chartView.xAxis
        xAxis.labelFont = .boldSystemFont(ofSize: 12)
        xAxis.setLabelCount(3, force: false)
        xAxis.labelTextColor = .green
        xAxis.axisLineColor = .green
        xAxis.labelPosition = .bottom
        
        chartView.animate(xAxisDuration: 5.0)
        
        return chartView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let hStackView = view.findSubviews(tag: Tag.HStack) else { return }
        
        view.addSubview(lineCharView)
        lineCharView.translatesAutoresizingMaskIntoConstraints = false
        let constraintLeading = NSLayoutConstraint(
            item: lineCharView,
            attribute: .leading,
            relatedBy: .equal,
            toItem: view,
            attribute: .leading,
            multiplier: 1,
            constant: 0
        )
        
        let constraintTrailing = NSLayoutConstraint(
            item: lineCharView,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: view,
            attribute: .trailing,
            multiplier: 1,
            constant: 0
        )
        
        let constraintHeight = NSLayoutConstraint(
            item: lineCharView,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: 300
        )
        
        
        let constraintTop = NSLayoutConstraint(
            item: lineCharView,
            attribute: .top,
            relatedBy: .equal,
            toItem: hStackView,
            attribute: .bottom,
            multiplier: 1,
            constant: 20
        )
        
        view.addConstraints([constraintLeading, constraintTrailing, constraintHeight, constraintTop])
        
        lineCharView.data = getDataSet()
        lineCharView.delegate = self
        
    }


}

extension ViewController : ChartViewDelegate {
    
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print(entry)
    }
    
    
    func getDataSet() -> LineChartData{
        let set = LineChartDataSet(entries: getDataEntries(), label: "LineChartDataSet")
        set.mode = .cubicBezier
        set.drawCirclesEnabled = false
        set.lineWidth = 3
        set.setColor(.blue)
        set.fill = ColorFill(color: .orange)
        set.fillAlpha = 0.8
        set.drawFilledEnabled = true
        set.highlightColor = .black
        return LineChartData(dataSet: set)
    }
    
    func getDataEntries() -> [ChartDataEntry] {
        let yValues: [ChartDataEntry] = [
            ChartDataEntry(x: 1, y: 5600),
            ChartDataEntry(x: 2, y: 5650),
            ChartDataEntry(x: 3, y: 5700),
            ChartDataEntry(x: 4, y: 5750),
            ChartDataEntry(x: 5, y: 5700),
            ChartDataEntry(x: 6, y: 5750),
            ChartDataEntry(x: 7, y: 5800),
            ChartDataEntry(x: 8, y: 5850),
            ChartDataEntry(x: 9, y: 5900),
            ChartDataEntry(x: 10, y: 5850),
            ChartDataEntry(x: 11, y: 5800),
            ChartDataEntry(x: 12, y: 5750),
            ChartDataEntry(x: 13, y: 5800),
            ChartDataEntry(x: 14, y: 5850),
            ChartDataEntry(x: 15, y: 5900),
            ChartDataEntry(x: 16, y: 5950),
            ChartDataEntry(x: 17, y: 5900),
            ChartDataEntry(x: 18, y: 5950),
            ChartDataEntry(x: 19, y: 6000),
            ChartDataEntry(x: 20, y: 6050),
            ChartDataEntry(x: 21, y: 6100),
            ChartDataEntry(x: 22, y: 6050),
            ChartDataEntry(x: 23, y: 6000),
            ChartDataEntry(x: 24, y: 6050),
            ChartDataEntry(x: 25, y: 6100),
            ChartDataEntry(x: 26, y: 6150),
            ChartDataEntry(x: 27, y: 6100),
            ChartDataEntry(x: 28, y: 6050),
            ChartDataEntry(x: 29, y: 6000),
            ChartDataEntry(x: 30, y: 5950)
        ]
        return yValues
    }
    
}

