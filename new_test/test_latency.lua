package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

require "Pktgen"
-- A list of the test script for Pktgen and Lua.
-- Each command somewhat mirrors the pktgen command line versions.
-- A couple of the arguments have be changed to be more like the others.
--

pktgen.set("all", "rate", 0.01);
pktgen.set_proto("all", "udp");
pktgen.latency("all", "on");
pktgen.page("latency")

pktgen.start("all");         
-- TODO: Need to create a pktgen.seqTableN("all", seqTable); like support
