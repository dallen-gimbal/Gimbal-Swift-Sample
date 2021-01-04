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
        print(visit.place.identifier as String)
    }
    
    // Exit for Place Callback
    func placeManager(_ manager: PlaceManager, didEnd visit: Visit) {
        print(visit.place.identifier as String)
    }
    
    // Callback When Significant Location Change Occurs
    func placeManager(_ manager: PlaceManager, didDetect location: CLLocation) {
        print(location.coordinate.latitude as Double)
    }
    
    // Entry for Place Callback With Delay
    func placeManager(_ manager: PlaceManager, didBegin visit: Visit, withDelay delayTime: TimeInterval) {
        print(visit.place.identifier as String)
    }
    
    // Callback For Beacon Sighting
    func placeManager(_ manager: PlaceManager, didReceive sighting: BeaconSighting, forVisits visits: [Any]) {
        print(sighting.beacon.identifier as String)
    }
    
    // Callback For Beacon Sighting (not needed if placeManager callback is already included)
    func beaconManager(_ manager: BeaconManager, didReceive sighting: BeaconSighting) {
        print(sighting.beacon.identifier as String)
    }
}

// Callbacks For Pickup (On-The-Way SDK)
extension ViewController {
    // Callback For Arrival At Pickup Location
    func pickupManager(_ pickupManager: PickupManager, didArriveAt pickup: Pickup) {
        print(pickup.identifier as String)
    }
    
    // Callback When Monitoring Starts
    func pickupManager(_ pickupManager: PickupManager, didStartMonitoringPickup pickup: Pickup) {
        print(pickup.identifier as String)
    }
    
    // Callback When Monitoring Stops
    func pickupManager(_ pickupManager: PickupManager, didStopMonitoringPickup pickup: Pickup, reason completionReason: PickupCompletionReason) {
        print(pickup.identifier as String)
    }
}
