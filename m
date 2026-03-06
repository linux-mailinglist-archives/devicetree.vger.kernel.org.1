Return-Path: <devicetree+bounces-271823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMevAW9LqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:35:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C26521B267
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3FEC30DCEA8
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE62434B662;
	Fri,  6 Mar 2026 03:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="tyZMw7nM"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022093.outbound.protection.outlook.com [52.101.66.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A1631578E;
	Fri,  6 Mar 2026 03:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767969; cv=fail; b=SbVkJUNgf3WpkwepAAsUHYyVVDbWSg2q8bJ97S1qoQIrs6DrawL/strPjmy/HRV9z135DHPONRPkK8uYPuZpdLhI2gOg+VDg8cGEo6sdsLd0935BCJB1ioljoIUG+n/W6VPTkORkmJIZUkLUv14SxiMEMi0bFGC6rabL0YEvS+M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767969; c=relaxed/simple;
	bh=0tEEe0fTtK5Lvd1OHBlSbhfu87JRVlUSXSeI/t86ZdU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oh19+rTEexmOFA0OvqrDnQ198Vfk4H1dK4V7Wo+ibQDB5j32w3l185Jmv8cou9R79XeRYfbPowNsP6l7GcGU77u+ryt82DnBG1ZjFOkcGEFS78vCONPG1qj4J/zuV3Kmmfa/47abtY9XNFahr5Su/i6JTseCPu+43anS7pVchUA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=tyZMw7nM; arc=fail smtp.client-ip=52.101.66.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JAeezQBdcdE/LBcXdKhNT1HWM+uIyIqaLo3BR18tfQV92kUT6/fSzvfRpDWrQKNcffOoyvy3Sus92RfW5x3XzEtNEPXz2rH3FvFkP9ll5K05F++FQkMg5MUnWaV3YErl76Cm7U+pyaEuDwsDKikHnOvzkxnhhiE9Imh9FlNNYOgy2vIlTZGGHvQFp7EeopAYxK0GexdLP8J39YCraF0jYFnvfu3YcnwkCYMtGN90Tcau7tff/XS4XkIvP+Omapko8dKf/u9z4EvM3KHG9gOYbOdPIo4sJ0AzMfspqcapWElyLiyeoerAJ+88iJLieUivbnf40CQFZiGCuvCDQX5i0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=psYX1MhmbIcEfhGzTCukgaNBdhLNSreflv9wbBZzQO4=;
 b=kHcSo9Ix91lDGewEdsxHxfN2SGQ3yWSzrBGuiIATWg7Ojb5Wv8eYwtxEJ0lH/W6/QTCulQc32PF0EID40BwMvaSwn3u4FxZYb3+M3iz/1bVtMorlad0d3bL+tvKvvRZes+WbaGe7CeBqYU0Gqs6WOYAXA+Dit/QIBKi/B/Bpsf3VDnkrfowrS1bAx9JOQMHe247zkB7RoYG8KpUK4f2LmluvNIB+YHgLtiWiZN41KrOZJJS1lRh1FGSqCFoXiDO0VEZDRUbrcI8VtIeTbqmZFKEKlaoJCaC3e5Ty0OxOUlx32ZA9jgbnWCy3H6i3kQlgkGJAaVHKr/yOYqMhR1mVkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=psYX1MhmbIcEfhGzTCukgaNBdhLNSreflv9wbBZzQO4=;
 b=tyZMw7nMOxmm98cuyFbRJwYp+E6f6Q3Llomg5On5hIV8BKMpAaOs3bQT42Y/8GJLL5WM3/olEKefeeThMK7acNKAduYjhNZFKDh2jdJdVQ01U3bPxHMANGpm4w+l4I6w1WxCd8L/82hZPRZ3cSzAY4NDkSUzS74MJ3/Z4Em4hkP6rmzYQsrknPi+X/sn4rnOT4WItO48yzXYf3MvToNh1cAS6EEEQxxWyYzqdrEIKdRTGX10sRcMEdnAB+BPwSEJO36JxmbApZwGAfkaUOffQA8pAGDAEZmxyHB1NKGs/ql5/yrWqoZI5ZG/scjZHCmJP1cCIoxwYDMeQCy1VcrQgw==
Received: from AM0P190CA0014.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::24)
 by BESP195MB2850.EURP195.PROD.OUTLOOK.COM (2603:10a6:b10:ee::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 03:32:43 +0000
Received: from AMS1EPF0000004E.eurprd04.prod.outlook.com
 (2603:10a6:208:190:cafe::13) by AM0P190CA0014.outlook.office365.com
 (2603:10a6:208:190::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Fri,
 6 Mar 2026 03:32:43 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000004E.mail.protection.outlook.com (10.167.16.139) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:42 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:40 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 5/5] arm64: dts: ti: k3-am68-phyboard-izar: Add PEB-AV-15 overlay
Date: Thu, 5 Mar 2026 19:31:48 -0800
Message-ID: <20260306033151.276202-6-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS1EPF0000004E:EE_|BESP195MB2850:EE_
X-MS-Office365-Filtering-Correlation-Id: b4a0b19a-6da4-481f-a47c-08de7b31069e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700016;
X-Microsoft-Antispam-Message-Info:
	zGQBKbU2ty5gVlmXfgXvl3K7FYztmNN2QPgbLz1QyddjVxeAm9VV+ufUeppO6SzzvK9JdU01824N8yl8iUU3pEaWJzPAzt6+gXZL3vWugjdWlMKyVROAVOu69ydfJjhMEOOzIksfK14YaXjnK85uvy39hl/iKEVPRdsRiAtz8jUqObXzMBhLAoNf6J2SKtYfJLccyf0EUc6tc+yoqqKp7P9nxAUPkrn5DvzMCSMuLa3pAeFJU22qX5jUpbG2qqS8aGzmtMEuNdSO+eSKTnEahwrhT7GsPY9VVZ5Tf6Bjl58kCAkgA7TJ5qIWnbq2eDVfIxM4OjTswjJRDeTe968dHftBmgZinmohOHqjQvVP1stBFrMZwN80McMfTb162WvxubTBv9dCpEOl9ZwU3WFkK54xvcD86f+arQ5ivvC+7TtnAXG9CzcfdQeyqWbw4xZ4+T5CykpqeoIcMrzGdYm5ebUClkFy4PYy3WwJ3nzZ7hXJEubagohQ9BKCYMcnRE0CoErBlbMomS3Ls+2Qf0W00nrEYFKIMhVB/oSPoTXuF2/7YP9pv0zWIzexQcZkDoJOAzytP1VPVd4ZGL0rygmpfLv862mzQ0Tcis/wPWj+V4B4lw3Z+7ZZbxT9EDR3wWhps4XZTkYVYb92KTkj6Bu1TT7NcNxISbBUUMbVmvlQvxp/X4rHQtzlPOXYtOhVs9naPd245DxzDHvYSKw2ZcmCLtZ/0FRbW8PkwGYnqtLyazvRNvGyR5//11IzOiG3kpuuRwq8aFg3aYVz5pnZGp0xrQ==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	6DFXPmL2BC5ASzRsDyPJN0uA/X1LhhDgKLACasOYUCU/ehQzNflh2qm9Iy2ZKCUEbiRMp2dO055qkUvw2lwf+wdaQRXVXm6pfhtJs60XWZtT+Pki6nOv2KJ8BgxWFKKeXItn+MDN76X6dQ/ZbHNXSm84BsSN2ZppdZaawAecM4Y9x/zqGZV0mbgHYY3EzpwMyiKAQbdRZhr8wq1EX5ahVSs9mDauc9SdN3tiQcnu6AfZxSQes1J4fd5MJfotZYII/Ui0je0w2xv6ztuAXVd0xqLFNL/n5CPRveO4c3rVg/Ilvcgf75t8b+/6icZwHNzKEjyNumXmSdAK2AENIEjruQ5sYrhNvLnJtwKUkYnGRJ0sfqk5T47fCqI0w5Y+P7vhQxQeP0o0x+rVYDNBWFDNXTBdShOpxDf+ZqT48e8FyGKcIbXNCvJ0vUhLiSBJRhyO
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:42.7386
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a0b19a-6da4-481f-a47c-08de7b31069e
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000004E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BESP195MB2850
X-Rspamd-Queue-Id: 4C26521B267
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
	TAGGED_FROM(0.00)[bounces-271823-lists,devicetree=lfdr.de];
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

Add an overlay to use the PEB-AV-15 AV-Adapter. It's a small expansion board
using a Lontium LT8912B DSI->HDMI bridge and a TLV320AIC3007 audio codec.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 .../ti/k3-am68-phyboard-izar-peb-av-15.dtso   | 192 ++++++++++++++++++
 2 files changed, 196 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-peb-av-15.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index a188e62e32b4..ae5994818ad2 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -135,6 +135,9 @@ dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar-lvds-ph128800t006.dtb
 k3-am68-phyboard-izar-lvds-ph128800t006-dtbs := k3-am68-phyboard-izar.dtb \
 	k3-am68-phyboard-izar-lvds-ph128800t006.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am68-phyboard-izar-peb-av-15.dtb
+k3-am68-phyboard-izar-peb-av-15-dtbs := k3-am68-phyboard-izar.dtb \
+        k3-am68-phyboard-izar-peb-av-15.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am68-sk-base-board-pcie1-ep.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
@@ -323,6 +326,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb \
 	k3-am67a-kontron-sa67-base-gpios.dtb \
 	k3-am68-phyboard-izar-lvds-ph128800t006.dtb \
+	k3-am68-phyboard-izar-peb-av-15.dtb \
 	k3-am68-sk-base-board-csi2-dual-imx219.dtb \
 	k3-am68-sk-base-board-pcie1-ep.dtb \
 	k3-am69-sk-csi2-dual-imx219.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-peb-av-15.dtso b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-peb-av-15.dtso
new file mode 100644
index 000000000000..cb75199c59fe
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-peb-av-15.dtso
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Copyright (C) 2026 PHYTEC Messtechnik GmbH
+ * Author: Dominik Haller <d.haller@phytec.de>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include "k3-pinctrl.h"
+
+&{/} {
+	audio_refclk1: audio-clock {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <19200000>;
+	};
+
+	hdmi: hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+		ddc-i2c-bus = <&main_i2c2>;
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&lt8912b_out>;
+			};
+		};
+	};
+
+	reg_audio_3v3: regulator-audio-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC3V3_AUDIO";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_audio_1v8: regulator-audio-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC1V8_AUDIO";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "PEB-AV-15";
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack",
+			"Microphone", "Mic Jack";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPLOUT",
+			"Headphone Jack", "HPROUT",
+			"MIC3R", "Mic Jack",
+			"Mic Jack", "Mic Bias";
+		simple-audio-card,format = "dsp_b";
+		simple-audio-card,bitclock-inversion;
+		simple-audio-card,bitclock-master = <&link0_codec>;
+		simple-audio-card,frame-master = <&link0_codec>;
+
+		link0_cpu: simple-audio-card,cpu {
+			sound-dai = <&mcasp0>;
+		};
+
+		link0_codec: simple-audio-card,codec {
+			sound-dai = <&audio_codec>;
+			clocks = <&audio_refclk1>;
+		};
+	};
+
+};
+
+&dphy_tx1 {
+        status = "okay";
+};
+
+&dsi1 {
+	status= "okay";
+};
+
+&dsi1_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	port@0 {
+		reg = <0>;
+		dsi1_out: endpoint {
+			remote-endpoint = <&lt8912b_in>;
+		};
+	};
+
+	port@1 {
+		reg = <1>;
+		dsi1_in: endpoint {
+			remote-endpoint = <&dpi3_out>;
+		};
+	};
+};
+
+&dss {
+	status = "okay";
+};
+
+&dss_ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@3 {
+                reg = <3>;
+                dpi3_out: endpoint {
+                        remote-endpoint = <&dsi1_in>;
+                };
+        };
+};
+
+&mcasp0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcasp0_pins>;
+
+	#sound-dai-cells= <0>;
+
+	op-mode = <0>;	/* MCASP_IIS_MODE */
+	tdm-slots = <2>;
+
+	/* 4 serializers */
+	serial-dir = <  /* 0: INACTIVE, 1: TX, 2: RX */
+		2 0 0 1
+		0 0 0 0
+		0 0 0 0
+		0 0 0 0
+	>;
+
+	tx-num-evt = <32>;
+	rx-num-evt = <32>;
+	status = "okay";
+};
+
+&main_i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	audio_codec: audio-codec@18 {
+		compatible = "ti,tlv320aic3007";
+		reg = <0x18>;
+		#sound-dai-cells= <0>;
+		ai3x-micbias-vg = <2>;
+		AVDD-supply = <&reg_audio_3v3>;
+		IOVDD-supply = <&reg_audio_3v3>;
+		DRVDD-supply = <&reg_audio_3v3>;
+		DVDD-supply = <&reg_audio_1v8>;
+
+	};
+
+	bridge@48 {
+		compatible = "lontium,lt8912b";
+		reg = <0x48>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				lt8912b_in: endpoint {
+					data-lanes = <0 1 2 3>;
+					remote-endpoint = <&dsi1_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				lt8912b_out: endpoint {
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
+};
+
+&main_pmx0 {
+	mcasp0_pins: mcasp0-default-pins {
+		pinctrl-single,pins = <
+			J721S2_IOPAD(0x03C, PIN_INPUT, 1) /* (U27) WCLK, MCASP0_AFSX.MCASP0_AFSX */
+			J721S2_IOPAD(0x038, PIN_INPUT, 1) /* (AB28) BCLK, MCASP0_ACLKX.MCASP0_ACLKX */
+			J721S2_IOPAD(0x040, PIN_OUTPUT, 1) /* (AC28) DOUT, MCASP0_AXR0.MCASP0_AXR0 */
+			J721S2_IOPAD(0x07C, PIN_INPUT, 1) /* (T27) DIN, MCASP0_AXR3.MCASP0_AXR3 */
+		>;
+	};
+};
-- 
2.43.0


