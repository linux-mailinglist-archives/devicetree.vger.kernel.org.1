Return-Path: <devicetree+bounces-141364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C839A20832
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8E8F188AD03
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E16E71991CA;
	Tue, 28 Jan 2025 10:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="VsI37p0G"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2139.outbound.protection.outlook.com [40.107.241.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD88718FDD2;
	Tue, 28 Jan 2025 10:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.241.139
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738058669; cv=fail; b=M9CLZwan8V7Nz/faetFxGOoNGIsDVdlKdxbY4P4Y48VpDMKubfunBuBG1RW2ue6GRB5pFUWF7pabvCZIuoofP7s2831FouBaLBEUABKxTmiK2pSIcg8ztXua8pZkNnl2RN3pliTyEA7DBqQ1PgN+6BlY1PRJE1WVjJA9C2oeuxg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738058669; c=relaxed/simple;
	bh=98y0boZOrCaXfl3VUPO/BdSalEElNmbbwpxyeQYTM90=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ecd4TosTEhCo/GDT1M7wbcsVT8PE089Xf0xsD/Gj3DZ3mnC/KpjbVu6NY0EUpK6N1GZABtdqQPWW/kRz46RCB9pVwbgeu0/AKrlNqGm9jpw9hBOO1UcOjhp7/nxL6HFu4e5w6eRZsJS6gtz+e35k8wIQQK2o6u5nFhPxpeN3qFw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=VsI37p0G; arc=fail smtp.client-ip=40.107.241.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLAH2imath3STeDW6EI6lrsRmoyGSg/2EHDyf6u12fBVwwZ3Q8qCPpDfDUmwwNGK7lnT4uJjZhTvY0wC+IlORuqk0taSBFzXiFR8wIsQ47ruxyAT53qb+BKM97UiD9+JQuggdXHCQ8q8ibSXMdRhxf/QQxrPdC01f43mjDiWHTQbKwY/fTMHLWNTDe1zRzVX5werSLniDankipuDWKgo9W+N9cPuooYKfjAvWB+bIZPMktQOW/YYJ7/7snxuHMHeU4nui/9Zzzo3K3TRXIaGvKHSkI8/AEG0hhi4ZhXvL5DAHnKV59PwHV6nbXwfh8byL0suJr10LVrIJ4GlWW2jSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ai6XYg5ZQ7rOyvnSSDTNCrOijS8XSlgokewkA+GyW0=;
 b=fEACtdJAiNvTOanzCbVWpwQZCpHZhlGQ2wyjM3W207V3a5OvDgHR4HvEzb4l8j4NXhVA/sdti4FkDEngnAR9V+QaBl9LHamq+j0YPy/PCKrn3fID2ycRVZHA4gv538EWeKXsywC2WcoVxjVD/tXh3qzwhdS8HMjzsgtxhkmngqeOW2Bd0Lq3fO1NPeN2sQLXpJ/edtylyJ/8l4IZVV9ml70WkXKYbxa+EffYpAhROM85Kb679LHbkSTaYn4U4r0YgbSae5v9fSxnMHlJq2akJHgywl6MsRDsWNFVTMlpoQ5jUpvO+SxLXPc8MKXMv++AJx1bSxshWgRF2UXH3VxkLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ai6XYg5ZQ7rOyvnSSDTNCrOijS8XSlgokewkA+GyW0=;
 b=VsI37p0GPOdADOUx576mpSZMq/krv4FhEU3CLg6fDDXTlUbN+ahX0RUAodtCBjitRMO+7Z4k8O3oMWYfxPFklSG1EVZ2a2FLJbCk2vs7Jr3NxGPe3wh1AEzdUZO4SoDXZ83hfGNoHrTLu6FW0ED6YReKy+gqwB4eoBQdCEReSkeOg+zppWFB45UK+nEle1LCkYgu8XyINcyUeXXRsFcfjhzRrkq0Mq4nGpiomxzZ21vlF/muvqFd/YmMmIGTUyzWwhXlGUU5Pj+TjYM+9FHP3a1+ttaS/PBzWjEUI6fTBZKV1L6IK8t0VDIAZroXEMqYu2BjsRdm5w39LDKD/iH1FA==
Received: from DUZPR01CA0064.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::17) by PR3P195MB0635.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:27::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Tue, 28 Jan
 2025 10:04:20 +0000
