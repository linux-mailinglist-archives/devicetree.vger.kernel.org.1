Return-Path: <devicetree+bounces-84009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D123592AA8F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 22:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 522B51F22567
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 20:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E2C14B962;
	Mon,  8 Jul 2024 20:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nuvoton.onmicrosoft.com header.i=@nuvoton.onmicrosoft.com header.b="Ezy9sbzG"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01rlnn2071.outbound.protection.outlook.com [40.95.110.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D33F146A98;
	Mon,  8 Jul 2024 20:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.95.110.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720470463; cv=fail; b=YVudlmVRjUbmjl+mHgAfWp6T0+VSHBZ5Fhjx1c3P+On9+ydy0d/63ao9PsBIS41kQceIJHyze6aCdLmDeSvrB84h3j01owhlmhiZFcyU8ptezbPvxRk0oC6DzcD5stA1fgx9pE/f7nF9q9uPj84El1CDgdxn75YGe6K1QflW2XQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720470463; c=relaxed/simple;
	bh=98R+n8UaBGRSdoF/ebBJcun7mGPJEUjIuisN/kr/SDw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=f1cCpmrnkqX2Ab7Kmo+pfGDfsrWjTmmLa5/ooE7otkqHZVm8KDUJFA418/Jw82X/9i8/RgKiT8YXWsLJ6sWaeCb4wwk8l13PdAv97L7h1WVwDnQbPJGH/yFD55keQZui3hReZkDdF3nPXVNNzmdn2p7aA5fbleFOqRUiWsvC3yQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=none smtp.mailfrom=taln60.nuvoton.co.il; dkim=pass (1024-bit key) header.d=nuvoton.onmicrosoft.com header.i=@nuvoton.onmicrosoft.com header.b=Ezy9sbzG; arc=fail smtp.client-ip=40.95.110.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=taln60.nuvoton.co.il
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bgxFdz3UFdeedwTrokAeWMQv+lz5Q9Mq1iVbAgAiSJ0RPgmNHqnySshQaBdkMC9z7j4t6Kw7/Dy4hB0a9wVABiYbFJZYtWn9+P/pRueHV6VU/Foy2v9n/iBcH2W00hl/LiD/sl6dtk83TvkEvPFAsDNH+zB/zwWAAbJ/kn6Lrbq7i9J6AhH0zZHnIT9ktMUUZOi4FiYLc4AzoytZnUxF88/44Fxfft3Id8BVUrhUr0bd2/vPI0WJktEAwXXWdFdOA3JfVebb53A7luqgyOok5t6UxYZN5Bu2cF/VBNzWOmyWlouvk1uL7z9s36UUdlkrpz+mYOe5OFVgfVBIWbAsfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Qsj41eaF4CTtMDc+ITmqAwgqpvWAx0+IBBavPTkeDs=;
 b=XKT6gCNiU/Q0wHDYhSQOcv6SxVDJpavynNs05RZenC9o16rPJYpmAgWCmNAo5WIz+bFgzYgNwsYZywU4WXP3UC4S/Db9bXc05BSM0lP+4Wnwi5G1NB5+UCz+jsQ8QFoUnSEb0LAcdCr70ls3yBGKdk2LEDeJV2zt+DBYTk4p6F+yPmOCvTbcwZGZg03MjYiGWnpwbroKbiMLuLe6EKIpV4pA8c5/dOLRiVxAcrM/TSWnq1JUtOD1QRXeHZv7C5TidJyvWO+ruCALQjvrh7EG6qxCS9uxjk2t2zUjw+MkQc1PGUy6hOTJwLTSmIV0Ls4rYaK91WRioBDbJHcMnsgn7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 211.75.126.7) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=taln60.nuvoton.co.il; dmarc=fail (p=none sp=quarantine pct=100)
 action=none header.from=gmail.com; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuvoton.onmicrosoft.com; s=selector2-nuvoton-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Qsj41eaF4CTtMDc+ITmqAwgqpvWAx0+IBBavPTkeDs=;
 b=Ezy9sbzGYmuusMTC1nW9SyOnRfl8zVbCBMyXLdUU875VZjDXk8j+s+f+zltv7cXE/9ujqAg8zbEOEssXrZWNQQQhbluSWN+IOL4kxgRthHr8pTLWdBHGjOF1Txjr1ue/OR4Sh7f5vTBlHVYvos+yyYU97BxaFrre+I31BKGgZdw=
