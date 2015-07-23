scope({c0_A:0, c0_b:0});
defaultScope(1);
intRange(-8, 7);
stringLength(16);

c0_A = Abstract("c0_A");
c0_b = c0_A.addChild("c0_b").withCard(0, 1);
c0_C = Clafer("c0_C").withCard(1, 1);
c1_b = c0_C.addChild("c1_b").withCard(0, 1);
c0_a = c0_C.addChild("c0_a").withCard(1, 1);
c0_d = c0_a.addChild("c0_d").withCard(1, 1);
c2_b = c0_d.addChild("c2_b").withCard(0, 1);
c0_a.refTo(c0_A);
c0_a.addConstraint(some(join(join($this(), c0_d), c2_b)));
