module challenge::day_10 {
    use std::string::String;

    // Copy from day_09: TaskStatus enum and Task struct
    public enum TaskStatus has copy, drop {
        Open,
        Completed,
    }

    public struct Task has copy, drop {
        title: String,
        reward: u64,
        status: TaskStatus,
    }

    public fun new_task(title: String, reward: u64): Task {
        Task {
            title,
            reward,
            status: TaskStatus::Open,
        }
    }

    public fun is_open(task: &Task): bool {
        task.status == TaskStatus::Open
    }

    // Day 10 TODO: public function to complete tasks
    public fun complete_task(task: &mut Task) {
        task.status = TaskStatus::Completed;
    }

    // (Optional) private helper example (bonus gibi düşün)
    // fun internal_complete(task: &mut Task) {
    //     task.status = TaskStatus::Completed;
    // }
    //
    // public fun complete_task(task: &mut Task) {
    //     internal_complete(task);
    // }
}
