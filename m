Return-Path: <devicetree+bounces-140996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A558A1D111
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 07:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98959165BFC
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 06:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B1015852E;
	Mon, 27 Jan 2025 06:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="cCrYVAqA"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2126.outbound.protection.outlook.com [40.107.22.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E4343AA9;
	Mon, 27 Jan 2025 06:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.126
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737961109; cv=fail; b=p6K6jVZ98W5bU9mB+UuO50M87a+46mwmo6S9Rkx/Hx+gOczRr/bEXHPJnZVjbt2pLeElLlDwSL9MvPP8qQT0hwyRnh2+Bdt74fmpD1bIg0ipw37DeFn5cEAL+TRRGZDlOScgSl42bjI6QdJXld18nvHQoXL6UDeqWhSHO82i8Rw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737961109; c=relaxed/simple;
	bh=7M8PbAMK9gGJeg2AxpVx8aAZW1f9t37n32B8lBwv3AE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Foa4jMIxEhGLIOZ4XxbpgDJwuySDHqqIWp7tM3H75Y+DrnZutoXDdoFYZSBqg2fWlEgNBqlagsNLeuzT06PGkXvFNVT+Z2z415nSnvyWvsVI1OCKjjThI3F06uTsTKuSqdmtNKpdlcDuhoI6AhyifN7m6s4eBAud4yG2KXDGKsY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=cCrYVAqA; arc=fail smtp.client-ip=40.107.22.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yxNjeIIG4emW7X1YdnmI/XJG3/mRQqN7rZUILsfx25D6QqTTiDBXlKwCyA1+eRzo2Yuo2DbRRU6nMdnwNuOBlZOjlImaMv8Mm1v9zohFR0wyLcV/bqHOa5pQkX8w8HsnY9rqebi2z8iFLMhhsDhxWpDpD2MmUUGLBFJfLwcq6a1QoGJWYo5AR8hMOUa2MfLQdqMH3vEkXVsibMWxi0tbxXp7THtVNXEZ3qQD3rQziedlobfa02uqWKp9W9SgcMamvVhNnk2wBr/eLCgGy4CH5csZCkcyzivr7RuH0VY8olSbrITRwyfZDm/XmYllKt/fjWLaxWaTFptI+od1NbSdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u7r0m+TcrSYbdGTZ+wVKy9Fm5VofU3Hnn49xtgKIvGU=;
 b=bwmcofFp92CzQShQQPxZxhM1mPCnUegWSNi0uDgnMTh60IOs8h/PvkDXfPcwAizbym/aPe4FzqXSE9AFkagU1YkGhwCeQVs+r92W/jXvQ/XVLG7X06lJgmD95r5ufx14EdJf0uybfydGauaM3/RNPadzyPz3+Yncvx7UXAM8puawKSQpevNKMm6T+9JXgkiBqxcL71+XuPnaYfFiZL2ao6+qj876Xy22Q2bJhdExpT46QKRSNVbwQTpWp9u3WS3Suj0Ja4il46YHI6bdNrAZrRGkN/i5/4aJau9yXqwIsodqyFJeoy4iLicjPlYCmqgr79f5LG1qsJgGheXVaYKJ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u7r0m+TcrSYbdGTZ+wVKy9Fm5VofU3Hnn49xtgKIvGU=;
 b=cCrYVAqAtPsUCQZZJTGXaF+0R4PWcX3J/v22eSfJTwxU6tZyuJTwTYXAP/Xdc9W/8iD9RGyvYAsxdFh/2QCVuzKU1USBVXHYqsFAXYaD6/DLbEUfV9xLDSxoWEfcviWaklLPim2I/UlSu4eBdHE+1iDsJpdIcm73h2/cjV3Qcq7YUyTks/MjwTDYH+91h3CbI0WD9nXKYLTHKEhtXz1ZGdcNDXJfAclcoIUPS3fnWbrhF0v/x13uaDQdd0mB5cpO8udDycovjcqoo4Av29IN0eWPBZ+d4yTIp2YuZTB20M5NDdJ28gzdEsdUCZSP9c6gBVTBMkaJ0qghk2ijDXnsdg==
Received: from DUZPR01CA0135.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::6) by PAXP195MB1295.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:1a8::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 06:58:19 +0000
Received: from DB1PEPF000509F1.eurprd03.prod.outlook.com
 (2603:10a6:10:4bc:cafe::ae) by DUZPR01CA0135.outlook.office365.com
 (2603:10a6:10:4bc::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8377.23 via Frontend Transport; Mon,
 27 Jan 2025 06:58:23 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB1PEPF000509F1.mail.protection.outlook.com (10.167.242.75) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8377.8 via Frontend Transport; Mon, 27 Jan 2025 06:58:17 +0000
Received: from Berlix.phytec.de (172.25.0.12) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Mon, 27 Jan
 2025 07:58:17 +0100
Received: from ls-radium.phytec (172.25.39.17) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Mon, 27 Jan
 2025 07:58:14 +0100
From: Daniel Schultz <d.schultz@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <w.egorov@phytec.de>, <upstream@lists.phytec.de>, Daniel Schultz
	<d.schultz@phytec.de>
Subject: [PATCH] arm64: dts: ti: am64-phyboard-electra: Add DT overlay for X27 connector
Date: Sun, 26 Jan 2025 22:57:56 -0800
Message-ID: <20250127065756.3086450-1-d.schultz@phytec.de>
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
X-MS-TrafficTypeDiagnostic: DB1PEPF000509F1:EE_|PAXP195MB1295:EE_
X-MS-Office365-Filtering-Correlation-Id: 70cdf0e0-98df-4201-8a2f-08dd3e9ffa6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?F4koGdPQJfaI0JgXfdlnEa4Cez78KTPBno+JWagsWGmLm8YRmRZWTXS8FoBZ?=
 =?us-ascii?Q?NSObtcgT2VdkabHjf57CvfAWZG70U6+VX4E8g2k6L2xHiN4LDJf/jvlj/FBS?=
 =?us-ascii?Q?MnMYZO0qzAWLdZmjpszPBjbRiLHl3xeqIKwTzKPRJPrAqN8kDdiZNxGTG4AG?=
 =?us-ascii?Q?Yyamm+qkq11ZTp2s6vWsMR1dPPuUAUV0Umfg4LEwa13OwqiYp9IB0dpJgxYW?=
 =?us-ascii?Q?vGBsHC65gyLHpWc/VHCHlh5WdhDUUwnqK0cJEba2gCJ86XaGy2O0Vvi6Mzgy?=
 =?us-ascii?Q?X3FNvAfQPQH6sjS7iqDgnUPjwWV+TIVG2I5RKB0JQBQyNzsTgWDG7Bwo4q6E?=
 =?us-ascii?Q?9RaYXCEicj7y2LuJFc5tM/03CDjxnISKTLVUQilop5sm/RjmB3uutfcsURBQ?=
 =?us-ascii?Q?AIWSHuGGQ2gEN14TeMib6t/BUXC8zeEVlfn3CHjd0mz5LN53s4tDhxMhxmQH?=
 =?us-ascii?Q?kHVsev5guy40HG8RJlPJgO4t1vRAwmGMa70dT1jVKR4kq4HeLzNVNJFWCcPp?=
 =?us-ascii?Q?b8K70wvI5daFFCxSH0q1AWwHIMLOvLtbR6e08lPGLGi8k+kyv58PV/7x0uIH?=
 =?us-ascii?Q?aKzEJd7gBA+bzV7BbWIcS+lEKb4wFghyU42HutSNKxUCPuyXk9tfgl0TsbOr?=
 =?us-ascii?Q?4fF2+b9naZSWemC4AFgNEkA00px4hdchbiiNhxYTV52HzkAW3iN49QMxkwcb?=
 =?us-ascii?Q?6ERqiBKOVRpnw4zgKk1HyTxb2GiAbb3CdKXcfwJWpyITyWepLTyRonlp3g5h?=
 =?us-ascii?Q?E1ZFucja3dpLpN7iHakzNzRAcHGFu1345w405exEjnm0mDSZIdsyHqUsIzmX?=
 =?us-ascii?Q?co/sSsur9Z+JuyE2HAESr6em15Quzpi+Vj6Zpsh24TxLHapYZXkjEADBcntQ?=
 =?us-ascii?Q?ACee/y7H1ch6IHgnIgMtNkNpz8MOkcgc4rMRHitZY8QcA7IGSkvJOrP/8D55?=
 =?us-ascii?Q?AVAmPjihhj0qfxVAz1oy/MjEcPfWkXTvkOKLjNMmL3figzR1Ti4jNbzgYtVF?=
 =?us-ascii?Q?zIxXhnnoiBLjLJhCv4g+0SwOZwNMTBt8sI3nhIC+MOfqAk9u9Jf/AHzv2A2f?=
 =?us-ascii?Q?IuXWOBR1AiDebvCG1TKpK4sC8UP567Ix5S7I83y3jQlPUWLt8veweiS4Z6S4?=
 =?us-ascii?Q?8RdiXDMQ1YsWxOgxBGmJx2kjj8aWNkPaaYHTym9EN6xiYHLFeGBDLQVXgn3j?=
 =?us-ascii?Q?OuIAJFiXX8SlYkvH4S2iO0XQG9SlsV8WIiihINAxUfwqrkWk8nk1Mgv6i4eP?=
 =?us-ascii?Q?26odav0ho/LykXf7slcHcRliQJYcCrwQK7kucMOM4jprcfnfZMY6JF4ukd/V?=
 =?us-ascii?Q?t60WOAZmYvey7oZ/dhryhT/Xqj8bjJ/Au7H1mNz7uK0awM9VG0mOYd6qdeqs?=
 =?us-ascii?Q?Y464Tw86/CQWowQk1LDL2s+cLf7RB/VLrJI/lR5gbORo0r+uizeSnYrLzS0H?=
 =?us-ascii?Q?c1y6gAuqlc1xw7T5v3/q96gcefbVWibgtKpj5O6kGv6NSbiHpjvEsQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 06:58:17.7771
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70cdf0e0-98df-4201-8a2f-08dd3e9ffa6b
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509F1.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP195MB1295

Add a device tree overlay for SPI1 (spidev), UART3 and GPIO1 on
X27 connector.

By default, not all interfaces on the X27 connector are accessible
due to being disabled or set to alternative pin mux configurations.
This overlay activates and configures these interfaces to support
connections with external devices.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm64/boot/dts/ti/Makefile               |  3 +
 ...phyboard-electra-x27-gpio1-spi1-uart3.dtso | 69 +++++++++++++++++++
 2 files changed, 72 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index f71360f14f23..a05c9c5612fc 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-gpio-fan.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-pcie-usb2.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
@@ -186,6 +187,8 @@ k3-am642-phyboard-electra-gpio-fan-dtbs := \
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
index 000000000000..b80d8b6a4fc4
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
@@ -0,0 +1,69 @@
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
+
+	spidev@0 {
+		compatible = "rohm,dh2228fv";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+	};
+};
+
+&main_uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart3_pins_default>;
+	status = "okay";
+};
-- 
2.25.1


