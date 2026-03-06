Return-Path: <devicetree+bounces-271822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NT5HDdLqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:34:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E6321B24A
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6503130A7548
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA16347FE2;
	Fri,  6 Mar 2026 03:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="aRJYX8O5"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11023138.outbound.protection.outlook.com [52.101.83.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA6633F8BE;
	Fri,  6 Mar 2026 03:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767965; cv=fail; b=FSandnCTTHj3+Oa/KhxMF5s2V4WxoKORnrHLIFQILP4arA/CbYsJleBAqrbWOK/GHJb3lBqSeyuCJRF6pLPUhwwflGqIR3BzlFp3NLjfAsio4T9u3CHpnBLOPe/jX/o/gbq1ADA2ZIzEjt8AozzobCUdY1NZ5FlpsLOrWY/qoe8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767965; c=relaxed/simple;
	bh=1BfdRAinAzreZzIczEShREXIAOWNhMFrANQX52GgPxI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PuhLGawBS2TqQZU9W4luLa94t6Xj2hDNXM5xF+4p11D/gkYOkLELsof8MW6oK0HHM9Ay8zQPT8FDjOM33yBdf4247jaAlazBQpYv618Lm7ikbVTg/53Zh9Q7/O0/mtTicNXzOJvfbEr2wyultU+I/+jgZ0coF3x+iqmooU6rh08=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=aRJYX8O5; arc=fail smtp.client-ip=52.101.83.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NY6ej711pl554NPOFJdlYYRYEv3f+w4Sef5s3j7977T8AZXJcaUNY5A7P/USahpPcwGivq3h8TwfSi1FgNjoWrCiKrisVrqCf7NG52Vi5VtieEbPeX0Rp+Lo874vZLVrW9YZKnjzaa8Y4XHxectu8sGctmWs/lNU0ej0ap5C6nHSRZEn/quTmMltD+UAygly9oU5385l0G3+kjwFyVe0X3WmO3GWibTUP6STPbti0UKURI5xhZm+CyKuZw4uqsa7IApMNtkaihMe0+pUc9XcddB8n9SqCT5pnviCLNhHdAMybXPEdMz/QosEpcF7uV6nOAQcfxIpc9JcOEpSKvpkhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6hqwm3vcVsQRs3kqZO/NmZop4VIdM2cs07YuX7/GO1E=;
 b=JMAFUYs1MLVOVkueGknxfPD6JS42jSXM5wL6HY/E6lRSTWD+WNTEd+SrRdzsKfgvebOCGY5rxmFsO/d4/DDroeSQQPQa1ZOcA9aZ7Dl83QYs/9eV8rE39YCETRzlJAsBUu6Fu8vG8HKS2RYJg+Vxu01SbhQPt9+SOd/7jQBbJnN/hR+OVvUbDJz6t3cgLJXfoSsDApaMv4bJss1UKGB1s5deAMCgpBnhN/1T1JdXlFDPvf/PemoTeRCDKXxHIMAMfxBebcI2H2A3JDo51zEs0Dqud9CvXFOTvUslJ57XqyP03bx9fLbyeSQ+lkOGDEQRGmplUkYf9rOiPeaAB8QFkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6hqwm3vcVsQRs3kqZO/NmZop4VIdM2cs07YuX7/GO1E=;
 b=aRJYX8O5KpBWojbKBzjJ6RHORyrC9nXdGATqiYHtcZ5lSxL3GKZArracQNwXK2NgwDQEKnKth2YzDANYv0PuME8ti6KRTYWCRcyQi5zQisZUa9bxYmBF3lZ+cW0JUSka5NJHGeuxEoXd/2xPytPwG9oBB5RHlts00UKQxae+J0jFWLKuZCNK+BkGTwFeaaixJBYz0f26Vj1ExDH7HvZdeGaTqtUskkd3eHipBPyRWFpBHH02G2PYPnEpiqf6ml/+Qie5++yNNi0KHXjFJ6DOF7Cdb9KFbIXQJwLQ+W1NCb3MHAIbRkguUQxBYlhTBUtV2X2yMo2UxPqSa1uE6VKcSg==
Received: from AS4P192CA0001.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5da::15)
 by GV1P195MB1714.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:55::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Fri, 6 Mar
 2026 03:32:38 +0000
