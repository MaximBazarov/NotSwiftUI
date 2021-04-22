//
//  File.swift
//  
//
//  Created by Maxim Bazarov on 17.02.21.
//

import Foundation

struct Atom<T> {
    let value: T
}


struct ViewModel {

    init(icon: Int) {
        self.icon = Atom(value: icon)
    }

    let icon: Atom<Int>


}
