Return-Path: <devicetree+bounces-274367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CxuFcL/sWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-274367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:50:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A16ED26B72B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CFC0315DFD1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F8137C921;
	Wed, 11 Mar 2026 23:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="rFLVVsJK"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021101.outbound.protection.outlook.com [52.101.70.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F372374752;
	Wed, 11 Mar 2026 23:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272960; cv=fail; b=bFMBrMCA/yJDH7L5F2T35iMOxktC+izQo33iqW+/1VIzaPEHbTyyBIGWrsl1apzA/d3Z0zc9odSGfQljqWVeD+jrAv1V7SppugwBK429/DDP2zWhdnep/+rwY9R6a0kYdDXf6lEfVdZLFNGUltuOL0mDCDTb73WYOa73JgAdzW8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272960; c=relaxed/simple;
	bh=1BfdRAinAzreZzIczEShREXIAOWNhMFrANQX52GgPxI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gbWXaFf+yNsM3eh7nhSWP875EKJo5ZaAdfXVTcakn1P8T7hrdtX+72b1NonTpuuFr/QppLoWy4R4TAWuXhF0EzIc97F7e51julFngwaenwswlSXtOKTTY8j5jRqub2TM1CHba2IsLVopYd7qL8Vrj3A9gJscmtPy77Kz72HEXIY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=rFLVVsJK; arc=fail smtp.client-ip=52.101.70.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xGL8Mo2h3LgC4I94q/NW23YfAOtCgHgYNyD2uCAb876R3cr6TM7CYtSx1A6xl6QY3uXJQoiFjbgLhdpki8tZq8rSv42kA5A9bqFZvDTS9vyXY5GJ8m7orqkcjjBSli5hl3ILo1YnpsDUWes0mw0H0tCi9X7/74ZBuHNsCLmDzt11C1p+HiFRNknAgmnB3G0VTmgwaOaREmToT/URXflt8qDyoH38ttnya/c+89uA8MucTU4LcTW1iMEJdEK7R+u/Tp6fwVilsps4ALfeNk+10oVnxoZDiDMryJmyrLuMUhPf7TfXYXU+NLWq0Jx6yxIZLKoDEUASr8o+kbxRhHOpZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6hqwm3vcVsQRs3kqZO/NmZop4VIdM2cs07YuX7/GO1E=;
 b=oz7tfesRiVikcvp/McEER6egqNQgLdb5/R19n9xVvgb63hEy/PXra9kVd+AA4GRRzWtluTVu8hE5inAMKFZm17D3Xf5v+v/pxm01ltkUiww7upBHqYcAH70S8WKvLU8mi2hoX0S+AsotmTaGdgf4cCXh5rbHkb4X2sM+7O+qcimMNPCfc1imhGeyKWnj16KSfv5dFlROVRW4xb1Nq4+9TCGLgQNIQ1LEyxg9aCnpmfP+Ky3u/DUK/KiRlVixAtsMXtIxLIXXGowCvzE+JQYKEEIl8gWYuhC9HzTAPGc/mlHiw799My0Dk+P6foxAK4KauaGyy9HGcL8HibLxT6yM2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6hqwm3vcVsQRs3kqZO/NmZop4VIdM2cs07YuX7/GO1E=;
 b=rFLVVsJKN66s+d8VZV2G57mN623ycuaKKBQdnlZzv3rBuG7yjtzMAQSWLWtICZpD4FoWS8CcIZs5T54YyRaJrdRnZnoznsxWxYOi+zVjlc2bfNJamveW2SR63Js3QDoU6aK+wdlHvVbEoF3B42hscjeSVtOlbHatDCA45YH5WPwD/kE0Wq3dfV9K/0oqedJEG/NRzOeXt9ddK6aMG5+7IaT89h2OsI7ZC0ZR2XgNSDC6RgzEnhi+v9dgaJ6XRR4DjXO1tz3vy6wTvtrV8YABBIC5mxmwZzfhrj9/PDxjv43nACAmkwR1BxUJtXGHS2kD8Xzks7OfkWLqCsHvc3M7Ug==
Received: from AS4P190CA0013.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:5de::15)
 by GVXP195MB2481.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:1b3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 23:49:13 +0000
