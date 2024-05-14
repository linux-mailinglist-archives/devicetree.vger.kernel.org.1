Return-Path: <devicetree+bounces-66956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A768C5CF5
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 23:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFB34B21949
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 21:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1970182CB7;
	Tue, 14 May 2024 21:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="mTUk9nuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9822E182C82;
	Tue, 14 May 2024 21:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715722535; cv=none; b=hjt/aqfAu7CG+TNU0hqBmpLrrrllY+qrsUKBon+QhTQHDFOBaKuta9eR1TuLmnEs5Y+QtIE1xfBEa//S8Mv+ieJ1ibsMIQ4nIaGUYaT4Hv3aOahm0mw7bUuxsWtIVUET8iPNOHicxmhuCQvxoGqzoYIgkT6axiBmWZPtgBJicH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715722535; c=relaxed/simple;
	bh=gmgeedSZhrw49C6tPFMzbdUDM3uYKFspXiWwZ7VwETo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oaj7lWf9qJ3qU598u+JCBSdHCz894chTyjA0mhKB8LUzUr2b7+zBNm7S56JKgz5bYH7rWbY5fAHKt0uOLz2njcqtela9Xdizokdej8ZmxejIc+jkRwXJ94u6EyzFR2+IH8ON8lZmmHSduhSFNwlU7tmC+mYryEzjlY3FRnQWKlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=mTUk9nuC; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 44ELXBUf006904;
	Tue, 14 May 2024 21:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=bktWOS/Pl1c/yIBDcqgGjYsObls/NUWCGQBwxW0qjps=;
 b=mTUk9nuCueOAd40iRiKHlG7vIfV9rQ9iwlnsYavSRVR5BsszxtcevwTFCXpDsg8AvaXU
 UYi5naZ7/wN8SvHgt1iyaY4XwRHj6YNOgXmik0t5JAtZBYY4SZNIMKqMJPlRSc2qJEmR
 c3VmW8PmLCTtMn1AitHhfSQlRmAK/QTR4gyTQjTi0Yjsi16r4Q12Y8drMBViO2SgEjjP
 Jpsi/O+TbJe6Emq5xnQWLrPjE8lGn2p/e9oBfd38XRVw1P6yogPaiwMyh/A8UbnSBhzU
 GcvW6Z0J8Yj0esMp+NbOm7PNWZOyIP8d8eJas2ZA1FpPOs7przgFAUfo0MfcHkEWN4U1 xw== 
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4fy3r04x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 May 2024 21:35:16 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 44EIedQG005998;
	Tue, 14 May 2024 21:35:15 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([172.16.1.72])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2mgmfpmt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 May 2024 21:35:15 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 44ELZCgF28836416
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 May 2024 21:35:15 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7EEA558069;
	Tue, 14 May 2024 21:35:12 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3A7C558065;
	Tue, 14 May 2024 21:35:12 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.107.19])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue, 14 May 2024 21:35:12 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au, joel@jms.id.au,
        conor+dt@kernel.org, eajames@linux.ibm.com, krzk+dt@kernel.org,
        robh@kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] ARM: dts: aspeed: Add IBM P11 Fuji BMC system
Date: Tue, 14 May 2024 16:35:10 -0500
Message-Id: <20240514213510.159144-5-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240514213510.159144-1-eajames@linux.ibm.com>
References: <20240514213510.159144-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: dU03MCc_SeZQ9gP1xgDFCQY-7tRk9CFt
X-Proofpoint-ORIG-GUID: dU03MCc_SeZQ9gP1xgDFCQY-7tRk9CFt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-14_13,2024-05-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 phishscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2405010000 definitions=main-2405140154

Add the device tree for the new BMC system. The Fuji is a P11
system with eight processors.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
Changes since v4:
 - Update SPI frequencies

 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts   | 3880 +++++++++++++++++
 2 files changed, 3881 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index f3db9ee156429..5e3392621697a 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -35,6 +35,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-ibm-blueridge.dtb \
 	aspeed-bmc-ibm-bonnell.dtb \
 	aspeed-bmc-ibm-everest.dtb \
+	aspeed-bmc-ibm-fuji.dtb \
 	aspeed-bmc-ibm-rainier.dtb \
 	aspeed-bmc-ibm-rainier-1s4u.dtb \
 	aspeed-bmc-ibm-rainier-4u.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts
