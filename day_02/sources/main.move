/// DAY 2: Primitive Types & Simple Functions
/// 
/// Today you will:
/// 1. Practice with primitive types (u64, bool)
/// 2. Write your first function
/// 3. Write your first test

module challenge::day_02 {
    #[test_only]
    use std::unit_test::assert_eq;

    // TODO: Write a function called 'sum' that takes two u64 numbers

    public fun sum(number: u64, number_2: u64):u64{
        number + number_2
    }
  

    // TODO: Write a test function that checks sum(1, 2) == 3
    #[test]
    fun test_sum() {
        let test= sum(1,2);
      assert_eq!(test,3);
    }
}

