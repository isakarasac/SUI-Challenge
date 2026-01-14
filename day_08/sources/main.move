module challenge::day_08 {
    use std::string::String;

    /// A simple task for a bounty board
    public struct Task has copy, drop {
        title: String,
        reward: u64,
        done: bool,
    }

    /// Constructor: creates a new Task with done = false
    public fun new_task(title: String, reward: u64): Task {
        Task { title, reward, done: false }
    }
}