Received: from AM4PEPF00025F9A.EURPRD83.prod.outlook.com
 (2603:10a6:20b:5de:cafe::8b) by AS4P190CA0013.outlook.office365.com
 (2603:10a6:20b:5de::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Wed,
 11 Mar 2026 23:49:16 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AM4PEPF00025F9A.mail.protection.outlook.com (10.167.16.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.1 via Frontend Transport; Wed, 11 Mar 2026 23:49:12 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 12 Mar
 2026 00:49:09 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v3 3/5] arm64: dts: ti: k3-am68-phyboard-izar: Add LVDS-Display
Date: Wed, 11 Mar 2026 16:48:39 -0700
Message-ID: <20260311234844.56443-4-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311234844.56443-1-d.haller@phytec.de>
References: <20260311234844.56443-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Postix.phytec.de (172.25.0.11) To Postix.phytec.de
 (172.25.0.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00025F9A:EE_|GVXP195MB2481:EE_
X-MS-Office365-Filtering-Correlation-Id: a8037f72-bd60-4c2b-d751-08de7fc8cc1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|1800799024|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	b1zr5D3bpwynumkRQHDvs3Rn/vOlNeTduA1r1cBBUYF2hu4nNMmiQoVfixfxMMLdmNGgW6FLlVUMNAQIImCVpAydz4l1EIDWq42dGOtkeleT2ZwdpuGkxH0xhU+iqOIEcotjWk6HSJlXMNwjTRBI6X/0TCnJQdlwMPQ+K3vsL2E5CVmlkCdWEIAXeUrIHVZcfHmHV7xuJipbBi7a6vIZ3gzgqb2/Iztap1roPfXcXdQNYpBCyHawP65/pshwEOerMD7rtVVBrkfHcPWrnPikpk8driba9JR04u1blKEGWAX8LV8R4ZMAnsEs5mzTx1wgqBOGkvv0+UkpgSPBSH0guRH5dsL+NjRP9YyhAySFspG3qqkcYDO1GYmkL/iRDixoFvn4j3PDhG0L5f9J8qwTi7MtQUFd3gwpSv4Wn4AEJ+UxLMSf29j+BQLvX0bxwi/hHto5IhM7lG0qqbB78zsklT7Cu6FrL9RrW0Xy5k+wXRk3HctrOu0izDVIzPwZbFbPzL8/S90ZrsL8ByGFrzO0UHsA4XYRxS11kf7VTQq9fYC0Tt+UIFHaXn1sbILuyV0cZpYpEn8FJWV2v7a0Oadxte52yCjYCBKrUle2JlQ4omLQyXcFhxlGndDlRSrMPw9uTIjLnZbJvmckjdP4TWbZxtXQ4NRoOGj+LgABVKBXn7RWRe6OlqXJ8u3ZjW80jBnWBtph7cBx9B1w5XN9UDI8iRcW2xw5dpzK1D1mbT7b+vBpmrZkcUS6HwK1azmKK62bQ4Nz0ZglOpz64kQWRWdNCA==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8/XY1alS100xcRwMkML5Jwg03Uy3h4RCcHs3zXsmXOPI/FLA+KC2hK7j3f0NroYyMIFQRt3YLnCLFqriyWsXu4i8A9bc49zNrRIb1E943Zfu6IvcO5S+oyBXQs+tP/vbCKoZn6sfb8OGGvjpr/clK9JTP6Mwe3NiahIfQQFSf588YiI82AO26AafX23oxsi0OBaSAMANHrq4aSOz8nEVdfAjjtBAi/FjFE/3/MhAcYW/J8G2Ni2DiejhDloySXS+J+GMzROwJrhE7lfZ1xQ2HnIcrb1UMCPx8in6dCXpnULH+gLh2xoKMLlWeysRVOL0xRO5BFUIP838ApBfECpFivsQlU72mzdcsNV5eqmESaP8rwzxY0cxMaew6w5fy5sBzo56J+UwHBI1rYUWiNeKESkCvWNmIViHYbjv/2kN6M3Nmh60P09PPxYDO0bmuKhe
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 23:49:12.7432
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8037f72-bd60-4c2b-d751-08de7fc8cc1d
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00025F9A.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP195MB2481
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,phytec.de:dkim,phytec.de:email,phytec.de:mid,0.0.0.1:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274367-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A16ED26B72B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add an overlay to use a powertip,ph128800t006-zhc01 10.1" LVDS display.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 ...-am68-phyboard-izar-lvds-ph128800t006.dtso | 125 ++++++++++++++++++
 2 files changed, 129 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-lvds-ph128800t006.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index ba01a929e06f..a188e62e32b4 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -132,6 +132,9 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721e-sk-csi2-dual-imx219.dtbo
 
 # Boards with J721s2 SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar-lvds-ph128800t006.dtb
+k3-am68-phyboard-izar-lvds-ph128800t006-dtbs := k3-am68-phyboard-izar.dtb \
+	k3-am68-phyboard-izar-lvds-ph128800t006.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board-pcie1-ep.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
@@ -319,6 +322,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb \
 	k3-am67a-kontron-sa67-base-gpios.dtb \
+	k3-am68-phyboard-izar-lvds-ph128800t006.dtb \
 	k3-am68-sk-base-board-csi2-dual-imx219.dtb \
 	k3-am68-sk-base-board-pcie1-ep.dtb \
 	k3-am69-sk-csi2-dual-imx219.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-lvds-ph128800t006.dtso b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-lvds-ph128800t006.dtso
new file mode 100644
index 000000000000..f167d6cc43e7
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-lvds-ph128800t006.dtso
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Copyright (C) 2026 PHYTEC Messtechnik GmbH
+ * Author: Dominik Haller <d.haller@phytec.de>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "k3-pinctrl.h"
+
+&{/} {
+	backlight_lvds: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <0 32 64 96 128 160 192 224 255>;
+		default-brightness-level = <6>;
+		enable-gpios = <&exp2 12 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&backlight_pins_default>;
+		power-supply = <&bl_12v>;
+		pwms = <&main_ehrpwm0 1 44000 0>;
+	};
+
+	bl_12v: regulator-backlight {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&exp2 13 GPIO_ACTIVE_HIGH>;
+		regulator-name = "BL_12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	panel-lvds {
+		compatible = "powertip,ph128800t006-zhc01";
+		backlight = <&backlight_lvds>;
+		power-supply = <&vcc_5v0>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&panel_bridge_out>;
+			};
+		};
+	};
+};
+
+&main_pmx0 {
+	backlight_pins_default: backlight-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x064, PIN_OUTPUT, 9) /* (W28) MCAN0_TX.EHRPWM0_B */
+		>;
+	};
+};
+
+&dphy_tx0 {
+	status = "okay";
+};
+
+&dss {
+	status = "okay";
+};
+
+&dss_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@2 {
+		reg = <2>;
+		dpi2_out: endpoint {
+			remote-endpoint = <&dsi0_in>;
+		};
+	};
+};
+
+&dsi0 {
+	status = "okay";
+};
+
+&dsi0_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+		dsi0_out: endpoint {
+			remote-endpoint = <&panel_bridge_in>;
+		};
+	};
+
+	port@1 {
+		reg = <1>;
+		dsi0_in: endpoint {
+			remote-endpoint = <&dpi2_out>;
+		};
+	};
+};
+
+&main_ehrpwm0 {
+        status = "okay";
+};
+
+&sn65dsi83 {
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			panel_bridge_in: endpoint {
+				remote-endpoint = <&dsi0_out>;
+				data-lanes = <1 2 3 4>;
+			};
+		};
+
+		port@2 {
+			reg = <2>;
+			panel_bridge_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
-- 
2.43.0


