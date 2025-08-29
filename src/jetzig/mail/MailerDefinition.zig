const std = @import("std");
const jetzig = @import("../../jetzig.zig");

pub const DeliverFn = *const fn (
    std.mem.Allocator,
    *jetzig.mail.MailParams,
    *jetzig.data.Value,
    jetzig.jobs.JobEnv,
) anyerror!void;

name: []const u8,
deliverFn: DeliverFn,
text_template: []const u8,
html_template: []const u8,
