//
//  payCalculation.swift
//  overtimeIAmChallenged
//
//  Created by Ayo what the dog doing Codeconnor on 3/20/24.
//

import Foundation

    public class PayCalculation {
        
        // Assuming some properties that might be relevant for pay calculation.
        // Update these properties based on your actual requirements.
        var baseRate: Double
        var overtimeRateMultiplier: Double

        // Public initializer
        public init(baseRate: Double, overtimeRateMultiplier: Double = 1.5) {
            self.baseRate = baseRate
            self.overtimeRateMultiplier = overtimeRateMultiplier
        }

        // Function to calculate wage
        public func calculateWage(withBasePay basePay: Double, andHours hours: Double) -> Double {
            let regularHours = min(hours, 40)
            let overtimeHours = max(hours - 40, 0)

            let regularPay = regularHours * basePay
            let overtimePay = overtimeHours * basePay * overtimeRateMultiplier

            return regularPay + overtimePay
        }
    }


