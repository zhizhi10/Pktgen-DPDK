package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

require "Pktgen"
-- A list of the test script for Pktgen and Lua.
-- Each command somewhat mirrors the pktgen command line versions.
-- A couple of the arguments have be changed to be more like the others.
--
       
seqTable = {
  [0] = {
    ["pktSize"] = 64,
    ["ip_dst_addr"] = "192.168.80.25/24",
    ["eth_dst_addr"] = "6c:fe:54:40:5f:89",
    ["eth_src_addr"] = "6c:fe:54:40:52:49",
    ["dport"] = 10,
    ["sport"] = 9,
    ["tlen"] = 42,
    ["ip_src_addr"] = "192.168.80.24",
    ["vlanid"] = 40,
    ["ipProto"] = "udp",
    ["ethType"] = "ipv4",
  },
  [1] = {
    ["pktSize"] = 128,
    ["ip_dst_addr"] = "192.168.80.25/24",
    ["eth_dst_addr"] = "6c:fe:54:40:5f:89",
    ["eth_src_addr"] = "6c:fe:54:40:52:49",
    ["dport"] = 10,
    ["sport"] = 9,
    ["tlen"] = 42,
    ["ip_src_addr"] = "192.168.80.24",
    ["vlanid"] = 40,
    ["ipProto"] = "udp",
    ["ethType"] = "ipv4",
  },
  [2] = {
    ["pktSize"] = 256,
    ["ip_dst_addr"] = "192.168.80.25/24",
    ["eth_dst_addr"] = "6c:fe:54:40:5f:89",
    ["eth_src_addr"] = "6c:fe:54:40:52:49",
    ["dport"] = 10,
    ["sport"] = 9,
    ["tlen"] = 42,
    ["ip_src_addr"] = "192.168.80.24",
    ["vlanid"] = 40,
    ["ipProto"] = "udp",
    ["ethType"] = "ipv4",
  },
  [3] = {
    ["pktSize"] = 512,
    ["ip_dst_addr"] = "192.168.80.25/24",
    ["eth_dst_addr"] = "6c:fe:54:40:5f:89",
    ["eth_src_addr"] = "6c:fe:54:40:52:49",
    ["dport"] = 10,
    ["sport"] = 9,
    ["tlen"] = 42,
    ["ip_src_addr"] = "192.168.80.24",
    ["vlanid"] = 40,
    ["ipProto"] = "udp",
    ["ethType"] = "ipv4",
  },


  [4] = {
    ["pktSize"] = 1024,
    ["ip_dst_addr"] = "192.168.80.25/24",
    ["eth_dst_addr"] = "6c:fe:54:40:5f:89",
    ["eth_src_addr"] = "6c:fe:54:40:52:49",
    ["dport"] = 10,
    ["sport"] = 9,
    ["tlen"] = 42,
    ["ip_src_addr"] = "192.168.80.24",
    ["vlanid"] = 40,
    ["ipProto"] = "udp",
    ["ethType"] = "ipv4",
  },
  ["n"] = 5,
}
for i=0,4 do
    pktgen.seqTable(i, "all", seqTable[i]);
end

pktgen.set("all", "seq_cnt", 5);

pktgen.start("all");         
-- TODO: Need to create a pktgen.seqTableN("all", seqTable); like support
