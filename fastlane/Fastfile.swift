// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func buildLane() {
        desc("Build for testing")
		scan(
            derivedDataPath: "derivedData",
            buildForTesting: true
        )
	}
    
    func unitTestLane() {
        desc("run Unit-tests")
        scan(
            onlyTesting: "GitHubActionsTests",
            derivedDataPath: "derivedData",
            testWithoutBuilding: true
        )
    }
    
    func uiTestLane() {
        desc("Run UI-tests")
        scan(
            onlyTesting: "GitHubActionsUITests",
            derivedDataPath: "derivedData",
            testWithoutBuilding: true
        )
    }
}
