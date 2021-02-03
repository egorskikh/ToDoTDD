//
//  TaskManager.swift
//  ToDo
//
//  Created by Егор Горских on 03.02.2021.
//

import Foundation

class TaskManager {
    var tasksCount: Int {
        return tasks.count
    }
    
    var doneTasksCount: Int {
        return doneTasks.count
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    private var tasks: [Task] = []
    private var doneTasks: [Task] = []
    
    func task(at index: Int) -> Task {
        return tasks[index]
    }
    
    func checkTask(at index: Int) { 
        let task = tasks.remove(at: index)
        doneTasks.append(task)
    }
    
    func doneTask(at index: Int) -> Task {
        return doneTasks[index]
    }
    
}
