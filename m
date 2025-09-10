Return-Path: <devicetree+bounces-215290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37899B51111
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BF92160C8E
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 08:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A9B30F534;
	Wed, 10 Sep 2025 08:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b="YtZP+uFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF22B30DD2C
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757492440; cv=none; b=EmZUl0Z26Bn6vGSq6Wk3qOm8lgUr5kKqq8fFHfeHc4ebAQt4rGaq0LLjewz+DiFIPQQ8dy4/tZ+pyDkgZqITvKFcxMnXX1IEM5Ij0mbBerHtNCbkFC4sY0Jeyhnr2blq8MSP75GrMptZxa17NtTU8OtBArGS2ZN16Zmf/tUkLKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757492440; c=relaxed/simple;
	bh=UwxRLW5NK8xjd+gjRoNG/I7F0O2ZY5PwgL3TdjijFdA=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=P0IQMPdRYI68LNleQHiT7DDewmjPt2vDI9Y/fvWFHwZIusjIAbeyt2DbZnU1f793JUVY0aT1NCn1M2PeTbkq4u/Jl6pxKVZddsGFba4wekMvrXuVxhAKjbzXIVSPg58bOL7ZnF3ZtQxUBS/UW+DHnqI9pMhvLNpyyB8Nfqjwqmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=YtZP+uFE; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1757492434; x=1757751634;
	bh=9jlYVI6Y5yupsDhuFFPwO/Y7dVlu8cYkZchkr2o0ntU=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=YtZP+uFEnC8CqLJJcZfovJrrhWCoPj8JHIMAVo/+Z0s+uUkWUPMRKETzDiXhfVk0h
	 KmLks9sZ/RD+vj/Sj5lo7WIB5fl7VUkD4h/B5FYTb41MQ+dmXlWxPy7b21a7hLSg/n
	 d06aCj5luKO0fvz4mdqebkzFgwpMSZdyvwQAXT4hwdBdmaaaaqCfxrWBTBYdk7uF2b
	 o4B6qFjZ35mVMEApOIkAo/UX4wBZRakOkSuY/ZIqzmckHN78RBvH/pwmjog7w3ChK6
	 K0lMA1JwDYOrUYkqs638NBlmfatuDDUTS5cLLYnaAZZR0cdSjhT18yHi2TefprxDcC
	 AppPAnFg2kEbQ==
Date: Wed, 10 Sep 2025 08:20:28 +0000
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From: Zoo Moo <zoomoo100@proton.me>
Subject: Marvell 375 and Marvel 88E1514 Phy network problem: mvpp2 or DTS related?
Message-ID: <bGzC_MZwaY4HhZvDYu8X4uipZk3Lk9gQSsototCCPKLb03yAe64kh0e4yjwFCoPS2ld5LYwZ8OVgIkfbry1Zxrvvtm0t-9TZ4b9dB8QExjU=@proton.me>
Feedback-ID: 130971294:user:proton
X-Pm-Message-ID: 5c4e125c01784daafb5c0c2e751d9d803ba1e709
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------0c1666c11d6729aeed684bdca0ff804fb97541490965172f9b834ad09f9b08c8"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------0c1666c11d6729aeed684bdca0ff804fb97541490965172f9b834ad09f9b08c8
Content-Type: multipart/mixed;boundary=---------------------12ed276ba5bdbce2b9a44c4c84b5b843

-----------------------12ed276ba5bdbce2b9a44c4c84b5b843
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi,

