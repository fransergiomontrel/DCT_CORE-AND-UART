
module ram_data(
input [12:0] sample,
output reg unsigned [15:0] sampled_data
);

reg signed [15:0] data[0:7215];

initial begin
    $readmemh("sampled_signal.hex", data);
end

always @(*) begin

    sampled_data = data[sample];

end

endmodule