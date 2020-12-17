//
//  SemaphoreDataModel.swift
//  TestSemaphoreApp
//
//  Created by Pero Sechkov on 17.12.20.
//

import Foundation

class SemaphoreDataModel {
    var semaphores = [Semaphore]()
    
    var count : Int {
        return self.semaphores.count
    }
    
    init() {
        self.semaphores = [Semaphore(color: .green, name: "Green"),Semaphore(color: .red, name: "Red"),Semaphore(color: .yellow, name: "Yellow")]
    }
    
    func deleteSemaphore(at index: Int) {
        self.semaphores.remove(at: index)
    }
    
    func addSemaphore(semaphore : Semaphore) {
        self.semaphores.append(semaphore)
    }
    
    func getSemaphore(at index: Int) -> Semaphore {
        return self.semaphores[index]
    }
}