Received: from DB1PEPF000509F6.eurprd02.prod.outlook.com
 (2603:10a6:10:3c2:cafe::a0) by DUZPR01CA0064.outlook.office365.com
 (2603:10a6:10:3c2::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8377.23 via Frontend Transport; Tue,
 28 Jan 2025 10:04:17 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB1PEPF000509F6.mail.protection.outlook.com (10.167.242.152) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8398.14 via Frontend Transport; Tue, 28 Jan 2025 10:04:19 +0000
Received: from Berlix.phytec.de (172.25.0.12) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Tue, 28 Jan
 2025 11:04:19 +0100
Received: from ls-radium.phytec (172.25.39.17) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Tue, 28 Jan
 2025 11:04:15 +0100
From: Daniel Schultz <d.schultz@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <w.egorov@phytec.de>, <upstream@lists.phytec.de>, Daniel Schultz
	<d.schultz@phytec.de>
Subject: [PATCH v2] arm64: dts: ti: am64-phyboard-electra: Add DT overlay for X27 connector
Date: Tue, 28 Jan 2025 02:03:56 -0800
Message-ID: <20250128100356.462934-1-d.schultz@phytec.de>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Berlix.phytec.de
 (172.25.0.12)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509F6:EE_|PR3P195MB0635:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f2ef1f-3e4f-40d7-5ff6-08dd3f8321b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?UhFrzyiT2VU96Xv6SyEUYwYN4oKH5dE1mDF9gi5+A0oIoCvpPTb2CzpbOHt/?=
 =?us-ascii?Q?WaDbKyU2b3ix8ldN4O7Y5W+BPXqe9u+Sjr+HSRjV+gKoMrlDOKf6Fu4o6zox?=
 =?us-ascii?Q?5i/Z51CPCm/daiPPE4DtS8Zb1uQ+ExLMDwN1RcQTugC/Vrth9c3OiZJvqi6f?=
 =?us-ascii?Q?TZa2H+2SpqtlsmHNBX/ns+l5r2Zm90Ka3JZ9L6ycQrwRmPZ8Rgumkhn55ceK?=
 =?us-ascii?Q?3DKD5wA4k0x9ltt9eya2lKtd8t/GSI/0s4DRwB3qnZQsfYEumGFfB0w/VArI?=
 =?us-ascii?Q?GV2dWH3lNLefITOy02ikZXLNBjSJV6CNt7Q+nE0sGDiA7OsWIFPa2blK4R9I?=
 =?us-ascii?Q?fSmIuBK8PeL34Si7hXcMkk8jOKHEmPkjxxjt1xa9ttdJr2nP2Eu6bFUkSoRC?=
 =?us-ascii?Q?S7wflBGv5V8B2HrvxOpPR9ROH4Z2edzTw6iwEFdSD0mF2b0WywEudO1WnxPE?=
 =?us-ascii?Q?OQcCuwaFrEd4WGDL1LNo3ThLFbARwMwXznjsz4TzGu4o0Jfl3iRRYIuvWdn0?=
 =?us-ascii?Q?QEPfQN/ViWhFzV7EzFSXhp4ob2SlANgEGDuC5+UH71+0wcrYNl3MKF9ey34i?=
 =?us-ascii?Q?9yNdezLMBscQg+X84fr7OLB7BRf165v/lqmqjfx/8nd17PV+q8Npup+DyY8a?=
 =?us-ascii?Q?sO+dNzXlbxD1YqQ56MtyVi6U9LNxRCvCdtqgvxT1s6BvbiXQxWzsDYRFkbLy?=
 =?us-ascii?Q?XxfYPBcVWyC6jEzMWuzgRuNmLUzwAgUdkCHYHe0tquxbst5+GBx5L+eXoLOU?=
 =?us-ascii?Q?bHuaJ4bbQM1JuVRE8EP0wxpr+VcuY2uBhcMXLLxzFHcYx1LhcDMn1SBAmSBB?=
 =?us-ascii?Q?RiOkv9BPpxhWt4wygBkUZH5O+fvS0Wx0YRWVd5ku0kGF5zUR4jNmOYLPkF+o?=
 =?us-ascii?Q?ePg8l+IO8gCND0fC1jPPOlkYgYnyrdDAdrngofUWq7lbBCDSeNfGrgVx9Uli?=
 =?us-ascii?Q?F4z+cGeE1WpbkTxL+v+RoPtNGYVk5uMYLePwVsGDD+3nvLRhhNichz623qjd?=
 =?us-ascii?Q?39R/NIirEMP42J86Z/Pcf3w9sVKA992wtUhxo+UlCSjls9ca2YcAPGKiqT8P?=
 =?us-ascii?Q?QSA8r2uyWR3CDh3Y9afXB2Ej453En2rR8G7TqCXqYsC42z6UeTcJdfd7uVzj?=
 =?us-ascii?Q?cWmOeYzWy2EhdGZEh9IPXgFNd3sZ1psSsEEBPj2vmzcNZQuj6ByFWkFAWd+T?=
 =?us-ascii?Q?X9TSW6BAY0Zr0tk9Yam/wjeX0++71yh2tys9LqMLReZRdZqnAUKITvOC2hgT?=
 =?us-ascii?Q?SGNOym4yhNJ+W5mo9N2ZUEwDnd0xpFNJvAyg/SjhJfOwsA7Zt7HWO/sklxJk?=
 =?us-ascii?Q?ykYb4lcfeT5rYyhp20APOqm0WxnfsTFijBqJzJeJz6g7RkjUqtDdZrIUkKup?=
 =?us-ascii?Q?2hlJbZH772XUL50CecodmaEH+vg2Fw+Bj66Dz7CzUk12KAtpiqmwNDNjOwfn?=
 =?us-ascii?Q?lXO60RYYzylyYQZRpK+xoLwHrAWF3L4CGbSB9dcni/Kb8810hKnBu7ht3vhC?=
 =?us-ascii?Q?8G5JOqhJ5bdTAMw=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2025 10:04:19.4653
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f2ef1f-3e4f-40d7-5ff6-08dd3f8321b5
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509F6.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P195MB0635

Add a device tree overlay for SPI1 , UART3 and GPIO1 on
X27 connector.

By default, not all interfaces on the X27 connector are accessible
due to being disabled or set to alternative pin mux configurations.
This overlay activates and configures these interfaces to support
connections with external devices.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes in v2:
  Removed the spidev from main_spi1.

 arch/arm64/boot/dts/ti/Makefile               |  3 +
 ...phyboard-electra-x27-gpio1-spi1-uart3.dtso | 63 +++++++++++++++++++
 2 files changed, 66 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 8a4bdf87e2d4..03d4cecfc001 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -54,6 +54,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-gpio-fan.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-pcie-usb2.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
@@ -185,6 +186,8 @@ k3-am642-phyboard-electra-gpio-fan-dtbs := \
 	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-gpio-fan.dtbo
 k3-am642-phyboard-electra-pcie-usb2-dtbs := \
 	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-pcie-usb2.dtbo
+k3-am642-phyboard-electra-x27-gpio1-spi1-uart3-dtbs := \
+	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtbo
 k3-am642-tqma64xxl-mbax4xxl-sdcard-dtbs := \
 	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
 k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
new file mode 100644
index 000000000000..996c42ec4253
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Copyright (C) 2025 PHYTEC Messtechnik GmbH
+ * Authors:
+ *   Wadim Egorov <w.egorov@phytec.de>
+ *   Daniel Schultz <d.schultz@phytec.de>
+ *
+ * GPIO, SPI and UART examples for the X27 expansion connector.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include "k3-pinctrl.h"
+
+&{/} {
+	aliases {
+		serial5 = "/bus@f4000/serial@2830000";
+	};
+};
+
+&main_pmx0 {
+	main_gpio1_exp_header_gpio_pins_default: main-gpio1-exp-header-gpio-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0220, PIN_INPUT, 7)	/* (D14) SPI1_CS1.GPIO1_48 */
+		>;
+	};
+
+	main_spi1_pins_default: main-spi1-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0224, PIN_INPUT, 0)	/* (C14) SPI1_CLK */
+			AM64X_IOPAD(0x021C, PIN_OUTPUT, 0)	/* (B14) SPI1_CS0 */
+			AM64X_IOPAD(0x0228, PIN_OUTPUT, 0)	/* (B15) SPI1_D0 */
+			AM64X_IOPAD(0x022C, PIN_INPUT, 0)	/* (A15) SPI1_D1 */
+		>;
+	};
+
+	main_uart3_pins_default: main-uart3-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0048, PIN_INPUT, 2)       /* (U20) GPMC0_AD3.UART3_RXD */
+			AM64X_IOPAD(0x004c, PIN_OUTPUT, 2)      /* (U18) GPMC0_AD4.UART3_TXD */
+		>;
+	};
+};
+
+&main_gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_gpio1_exp_header_gpio_pins_default>;
+	status = "okay";
+};
+
+&main_spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_spi1_pins_default>;
+	ti,pindir-d0-out-d1-in = <1>;
+	status = "okay";
+};
+
+&main_uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart3_pins_default>;
+	status = "okay";
+};
-- 
2.25.1


