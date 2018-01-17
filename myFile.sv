
// --- the parent class --- //
class ParentClass;

string Pname = "... WINTER IS COMING ...";

virtual function void myFun ();
  $display("name: %0s", this.name);
endfunction : myFun

endclass : ParentClass


// --- the child class --- //
class ChildClass extends ParentClass;

string Cname = "... LET IT COME ...";

function myFun ();
  string Cname = "... I AM READY ...";
  $display("name: %0s", this.name);
  $display("name: %0s", name);
endfunction : myFun

endclkass : ChildClass




// --- the test ---//
Program PolyMorph;

PArentClass pc = new();
ChildClass  cc = new();

initial
  begin
    pc.myFun();
    cc.myFun();
    
  end

endprogram : PolyMorph
