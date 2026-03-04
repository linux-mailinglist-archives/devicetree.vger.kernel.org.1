Return-Path: <devicetree+bounces-270897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAYkJWDpp2nelgAAu9opvQ
	(envelope-from <devicetree+bounces-270897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:12:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 601941FC4F9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7019F3171C19
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEAD038C2AD;
	Wed,  4 Mar 2026 08:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="FIFtAg+j"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013057.outbound.protection.outlook.com [40.107.162.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB48389108;
	Wed,  4 Mar 2026 08:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.57
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611647; cv=fail; b=czhXrk7xD2uOQ7xvFyRtQetN/HOPE8W5PE70jOj+gZ6uDCkTgBI3ju/WvmhA6Ut0cIhD5VAm5KW063WpxybNjV7q5vYKE0qn4MOUmWxn8Ce0wtHnwylE/AhDXrjAzpmw3n23y1b7nQM67/kctfaHRYP1vW++zrzR3oRoNU8bnXg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611647; c=relaxed/simple;
	bh=F60MaSxkOuGVX5b2qhgCKA4o2Mz92rChzA8eXyMBjuU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=B+eSI8y6C5omi3IRnSPhN6IJKuqfEPv4iMbGpfocl1N+Imr3j/Aj+sFm4epOxzlirJFE6rGPnZtLHsC7vUco0rCjsw+ix7Nz/ufPa4BqmiXNqslsI+dfednM2Xz10gtnqtfBZXy355UDo88WdQkgnKyER8ljTETSAqwgsJT+oeo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=FIFtAg+j; arc=fail smtp.client-ip=40.107.162.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UCbPMe9yUJSaBlje+MSm8kBerxW2bsBAHp+CFND2xjpdwX1thS75NZE35MYwm4ihY11Z35G4O6UK+Qhcab5+OrI0QGb9ChWOZ5LDDo+F9n8bVg19qkTM0dOwfy/Orrkd6PbbEp72wkcyevJMBXIDSn6NkT6g2eSLo7XtgEs0EBAlXF9f3ZBxWg3e09+1DgJOBJtHr4OXKGM06NoelvmuB78k3eKXHoQGcMjFKg1XUR3s8zpjyCSqpLE7yFTEB+17jwEUIL1jxgtauolm4EYdHMtbUeiyzKkTn2zxHVSmP5tiiLmN/FWME0jhno7x7nXEW1/uOeE2MCyHVjeUXZIHDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezaKcTCwxvc8WCNj/aHK68Tu0GeEJ4didEw5cUNO9nQ=;
 b=do4BYEydoO3rsu63s72Pvf3/HkpvC3pxLMRuCXWc+5xEeifv8cQTdIfl57EFiABGJMTICvM9I0hNL/+NcWDlAUJ0N3MnUCB7pfsaIA+o0wKvxuDRt3ZxTwxVh57/xyh+ZCNtCl9HOY2p2E+TksEKDY8GgUTA1ExyFE4jFpy2un3twHw7ek0DMUefYKQUeeI8XvDxGOv6ad+NlTqikYN1wWuq3OWfizcX9bddrAj/9oTDfJY5NBg6sv7V0woJpj+u7JqRbdIt7lsVNu/Tf668/dke/IcKcFMA9mJRO133rJVLlGu5GBGBGIil6qntvhkS23JmhrYkoZwxOdwaP3ELLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=foss.st.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=foss.st.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ezaKcTCwxvc8WCNj/aHK68Tu0GeEJ4didEw5cUNO9nQ=;
 b=FIFtAg+j+ZNnoyH3jRlG/IuxohYIbQy3/VvWMvg2rfproK6SnukHEFC/4WgrW/zFR3amQHGbbEi5LE1FsZTR+8W3Bvzy4ExPq11ouFhhrPc9o5SXEpEIvCgyBqSsKabsRGlXtCqNO94H+TU+Fm8JKuaCIZOlgi9jb0zEdhNB0R8fw3rLUsa48oAdq/1EYoiw+jz3mr9OnQuMn/jy+eqDIQMCqQvUXJ6KYHaBjDD6D1BeFNGkC8ZDNHWTm0x5+Gcd0iKqBtISYdYyo8YP5PwBT5euuDe3djQ+m1+DzQtKLXGezWn7/EK+fvqC2kibTy+abyFHUmRkKcAu0/UZvETrSg==
Received: from AS4P189CA0011.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:5d7::12)
 by AS2PR10MB6349.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:550::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 08:07:18 +0000
Received: from AM4PEPF00027A6C.eurprd04.prod.outlook.com
 (2603:10a6:20b:5d7:cafe::9) by AS4P189CA0011.outlook.office365.com
 (2603:10a6:20b:5d7::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 08:07:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 AM4PEPF00027A6C.mail.protection.outlook.com (10.167.16.90) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Wed, 4 Mar 2026 08:07:18 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 4 Mar
 2026 09:09:40 +0100
Received: from localhost (10.252.5.222) by STKDAG1NODE2.st.com (10.75.128.133)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 4 Mar
 2026 09:07:17 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
Date: Wed, 4 Mar 2026 09:06:59 +0100
Subject: [PATCH 1/2] ARM: dts: stm32: fix misalignments in nodes of
 stm32mp151
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260304-mp1x_alignment_issues-v1-1-19a8013782a5@foss.st.com>
References: <20260304-mp1x_alignment_issues-v1-0-19a8013782a5@foss.st.com>
In-Reply-To: <20260304-mp1x_alignment_issues-v1-0-19a8013782a5@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00027A6C:EE_|AS2PR10MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: fae59708-48a5-4ae2-2bf5-08de79c50ded
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	MLYUS9yU9WfjMPqTB8zpNxuBle1FjW7NA5UfO+/hj4UTTdfQbInIZoVo9ECcr/aLOe1PtgU91poXyZp87u5wzhEpgye/btfbf7TZTEq0WUoRTqd6YdGzImkcfNylT+SJnoTEDWa074X2UunoZZwF2xA2tj2RCWr6moVtkeLIBqMOv/Bu666Rn0Ntwt4VWwDBQG6kGYcYEllVjnbjcVbIXMlMtmafrRGWro9O/PyjylXIDreJmbMqt2PkTFRIX9yGto+cN0pC0puIo4o5IgFbXHMZBcJ2NF/1peLPqmz3Vkh5oeIZWAnR+xuURZZbahMqRMOOheymClZn/DDD3w1G6/Np+kOiUvujb8J+8nCC8cqbKFTmklfLJywRP8RN0XwLD1VzVloKKl4f4ifbxeL9ESHqnZKIe+GvDWRQxVMnQngoyOmD2let82brGTDQqWKe/WSk0/cmQ+W6DPxsnKKliPIaHQZmICobQYY+YvYMiJTxhWWtnfBKizj6CaLivS6at7EiGospQgYhxVoRVElJbW9KLdGaox0PNgJ7MvKYNNkEYfoocnwLJIwCTn9fQJWiqFshCEBlZkrsuV9dRUMKaJN0RrmMHEyUrX+MkJ4QRpSo86gN1uNZ7cAAZsJj3MTpAbAgxYUxKOT7bxMDEXuPwqhOaYtn7TAPBoPh/Yn+QkNjUToGc6dKUeQ9OW07nRVShdg4aI3TeLac33ZjLcRFWIJsmJ2JTec5cgKOIb9Q8x5FbbZizlff8hurTNyXCUA7kPeqCQ4Q/3rXJzyygCLSdw==
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	V1LBcNn1+WboRoRbYGxYeL3Cv4T5qDE5TlXabuhIWjh63vbCxBotdL/zdmLHwkzitJPiii4LPvNlXJvaJQ++voIrJYpuO+1WI9qP1vzMnz7CwWTVg+Mk7lTpW2AqAAdEXEiynuxbCLjjLK466O+YIqwSMEKBafgMWfdQpGzNarGJbLjhc7VhB4V8z1JzRNhfUkjoiN4kvHYVpXecckLPpi7W3RbmYSd0lzwxkij+iXQGIVJhoagdYlh6ASMii7ULP+UaofsAcYNsRlXhZldGa4lMZpzYKAyEYhLoGMvFaDOHMy0Zh2zpve1InmFR58gsy8+LtXr+c2+jqLcfPWc2Mnxa27NiT5N73ny9WAYqrr1St1L/DmauTfoczxTsNSAXLcQh/w/GAtve2gzDf7qdRiWF6FjQIexATdtE/wsnFIjvu0N6+kbXYH4ceaL/A6q7
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 08:07:18.1523
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fae59708-48a5-4ae2-2bf5-08de79c50ded
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00027A6C.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB6349
X-Rspamd-Queue-Id: 601941FC4F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270897-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[foss.st.com:dkim,foss.st.com:mid,st.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,2.159.114.160:email,2.159.134.40:email];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amelie.delaunay@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.159.126.88:email,2.159.118.136:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Since the ETZPC system bus was introduced, misalignments have appeared
in some nodes moved under the etzpc parent node.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
 arch/arm/boot/dts/st/stm32mp151.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp151.dtsi b/arch/arm/boot/dts/st/stm32mp151.dtsi
index b1b568dfd126..fd58bb700f6c 100644
--- a/arch/arm/boot/dts/st/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp151.dtsi
@@ -1083,7 +1083,7 @@ usart6: serial@44003000 {
 				clocks = <&rcc USART6_K>;
 				wakeup-source;
 				dmas = <&dmamux1 71 0x400 0x15>,
-				<&dmamux1 72 0x400 0x11>;
+				       <&dmamux1 72 0x400 0x11>;
 				dma-names = "rx", "tx";
 				access-controllers = <&etzpc 51>;
 				status = "disabled";
@@ -1095,7 +1095,7 @@ i2s1: audio-controller@44004000 {
 				reg = <0x44004000 0x400>;
 				interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 				dmas = <&dmamux1 37 0x400 0x01>,
-				<&dmamux1 38 0x400 0x01>;
+				       <&dmamux1 38 0x400 0x01>;
 				dma-names = "rx", "tx";
 				access-controllers = <&etzpc 52>;
 				status = "disabled";
@@ -1110,7 +1110,7 @@ spi1: spi@44004000 {
 				clocks = <&rcc SPI1_K>;
 				resets = <&rcc SPI1_R>;
 				dmas = <&dmamux1 37 0x400 0x05>,
-				<&dmamux1 38 0x400 0x05>;
+				       <&dmamux1 38 0x400 0x05>;
 				dma-names = "rx", "tx";
 				access-controllers = <&etzpc 52>;
 				status = "disabled";
@@ -1125,7 +1125,7 @@ spi4: spi@44005000 {
 				clocks = <&rcc SPI4_K>;
 				resets = <&rcc SPI4_R>;
 				dmas = <&dmamux1 83 0x400 0x05>,
-				<&dmamux1 84 0x400 0x05>;
+				       <&dmamux1 84 0x400 0x05>;
 				dma-names = "rx", "tx";
 				access-controllers = <&etzpc 53>;
 				status = "disabled";
@@ -1176,7 +1176,7 @@ timers16: timer@44007000 {
 				clocks = <&rcc TIM16_K>;
 				clock-names = "int";
 				dmas = <&dmamux1 109 0x400 0x1>,
-				<&dmamux1 110 0x400 0x1>;
+				       <&dmamux1 110 0x400 0x1>;
 				dma-names = "ch1", "up";
 				access-controllers = <&etzpc 55>;
 				status = "disabled";
@@ -1209,7 +1209,7 @@ timers17: timer@44008000 {
 				clocks = <&rcc TIM17_K>;
 				clock-names = "int";
 				dmas = <&dmamux1 111 0x400 0x1>,
-				<&dmamux1 112 0x400 0x1>;
+				       <&dmamux1 112 0x400 0x1>;
 				dma-names = "ch1", "up";
 				access-controllers = <&etzpc 56>;
 				status = "disabled";
@@ -1241,7 +1241,7 @@ spi5: spi@44009000 {
 				clocks = <&rcc SPI5_K>;
 				resets = <&rcc SPI5_R>;
 				dmas = <&dmamux1 85 0x400 0x05>,
-				<&dmamux1 86 0x400 0x05>;
+				       <&dmamux1 86 0x400 0x05>;
 				dma-names = "rx", "tx";
 				access-controllers = <&etzpc 57>;
 				status = "disabled";

-- 
2.43.0


