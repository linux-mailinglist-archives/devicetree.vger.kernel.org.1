Return-Path: <devicetree+bounces-259262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAnkEPs1dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:25:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 854AC812ED
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:25:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23635301BCE8
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2747A31DD97;
	Sun, 25 Jan 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="T5k1d/aP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A3D324707;
	Sun, 25 Jan 2026 15:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.148.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354673; cv=none; b=sl95MIa62HgbiRcLAcuPKn6ap5oiZWwyHw1EuRLni+stk0nL5kNhHpHObVyZRE3IjxXMSAdZ72zZT2+47CaGIjmAmZ6x5fy5fTwbVUSEgWOjJpVoabfGIuYYC7o7HvWygRIikyIGV7rl97DHWSR64nGXLNECbKF9Em8TQ48Tqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354673; c=relaxed/simple;
	bh=5zQaFbSHU9jV+DW0UrOaCUGWtkRIj0X8c0ZjPDePhoU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Kq3se7xWhJAGZvnJ4A9b/yip8DcRvmedikkBg7837kyccGmmMtsVLEsnC8GzvbJO7MS4it21nMQSKUz2MZEQlx2YUsfTbzS1iX5tnBdanKEuPflh3xaydAi6DEYioyEbJipYs/sgkXCqSyK14QLuXP/fAx+SSIFGtXTq1qXryZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=none smtp.helo=mx0a-0016f401.pphosted.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=T5k1d/aP; arc=none smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.helo=mx0a-0016f401.pphosted.com
Received: from pps.filterd (m0431384.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PEjq0t2123138;
	Sun, 25 Jan 2026 07:24:00 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pfpt0220; bh=u
	frfKBNbMXaER7G7nDoiUrzyVkEQwV7TP2vfEOVkVrg=; b=T5k1d/aPPZKNEj4DI
	P5f0icvaynIK8i94viesDc8yJGHy55NPkKn5GS4vsRuxUue9h1MnP9PIklZ0uV/r
	PtE4yhaadjdVftbbBe61jhXlLFFjuvinD9dBNaN7WbvtEcRPlruIYdm45+erT2cl
	wB2/CyHiYUP8a3OwtMZZ/w5M5iOL8amEfWbM/Xyqq1vSSh/rziMfo0qF8KHx+yiZ
	2rKUUu+/fBvqRuXOME3SAvM8ky27rJ9IzFv387BrfngzVc5Dv3pAlwtmpDpfPrZe
	U4JXXboZjIIjZ4bNO4+zCv/Yo74giTqktKd7fwbu7qcwB1LKNYikGUnrx9ZCTWSs
	WOnuA==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4bwk7a04jj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 25 Jan 2026 07:24:00 -0800 (PST)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 25 Jan 2026 07:24:15 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Sun, 25 Jan 2026 07:24:15 -0800
Received: from c1illp-saixps-016.eng.marvell.com (c1illp-saixps-016.eng.marvell.com [10.205.40.247])
	by maili.marvell.com (Postfix) with ESMTP id A97653F7089;
	Sun, 25 Jan 2026 07:23:56 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>
Subject: [PATCH v2 2/3] arm64: dts: a7k: add COM Express boards
Date: Sun, 25 Jan 2026 17:23:46 +0200
Message-ID: <20260125152347.2518538-3-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260125152347.2518538-1-enachman@marvell.com>
References: <20260125152347.2518538-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEyOCBTYWx0ZWRfX1fOWFTmty0lN
 skxm6rKzP5voSJ1UDoDelyH6iKEP2BdeBtals8Ofbh/5mvz/DN+P8DSkIwbFNLMGy8QysQ20vqH
 L+3TMYgBRV5IUpZDXzn2oZ/jYbUvroBphIp+uhs0+2kwFVSlMIEqxE5px4kLd8lPVYiTBSMQFd4
 qAop5j1B+R1FZkyiViAtPk2sZiCOibHe1aJWaqj3rmnxsDSYvK8appz9zyWwYGzL59jujZDifOC
 tgmDPX42YI3O+9rsJISQ8aq8nsyJeN9grllZFBrOcLlUgjeyZRt2Y+Wa+dktDbUrk+E1zWMtXc2
 RAfYZE7ahkC1JOu2i4BlJJcCrAphxeFSdyWLdzX3FdOh4wxAsQjasnMEfvZA3htW6mYZeigZWB+
 a2VRJd5FPPPW8tngkBEft7UZYXjTMz5QtkENNEEpq25kwikJc7vlu3JKDR8KHHpIWB0IKbo7ZIJ
 R6oqLCfdSx6XvWvE+WA==
X-Proofpoint-GUID: F864UiU5AL40FT0xVSNObpOPucGUaRl_
X-Proofpoint-ORIG-GUID: F864UiU5AL40FT0xVSNObpOPucGUaRl_
X-Authority-Analysis: v=2.4 cv=Vpouwu2n c=1 sm=1 tr=0 ts=69763590 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=M5GUcnROAAAA:8
 a=55z1VpWbWaCzKOrxCaoA:9 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259262-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,lunn.ch,bootlin.com,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[enachman@marvell.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[marvell.com:+];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.10:email,0.15.66.64:email,0.0.0.0:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,marvell.com:email,marvell.com:dkim,marvell.com:mid];
	DBL_PROHIBIT(0.00)[0.3.13.64:email];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 854AC812ED
X-Rspamd-Action: no action

From: Elad Nachman <enachman@marvell.com>

Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
Define this COM Express CPU module as dtsi and provide a dtsi file for
the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).

