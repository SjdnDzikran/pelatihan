class Solution {
  List<int> twoSum(List<int> nums, int target) {


    final Map<int, int> correspondence = Map<int, int>();

    for (var i = 0; i < nums.length; i++) {
      final int value = nums[i];

      final int key = target - value;
      if (correspondence.containsKey(key)) {

        return [correspondence[key]!, i];
      }

      correspondence[value] = i;


    }
    return [];
  }
}