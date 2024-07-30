//
//  Logger.swift
//  TrackPodTest
//
//  Created by cuongnv on 30/7/24.
//

import Foundation

public class Logger {
    public static var instace = Logger()
    private init() {}
    
    public var callbackLog: ((String) -> Void)?
}
