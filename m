Return-Path: <devicetree+bounces-307157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i32xEFVBImpYUQEAu9opvQ
	(envelope-from <devicetree+bounces-307157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:24:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB5C644D7C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:24:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307157-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307157-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EBCE5301223F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 03:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21C43F20E7;
	Fri,  5 Jun 2026 03:23:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023113.outbound.protection.outlook.com [40.107.44.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA13B8406;
	Fri,  5 Jun 2026 03:23:48 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780629833; cv=fail; b=ssX53nvceUtOYQRXgh8OHua136orJkH+hXkZ+VF2z74j6meyDSU7hB145esjJhISTgB037p6FSeXjqs02RatOxgUYzf5GfqzVeCEOk7XOkLSFVV/bSko5NNzTa+q0xOeVWUzeDouvkjkztkPksYEq3HITxg/a7AjgIxPKVla/yo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780629833; c=relaxed/simple;
	bh=LoeM9H28W/4BNhzPhzWpN3MSZVIhqxyvDCQimcEdums=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jcJZtjkEGRyDvaE4hoS+ORwfpIbKU3x8QJlMB0td0TJud6KAR4x+NFlvynnBbrTXRcWJsnlX3CNZihYFkORIK/rP02XK2CVEufBDVyj6SIUTuov+3+Mb+qdA0/1dyFZB4UnQRTTMWXZFbXO6mX6sQRJDXi0LEC5ALBxAA1RbBbs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.113
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=klv0bk+wSm73VfvipdaK9uwpVCkTu8cgMRLAv5P2MUa2tFU9MKZ6ziV678LRakdLQZJi7Lb9KtM2aoKkv8mjfQA/BnCcC2Dxt2UjFlfIZn4GVE3oGWXvOcXmB0gtVg9o/FE82V26ZH+qfzWVRQ7eWZwV8uPSLux9vuuaoOdwFQ8jzirUryq/ZdsqPNJSsVlc3osjXeQklsmmzE/mEL/38sO87LQuVRacWS5ggnsHUAFwE22kXzhP4DjLPCKlX/d6XvDZmuhomDkzVRqBfIeET1z+W6VXIEWYJFIqunqrFGmmfHlW2k5U/VSHOMNWHSdP10pNSh7axURY5ZoP2tvV3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YCyRdkBWrsbJqTw8caXxLVvj/1frW/LtTBrCwjHb5sI=;
 b=q4TNl/FiEIUnvajxNusCoUO02zJYs7EkZNm9l98Q4sOt6CC9DImHzQeap/gb3FWu4ce9PYBVrvsMaxyBka+xs2cZVuNbooDyU/b4QoPxYzS2RFasN8/5zLsCDenCxqDGZifcP7Xmalm+L/yVYCCZayav1NwMBMU4LrmezlSGqkEPhTvXXCnPuUkZt631tFwaQxiVP6Txtkb6Z69SvArBkaw4b+LMiuLX7j145lucEni2P3i7ehrmlzv6TeceX4eZ1x3RFh+5LiqEvKs6zSdytqlNiRP7/mQgJ11qwutImP2CFdUahKFwvcPc7lMa5Jt6sgl+Z4PC+U0r7ewczuYJwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=baylibre.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR01CA0041.apcprd01.prod.exchangelabs.com
 (2603:1096:300:58::29) by OSNPR06MB8810.apcprd06.prod.outlook.com
 (2603:1096:604:4a0::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 03:23:45 +0000
Received: from TY2PEPF0000AB88.apcprd03.prod.outlook.com
 (2603:1096:300:58:cafe::55) by PS2PR01CA0041.outlook.office365.com
 (2603:1096:300:58::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Fri, 5
 Jun 2026 03:23:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB88.mail.protection.outlook.com (10.167.253.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Fri, 5 Jun 2026 03:23:44 +0000
Received: from cix (unknown [172.18.64.61])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 66A464084272;
	Fri,  5 Jun 2026 11:23:43 +0800 (CST)
From: joakim.zhang@cixtech.com
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	bmasney@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	gary.yang@cixtech.com
Cc: cix-kernel-upstream@cixtech.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Joakim Zhang <joakim.zhang@cixtech.com>
Subject: [PATCH v2 5/5] arm64: dts: cix: sky1: add audss system control
Date: Fri,  5 Jun 2026 11:22:25 +0800
Message-ID: <20260605032225.523669-6-joakim.zhang@cixtech.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260605032225.523669-1-joakim.zhang@cixtech.com>
References: <20260605032225.523669-1-joakim.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB88:EE_|OSNPR06MB8810:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 75048fd2-29fe-4930-10fe-08dec2b1d9ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|7416014|376014|82310400026|36860700016|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	ZdSxkGFrFOXT8UFESwNzcZ4/TAzsRUGSKYiQyGEyAKJKtx6Itg2ZoIbxulH9JA9Y55iKvGqrwU9j+uc39b7u6ZApIkB8EDJWnwRJbeZ3EP6dO3TYu6dePiYiyDWUSdAURADpqzXV3njEEOEhqbKueu5jCpFhORneubvIEBAYuZctyHbsulsV/E8XLnw7Po3/h1ev7kdmMDw5ZFd9eScdaVYALiNodcj2C/KQsVMgzKfqM+aasir17CVdPHsN1VCn6HFwkoPt1OdE94W1Uf0Sk6m7LoJtCQQ97A55BJWbMCibTT7nFn2tXqN/FV9NwszBZ1tMZjTc3oioRT5fRNaJWmOtx66BBq6vnmUUduRW/b1wLizC8lNPia7irD2oH/4cedCflIhZa4v+drhtrRnffsrr/AF5Hwn5sAiIpWPWZe3QtYW49ZyQL6vnERsqcSZVTWA2HfXJinBh+M5lNj61gjH79kZ4kg+gtXgDWhhwlwHIXJBww9vmr1YOMr1fph/ay1KrtMvg30nH9GgA3IOgYwGfWk5QEuVOdbD95witOnS7TUIgmqP7rLPphrbfrhJHbZHwpbcfcK+LKi5woEGCtIYHhNdLON6/D1dJNlZmGsTy7/uvNQsRcjiVhidhHKF9NWRxt2ArEnWfJMN8WWQDPT/4qeOPMh2xJoaCkLMuHGo2NNE0KQ22Ka8optUub2YkNnMN9wAUoXp6vwCdaAG1yM5BN+B6JwK5EGgj5YYgc5w=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(82310400026)(36860700016)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	hyEJJMoP10Wp0cVbuSXYmDEMrSuhAW02jLV2RZPErZszR2W1Yx/2zzEzh0cgQ3Ewq8TNK0X5q0dRPknHMbY328DHk77ORa/YgLnHeTU21BmSxpysk49hZZ0wvExqcPoHMGvekM0uaQonR3YLDXwIBTJ6bB4RuYgLL8pyfDKlh6BMLYGrzcCLuUxL+XUlaKVMwvf0QagUcMwd3v/1G3MM9bWAJq+NljEXpJjNQ1d6Dczk8KgAP0T8FA3PKOf1atS4H0UHCg2FCQKAg+GaJlRR7JDK6WKKFsjORUYyBxdR9fXSyeJFzfqpPlH3zyEZflBjuQo6BbIDyM7y4avjAbI6pZ+Kbb4qgV0YSuwQ5J3CbWIFRIhHZNJY3eA+R2LZmmlNyuEXvTgtvseP3fOEx9kf44aeN5DB4ncbe90q2ArrKs0wGpoovGB2/fX/Z3ET5cBY
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 03:23:44.8660
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 75048fd2-29fe-4930-10fe-08dec2b1d9ba
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB88.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSNPR06MB8810
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-307157-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:joakim.zhang@cixtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c09:e001:a7::12fc:5321:from];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,172.18.64.61:received,222.71.101.198:received,40.107.44.113:received,2603:1096:300:58:cafe::55:received];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BB5C644D7C

From: Joakim Zhang <joakim.zhang@cixtech.com>

Add audss system control device node, which would provides
clocks and resets for devices in audss domain.

Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index bb5cfb1f2113..0edc35523c71 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -6,6 +6,10 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/cix,sky1.h>
+#include <dt-bindings/clock/cix,sky1-audss.h>
+#include <dt-bindings/reset/cix,sky1-system-control.h>
+#include <dt-bindings/reset/cix,sky1-s5-system-control.h>
+#include <dt-bindings/reset/cix,sky1-audss-system-control.h>
 #include "sky1-power.h"
 
 / {
@@ -488,6 +492,30 @@ mbox_pm2ap: mailbox@65a0080 {
 			cix,mbox-dir = "rx";
 		};
 
+		audss_cru: system-controller@7110000 {
+			compatible = "cix,sky1-audss-system-control", "simple-mfd", "syscon";
+			reg = <0x0 0x07110000 0x0 0x10000>;
+			#reset-cells = <1>;
+			status = "okay";
+
+			audss_clk: clock-controller {
+				compatible = "cix,sky1-audss-clock";
+				power-domains = <&smc_devpd SKY1_PD_AUDIO>;
+				resets = <&s5_syscon SKY1_AUDIO_HIFI5_NOC_RESET_N>;
+				clocks = <&scmi_clk CLK_TREE_AUDIO_CLK0>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK1>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK2>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK3>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK4>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK5>;
+				clock-names = "audio_clk0", "audio_clk1",
+					      "audio_clk2", "audio_clk3",
+					      "audio_clk4", "audio_clk5";
+				#clock-cells = <1>;
+				status = "okay";
+			};
+		};
+
 		mbox_sfh2ap: mailbox@8090000 {
 			compatible = "cix,sky1-mbox";
 			reg = <0x0 0x08090000 0x0 0x10000>;
-- 
2.50.1