Bodhi from Doozan (https://forum.doozan.com) has been helping me try to ge=
t Debian to work on a Synology DS215j NAS. The DS215j is based on a Marvel=
l Armada 375 (88F6720) and uses a Marvel 88E1514 PHY.

Even though the eth0 device is detected with the tweaked DTS for the 6.6 k=
ernel. Eth0 can send packets (according to ifconfig and ethtool -S), but n=
othing is ever received by the device or the router. =


Even if I manually set an IP and MAC address for eth0 I cannot detect any =
packets leaving the DS215j as I cannot ping/telnet/nmap/wireshark the DS21=
5J. There is also no LED activity on the network hub.

The eth0 interfaces works when booting the stock Synology DSM OS which is =
based on the very old and Synology modified 3.x linux kernel. =


https://global.synologydownload.com/download/ToolChain/Synology%20NAS%20GP=
L%20Source/7.1.1-42962/armada375/linux-3.x.txz

However, the Synology kernel does not use DTS and uses a custom build envi=
ronment. =


https://help.synology.com/developer-guide/

Please see the below thread for the gory details of attempting to get DS21=
5j to work:

Debian on Synology DS215j
https://forum.doozan.com/read.php?2,138851 =




My current DTS for the 6.6 kernel is below. I'm using kernel 6.6 because t=
hat is what the uinitrd is available for from the doozan website.

-----------------------------------------------------
// SPDX-License-Identifier: GPL-2.0
/*
 * Device Tree file for Synology DS215j NAS
 *
 * Copyright (C) 2025 bodhi <mibodhi@gmail.com>
 */

/dts-v1/;
#include <dt-bindings/gpio/gpio.h>
#include "armada-375.dtsi"

/ {
	model =3D "Synology DS215j";
	compatible =3D "marvell,a375-db", "marvell,armada375";

	chosen {
		stdout-path =3D "serial0:115200n8";
	};

	memory@0 {
		device_type =3D "memory";
		reg =3D <0x00000000 0x20000000>; /* 512 MB */
	};

	soc {
		ranges =3D <MBUS_ID(0xf0, 0x01) 0 0xf1000000 0x100000
				MBUS_ID(0x01, 0x1d) 0 0xfff00000 0x100000
				MBUS_ID(0x09, 0x09) 0 0xf1100000 0x10000
				MBUS_ID(0x09, 0x05) 0 0xf1110000 0x10000>;

        	internal-regs {

				serial@12100 {
				/* A PIC16F1829 is connected to uart1 at 9600 bps,
				 * and takes single-character orders :
				 *   "1" : power off // already handled by the poweroff node
				 *   "2" : short beep
				 *   "3" : long beep
				 *   "4" : turn the power LED ON
				 *   "5" : flash the power LED
				 *   "6" : turn the power LED OFF
				 *   "7" : turn the status LED OFF
				 *   "8" : turn the status LED ON
				 *   "9" : flash the status LED
				 *   "A" : flash the motherboard LED (D8)
				 *   "B" : turn the motherboard LED OFF
				 *   "C" : hard reset
				 */
				pinctrl-names =3D "default";
				status =3D "okay";
			};

			poweroff@12100 {
				compatible =3D "synology,power-off";
				reg =3D <0x12100 0x100>;
				clocks =3D <&coreclk 0>;
			};
		};
	};
};

&spi0 {
	pinctrl-0 =3D <&spi0_pins>;
	pinctrl-names =3D "default";
	status =3D "okay";

	/* MX 25L6406E I-12G 64Mb 86MHz SPI*/
	spi-flash@0 {
		#address-cells =3D <1>;
		#size-cells =3D <1>;
		compatible =3D "jedec,spi-nor";
		reg =3D <0>; /* Chip select 0 */
		spi-max-frequency =3D <86000000>;  =


		partition@0 {
			label =3D "u-boot";
			reg =3D <0x0 0x100000>;
		};
	};
};

&uart0 {
	status =3D "okay";
};

&uart1 {
	status =3D "okay";
}; =



&sata {
	status =3D "okay";
	nr-ports =3D <2>;
};

&usb1 {
	status =3D "okay";
};

&usb2 {
	status =3D "okay";
};

/* Management Data Input/Output (MDIO)
	aka Serial Management Interface (SMI) */
/* Armada 375 press-release: "Beside USB 3.0 support and on-chip dual EEE =
Gigabit PHYs" */
&mdio {
	status =3D "okay";
	/* Marvel 375 SoC internal PHY EEE interface 1. =


	mdio_bus f10c0054.mdio-mii: MDIO device at address 0 is missing.
	*/
	
	phy0: ethernet-phy@0 {
		/* compatible =3D "marvell,88E1510"; */
		reg =3D <0>;
	};
	
	/*	Marvell PHY 88E1514 External PHY interface, 1 PORT */
	phy1: ethernet-phy@1 {
		/* Causes:
			[Firmware Warn]: /soc/internal-regs/mdio@c0054/ethernet-phy@1: Whitelis=
ted compatible string. Please remove
		*/
		/* compatible =3D "marvell,88E1514", "marvell,88E1510"; */ /* , "etherne=
t-phy-ieee802.3-c22"; */
		/* compatible =3D "marvell,88E1510"; */
		reg =3D <1>;
	};
			
	/* Marvel 375 SoC internal PHY EEE interface 2. =


	Or was it external on the development board? =


	I cannot find any specifications or details about the Marvell 375 develop=
ment board. */
	/* =


		mdio_bus f10c0054.mdio-mii: MDIO device at address 3 is missing.
	phy3: ethernet-phy@3 {
		reg =3D <3>;
	};
	*/
	
};

&ethernet {
        status =3D "okay";
};


// &eth0 {
// 	status =3D "okay";
// 	phy =3D <&phy0>;
// 	/* Reduced Gigabit MII with Internal Delay. */
// 	phy-mode =3D "rgmii-id"; =


// };

&eth1 {
	status =3D "okay";
	phy =3D <&phy1>;
	phy-mode =3D "rgmii-id";
};

/* gmii =E2=80=93 Gigabit */	
/* Label or path eth3 not found */
/* &eth3 {
*	status =3D "disable";
*	phy =3D <&phy3>;
*	phy-mode =3D "gmii"; =


* };
*/

&pciec {
	status =3D "okay";
};

&pcie0 {
	status =3D "okay";
};

&pcie1 {
	status =3D "okay";
};

-----------------------------------------------------


The relevant logs of the kernel booting on the DS215j shows it finds an et=
h0 device.

--------------------------------------------------
[    2.983021] mvpp2 f10f0000.ethernet: using 3 shared buffers
[    3.001651] mvpp2 f10f0000.ethernet eth0: Using hardware mac address 00=
:00:00:00:00:05
--------------------------------------------------

But initially, the ethtool eth0 results look wrong until manually running =
dhclient.

----------------------------------------------------------
root@(none):~# ethtool eth0
Settings for eth0:
        Supported ports: [ TP    AUI     MII     FIBRE   BNC     Backplane=
 ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
                                1000baseKX/Full
                                1000baseX/Full
                                100baseT1/Full
                                1000baseT1/Full
                                100baseFX/Half 100baseFX/Full
                                10baseT1L/Full
                                10baseT1S/Full
                                10baseT1S/Half
                                10baseT1S_P2MP/Half
        Supported pause frame use: No
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  Not reported
        Advertised pause frame use: No
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: Unknown!
        Duplex: Half
        Auto-negotiation: off
        Port: MII
        PHYAD: 0
        Transceiver: internal
        Link detected: no
----------------------------------------------------------

Using dhclient wakes up the interface and ethtool shows better results.

----------------------------------------------------------
root@(none):~# dhclient eth0
[   80.477808][ T2085] mvpp2 f10f0000.ethernet eth0: PHY [f10c0054.mdio-mi=
i:01] driver [Marvell 88E1510] (irq=3DPOLL)
[   80.488252][ T2085] mvpp2 f10f0000.ethernet eth0: configuring for phy/r=
gmii-id link mode
[   84.647536][  T113] mvpp2 f10f0000.ethernet eth0: Link is Up - 1Gbps/Fu=
ll - flow control off

root@(none):~# ethtool eth0
Settings for eth0:
        Supported ports: [ TP    MII     FIBRE ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Supported pause frame use: No
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Link partner advertised link modes:  10baseT/Half 10baseT/Full
                                             100baseT/Half 100baseT/Full
                                             1000baseT/Half 1000baseT/Full
        Link partner advertised pause frame use: Symmetric Receive-only
        Link partner advertised auto-negotiation: Yes
        Link partner advertised FEC modes: Not reported
        Speed: 1000Mb/s
        Duplex: Full
        Auto-negotiation: on
        Port: Twisted Pair
        PHYAD: 1
        Transceiver: external
        MDI-X: Unknown
        Link detected: yes
----------------------------------------------------------

ifconfig shows packets have been transmitted, and ethtool statistics show =
little activity (txq_1_desc_enqueue: 30, txq_1_buff_euqueue_to_ddr: 30).

----------------------------------------------------------
root@(none):~# ifconfig eth0
eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::200:ff:fe00:5  prefixlen 64  scopeid 0x20<link>
        ether 00:00:00:00:00:05  txqueuelen 2048  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 16  bytes 2576 (2.5 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
----------------------------------------------------------

Try adding IP address to eth0 and replacing the MAC address with the origi=
nal MAC.

----------------------------------------------------------
root@(none):~# ifconfig eth0 192.168.10.111 netmask 255.255.255.0 hw ether=
 00:11:22:33:44:55 up

 [   74.007427][   T10] mvpp2 f10f0000.ethernet eth0: Link is Up - 1Gbps/F=
ull - flow control off

root@(none):~# ifconfig     =


eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.111  netmask 255.255.255.0  broadcast 192.168.10.2=
55
        inet6 fe80::211:32ff:fe49:8cf8  prefixlen 64  scopeid 0x20<link>
        ether 00:11:22:33:44:55  txqueuelen 2048  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 31  bytes 7162 (6.9 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

root@(none):~# ethtool -S eth0
NIC statistics:
     good_octets_received: 0
     bad_octets_received: 0
     crc_errors_sent: 0
     unicast_frames_received: 0
     broadcast_frames_received: 0
     multicast_frames_received: 0
     frames_64_octets: 0
     frames_65_to_127_octet: 0
     frames_128_to_255_octet: 0
     frames_256_to_511_octet: 0
     frames_512_to_1023_octet: 0
     frames_1024_to_max_octet: 0
     good_octets_sent: 0
     unicast_frames_sent: 0
     multicast_frames_sent: 0
     broadcast_frames_sent: 0
     fc_sent: 0
     fc_received: 0
     rx_fifo_overrun: 0
     undersize_received: 0
     fragments_received: 0
     oversize_received: 0
     jabber_received: 0
     mac_receive_error: 0
     bad_crc_event: 0
     collision: 0
     late_collision: 0
     rx_fifo_or_parser_overrun_drops: 0
     rx_classifier_drops: 0
     txq_0_desc_enqueue: 0
     txq_0_desc_enqueue_to_ddr: 0
     txq_0_buff_euqueue_to_ddr: 0
     txq_0_desc_hardware_forwarded: 0
     txq_0_packets_dequeued: 0
     txq_0_queue_full_drops: 0
     txq_0_packets_early_drops: 0
     txq_0_packets_bm_drops: 0
     txq_0_packets_rep_bm_drops: 0
     txq_1_desc_enqueue: 30
     txq_1_desc_enqueue_to_ddr: 0
     txq_1_buff_euqueue_to_ddr: 30
     txq_1_desc_hardware_forwarded: 0
     txq_1_packets_dequeued: 30
     txq_1_queue_full_drops: 0
     txq_1_packets_early_drops: 0
     txq_1_packets_bm_drops: 0
     txq_1_packets_rep_bm_drops: 0
     txq_2_desc_enqueue: 0
     txq_2_desc_enqueue_to_ddr: 0
     txq_2_buff_euqueue_to_ddr: 0
     txq_2_desc_hardware_forwarded: 0
     txq_2_packets_dequeued: 0
     txq_2_queue_full_drops: 0
     txq_2_packets_early_drops: 0
     txq_2_packets_bm_drops: 0
     txq_2_packets_rep_bm_drops: 0
     txq_3_desc_enqueue: 0
     txq_3_desc_enqueue_to_ddr: 0
     txq_3_buff_euqueue_to_ddr: 0
     txq_3_desc_hardware_forwarded: 0
     txq_3_packets_dequeued: 0
     txq_3_queue_full_drops: 0
     txq_3_packets_early_drops: 0
     txq_3_packets_bm_drops: 0
     txq_3_packets_rep_bm_drops: 0
     txq_4_desc_enqueue: 0
     txq_4_desc_enqueue_to_ddr: 0
     txq_4_buff_euqueue_to_ddr: 0
     txq_4_desc_hardware_forwarded: 0
     txq_4_packets_dequeued: 0
     txq_4_queue_full_drops: 0
     txq_4_packets_early_drops: 0
     txq_4_packets_bm_drops: 0
     txq_4_packets_rep_bm_drops: 0
     txq_5_desc_enqueue: 0
     txq_5_desc_enqueue_to_ddr: 0
     txq_5_buff_euqueue_to_ddr: 0
     txq_5_desc_hardware_forwarded: 0
     txq_5_packets_dequeued: 0
     txq_5_queue_full_drops: 0
     txq_5_packets_early_drops: 0
     txq_5_packets_bm_drops: 0
     txq_5_packets_rep_bm_drops: 0
     txq_6_desc_enqueue: 0
     txq_6_desc_enqueue_to_ddr: 0
     txq_6_buff_euqueue_to_ddr: 0
     txq_6_desc_hardware_forwarded: 0
     txq_6_packets_dequeued: 0
     txq_6_queue_full_drops: 0
     txq_6_packets_early_drops: 0
     txq_6_packets_bm_drops: 0
     txq_6_packets_rep_bm_drops: 0
     txq_7_desc_enqueue: 0
     txq_7_desc_enqueue_to_ddr: 0
     txq_7_buff_euqueue_to_ddr: 0
     txq_7_desc_hardware_forwarded: 0
     txq_7_packets_dequeued: 0
     txq_7_queue_full_drops: 0
     txq_7_packets_early_drops: 0
     txq_7_packets_bm_drops: 0
     txq_7_packets_rep_bm_drops: 0
     rxq_0_desc_enqueue: 0
     rxq_0_queue_full_drops: 0
     rxq_0_packets_early_drops: 0
     rxq_0_packets_bm_drops: 0
     rxq_1_desc_enqueue: 0
     rxq_1_queue_full_drops: 0
     rxq_1_packets_early_drops: 0
     rxq_1_packets_bm_drops: 0
     rxq_2_desc_enqueue: 0
     rxq_2_queue_full_drops: 0
     rxq_2_packets_early_drops: 0
     rxq_2_packets_bm_drops: 0
     rxq_3_desc_enqueue: 0
     rxq_3_queue_full_drops: 0
     rxq_3_packets_early_drops: 0
     rxq_3_packets_bm_drops: 0
     rx_xdp_redirect: 0
     rx_xdp_pass: 0
     rx_xdp_drop: 0
     rx_xdp_tx: 0
     rx_xdp_tx_errors: 0
     tx_xdp_xmit: 0
     tx_xdp_xmit_errors: 0
----------------------------------------------------------

I'm not sure if this a device-tree, mvpp2 or some other problem, hence thi=
s email.

Any advice or troubleshooting advice appreciated.

Cheers,
ZM
-----------------------12ed276ba5bdbce2b9a44c4c84b5b843
Content-Type: application/pgp-keys; filename="publickey - zoomoo100@proton.me - 0x1C985C6F.asc"; name="publickey - zoomoo100@proton.me - 0x1C985C6F.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - zoomoo100@proton.me - 0x1C985C6F.asc"; name="publickey - zoomoo100@proton.me - 0x1C985C6F.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWjRPYlNCWUpLd1lCQkFI
YVJ3OEJBUWRBMUlsekxwdXFkUkNnOVRlTFZMcC9WWDUxenVNNURkYWwKOHl2SnYrWG1MZnpOS1hw
dmIyMXZiekV3TUVCd2NtOTBiMjR1YldVZ1BIcHZiMjF2YnpFd01FQndjbTkwCmIyNHViV1Urd3NB
UkJCTVdDZ0NEQllKbmc1dElBd3NKQndtUVFkd2s0Nk9STU1ORkZBQUFBQUFBSEFBZwpjMkZzZEVC
dWIzUmhkR2x2Ym5NdWIzQmxibkJuY0dwekxtOXlaK2xkbEsxY0pSU2NBYTdFNnA2OHJ0enYKeVVC
U0FNZTRacy9yVEVYUXFFU0JBeFVLQ0FRV0FBSUJBaGtCQXBzREFoNEJGaUVFSEpoY2IwVjFkdnlC
ClgyMkFRZHdrNDZPUk1NTUFBQU9IQVFEUnhHQlUyTHhGb0ZHNmM4OERiQmwzZmJzQURwWVZuT0Zj
WS9SRQp4dDFRalFFQTZGSjh0OHh4OVpGRG5YWmp1M0NQekdicHJRbHdCd3ZQZ0trVXJVSTVod2pP
T0FSbmc1dEkKRWdvckJnRUVBWmRWQVFVQkFRZEFiMzhJcHRqNXdCNEZ3anorbXhGTzN5TWNyam5B
aEs4Zkt2SFlISXlICjZ3c0RBUWdId3I0RUdCWUtBSEFGZ21lRG0wZ0prRUhjSk9PamtURERSUlFB
QUFBQUFCd0FJSE5oYkhSQQpibTkwWVhScGIyNXpMbTl3Wlc1d1ozQnFjeTV2Y21kQk92cWt0dUtE
bHJ4Wm9NMDBoMld6VlJKWDc2RFoKRW1yTnJaeDN1MDQ0a2dLYkRCWWhCQnlZWEc5RmRYYjhnVjl0
Z0VIY0pPT2prVEREQUFEWmh3RUFqd1JKCmR3M0tGSC9oVktMVlZ6bUkvMklLQkJSV0cxdFdaYTlX
bTh3R3AxSUEvQXRBNGVRWnMwbnRpNDByeVArQgoycy9VTGo2bVBkdXZLdWRUT0d1MS81MEYKPWdl
K24KLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxPQ0stLS0tLQo=
-----------------------12ed276ba5bdbce2b9a44c4c84b5b843--

--------0c1666c11d6729aeed684bdca0ff804fb97541490965172f9b834ad09f9b08c8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmjBNLwJkEHcJOOjkTDDRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcIKdlTUTdt8mJhT8UA4t/aOX+hGQaVNBevFRqA
NoUAMxYhBByYXG9FdXb8gV9tgEHcJOOjkTDDAAD2GAEAzv+PmuMWGxDiLDGc
MFeMXnGiagk3NOqxJfPUBMvlgm4BAIw2/33IJWeqEkEJgjFrHWAVL4QMIYP+
3NVNKgmAr0sN
=n9WO
-----END PGP SIGNATURE-----


--------0c1666c11d6729aeed684bdca0ff804fb97541490965172f9b834ad09f9b08c8--


