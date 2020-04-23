//
//  CrashlyticsCrashHandler.swift
//  KermitSampleIOS
//
//  Created by Kevin Schildhorn on 4/14/20.
//  Copyright © 2020 Samuel Hill. All rights reserved.
//

import UIKit
import shared

class KermitCrashHandler: CrashkiosCrashHandler {
    
    let kermit = KermitKermit(logger: UtilKt.getNSLogger())

    override init() {
        self.kermit.v(withTag: "CrashKiOS", message: { "Crash handler initialized" })
    }

    override func crash(t: KotlinThrowable) {
        self.kermit.wtf(tag: "CrashKiOS", throwable: t, message: { "Crash!" })
    }
}