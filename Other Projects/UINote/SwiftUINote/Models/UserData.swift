//
//  UserData.swift
//  SwiftUINote
//
//  Created by chanju Jeon on 05/06/2019.
//  Copyright © 2019 we'd. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    let willChange = PassthroughSubject<UserData, Never>()
    
    var notes = NoteData.shared.notes {
        didSet {
            willChange.send(self)
            NoteData.shared.notes = notes
        }
    }
}