Received: from SGXP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::36) by
 SEYPR03MB8204.apcprd03.prod.outlook.com (2603:1096:101:1aa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Mon, 8 Jul
 2024 16:54:47 +0000
Received: from HK2PEPF00006FB1.apcprd02.prod.outlook.com
 (2603:1096:4:b8:cafe::23) by SGXP274CA0024.outlook.office365.com
 (2603:1096:4:b8::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35 via Frontend
 Transport; Mon, 8 Jul 2024 16:54:46 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 211.75.126.7) smtp.mailfrom=taln60.nuvoton.co.il; dkim=none (message not
 signed) header.d=none;dmarc=fail action=none header.from=gmail.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of taln60.nuvoton.co.il: DNS Timeout)
Received: from NTHCCAS01.nuvoton.com (211.75.126.7) by
 HK2PEPF00006FB1.mail.protection.outlook.com (10.167.8.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7762.17 via Frontend Transport; Mon, 8 Jul 2024 16:54:45 +0000
Received: from NTHCCAS01.nuvoton.com (10.1.8.28) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 9 Jul
 2024 00:54:43 +0800
Received: from taln58.nuvoton.co.il (10.191.1.178) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Tue, 9 Jul 2024 00:54:43 +0800
Received: from taln60.nuvoton.co.il (taln60 [10.191.1.180])
	by taln58.nuvoton.co.il (Postfix) with ESMTP id E43B35F501;
	Mon,  8 Jul 2024 19:54:42 +0300 (IDT)
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
	id CBF11DC0BBA; Mon,  8 Jul 2024 19:54:42 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<tali.perry1@gmail.com>, <joel@jms.id.au>, <venture@google.com>,
	<yuenn@google.com>, <benjaminfair@google.com>
CC: <openbmc@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, Tomer Maimon <tmaimon77@gmail.com>
Subject: [PATCH v2] arm64: dts: nuvoton: npcm8xx: add pin and gpio controller nodes
Date: Mon, 8 Jul 2024 19:54:38 +0300
Message-ID: <20240708165438.1411378-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NotSetDelaration: True
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HK2PEPF00006FB1:EE_|SEYPR03MB8204:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f2cae68-5e9e-4aa9-e48d-08dc9f6eabd0
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|35950700016|48200799018|7416014|376014|82310400026|61400799027|7093399012|35450700002;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?wXtBEnvYTml6MdSL4XkiChyrEyxTekGUdAwINT+xAZ8QifHd2gz7dfXEdBQu?=
 =?us-ascii?Q?9sWDc0Aoej6VWvvM+8Xjh0gxy8dGvhfnMQdNwd0/uEfwzbdsFcl4lgjVrGsJ?=
 =?us-ascii?Q?d57PaEKwwDhLEvUJxZrcA6XzaFVkv3a657T5+56jQefn+aBsIXC+7DSt00qX?=
 =?us-ascii?Q?ctJgI7NpfdG3MbbnSDvi7+2NXoOE0sDY4UsnmNwRGKzz9dNbi7YsLh8EOcwR?=
 =?us-ascii?Q?TcPpn4OMCKtCFkxBAsPdU1wocP/uBVellcZwtPwl9+JV2Y4OFveNaAQVlkpW?=
 =?us-ascii?Q?5IkB5Z5AKk+fCbIFlQqR5PN1mFiSx9f6VWGh9oT736N25/6/fP7jUwp5VXCs?=
 =?us-ascii?Q?KEnthN7hnaqzK8AYkI0Xahw9TwvLUwJcEpHg2QLjVB1VP9MwYn41mN5kyzmh?=
 =?us-ascii?Q?MTa3vsGqSmEVNV/jZPXyGl1f+sdJrilpDO2MuKIpa+ossWdJsh+kIAV5DYAI?=
 =?us-ascii?Q?mZ35ZQPSCg8/Tzy5D+1jpcb76UYZkcShFjE5xNNcoRorFWPkvgnNMLy8H0ik?=
 =?us-ascii?Q?h8hr8yrSPsbgkp/hhgVrDoBbmojuJtyaqVVQTJZLOBLyNsBplAhULDvDCoVV?=
 =?us-ascii?Q?+8oLQ8MzlziPOA1AaDf2AWZAvNnX/3c91W4HXUY93ze0VuriCSmrLBdF4CCZ?=
 =?us-ascii?Q?vYC72Jymj/AfRW8K/434VPneT8kfggwnQf/IQEekJKpXfb0RjhNw7XRphuD/?=
 =?us-ascii?Q?vc99h3ij93Q1w3yXjg7+HzdYwOqD3N315zT5wrju+nG3gcV2BuSeHP/hcYuJ?=
 =?us-ascii?Q?1Krl0XXgKxiEJIeaL2HkAlJIAczgnoE3yWLrpq4WQtGS0Wpw75VIWeOOy8Z/?=
 =?us-ascii?Q?9DeO8TKwPqbyEp2j1KdLXU/eH9EiuMli4GYES/8vjQms9lGVEFWELz2U8CsR?=
 =?us-ascii?Q?PfZLM7YKQeyA2rL9uIL6sqg1n2rL7oMhmhD3KHIrzx0nkqPtsrWDOBo0E8Z0?=
 =?us-ascii?Q?DiPZaq+ZN4SV2UBFXpQrdq58vyY5n+qiLiZZ8DSiyNE6SVyLVhv37nyP9nb4?=
 =?us-ascii?Q?tQqUNlGEbnsm1jYtscBOpjRHV1BFrTAg5RwNoU93pdQS7cWgO+Gz5mjW2Yyg?=
 =?us-ascii?Q?s1eGIXG/RBScnocIS1rCUGiiX18LedGgp3/3kb2sWp4vS+5fAK4A3J1xD5/l?=
 =?us-ascii?Q?YyVnW1Z7ydxYNIqebOQNdVoh4u+Y6101xtQhUelFSPd+HLM9FxnJarHFMOXO?=
 =?us-ascii?Q?8zZvLxvRrbTFNIitHemQMZbVYSDTvJQa8/A61nK0OwHXNS9nRU6yQvSIzNdE?=
 =?us-ascii?Q?50B4KljbEoAtHCEWmq78g2ttfUmpN/ZmFlxyX9iwyUkhl71f23vv78hDTREy?=
 =?us-ascii?Q?sJpNwJDGrcgusGVy4l0ZcSjXrjtSSm8Khp5ZiR85QqnwuU3CcaOxcKXAa+bE?=
 =?us-ascii?Q?frdn9gdiE1WLz26JTCyPvJ0SZveeP1ulRh7RAXU+a4osb37nvoGyrxSjx3wn?=
 =?us-ascii?Q?zQYkglopjV5WkM7k0MDCrp3bpIPZ4mVJ/5HYFxSd1hw3IGg5Yk8zuQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:211.75.126.7;CTRY:TW;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:NTHCCAS01.nuvoton.com;PTR:211-75-126-7.hinet-ip.hinet.net;CAT:NONE;SFS:(13230040)(35950700016)(48200799018)(7416014)(376014)(82310400026)(61400799027)(7093399012)(35450700002);DIR:OUT;SFP:1022;
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 16:54:45.6955
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f2cae68-5e9e-4aa9-e48d-08dc9f6eabd0
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a3f24931-d403-4b4a-94f1-7d83ac638e07;Ip=[211.75.126.7];Helo=[NTHCCAS01.nuvoton.com]
X-MS-Exchange-CrossTenant-AuthSource:
	HK2PEPF00006FB1.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8204

Add BMC Nuvoton NPCM8XX pin and GPIO controller nodes.

The Pin controller node includes eight GPIO controller nodes, each GPIO
node control 32 GPIO.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
V1 -> V2: Modify patch subject.

 .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 706 ++++++++++++++++++
 1 file changed, 706 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index ecd171b2feba..7ae7c28009bd 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -176,4 +176,710 @@ watchdog2: watchdog@a01c {
 			};
 		};
 	};