Since memory is soldered on CPU module, memory node is on CPU module
dtsi file.

This Carrier board only utilizes the PCIe link, hence no special device
or driver support is provided by this dtsi file.
Devise a dts file for the combined com express carrier and CPU module.

The Aramda 7020 CPU COM Express board offers the following features:

1.  Armada 7020 CPU, with dual ARM A72 cores
2.  DDR4 memory, 8GB, on board soldered
3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
    all are present on A7K CPU module (none on the carrier)
4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
5.  On-board 8 Gbit, 8-bit bus width NAND flash
6.  On-board 512 Mbit SPI flash
7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
    COM Express type 7 connector
8.  m.2 SATA connector
9.  Micro-SD card connector
10. USB 2.0 via COM Express type 7 connector
11. Two i2c interfaces - one to the CPU module, and one to the
    carrier board via the COM Express type 7 connector
12. UART (mini USB connector by virtue of FT2232D UART to USB
    converter, connected to the Armada 7020 UART0)

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/armada-7020-comexpress.dtsi   | 161 ++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |   7 +
 .../boot/dts/marvell/armada-ap806-dual.dtsi   |   4 +-
 .../dts/marvell/db-falcon-carrier-a7k.dts     |  27 +++
 .../boot/dts/marvell/db-falcon-carrier.dtsi   |  22 +++
 6 files changed, 220 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
 create mode 100644 arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index a774bc74a0a0..09d1544041af 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7-emmc.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-gl-mv1000.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-turris-mox.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-uDPU.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += db-falcon-carrier-a7k.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-mochabin.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-clearfog-gt-8k.dtb
