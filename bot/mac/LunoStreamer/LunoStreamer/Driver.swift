//
//  Driver.swift
//  LunoStreamer
//
//  Created by Mpendulo Ndlovu on 2020/03/16.
//  Copyright © 2020 Elefantel. All rights reserved.
//

import Cocoa

class Driver: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        stream()
    }
    
    func stream() {
        let exchangeService = ExchangeService(streamer: Streamer(endpoint: .exchange))
        exchangeService.streamOrderBook(
            pair: .btczar,
            completion: { snapshot, update in
                if let snapshot = snapshot {
                    print(snapshot)
                } else if let update = update {
                    print(update)
                }
        }, failure: { print($0.message)})
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}