+
+	pinctrl: pinctrl@f0010000 {
+		compatible = "nuvoton,npcm845-pinctrl";
+		ranges = <0x0 0x0 0xf0010000 0x8000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		nuvoton,sysgcr = <&gcr>;
+ 
+		gpio0: gpio@f0010000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x0 0xB0>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 0 32>;
+		};
+		gpio1: gpio@f0011000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x1000 0xB0>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 32 32>;
+		};
+		gpio2: gpio@f0012000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x2000 0xB0>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 64 32>;
+		};
+		gpio3: gpio@f0013000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x3000 0xB0>;
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 96 32>;
+		};
+		gpio4: gpio@f0014000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x4000 0xB0>;
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 128 32>;
+		};
+		gpio5: gpio@f0015000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x5000 0xB0>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 160 32>;
+		};
+		gpio6: gpio@f0016000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x6000 0xB0>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 192 32>;
+		};
+		gpio7: gpio@f0017000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x7000 0xB0>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 224 32>;
+		};
+
+		iox1_pins: iox1-mux {
+			groups = "iox1";
+			function = "iox1";
+		};
+		iox2_pins: iox2-mux {
+			groups = "iox2";
+			function = "iox2";
+		};
+		smb1d_pins: smb1d-mux {
+			groups = "smb1d";
+			function = "smb1d";
+		};
+		smb2d_pins: smb2d-mux {
+			groups = "smb2d";
+			function = "smb2d";
+		};
+		lkgpo1_pins: lkgpo1-mux {
+			groups = "lkgpo1";
+			function = "lkgpo1";
+		};
+		lkgpo2_pins: lkgpo2-mux {
+			groups = "lkgpo2";
+			function = "lkgpo2";
+		};
+		ioxh_pins: ioxh-mux {
+			groups = "ioxh";
+			function = "ioxh";
+		};
+		gspi_pins: gspi-mux {
+			groups = "gspi";
+			function = "gspi";
+		};
+		smb5b_pins: smb5b-mux {
+			groups = "smb5b";
+			function = "smb5b";
+		};
+		smb5c_pins: smb5c-mux {
+			groups = "smb5c";
+			function = "smb5c";
+		};
+		lkgpo0_pins: lkgpo0-mux {
+			groups = "lkgpo0";
+			function = "lkgpo0";
+		};
+		pspi_pins: pspi-mux {
+			groups = "pspi";
+			function = "pspi";
+		};
+		jm1_pins: jm1-mux {
+			groups = "jm1";
+			function = "jm1";
+		};
+		jm2_pins: jm2-mux {
+			groups = "jm2";
+			function = "jm2";
+		};
+		smb4den_pins: smb4den-mux {
+			groups = "smb4den";
+			function = "smb4den";
+		};
+		smb4b_pins: smb4b-mux {
+			groups = "smb4b";
+			function = "smb4b";
+		};
+		smb4c_pins: smb4c-mux {
+			groups = "smb4c";
+			function = "smb4c";
+		};
+		smb15_pins: smb15-mux {
+			groups = "smb15";
+			function = "smb15";
+		};
+		smb16_pins: smb16-mux {
+			groups = "smb16";
+			function = "smb16";
+		};
+		smb17_pins: smb17-mux {
+			groups = "smb17";
+			function = "smb17";
+		};
+		smb18_pins: smb18-mux {
+			groups = "smb18";
+			function = "smb18";
+		};
+		smb19_pins: smb19-mux {
+			groups = "smb19";
+			function = "smb19";
+		};
+		smb20_pins: smb20-mux {
+			groups = "smb20";
+			function = "smb20";
+		};
+		smb21_pins: smb21-mux {
+			groups = "smb21";
+			function = "smb21";
+		};
+		smb22_pins: smb22-mux {
+			groups = "smb22";
+			function = "smb22";
+		};
+		smb23_pins: smb23-mux {
+			groups = "smb23";
+			function = "smb23";
+		};
+		smb4d_pins: smb4d-mux {
+			groups = "smb4d";
+			function = "smb4d";
+		};
+		smb14_pins: smb14-mux {
+			groups = "smb14";
+			function = "smb14";
+		};
+		smb5_pins: smb5-mux {
+			groups = "smb5";
+			function = "smb5";
+		};
+		smb4_pins: smb4-mux {
+			groups = "smb4";
+			function = "smb4";
+		};
+		smb3_pins: smb3-mux {
+			groups = "smb3";
+			function = "smb3";
+		};
+		spi0cs1_pins: spi0cs1-mux {
+			groups = "spi0cs1";
+			function = "spi0cs1";
+		};
+		spi0cs2_pins: spi0cs2-mux {
+			groups = "spi0cs2";
+			function = "spi0cs2";
+		};
+		spi0cs3_pins: spi0cs3-mux {
+			groups = "spi0cs3";
+			function = "spi0cs3";
+		};
+		smb3c_pins: smb3c-mux {
+			groups = "smb3c";
+			function = "smb3c";
+		};
+		smb3b_pins: smb3b-mux {
+			groups = "smb3b";
+			function = "smb3b";
+		};
+		bmcuart0a_pins: bmcuart0a-mux {
+			groups = "bmcuart0a";
+			function = "bmcuart0a";
+		};
+		uart1_pins: uart1-mux {
+			groups = "uart1";
+			function = "uart1";
+		};
+		jtag2_pins: jtag2-mux {
+			groups = "jtag2";
+			function = "jtag2";
+		};
+		bmcuart1_pins: bmcuart1-mux {
+			groups = "bmcuart1";
+			function = "bmcuart1";
+		};
+		uart2_pins: uart2-mux {
+			groups = "uart2";
+			function = "uart2";
+		};
+		bmcuart0b_pins: bmcuart0b-mux {
+			groups = "bmcuart0b";
+			function = "bmcuart0b";
+		};
+		r1err_pins: r1err-mux {
+			groups = "r1err";
+			function = "r1err";
+		};
+		r1md_pins: r1md-mux {
+			groups = "r1md";
+			function = "r1md";
+		};
+		r1oen_pins: r1oen-mux {
+			groups = "r1oen";
+			function = "r1oen";
+		};
+		r2oen_pins: r2oen-mux {
+			groups = "r2oen";
+			function = "r2oen";
+		};
+		rmii3_pins: rmii3-mux {
+			groups = "rmii3";
+			function = "rmii3";
+		};
+		r3oen_pins: r3oen-mux {
+			groups = "r3oen";
+			function = "r3oen";
+		};
+		smb3d_pins: smb3d-mux {
+			groups = "smb3d";
+			function = "smb3d";
+		};
+		fanin0_pins: fanin0-mux {
+			groups = "fanin0";
+			function = "fanin0";
+		};
+		fanin1_pins: fanin1-mux {
+			groups = "fanin1";
+			function = "fanin1";
+		};
+		fanin2_pins: fanin2-mux {
+			groups = "fanin2";
+			function = "fanin2";
+		};
+		fanin3_pins: fanin3-mux {
+			groups = "fanin3";
+			function = "fanin3";
+		};
+		fanin4_pins: fanin4-mux {
+			groups = "fanin4";
+			function = "fanin4";
+		};
+		fanin5_pins: fanin5-mux {
+			groups = "fanin5";
+			function = "fanin5";
+		};
+		fanin6_pins: fanin6-mux {
+			groups = "fanin6";
+			function = "fanin6";
+		};
+		fanin7_pins: fanin7-mux {
+			groups = "fanin7";
+			function = "fanin7";
+		};
+		fanin8_pins: fanin8-mux {
+			groups = "fanin8";
+			function = "fanin8";
+		};
+		fanin9_pins: fanin9-mux {
+			groups = "fanin9";
+			function = "fanin9";
+		};
+		fanin10_pins: fanin10-mux {
+			groups = "fanin10";
+			function = "fanin10";
+		};
+		fanin11_pins: fanin11-mux {
+			groups = "fanin11";
+			function = "fanin11";
+		};
+		fanin12_pins: fanin12-mux {
+			groups = "fanin12";
+			function = "fanin12";
+		};
+		fanin13_pins: fanin13-mux {
+			groups = "fanin13";
+			function = "fanin13";
+		};
+		fanin14_pins: fanin14-mux {
+			groups = "fanin14";
+			function = "fanin14";
+		};
+		fanin15_pins: fanin15-mux {
+			groups = "fanin15";
+			function = "fanin15";
+		};
+		pwm0_pins: pwm0-mux {
+			groups = "pwm0";
+			function = "pwm0";
+		};
+		pwm1_pins: pwm1-mux {
+			groups = "pwm1";
+			function = "pwm1";
+		};
+		pwm2_pins: pwm2-mux {
+			groups = "pwm2";
+			function = "pwm2";
+		};
+		pwm3_pins: pwm3-mux {
+			groups = "pwm3";
+			function = "pwm3";
+		};
+		r2_pins: r2-mux {
+			groups = "r2";
+			function = "r2";
+		};
+		r2err_pins: r2err-mux {
+			groups = "r2err";
+			function = "r2err";
+		};
+		r2md_pins: r2md-mux {
+			groups = "r2md";
+			function = "r2md";
+		};
+		r3rxer_pins: r3rxer-mux {
+			groups = "r3rxer";
+			function = "r3rxer";
+		};
+		ga20kbc_pins: ga20kbc-mux {
+			groups = "ga20kbc";
+			function = "ga20kbc";
+		};
+		smb5d_pins: smb5d-mux {
+			groups = "smb5d";
+			function = "smb5d";
+		};
+		lpc_pins: lpc-mux {
+			groups = "lpc";
+			function = "lpc";
+		};
+		espi_pins: espi-mux {
+			groups = "espi";
+			function = "espi";
+		};
+		sg1mdio_pins: sg1mdio-mux {
+			groups = "sg1mdio";
+			function = "sg1mdio";
+		};
+		rg2_pins: rg2-mux {
+			groups = "rg2";
+			function = "rg2";
+		};
+		ddr_pins: ddr-mux {
+			groups = "ddr";
+			function = "ddr";
+		};
+		i3c0_pins: i3c0-mux {
+			groups = "i3c0";
+			function = "i3c0";
+		};
+		i3c1_pins: i3c1-mux {
+			groups = "i3c1";
+			function = "i3c1";
+		};
+		i3c2_pins: i3c2-mux {
+			groups = "i3c2";
+			function = "i3c2";
+		};
+		i3c3_pins: i3c3-mux {
+			groups = "i3c3";
+			function = "i3c3";
+		};
+		i3c4_pins: i3c4-mux {
+			groups = "i3c4";
+			function = "i3c4";
+		};
+		i3c5_pins: i3c5-mux {
+			groups = "i3c5";
+			function = "i3c5";
+		};
+		smb0_pins: smb0-mux {
+			groups = "smb0";
+			function = "smb0";
+		};
+		smb1_pins: smb1-mux {
+			groups = "smb1";
+			function = "smb1";
+		};
+		smb2_pins: smb2-mux {
+			groups = "smb2";
+			function = "smb2";
+		};
+		smb2c_pins: smb2c-mux {
+			groups = "smb2c";
+			function = "smb2c";
+		};
+		smb2b_pins: smb2b-mux {
+			groups = "smb2b";
+			function = "smb2b";
+		};
+		smb1c_pins: smb1c-mux {
+			groups = "smb1c";
+			function = "smb1c";
+		};
+		smb1b_pins: smb1b-mux {
+			groups = "smb1b";
+			function = "smb1b";
+		};
+		smb8_pins: smb8-mux {
+			groups = "smb8";
+			function = "smb8";
+		};
+		smb9_pins: smb9-mux {
+			groups = "smb9";
+			function = "smb9";
+		};
+		smb10_pins: smb10-mux {
+			groups = "smb10";
+			function = "smb10";
+		};
+		smb11_pins: smb11-mux {
+			groups = "smb11";
+			function = "smb11";
+		};
+		sd1_pins: sd1-mux {
+			groups = "sd1";
+			function = "sd1";
+		};
+		sd1pwr_pins: sd1pwr-mux {
+			groups = "sd1pwr";
+			function = "sd1pwr";
+		};
+		pwm4_pins: pwm4-mux {
+			groups = "pwm4";
+			function = "pwm4";
+		};
+		pwm5_pins: pwm5-mux {
+			groups = "pwm5";
+			function = "pwm5";
+		};
+		pwm6_pins: pwm6-mux {
+			groups = "pwm6";
+			function = "pwm6";
+		};
+		pwm7_pins: pwm7-mux {
+			groups = "pwm7";
+			function = "pwm7";
+		};
+		pwm8_pins: pwm8-mux {
+			groups = "pwm8";
+			function = "pwm8";
+		};
+		pwm9_pins: pwm9-mux {
+			groups = "pwm9";
+			function = "pwm9";
+		};
+		pwm10_pins: pwm10-mux {
+			groups = "pwm10";
+			function = "pwm10";
+		};
+		pwm11_pins: pwm11-mux {
+			groups = "pwm11";
+			function = "pwm11";
+		};
+		mmc8_pins: mmc8-mux {
+			groups = "mmc8";
+			function = "mmc8";
+		};
+		mmc_pins: mmc-mux {
+			groups = "mmc";
+			function = "mmc";
+		};
+		mmcwp_pins: mmcwp-mux {
+			groups = "mmcwp";
+			function = "mmcwp";
+		};
+		mmccd_pins: mmccd-mux {
+			groups = "mmccd";
+			function = "mmccd";
+		};
+		mmcrst_pins: mmcrst-mux {
+			groups = "mmcrst";
+			function = "mmcrst";
+		};
+		clkout_pins: clkout-mux {
+			groups = "clkout";
+			function = "clkout";
+		};
+		serirq_pins: serirq-mux {
+			groups = "serirq";
+			function = "serirq";
+		};
+		lpcclk_pins: lpcclk-mux {
+			groups = "lpcclk";
+			function = "lpcclk";
+		};
+		scipme_pins: scipme-mux {
+			groups = "scipme";
+			function = "scipme";
+		};
+		smb6_pins: smb6-mux {
+			groups = "smb6";
+			function = "smb6";
+		};
+		smb6b_pins: smb6b-mux {
+			groups = "smb6b";
+			function = "smb6b";
+		};
+		smb6c_pins: smb6c-mux {
+			groups = "smb6c";
+			function = "smb6c";
+		};
+		smb6d_pins: smb6d-mux {
+			groups = "smb6d";
+			function = "smb6d";
+		};
+		smb7_pins: smb7-mux {
+			groups = "smb7";
+			function = "smb7";
+		};
+		smb7b_pins: smb7b-mux {
+			groups = "smb7b";
+			function = "smb7b";
+		};
+		smb7c_pins: smb7c-mux {
+			groups = "smb7c";
+			function = "smb7c";
+		};
+		smb7d_pins: smb7d-mux {
+			groups = "smb7d";
+			function = "smb7d";
+		};
+		spi1_pins: spi1-mux {
+			groups = "spi1";
+			function = "spi1";
+		};
+		faninx_pins: faninx-mux {
+			groups = "faninx";
+			function = "faninx";
+		};
+		r1_pins: r1-mux {
+			groups = "r1";
+			function = "r1";
+		};
+		spi3_pins: spi3-mux {
+			groups = "spi3";
+			function = "spi3";
+		};
+		spi3cs1_pins: spi3cs1-mux {
+			groups = "spi3cs1";
+			function = "spi3cs1";
+		};
+		spi3quad_pins: spi3quad-mux {
+			groups = "spi3quad";
+			function = "spi3quad";
+		};
+		spi3cs2_pins: spi3cs2-mux {
+			groups = "spi3cs2";
+			function = "spi3cs2";
+		};
+		spi3cs3_pins: spi3cs3-mux {
+			groups = "spi3cs3";
+			function = "spi3cs3";
+		};
+		nprd_smi_pins: nprd-smi-mux {
+			groups = "nprd_smi";
+			function = "nprd_smi";
+		};
+		smb0b_pins: smb0b-mux {
+			groups = "smb0b";
+			function = "smb0b";
+		};
+		smb0c_pins: smb0c-mux {
+			groups = "smb0c";
+			function = "smb0c";
+		};
+		smb0den_pins: smb0den-mux {
+			groups = "smb0den";
+			function = "smb0den";
+		};
+		smb0d_pins: smb0d-mux {
+			groups = "smb0d";
+			function = "smb0d";
+		};
+		ddc_pins: ddc-mux {
+			groups = "ddc";
+			function = "ddc";
+		};
+		rg2mdio_pins: rg2mdio-mux {
+			groups = "rg2mdio";
+			function = "rg2mdio";
+		};
+		wdog1_pins: wdog1-mux {
+			groups = "wdog1";
+			function = "wdog1";
+		};
+		wdog2_pins: wdog2-mux {
+			groups = "wdog2";
+			function = "wdog2";
+		};
+		smb12_pins: smb12-mux {
+			groups = "smb12";
+			function = "smb12";
+		};
+		smb13_pins: smb13-mux {
+			groups = "smb13";
+			function = "smb13";
+		};
+		spix_pins: spix-mux {
+			groups = "spix";
+			function = "spix";
+		};
+		spixcs1_pins: spixcs1-mux {
+			groups = "spixcs1";
+			function = "spixcs1";
+		};
+		clkreq_pins: clkreq-mux {
+			groups = "clkreq";
+			function = "clkreq";
+		};
+		hgpio0_pins: hgpio0-mux {
+			groups = "hgpio0";
+			function = "hgpio0";
+		};
+		hgpio1_pins: hgpio1-mux {
+			groups = "hgpio1";
+			function = "hgpio1";
+		};
+		hgpio2_pins: hgpio2-mux {
+			groups = "hgpio2";
+			function = "hgpio2";
+		};
+		hgpio3_pins: hgpio3-mux {
+			groups = "hgpio3";
+			function = "hgpio3";
+		};
+		hgpio4_pins: hgpio4-mux {
+			groups = "hgpio4";
+			function = "hgpio4";
+		};
+		hgpio5_pins: hgpio5-mux {
+			groups = "hgpio5";
+			function = "hgpio5";
+		};
+		hgpio6_pins: hgpio6-mux {
+			groups = "hgpio6";
+			function = "hgpio6";
+		};
+		hgpio7_pins: hgpio7-mux {
+			groups = "hgpio7";
+			function = "hgpio7";
+		};
+		bu4_pins: bu4-mux {
+			groups = "bu4";
+			function = "bu4";
+		};
+		bu4b_pins: bu4b-mux {
+			groups = "bu4b";
+			function = "bu4b";
+		};
+		bu5_pins: bu5-mux {
+			groups = "bu5";
+			function = "bu5";
+		};
+		bu5b_pins: bu5b-mux {
+			groups = "bu5b";
+			function = "bu5b";
+		};
+		bu6_pins: bu6-mux {
+			groups = "bu6";
+			function = "bu6";
+		};
+		gpo187_pins: gpo187-mux {
+			groups = "gpo187";
+			function = "gpo187";
+		};
+	};
 };
-- 
2.34.1