diff --git a/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi b/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
new file mode 100644
index 000000000000..2b5ec4a451e3
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 Marvell Technology Group Ltd.
+ *
+ * Device Tree file for Marvell Armada 7020 Com Express CPU module board.
+ */
+
+#include "armada-7020.dtsi"
+
+/ {
+	model = "Marvell Armada-7020 COMEXPRESS board setup";
+	compatible = "marvell,armada7020-cpu-module", "marvell,armada7020",
+			"marvell,armada-ap806-dual", "marvell,armada-ap806";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x2 0x00000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		ethernet0 = &cp0_eth0;
+		ethernet1 = &cp0_eth1;
+	};
+};
+
+&ap_clk {
+	status = "okay";
+};
+
+&gic {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&spi0 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&cp0_mdio {
+	status = "okay";
+
+	phy0: ethernet-phy@10 {
+		reg = <0x10>;
+	};
+};
+
+&cp0_ethernet {
+	status = "okay";
+};
+
+&cp0_eth0 {
+	status = "okay";
+	phy-mode = "10gbase-r";
+	managed = "in-band-status";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp0_comphy4 0>;
+};
+
+&cp0_eth1 {
+	status = "okay";
+	phy = <&phy0>;
+	phy-mode = "rgmii-id";
+};
+
+&cp0_usb3_0 {
+	status = "okay";
+};
+
+&cp0_usb3_1 {
+	status = "okay";
+};
+
+&cp0_clk {
+	status = "okay";
+};
+
+&cp0_i2c0 {
+	status = "okay";
+	clock-frequency = <100000>;
+};
+
+&cp0_nand_controller {
+	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+		label = "main-storage";
+		nand-rb = <0>;
+		nand-ecc-mode = "hw";
+		nand-on-flash-bbt;
+		nand-ecc-strength = <8>;
+		nand-ecc-step-size = <512>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "U-Boot";
+				reg = <0 0x400000>;
+			};
+			partition@200000 {
+				label = "Linux";
+				reg = <0x400000 0x100000>;
+			};
+			partition@1000000 {
+				label = "Filesystem";
+				reg = <0x500000 0x1e00000>;
+			};
+		};
+	};
+};
+
+&cp0_pcie0 {
+	status = "okay";
+	num-lanes = <4>;
+	num-viewport = <8>;
+
+	ranges = <0x81000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x00010000
+		  0x82000000 0x0 0x00000000 0x0 0xc0000000 0x0 0x30000000>;
+
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp0_comphy0 0
+		&cp0_comphy1 0
+		&cp0_comphy2 0
+		&cp0_comphy3 0>;
+};
+
+&cp0_sata0 {
+	/* CPM Lane 0 - U29 */
+	status = "okay";
+
+	sata-port@1 {
+		status = "okay";
+		/* Generic PHY, providing serdes lanes */
+		phys = <&cp0_comphy5 1>;
+	};
+};
+
+&cp0_sdhci0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhci_pins>;
+	status = "okay";
+	bus-width = <4>;
+	no-1-8-v;
+	broken-cd;
+};
+
diff --git a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
index df939426d258..36e0a8a0ade3 100644
--- a/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-70x0.dtsi
@@ -47,6 +47,13 @@ &cp0_syscon0 {
 	cp0_pinctrl: pinctrl {
 		compatible = "marvell,armada-7k-pinctrl";
 
+
+		sdhci_pins: sdhci-pins {
+			marvell,pins = "mpp56", "mpp57", "mpp58",
+				       "mpp59", "mpp60", "mpp61", "mpp62";
+			marvell,function = "sdio";
+		};
+
 		nand_pins: nand-pins {
 			marvell,pins =
 			"mpp15", "mpp16", "mpp17", "mpp18",
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
index 82f4dedfc25e..0868d59d561b 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
@@ -54,7 +54,7 @@ l2: l2-cache {
 	};
 
 	thermal-zones {
-		/delete-node/ ap-thermal-cpu2;
-		/delete-node/ ap-thermal-cpu3;
+		/delete-node/ ap-cpu2-thermal;
+		/delete-node/ ap-cpu3-thermal;
 	};
 };
diff --git a/arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts b/arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
new file mode 100644
index 000000000000..5d1ae7b35b62
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 Marvell International Ltd.
+ *
+ * Device tree for the Falcon DB Type 7 Com Express carrier board,
+ * Utilizing the Armada 7020 COM Express CPU module board.
+ * This specific carrier board (DB-98CX8540/80)
+ * only maintains a PCIe link with the CPU module,
+ * which does not require any special DTS definitions.
+ *
+ * There is no Linux CPU booting in this mode on the carrier, only on the
+ * Armada 7020 COM Express CPU module.
+ * What runs the Linux is the Armada 7020 on the COM Express CPU module,
+ * And it accesses the switch end-point on the Falcon DB portion of the carrier
+ * via PCIe.
+ */
+
+#include "armada-7020-comexpress.dtsi"
+#include "db-falcon-carrier.dtsi"
+
+/ {
+	model = "Marvell Falcon DB COM EXPRESS type 7 carrier board with Armada 7020 CPU module";
+	compatible = "marvell,armada7020-falcon-carrier", "marvell,db-falcon-carrier",
+			"marvell,armada7020-cpu-module", "marvell,armada7020",
+			"marvell,armada-ap806-dual", "marvell,armada-ap806";
+
+};
diff --git a/arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi b/arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi
new file mode 100644
index 000000000000..c85ad1547ec5
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/db-falcon-carrier.dtsi
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 Marvell International Ltd.
+ *
+ * Device tree for the Falcon DB Type 7 Com Express carrier board,
+ * This (DB-98CX8540/80) specific carrier board only maintains
+ * a PCIe link with the COM Express CPU module, which does not
+ * require any special DTS definitions.
+ *
+ * The board contains the 98CX8540/80 Switch, which connects by
+ * PCIe to the COM Express CPU module.
+ * This CPU module can be any standard COM Express CPU module with
+ * PCIe support.
+ *
+ * There is no Linux CPU booting in this mode on the carrier,
+ * only on the COM Express CPU module.
+ */
+
+/ {
+	model = "Marvell Armada Falcon DB COM EXPRESS type 7 carrier board";
+	compatible = "marvell,db-falcon-carrier";
+};
-- 
2.25.1


