//
//  StreamingService.swift
//  Luno
//
//  Created by Mpendulo Ndlovu on 2020/03/16.
//  Copyright © 2020 Luno. All rights reserved.
//

import Foundation

@available(iOS 13.0, *)
protocol StreamingService: AnyObject {
    var streamer: Streaming { get }
}
