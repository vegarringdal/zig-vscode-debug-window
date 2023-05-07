const std = @import("std");

pub fn addOne(num: i32) i32 {
    return num + 1;
}

pub fn main() !void {
    var x = addOne(41);
    std.debug.print("Number is {d} \n", .{x});
}

test "expect addOne adds one to 41" {
    var x = addOne(41);
    try std.testing.expect(x == 42);
}
