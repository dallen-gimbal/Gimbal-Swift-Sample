//
//  ViewController.swift
//  Swift-Sample
//
//  Created by Dustin Allen on 12/21/20.
//

import UIKit
import Gimbal

class ViewController: UIViewController, PlaceManagerDelegate, BeaconManagerDelegate, PickupManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Entry for Place Callback
    func placeManager(_ manager: PlaceManager, didBegin visit: Visit) {
        print("Visit began: \(visit.place.identifier as String)")
    }
    
    // Exit for Place Callback
    func placeManager(_ manager: PlaceManager, didEnd visit: Visit) {
        print("Visit ended: \(visit.place.identifier as String)")
    }
    
    // Callback When Significant Location Change Occurs
    func placeManager(_ manager: PlaceManager, didDetect location: CLLocation) {
        print("Updated latitude: \(location.coordinate.latitude as Double)")
    }
    
    // Entry for Place Callback With Delay
    func placeManager(_ manager: PlaceManager, didBegin visit: Visit, withDelay delayTime: TimeInterval) {
        print("Delayed visit began: \(visit.place.identifier as String)")
    }
    
    // Callback For Beacon Sighting
    func placeManager(_ manager: PlaceManager, didReceive sighting: BeaconSighting, forVisits visits: [Any]) {
        print("Sighted beacon: \(sighting.beacon.identifier as String)")
    }
    
    // Callback For Beacon Sighting (not needed if placeManager callback is already included)
    func beaconManager(_ manager: BeaconManager, didReceive sighting: BeaconSighting) {
        print("Sighted beacon: \(sighting.beacon.identifier as String)")
    }
}
