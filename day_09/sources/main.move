module challenge::day_09 {
    use std::string::String;

    // 1) Enum for task status
    public enum TaskStatus has copy, drop {
        Open,
        Completed,
    }

    // 2) Task now uses TaskStatus instead of bool
    public struct Task has copy, drop {
        title: String,
        reward: u64,
        status: TaskStatus,
    }

    // 3) Constructor sets status = Open
    public fun new_task(title: String, reward: u64): Task {
        Task {
            title,
            reward,
            status: TaskStatus::Open,
        }
    }

    // 4) Helper: check if task is open
    public fun is_open(task: &Task): bool {
        task.status == TaskStatus::Open
    }
}
