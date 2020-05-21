module (input I7,I6,I5,I4,I3,I2,I1,I0
        output Y0,Y1,Y2);
        assign Y2 = I7 + ~I7&I6 + ~I7&~I6&I5 +~I7&~I6&~I5;
               Y1 = I7 + ~I7&I6 + ~I7&~I6&~I5&~I4&I3 + ~I7&~I6&~I5&~I4&~I3&I2;
               Y0 = I7 + ~I7&~I6&I5 + ~I7&~I6&~I5&~I4&I3 + ~I7&~I6&~I5&~I4&~I3&~I2&I1;
               
endmodule