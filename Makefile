APPLICATION = Pflanzen1

# This defines the node's behavior. It must be one of
# * sensor:		node that collects data fom attached sensors and forwards it
# * collector:  node that collects sensor data, forwards it to the gateway, and
#   		    controls the pump)
ROLE ?= sensor
#TODO error for invalid values
CFLAGS += -DNODE_ROLE=\"$(ROLE)\"

# If no BOARD is found in the environment, use this default:
BOARD ?= native

# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/RIOT

# Uncomment this to enable scheduler statistics for ps:
#CFLAGS += -DSCHEDSTATISTICS

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
CFLAGS += -DDEVELHELP

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

# Modules to include:
USEMODULE += shell
USEMODULE += shell_commands
USEMODULE += ps
# net
USEMODULE += gnrc_netdev_default
USEMODULE += auto_init_gnrc_netif
USEMODULE += gnrc_ipv6_default
#USEMODULE += gnrc_icmpv6_echo
USEMODULE += gnrc_sock_udp
# saul
USEMODULE += saul_default

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

include $(RIOTBASE)/Makefile.include