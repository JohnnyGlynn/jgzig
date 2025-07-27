const std = @import("std");

pub fn main() void {
    std.debug.print("Hello, world!\n", .{});
    std.debug.print("Size of u32: {}\n", .{@sizeOf(u32)});
    std.debug.print("Alignment of u32: {}\n", .{@alignOf(u32)});

    const high: u4 = 0b1010;
    const low: u4 = 0b0101;

    const hl: u8 = high | low;
    std.debug.print("hl: {b:0>8}\n", .{hl});

    const shifted_left = hl << 1;
    const shifted_right = hl >> 1;

    std.debug.print("shifted left:   {b:0>8}\n", .{shifted_left});
    std.debug.print("shifted right:  {b:0>8}\n", .{shifted_right});
}
