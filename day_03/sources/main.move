/// DAY 3: Structs (Habit Model Skeleton)
///
/// Today you will:
/// 1. Learn about structs
/// 2. Create a Habit struct
/// 3. Write a constructor function

module challenge::day_03 {
    use std::vector;

    /// A simple habit model
    /// - name: habit name stored as bytes
    /// - completed: whether the habit is done or not
    public struct Habit has copy, drop {
        name: vector<u8>,
        completed: bool,
    }

    /// Constructor function to create a new habit
    public fun new_habit(name: vector<u8>): Habit {
        Habit {
            name,
            completed: false,
        }
    }
}
