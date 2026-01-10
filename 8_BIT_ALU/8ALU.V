module alu_simple(
    input wire clk,
    input wire reset,
    input wire [7:0] sw,
    input wire [2:0] opcode,
    input wire btn_execute,
    output reg [7:0] result_led,
    output reg zero_flag,
    output reg carry_flag
);

    reg [8:0] temp_result;
    reg btn_prev;
    wire btn_edge;
    
    assign btn_edge = btn_execute & ~btn_prev;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result_led <= 0;
            zero_flag <= 0;
            carry_flag <= 0;
            btn_prev <= 0;
        end else begin
            btn_prev <= btn_execute;
            
            if (btn_edge) begin
                // Use sw directly - no intermediate registers
                case(opcode)
                    3'b000: temp_result = sw + sw;                   // ADD
                    3'b001: temp_result = sw - sw;                   // SUB
                    3'b010: temp_result = {1'b0, sw & sw};           // AND
                    3'b110: temp_result = {1'b0, sw | sw};           // OR 
                    3'b100: temp_result = {1'b0, sw ^ sw};           // XOR
                    3'b101: temp_result = {1'b0, ~sw};               // NOT
                    3'b011: temp_result = {sw[7], sw[6:0], 1'b0};    // Left Shift
                    3'b111: temp_result = {sw[0], 1'b0, sw[7:1]};    // Right Shift
                    default: temp_result = 9'h000;
                endcase
                
                result_led <= temp_result[7:0];
                carry_flag <= temp_result[8];
                zero_flag <= (temp_result[7:0] == 8'h00);
            end
        end
    end
endmodule
