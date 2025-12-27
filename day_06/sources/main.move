/// DAY 6: String Type for Habit Names
///
/// Today you will:
/// 1. Learn about the String type
/// 2. Replace vector<u8> with String
/// 3. Convert bytes to String using string::utf8

module challenge::day_06 {
    use std::vector;
    use std::string::{Self, String};

    /// Habit struct now uses String instead of vector<u8>
    public struct Habit has copy, drop {
        name: String,
        completed: bool,
    }

    /// HabitList keeps a list of habits
    public struct HabitList has drop {
        habits: vector<Habit>,
    }

    /// Create a new habit using String
    public fun new_habit(name: String): Habit {
        Habit {
            name,
            completed: false,
        }
    }

    /// Create an empty habit list
    public fun empty_list(): HabitList {
        HabitList {
            habits: vector::empty(),
        }
    }

    /// Add a habit to the list (ownership moves)
    public fun add_habit(list: &mut HabitList, habit: Habit) {
        vector::push_back(&mut list.habits, habit);
    }

    /// Mark a habit as completed by index
    public fun complete_habit(list: &mut HabitList, index: u64) {
        let len = vector::length(&list.habits);
        if (index < len) {
            let habit = vector::borrow_mut(&mut list.habits, index);
            habit.completed = true;
        }
    }

    /// Helper: create a Habit from vector<u8>
    public fun make_habit(name_bytes: vector<u8>): Habit {
        let name = string::utf8(name_bytes);
        new_habit(name)
    }
}
