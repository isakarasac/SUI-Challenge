    public fun find_task_by_title(
        board: &TaskBoard,
        title: &String
    ): Option<u64> {
        let mut i = 0;
        let len = vector::length(&board.tasks);

        while (i < len) {
            let task_ref = vector::borrow(&board.tasks, i);
            if (&task_ref.title == title) {
                return option::some(i);
            };
            i = i + 1;
        };

        return option::none();
    }
