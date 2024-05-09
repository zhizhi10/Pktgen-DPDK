package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

require "Pktgen"

--pktgen.range.dst_mac("0", "start", "3c:fd:fe:9c:5c:00");
--pktgen.range.src_mac("0", "start", "3c:fd:fe:9c:5c:b8");

pktgen.range.dst_ip("all", "start", "192.168.0.1");
pktgen.range.dst_ip("all", "inc", "0.0.0.0");
pktgen.range.dst_ip("all", "min", "192.168.0.1");
pktgen.range.dst_ip("all", "max", "192.168.0.128");

pktgen.range.src_ip("all", "start", "192.168.1.1");
pktgen.range.src_ip("all", "inc", "0.0.0.0");
pktgen.range.src_ip("all", "min", "192.168.1.1");
pktgen.range.src_ip("all", "max", "192.168.1.128");

pktgen.set_proto("all", "udp");

pktgen.range.dst_port("all", "start", 5000);
pktgen.range.dst_port("all", "inc", 0);
pktgen.range.dst_port("all", "min", 5000);
pktgen.range.dst_port("all", "max", 7000);

pktgen.range.src_port("all", "start", 2000);
pktgen.range.src_port("all", "inc", 1);
pktgen.range.src_port("all", "min", 2000);
pktgen.range.src_port("all", "max", 2500);


pktgen.range.pkt_size("all", "start", 240);
pktgen.range.pkt_size("all", "inc", 0);
pktgen.range.pkt_size("all", "min", 64);
pktgen.range.pkt_size("all", "max", 512);

pktgen.set_range("all", "on");
pktgen.start("all");