Received: from AMS1EPF0000004A.eurprd04.prod.outlook.com
 (2603:10a6:20b:5da:cafe::c9) by AS4P192CA0001.outlook.office365.com
 (2603:10a6:20b:5da::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.18 via Frontend Transport; Fri,
 6 Mar 2026 03:32:37 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000004A.mail.protection.outlook.com (10.167.16.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:37 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:33 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 3/5] arm64: dts: ti: k3-am68-phyboard-izar: Add LVDS-Display
Date: Thu, 5 Mar 2026 19:31:46 -0800
Message-ID: <20260306033151.276202-4-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306033151.276202-1-d.haller@phytec.de>
References: <20260306033151.276202-1-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS1EPF0000004A:EE_|GV1P195MB1714:EE_
X-MS-Office365-Filtering-Correlation-Id: 35abb26d-85e4-4b0a-2749-08de7b310359
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700016;
X-Microsoft-Antispam-Message-Info:
	1qCHnhy0PMTX/7l1QKslN8Vv1rna6NVb+pgmoh2WM7IE0mPPi0+rsKes+8x3sDbC925H6CrTxIp/OytU7i2U8IUVG7P+br/DcNUluY3AmSFpaz4Te9U/Mk3Kr3wbqpRbwxrXkgzRrN7tHThCSt9Z0WqbXhGzdwKjIU74UAlTQV3vrzhGxPd/XDHKOD6aWd1J+iCJW7JWrNa2yf9JT+1UK0ll778S6U481XxCBIWtwjTqp6ngjzoUph0rPM8bdAskzms7lBCF0Eg1CA/nckN3E846czyM27uPTwufRkVzD2zkuQSQUG+6ORMmCXdCSWttXEnp9dDwrsaaR2ke6Abs2iWVNysfW9MygZ44ttcin2dQ5gOH5jAzRCFUBQQWGjHoefPgFvkfd4yYmUmy2QczBxOxeRqciaj+wA+ntniqUGBGZQocFjEN5GfDZlUM3weMFgSOFujGu01OGTyLmD+8GEMNVtuAO1Y4PaAGMOFwAkA32XTPT1ibIFKLdRCac4Tf1K87Cu/zWXQhllillvljYZPzug+zttnCtBCBQcqGbusTZw4RlAkiE6t+BfQ9JoXQnIVrFChHbI7PFPizTaEztizyRbCEEECQRaqGQrOS4jaaL9BnuXhEUxPMddK/NmaKnh3k74Qwd/nhfBfGCZP8rz9QqvHnJwPpAcGFlsFEsSjBUeaC0iKkkFoFAfa52Q6zxBmgBq4yoyNB06ISUcGSohDR1Zeh0bL2Md+i+W+803cy+KGJ4N2hs8bTtrTS48ufgGMiBN5j7ITNzBHWWrZkeg==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	m05YySL4uVIYFyf9wB60RQx5ZcOE0iL10Vx4If8HJLimS6DCzZABqigjJhDz6Kk/DkJ3QojI5guTMRzftCQxIaWMtBOTPvnAIq9PZMFCv4WJonTN8DDw0nEYYvc9PjxhOTT9/xh1eb0X2Tnfq9tLom4GnJRAL4A+Z3AnHnG5IqB6Sk8ivRx2RZ3RXvVi9dIVhHKd0n4RSymAG77UWas+CdMVSfaIgN0aMfSSyDa0Tk55Vv7trqxcsK5r/JMnGdkX3NOpIbiUmDdwxOb7V1qhf2ot8+DIdyzrRVrToX+/dAcT3J/CYyBebp7IhfpEyw7zOr+O6OTtHKsU/Sl8VU6DHrgpRwMQTKkTNWnSJ3rar51BuzC9fmlAMnu4ZmqLPQngg/nG4F9cix3oogiKsrx8CKjWXkuBLGTpSIa5DfPatGxYYOHfqqbd3+9No1Z+P0tl
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:37.2531
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 35abb26d-85e4-4b0a-2749-08de7b310359
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000004A.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB1714
X-Rspamd-Queue-Id: D4E6321B24A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271822-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

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