new file mode 100644
index 0000000000000..1f997938976ba
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts
@@ -0,0 +1,3880 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2024 IBM Corp.
+/dts-v1/;
+
+#include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/i2c/i2c.h>
+#include <dt-bindings/leds/leds-pca955x.h>
+#include "aspeed-g6.dtsi"
+#include "ibm-power11-quad.dtsi"
+
+/ {
+	model = "Fuji";
+	compatible = "ibm,fuji-bmc", "aspeed,ast2600";
+
+	aliases {
+		i2c500 = &cfam4_i2c0;
+		i2c501 = &cfam4_i2c1;
+		i2c510 = &cfam4_i2c10;
+		i2c511 = &cfam4_i2c11;
+		i2c512 = &cfam4_i2c12;
+		i2c513 = &cfam4_i2c13;
+		i2c514 = &cfam4_i2c14;
+		i2c515 = &cfam4_i2c15;
+		i2c602 = &cfam5_i2c2;
+		i2c603 = &cfam5_i2c3;
+		i2c610 = &cfam5_i2c10;
+		i2c611 = &cfam5_i2c11;
+		i2c614 = &cfam5_i2c14;
+		i2c615 = &cfam5_i2c15;
+		i2c616 = &cfam5_i2c16;
+		i2c617 = &cfam5_i2c17;
+		i2c700 = &cfam6_i2c0;
+		i2c701 = &cfam6_i2c1;
+		i2c710 = &cfam6_i2c10;
+		i2c711 = &cfam6_i2c11;
+		i2c712 = &cfam6_i2c12;
+		i2c713 = &cfam6_i2c13;
+		i2c714 = &cfam6_i2c14;
+		i2c715 = &cfam6_i2c15;
+		i2c802 = &cfam7_i2c2;
+		i2c803 = &cfam7_i2c3;
+		i2c810 = &cfam7_i2c10;
+		i2c811 = &cfam7_i2c11;
+		i2c814 = &cfam7_i2c14;
+		i2c815 = &cfam7_i2c15;
+		i2c816 = &cfam7_i2c16;
+		i2c817 = &cfam7_i2c17;
+
+		i2c16 = &i2c4mux0chn0;
+		i2c17 = &i2c4mux0chn1;
+		i2c18 = &i2c4mux0chn2;
+		i2c19 = &i2c5mux0chn0;
+		i2c20 = &i2c5mux0chn1;
+		i2c21 = &i2c5mux0chn2;
+		i2c22 = &i2c5mux0chn3;
+		i2c23 = &i2c6mux0chn0;
+		i2c24 = &i2c6mux0chn1;
+		i2c25 = &i2c6mux0chn2;
+		i2c26 = &i2c6mux0chn3;
+		i2c27 = &i2c14mux0chn0;
+		i2c28 = &i2c14mux0chn1;
+		i2c29 = &i2c14mux0chn2;
+		i2c30 = &i2c14mux0chn3;
+		i2c31 = &i2c14mux1chn0;
+		i2c32 = &i2c14mux1chn1;
+		i2c33 = &i2c14mux1chn2;
+		i2c34 = &i2c14mux1chn3;
+		i2c35 = &i2c15mux0chn0;
+		i2c36 = &i2c15mux0chn1;
+		i2c37 = &i2c15mux0chn2;
+		i2c38 = &i2c15mux0chn3;
+		i2c39 = &i2c15mux1chn0;
+		i2c40 = &i2c15mux1chn1;
+		i2c41 = &i2c15mux1chn2;
+		i2c42 = &i2c15mux1chn3;
+		i2c43 = &i2c15mux2chn0;
+		i2c44 = &i2c15mux2chn1;
+		i2c45 = &i2c15mux2chn2;
+		i2c46 = &i2c15mux2chn3;
+		i2c47 = &i2c8mux0chn0;
+		i2c48 = &i2c8mux0chn1;
+
+		serial4 = &uart5;
+
+		sbefifo500 = &sbefifo500;
+		sbefifo501 = &sbefifo501;
+		sbefifo510 = &sbefifo510;
+		sbefifo511 = &sbefifo511;
+		sbefifo512 = &sbefifo512;
+		sbefifo513 = &sbefifo513;
+		sbefifo514 = &sbefifo514;
+		sbefifo515 = &sbefifo515;
+		sbefifo602 = &sbefifo602;
+		sbefifo603 = &sbefifo603;
+		sbefifo610 = &sbefifo610;
+		sbefifo611 = &sbefifo611;
+		sbefifo614 = &sbefifo614;
+		sbefifo615 = &sbefifo615;
+		sbefifo616 = &sbefifo616;
+		sbefifo617 = &sbefifo617;
+		sbefifo700 = &sbefifo700;
+		sbefifo701 = &sbefifo701;
+		sbefifo710 = &sbefifo710;
+		sbefifo711 = &sbefifo711;
+		sbefifo712 = &sbefifo712;
+		sbefifo713 = &sbefifo713;
+		sbefifo714 = &sbefifo714;
+		sbefifo715 = &sbefifo715;
+		sbefifo802 = &sbefifo802;
+		sbefifo803 = &sbefifo803;
+		sbefifo810 = &sbefifo810;
+		sbefifo811 = &sbefifo811;
+		sbefifo814 = &sbefifo814;
+		sbefifo815 = &sbefifo815;
+		sbefifo816 = &sbefifo816;
+		sbefifo817 = &sbefifo817;
+
+		scom500 = &scom500;
+		scom501 = &scom501;
+		scom510 = &scom510;
+		scom511 = &scom511;
+		scom512 = &scom512;
+		scom513 = &scom513;
+		scom514 = &scom514;
+		scom515 = &scom515;
+		scom602 = &scom602;
+		scom603 = &scom603;
+		scom610 = &scom610;
+		scom611 = &scom611;
+		scom614 = &scom614;
+		scom615 = &scom615;
+		scom616 = &scom616;
+		scom617 = &scom617;
+		scom700 = &scom700;
+		scom701 = &scom701;
+		scom710 = &scom710;
+		scom711 = &scom711;
+		scom712 = &scom712;
+		scom713 = &scom713;
+		scom714 = &scom714;
+		scom715 = &scom715;
+		scom802 = &scom802;
+		scom803 = &scom803;
+		scom810 = &scom810;
+		scom811 = &scom811;
+		scom814 = &scom814;
+		scom815 = &scom815;
+		scom816 = &scom816;
+		scom817 = &scom817;
+
+		spi50 = &cfam4_spi0;
+		spi51 = &cfam4_spi1;
+		spi52 = &cfam4_spi2;
+		spi53 = &cfam4_spi3;
+		spi60 = &cfam5_spi0;
+		spi61 = &cfam5_spi1;
+		spi62 = &cfam5_spi2;
+		spi63 = &cfam5_spi3;
+		spi70 = &cfam6_spi0;
+		spi71 = &cfam6_spi1;
+		spi72 = &cfam6_spi2;
+		spi73 = &cfam6_spi3;
+		spi80 = &cfam7_spi0;
+		spi81 = &cfam7_spi1;
+		spi82 = &cfam7_spi2;
+		spi83 = &cfam7_spi3;
+	};
+
+	chosen {
+		stdout-path = &uart5;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		event_log: region@b3d00000 {
+			reg = <0xb3d00000 0x100000>;
+			no-map;
+		};
+
+		ramoops@b3e00000 {
+			compatible = "ramoops";
+			reg = <0xb3e00000 0x200000>; /* 16 * (4 * 0x8000) */
+			record-size = <0x8000>;
+			console-size = <0x8000>;
+			ftrace-size = <0x8000>;
+			pmsg-size = <0x8000>;
+			max-reason = <3>; /* KMSG_DUMP_EMERG */
+		};
+
+		/* LPC FW cycle bridge region requires natural alignment */
+		flash_memory: region@b4000000 {
+			reg = <0xb4000000 0x04000000>; /* 64M */
+			no-map;
+		};
+
+		/* VGA region is dictated by hardware strapping */
+		vga_memory: region@bf000000 {
+			compatible = "shared-dma-pool";
+			reg = <0xbf000000 0x01000000>; /* 16M */
+			no-map;
+		};
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <1000>;
+
+		event-fan0-presence {
+			gpios = <&pca0 15 GPIO_ACTIVE_LOW>;
+			label = "fan0-presence";
+			linux,code = <15>;
+		};
+
+		event-fan1-presence {
+			gpios = <&pca0 14 GPIO_ACTIVE_LOW>;
+			label = "fan1-presence";
+			linux,code = <14>;
+		};
+
+		event-fan2-presence {
+			gpios = <&pca0 13 GPIO_ACTIVE_LOW>;
+			label = "fan2-presence";
+			linux,code = <13>;
+		};
+
+		event-fan3-presence {
+			gpios = <&pca0 12 GPIO_ACTIVE_LOW>;
+			label = "fan3-presence";
+			linux,code = <12>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		/* RTC battery fault LED at the back */
+		led-rtc-battery {
+			gpios = <&gpio0 ASPEED_GPIO(H, 0) GPIO_ACTIVE_LOW>;
+		};
+
+		/* BMC Card fault LED at the back */
+		led-bmc {
+			gpios = <&gpio0 ASPEED_GPIO(H, 1) GPIO_ACTIVE_LOW>;
+		};
+
+		/* Enclosure Identify LED at the back */
+		led-rear-enc-id0 {
+			gpios = <&gpio0 ASPEED_GPIO(H, 2) GPIO_ACTIVE_LOW>;
+		};
+
+		/* Enclosure fault LED at the back */
+		led-rear-enc-fault0 {
+			gpios = <&gpio0 ASPEED_GPIO(H, 3) GPIO_ACTIVE_LOW>;
+		};
+
+		/* PCIE slot power LED */
+		led-pcieslot-power {
+			gpios = <&gpio0 ASPEED_GPIO(P, 4) GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc1 7>;
+	};
+};
+
+&adc1 {
+	status = "okay";
+	aspeed,int-vref-microvolt = <2500000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc8_default &pinctrl_adc9_default
+				 &pinctrl_adc10_default &pinctrl_adc11_default
+				 &pinctrl_adc12_default &pinctrl_adc13_default
+				 &pinctrl_adc14_default &pinctrl_adc15_default>;
+};
+
+&gpio0 {
+	gpio-line-names =
+	/*A0-A7*/	"","","","","","","","",
+	/*B0-B7*/	"bmc-management-ready","","","","","","checkstop","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"","","","","","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","rtc-battery-voltage-read-enable","reset-cause-pinhole","","",
+			"factory-reset-toggle","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"led-rtc-battery","led-bmc","led-rear-enc-id0","led-rear-enc-fault0","","",
+			"","",
+	/*I0-I7*/	"","","","","","","bmc-secure-boot","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"","","","","","","","",
+	/*O0-O7*/	"","","","usb-power","","","","",
+	/*P0-P7*/	"","","","","led-pcieslot-power","","","",
+	/*Q0-Q7*/	"","","regulator-standby-faulted","","","","","",
+	/*R0-R7*/	"bmc-tpm-reset","power-chassis-control","power-chassis-good","","",
+			"I2C_FLASH_MICRO_N","","",
+	/*S0-S7*/	"","","","","power-ffs-sync-history","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","BMC_3RESTART_ATTEMPT_P","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","";
+
+	usb-power-hog {
+		gpio-hog;
+		gpios = <ASPEED_GPIO(O, 3) GPIO_ACTIVE_LOW>;
+		output-high;
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	eeprom@51 {
+		compatible = "atmel,24c64";
+		reg = <0x51>;
+	};
+
+	led-controller@62 {
+		compatible = "nxp,pca9552";
+		reg = <0x62>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"presence-ps0",
+			"presence-ps1",
+			"presence-ps2",
+			"presence-ps3",
+			"presence-pdb",
+			"presence-tpm",
+			"", "",
+			"presence-cp0",
+			"presence-cp1",
+			"presence-cp2",
+			"presence-cp3",
+			"presence-dasd",
+			"presence-lcd-op",
+			"presence-base-op",
+			"";
+	};
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+
+	eeprom@54 {
+		compatible = "atmel,24c128";
+		reg = <0x54>;
+	};
+
+	power-supply@68 {
+		compatible = "ibm,cffps";
+		reg = <0x68>;
+	};
+
+	power-supply@69 {
+		compatible = "ibm,cffps";
+		reg = <0x69>;
+	};
+
+	power-supply@6b {
+		compatible = "ibm,cffps";
+		reg = <0x6b>;
+	};
+
+	power-supply@6d {
+		compatible = "ibm,cffps";
+		reg = <0x6d>;
+	};
+};
+
+&i2c4 {
+	status = "okay";
+
+	led-controller@65 {
+		compatible = "nxp,pca9552";
+		reg = <0x65>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"presence-cable-card1",
+			"presence-cable-card2",
+			"presence-cable-card3",
+			"presence-cable-card4",
+			"presence-cable-card5",
+			"expander-cable-card1",
+			"expander-cable-card2",
+			"expander-cable-card3",
+			"expander-cable-card4",
+			"expander-cable-card5";
+	};
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c4mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@52 {
+				compatible = "atmel,24c64";
+				reg = <0x52>;
+			};
+
+			led-controller@62 {
+				compatible = "nxp,pca9551";
+				reg = <0x62>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c01-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c01-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c4mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+			};
+
+			led-controller@60 {
+				compatible = "nxp,pca9551";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c02-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c02-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c4mux0chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@51 {
+				compatible = "atmel,24c64";
+				reg = <0x51>;
+			};
+
+			led-controller@61 {
+				compatible = "nxp,pca9551";
+				reg = <0x61>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c03-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c03-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+	};
+};
+
+&i2c5 {
+	status = "okay";
+
+	led-controller@66 {
+		compatible = "nxp,pca9552";
+		reg = <0x66>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio-line-names =
+			"presence-cable-card6",
+			"presence-cable-card7",
+			"presence-cable-card8",
+			"presence-cable-card9",
+			"presence-cable-card10",
+			"presence-cable-card11",
+			"expander-cable-card6",
+			"expander-cable-card7",
+			"expander-cable-card8",
+			"expander-cable-card9",
+			"expander-cable-card10",
+			"expander-cable-card11";
+	};
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c5mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+			};
+
+			led-controller@60 {
+				compatible = "nxp,pca9551";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c04-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c04-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c5mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@51 {
+				compatible = "atmel,24c64";
+				reg = <0x51>;
+			};
+
+			led-controller@61 {
+				compatible = "nxp,pca9551";
+				reg = <0x61>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c05-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c05-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c5mux0chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@52 {
+				compatible = "atmel,24c64";
+				reg = <0x52>;
+			};
+
+			led-controller@62 {
+				compatible = "nxp,pca9551";
+				reg = <0x62>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c06-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c06-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c5mux0chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+
+			led-controller@63 {
+				compatible = "nxp,pca9551";
+				reg = <0x63>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c07-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c07-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+	};
+};
+
+&i2c6 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c6mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+			};
+
+			led-controller@60 {
+				compatible = "nxp,pca9551";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c08-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c08-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c6mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@52 {
+				compatible = "atmel,24c64";
+				reg = <0x52>;
+			};
+
+			led-controller@62 {
+				compatible = "nxp,pca9551";
+				reg = <0x62>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c09-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c09-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c6mux0chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+
+			led-controller@63 {
+				compatible = "nxp,pca9551";
+				reg = <0x63>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c10-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c10-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c6mux0chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@51 {
+				compatible = "atmel,24c64";
+				reg = <0x51>;
+			};
+
+			led-controller@61 {
+				compatible = "nxp,pca9551";
+				reg = <0x61>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "cablecard-c11-cxp-top";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "cablecard-c11-cxp-bot";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+	};
+
+	led-controller@65 {
+		compatible = "nxp,pca9552";
+		reg = <0x65>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "pcieslot-c01";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "pcieslot-c02";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "pcieslot-c03";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "pcieslot-c04";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "pcieslot-c05";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "pcieslot-c06";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@7 {
+			reg = <7>;
+			default-state = "keep";
+			label = "pcieslot-c07";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "pcieslot-c08";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "pcieslot-c09";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "pcieslot-c10";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "pcieslot-c11";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	led-controller@31 {
+		compatible = "ibm,pca9552";
+		reg = <0x31>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "ddimm0";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "ddimm1";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "ddimm2";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "ddimm3";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "ddimm4";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "ddimm5";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "ddimm6";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@7 {
+			reg = <7>;
+			default-state = "keep";
+			label = "ddimm7";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "ddimm8";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "ddimm9";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "ddimm10";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "ddimm11";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "ddimm12";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "ddimm13";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "ddimm14";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "ddimm15";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+
+	led-controller@32 {
+		compatible = "ibm,pca9552";
+		reg = <0x32>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "ddimm16";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "ddimm17";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "ddimm18";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "ddimm19";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "ddimm20";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "ddimm21";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "ddimm22";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@7 {
+			reg = <7>;
+			default-state = "keep";
+			label = "ddimm23";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "ddimm24";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "ddimm25";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "ddimm26";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "ddimm27";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "ddimm28";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "ddimm29";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "ddimm30";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "ddimm31";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+
+	led-controller@33 {
+		compatible = "ibm,pca9552";
+		reg = <0x33>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "ddimm32";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "ddimm33";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "ddimm34";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "ddimm35";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "ddimm36";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "ddimm37";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "ddimm38";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@7 {
+			reg = <7>;
+			default-state = "keep";
+			label = "ddimm39";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "ddimm40";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "ddimm41";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "ddimm42";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "ddimm43";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "ddimm44";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "ddimm45";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "ddimm46";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "ddimm47";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+
+	led-controller@30 {
+		compatible = "ibm,pca9552";
+		reg = <0x30>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "ddimm48";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "ddimm49";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "ddimm50";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "ddimm51";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "ddimm52";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "ddimm53";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "ddimm54";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@7 {
+			reg = <7>;
+			default-state = "keep";
+			label = "ddimm55";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "ddimm56";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "ddimm57";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "ddimm58";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "ddimm59";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "ddimm60";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "ddimm61";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "ddimm62";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "ddimm63";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+
+	led-controller@34 {
+		compatible = "ibm,pca9552";
+		reg = <0x34>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "planar";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "tpm";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "cpu3-c61";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "cpu0-c14";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "opencapi-connector3";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "opencapi-connector4";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "opencapi-connector5";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "vrm4";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "vrm5";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "vrm6";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "vrm7";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "vrm12";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "vrm13";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "vrm14";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "vrm15";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+
+	led-controller@35 {
+		compatible = "ibm,pca9552";
+		reg = <0x35>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		led@0 {
+			reg = <0>;
+			default-state = "keep";
+			label = "dasd-backplane";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@1 {
+			reg = <1>;
+			default-state = "keep";
+			label = "power-distribution";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@2 {
+			reg = <2>;
+			default-state = "keep";
+			label = "cpu1-c19";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@3 {
+			reg = <3>;
+			default-state = "keep";
+			label = "cpu2-c56";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@4 {
+			reg = <4>;
+			default-state = "keep";
+			label = "opencapi-connector0";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@5 {
+			reg = <5>;
+			default-state = "keep";
+			label = "opencapi-connector1";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@6 {
+			reg = <6>;
+			default-state = "keep";
+			label = "opencapi-connector2";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@8 {
+			reg = <8>;
+			default-state = "keep";
+			label = "vrm0";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@9 {
+			reg = <9>;
+			default-state = "keep";
+			label = "vrm1";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@10 {
+			reg = <10>;
+			default-state = "keep";
+			label = "vrm2";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@11 {
+			reg = <11>;
+			default-state = "keep";
+			label = "vrm3";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@12 {
+			reg = <12>;
+			default-state = "keep";
+			label = "vrm8";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@13 {
+			reg = <13>;
+			default-state = "keep";
+			label = "vrm9";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@14 {
+			reg = <14>;
+			default-state = "keep";
+			label = "vrm10";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+
+		led@15 {
+			reg = <15>;
+			default-state = "keep";
+			label = "vrm11";
+			retain-state-shutdown;
+			type = <PCA955X_TYPE_LED>;
+		};
+	};
+};
+
+&i2c8 {
+	status = "okay";
+
+	pmic@11 {
+		compatible = "ti,ucd90320";
+		reg = <0x11>;
+	};
+
+	rtc@32 {
+		compatible = "epson,rx8900";
+		reg = <0x32>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c64";
+		reg = <0x51>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c8mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c8mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&i2c9 {
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c128";
+		reg = <0x53>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c128";
+		reg = <0x52>;
+	};
+};
+
+&i2c10 {
+	status = "okay";
+
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c128";
+		reg = <0x53>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c128";
+		reg = <0x52>;
+	};
+};
+
+&i2c11 {
+	status = "okay";
+
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c128";
+		reg = <0x53>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c128";
+		reg = <0x52>;
+	};
+};
+
+&i2c12 {
+	status = "okay";
+
+	tpm@2e {
+		compatible = "nuvoton,npct75x", "tcg,tpm-tis-i2c";
+		reg = <0x2e>;
+		memory-region = <&event_log>;
+	};
+};
+
+&i2c13 {
+	status = "okay";
+
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c128";
+		reg = <0x50>;
+	};
+
+	eeprom@53 {
+		compatible = "atmel,24c128";
+		reg = <0x53>;
+	};
+
+	eeprom@52 {
+		compatible = "atmel,24c128";
+		reg = <0x52>;
+	};
+};
+
+&i2c14 {
+	multi-master;
+	status = "okay";
+
+	lcd-controller@62 {
+		compatible = "ibm,op-panel";
+		reg = <(0x62 | I2C_OWN_SLAVE_ADDRESS)>;
+	};
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		idle-state = <1>;
+
+		i2c14mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+			};
+		};
+
+		i2c14mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@51 {
+				compatible = "atmel,24c32";
+				reg = <0x51>;
+			};
+		};
+
+		i2c14mux0chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c32";
+				reg = <0x50>;
+			};
+
+			led-controller@60 {
+				compatible = "nxp,pca9551";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "front-sys-id0";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "front-check-log0";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@2 {
+					reg = <2>;
+					default-state = "keep";
+					label = "front-enc-fault1";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@3 {
+					reg = <3>;
+					default-state = "keep";
+					label = "front-sys-pwron0";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+		};
+
+		i2c14mux0chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pwm@52 {
+				compatible = "maxim,max31785a";
+				reg = <0x52>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			led-controller@60 {
+				compatible = "nxp,pca9552";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				led@0 {
+					reg = <0>;
+					default-state = "keep";
+					label = "nvme0";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@1 {
+					reg = <1>;
+					default-state = "keep";
+					label = "nvme1";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@2 {
+					reg = <2>;
+					default-state = "keep";
+					label = "nvme2";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@3 {
+					reg = <3>;
+					default-state = "keep";
+					label = "nvme3";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@4 {
+					reg = <4>;
+					default-state = "keep";
+					label = "nvme4";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@5 {
+					reg = <5>;
+					default-state = "keep";
+					label = "nvme5";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@6 {
+					reg = <6>;
+					default-state = "keep";
+					label = "nvme6";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@7 {
+					reg = <7>;
+					default-state = "keep";
+					label = "nvme7";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@8 {
+					reg = <8>;
+					default-state = "keep";
+					label = "nvme8";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@9 {
+					reg = <9>;
+					default-state = "keep";
+					label = "nvme9";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@10 {
+					reg = <10>;
+					default-state = "keep";
+					label = "fan0";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@11 {
+					reg = <11>;
+					default-state = "keep";
+					label = "fan1";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@12 {
+					reg = <12>;
+					default-state = "keep";
+					label = "fan2";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+
+				led@13 {
+					reg = <13>;
+					default-state = "keep";
+					label = "fan3";
+					retain-state-shutdown;
+					type = <PCA955X_TYPE_LED>;
+				};
+			};
+
+			pca0: led-controller@61 {
+				compatible = "nxp,pca9552";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x61>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				gpio-line-names =
+					"","","","",
+					"","","","",
+					"","","","",
+					"presence-fan3",
+					"presence-fan2",
+					"presence-fan1",
+					"presence-fan0";
+			};
+		};
+	};
+
+	i2c-mux@71 {
+		compatible = "nxp,pca9546";
+		reg = <0x71>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c14mux1chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c32";
+				reg = <0x50>;
+			};
+		};
+
+		i2c14mux1chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c32";
+				reg = <0x50>;
+			};
+		};
+
+		i2c14mux1chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c32";
+				reg = <0x50>;
+			};
+		};
+
+		i2c14mux1chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@50 {
+				compatible = "atmel,24c32";
+				reg = <0x50>;
+			};
+		};
+	};
+};
+
+&i2c15 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9546";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c15mux0chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux0chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux0chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux0chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+	};
+
+	i2c-mux@71 {
+		compatible = "nxp,pca9546";
+		reg = <0x71>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c15mux1chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux1chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux1chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux1chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+	};
+
+	i2c-mux@72 {
+		compatible = "nxp,pca9546";
+		reg = <0x72>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c15mux2chn0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux2chn1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			eeprom@53 {
+				compatible = "atmel,24c64";
+				reg = <0x53>;
+			};
+		};
+
+		i2c15mux2chn2: i2c@2 {
+			reg = <2>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c15mux2chn3: i2c@3 {
+			reg = <3>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&uhci {
+	status = "okay";
+};
+
+&emmc_controller {
+	status = "okay";
+};
+
+&pinctrl_emmc_default {
+	bias-disable;
+};
+
+&emmc {
+	status = "okay";
+	clk-phase-mmc-hs200 = <210>, <228>;
+};
+
+&ibt {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&vuart1 {
+	status = "okay";
+};
+
+&vuart2 {
+	status = "okay";
+};
+
+&lpc_ctrl {
+	status = "okay";
+	memory-region = <&flash_memory>;
+};
+
+&mac2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rmii3_default>;
+	clocks = <&syscon ASPEED_CLK_GATE_MAC3CLK>,
+		 <&syscon ASPEED_CLK_MAC3RCLK>;
+	clock-names = "MACCLK", "RCLK";
+	use-ncsi;
+};
+
+&mac3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rmii4_default>;
+	clocks = <&syscon ASPEED_CLK_GATE_MAC4CLK>,
+		 <&syscon ASPEED_CLK_MAC4RCLK>;
+	clock-names = "MACCLK", "RCLK";
+	use-ncsi;
+};
+
+&wdt1 {
+	aspeed,reset-type = "none";
+	aspeed,external-signal;
+	aspeed,ext-push-pull;
+	aspeed,ext-active-high;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdtrst1_default>;
+};
+
+&wdt2 {
+	status = "okay";
+};
+
+&xdma {
+	status = "okay";
+	memory-region = <&vga_memory>;
+};
+
+&kcs2 {
+	status = "okay";
+	aspeed,lpc-io-reg = <0xca8 0xcac>;
+};
+
+&kcs3 {
+	status = "okay";
+	aspeed,lpc-io-reg = <0xca2>;
+	aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+};
+
+&fsi_hub0 {
+	cfam@4,0 { /* DCM2_C0 */
+		reg = <4 0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		chip-id = <4>;
+
+		scom@1000 {
+			compatible = "ibm,p9-scom";
+			reg = <0x1000 0x400>;
+		};
+
+		i2c@1800 {
+			compatible = "ibm,i2c-fsi";
+			reg = <0x1800 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam4_i2c0: i2c-bus@0 {
+				reg = <0>;	/* OM01 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom500: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo500: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c1: i2c-bus@1 {
+				reg = <1>;	/* OM23 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom501: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo501: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c10: i2c-bus@a {
+				reg = <10>;	/* OP3A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom510: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo510: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c11: i2c-bus@b {
+				reg = <11>;	/* OP3B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom511: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo511: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c12: i2c-bus@c {
+				reg = <12>;	/* OP4A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom512: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo512: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c13: i2c-bus@d {
+				reg = <13>;	/* OP4B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom513: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo513: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c14: i2c-bus@e {
+				reg = <14>;	/* OP5A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom514: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo514: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam4_i2c15: i2c-bus@f {
+				reg = <15>;	/* OP5B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom515: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo515: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+		};
+
+		fsi2spi@1c00 {
+			compatible = "ibm,fsi2spi";
+			reg = <0x1c00 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam4_spi0: spi@0 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam4_spi1: spi@20 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam4_spi2: spi@40 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x40>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam4_spi3: spi@60 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+		};
+
+		sbefifo@2400 {
+			compatible = "ibm,p9-sbefifo";
+			reg = <0x2400 0x400>;
+
+			occ {
+				compatible = "ibm,p10-occ";
+
+				hwmon {
+					compatible = "ibm,p10-occ-hwmon";
+					ibm,no-poll-on-init;
+				};
+			};
+		};
+
+		fsi@3400 {
+			compatible = "ibm,p9-fsi-controller";
+			reg = <0x3400 0x400>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			no-scan-on-init;
+		};
+	};
+
+	cfam@5,0 { /* DCM2_C1 */
+		reg = <5 0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		chip-id = <5>;
+
+		scom@1000 {
+			compatible = "ibm,p9-scom";
+			reg = <0x1000 0x400>;
+		};
+
+		i2c@1800 {
+			compatible = "ibm,i2c-fsi";
+			reg = <0x1800 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam5_i2c2: i2c-bus@2 {
+				reg = <2>;	/* OM45 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom602: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo602: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c3: i2c-bus@3 {
+				reg = <3>;	/* OM67 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom603: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo603: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c10: i2c-bus@a {
+				reg = <10>;	/* OP3A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom610: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo610: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c11: i2c-bus@b {
+				reg = <11>;	/* OP3B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom611: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo611: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c14: i2c-bus@e {
+				reg = <14>;	/* OP5A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom614: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo614: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c15: i2c-bus@f {
+				reg = <15>;	/* OP5B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom615: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo615: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c16: i2c-bus@10 {
+				reg = <16>;	/* OP6A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom616: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo616: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam5_i2c17: i2c-bus@11 {
+				reg = <17>;	/* OP6B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom617: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo617: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+		};
+
+		fsi2spi@1c00 {
+			compatible = "ibm,fsi2spi";
+			reg = <0x1c00 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam5_spi0: spi@0 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam5_spi1: spi@20 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam5_spi2: spi@40 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x40>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam5_spi3: spi@60 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+		};
+
+		sbefifo@2400 {
+			compatible = "ibm,p9-sbefifo";
+			reg = <0x2400 0x400>;
+
+			occ {
+				compatible = "ibm,p10-occ";
+
+				hwmon {
+					compatible = "ibm,p10-occ-hwmon";
+					ibm,no-poll-on-init;
+				};
+			};
+		};
+
+		fsi@3400 {
+			compatible = "ibm,p9-fsi-controller";
+			reg = <0x3400 0x400>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			no-scan-on-init;
+		};
+	};
+
+	cfam@6,0 { /* DCM3_C0 */
+		reg = <6 0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		chip-id = <6>;
+
+		scom@1000 {
+			compatible = "ibm,p9-scom";
+			reg = <0x1000 0x400>;
+		};
+
+		i2c@1800 {
+			compatible = "ibm,i2c-fsi";
+			reg = <0x1800 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam6_i2c0: i2c-bus@0 {
+				reg = <0>;	/* OM01 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom700: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo700: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c1: i2c-bus@1 {
+				reg = <1>;	/* OM23 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom701: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo701: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c10: i2c-bus@a {
+				reg = <10>;	/* OP3A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom710: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo710: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c11: i2c-bus@b {
+				reg = <11>;	/* OP3B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom711: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo711: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c12: i2c-bus@c {
+				reg = <12>;	/* OP4A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom712: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo712: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c13: i2c-bus@d {
+				reg = <13>;	/* OP4B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom713: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo713: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c14: i2c-bus@e {
+				reg = <14>;	/* OP5A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom714: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo714: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam6_i2c15: i2c-bus@f {
+				reg = <15>;	/* OP5B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom715: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo715: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+		};
+
+		fsi2spi@1c00 {
+			compatible = "ibm,fsi2spi";
+			reg = <0x1c00 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam6_spi0: spi@0 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam6_spi1: spi@20 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam6_spi2: spi@40 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x40>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam6_spi3: spi@60 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+		};
+
+		sbefifo@2400 {
+			compatible = "ibm,p9-sbefifo";
+			reg = <0x2400 0x400>;
+
+			occ {
+				compatible = "ibm,p10-occ";
+
+				hwmon {
+					compatible = "ibm,p10-occ-hwmon";
+					ibm,no-poll-on-init;
+				};
+			};
+		};
+
+		fsi@3400 {
+			compatible = "ibm,p9-fsi-controller";
+			reg = <0x3400 0x400>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			no-scan-on-init;
+		};
+	};
+
+	cfam@7,0 { /* DCM3_C1 */
+		reg = <7 0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		chip-id = <7>;
+
+		scom@1000 {
+			compatible = "ibm,p9-scom";
+			reg = <0x1000 0x400>;
+		};
+
+		i2c@1800 {
+			compatible = "ibm,i2c-fsi";
+			reg = <0x1800 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam7_i2c2: i2c-bus@2 {
+				reg = <2>;	/* OM45 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom802: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo802: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c3: i2c-bus@3 {
+				reg = <3>;	/* OM67 */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom803: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo803: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c10: i2c-bus@a {
+				reg = <10>;	/* OP3A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom810: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo810: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c11: i2c-bus@b {
+				reg = <11>;	/* OP3B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom811: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo811: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c14: i2c-bus@e {
+				reg = <14>;	/* OP5A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom814: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo814: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c15: i2c-bus@f {
+				reg = <15>;	/* OP5B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom815: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo815: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c16: i2c-bus@10 {
+				reg = <16>;	/* OP6A */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom816: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo816: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+
+			cfam7_i2c17: i2c-bus@11 {
+				reg = <17>;	/* OP6B */
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				fsi@20 {
+					compatible = "ibm,i2cr-fsi-master";
+					reg = <0x20>;
+					#address-cells = <2>;
+					#size-cells = <0>;
+
+					cfam@0,0 {
+						reg = <0 0>;
+						#address-cells = <1>;
+						#size-cells = <1>;
+						chip-id = <0>;
+
+						scom817: scom@1000 {
+							compatible = "ibm,i2cr-scom";
+							reg = <0x1000 0x400>;
+						};
+
+						sbefifo817: sbefifo@2400 {
+							compatible = "ibm,odyssey-sbefifo";
+							reg = <0x2400 0x400>;
+						};
+					};
+				};
+			};
+		};
+
+		fsi2spi@1c00 {
+			compatible = "ibm,fsi2spi";
+			reg = <0x1c00 0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			cfam7_spi0: spi@0 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam7_spi1: spi@20 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam7_spi2: spi@40 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x40>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+
+			cfam7_spi3: spi@60 {
+				compatible = "ibm,spi-fsi";
+				reg = <0x60>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				eeprom@0 {
+					compatible = "atmel,at25";
+					reg = <0>;
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
+					spi-max-frequency = <10000000>;
+				};
+			};
+		};
+
+		sbefifo@2400 {
+			compatible = "ibm,p9-sbefifo";
+			reg = <0x2400 0x400>;
+
+			occ {
+				compatible = "ibm,p10-occ";
+
+				hwmon {
+					compatible = "ibm,p10-occ-hwmon";
+					ibm,no-poll-on-init;
+				};
+			};
+		};
+
+		fsi@3400 {
+			compatible = "ibm,p9-fsi-controller";
+			reg = <0x3400 0x400>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			no-scan-on-init;
+		};
+	};
+};
-- 
2.39.3


