#!/bin/sh

log_ip="$(uci get system.@system[0].log_ip)"
log_protocol="$(uci get system.@system[0].log_proto|awk '{print tolower($0)}')"
log_port="$(uci get system.@system[0].log_port)"


if [ ! -z "$log_ip" ] && [ ! -z "$log_port" ] && { [ "$log_protocol" = "tcp" ] || [ "$log_protocol" = "udp" ]; }; then
	echo "destination remote_log_server {"
	echo "$log_protocol("$log_ip") port($log_port);"
	echo "};"
	echo "log { source(src); destination(remote_log_server); };"
fi
