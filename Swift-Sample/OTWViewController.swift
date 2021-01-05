//
//  OTWViewController.swift
//  Swift-Sample
//
//  Created by Dustin Allen on 1/4/21.
//

import UIKit
import Gimbal

class OTWViewController: UIViewController, PickupManagerDelegate {
    
    let pickup = Pickup.init(identifier: "Order123", placeIdentifier: "PLACE_ID", attributes: nil)
    let pickupManager = PickupManager.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickupManager.startMonitoringPickup(pickup) { (response) in
            print(response)
        }
    }

    func pickupManager(_ pickupManager: PickupManager, didArriveAt pickup: Pickup) {
        print("Arrived for \(pickup.identifier) at \(pickup.placeIdentifier)")
    }
    
    func pickupManager(_ pickupManager: PickupManager, didStartMonitoringPickup pickup: Pickup) {
        print("Started Monitoring for \(pickup.identifier) at \(pickup.placeIdentifier)")
    }
    
    func pickupManager(_ pickupManager: PickupManager, didStopMonitoringPickup pickup: Pickup, reason completionReason: PickupCompletionReason) {
        print("Stopped Monitoring for \(pickup.identifier) at \(pickup.placeIdentifier)")
    }
    
    func setAwaitingItem() {
        pickupManager.setAwaitingItem(true, for: pickup) { (response) in
            print(response)
        }
    }

}
