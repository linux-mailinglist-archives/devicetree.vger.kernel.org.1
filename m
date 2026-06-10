Return-Path: <devicetree+bounces-309492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XhLWMvwZKWqfQgMAu9opvQ
	(envelope-from <devicetree+bounces-309492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:02:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 645AB666E24
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:02:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309492-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309492-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E533F305DEC0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6B840D586;
	Wed, 10 Jun 2026 07:56:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023094.outbound.protection.outlook.com [40.107.44.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D813955D7;
	Wed, 10 Jun 2026 07:56:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078217; cv=fail; b=Xhh8TJyzpNxS3HcggCQVxUZUdLF8wHbd6hF/IV5SwlhJKe21UTsPXPG3fp/1tsOE+41Mn9Lfrl1nlkJQj9qo0VcrhdFjL8Du9nSHdM35eTFYbF+FFmBTKM2W8DL5pMs/FMDKK1QGUsCKnc/DmFkogU+eSdKx2A2yyEVNl/TRbew=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078217; c=relaxed/simple;
	bh=Xs9POHrnx0oSiwLX03/00LNcDAk+gjSZYgWWh0CTXbU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R7GKgz8jUOBJraN92ZyryLK2aqLYXpNqulER8L7QxCnQc7Pirwav76t9RtXsYlBbm94vES1SsXywUjfdql64H2sRPSSlu3ql4+HkFSB/VpMJeCr7R0OvzrQSxqT5mITr0inHriBysx+drE+6WmEUYfvrHwyBIV0zHkbQiHsF8ao=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.94
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aDqa4/wAhTk8L+ro79jHuJ6/AdOFUpxmXUuOzLX+U6zXS2L0+gLxKU9VXtAuCLUFqweHl/G04rsMRI85PeBpZaG3UyG/Ykog9tMa1WMFPnfX2u/sjDJppEUCKkmgChyV/zF2EzzMl60MK6/w5aLheH2BRuWotfmcNvpi36P+E7BaudldFHL6NT7rO98eCLfRwhUJRkTuQ+u7SkdHAXsMVY3liXiSD4mcwn0iytkUj/vPQkWRv63LUvAU7VevO58+bMhhjXS6pQhB0wFS4b6wbdC/zD1bh9myGX76nAaQwNwmztGthnELMeuvENrUcXEOj9NjK0TuBNNP9Qy1zuUifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQXq7y4VDRCnCs7aTyPe3mddFLkda83JZJ2Nuluqp8U=;
 b=CeBcv5gx3l/ysV6lNAs5WkxCSUWKKPgSjnTZEA0430i8XqW6E8uEqoWyFvSBAjzyjEewn4g7Mf1//irDJXVknktpd8tRfQmqq9OZaF49LLIWfVmNy88XQB7McZUNO1JOqI9yxLaEEGKIuacSBpCAUNFlNtwNyOQqAEKq6o1QPd3r6i81YiDPwCJ51h9zjZl4oW/t2UP5vecfgkmNZZnqu3YE2mJ9mwY6i/vyzR0r6CeN9y+E0fpEJrrkZMsLVg0noS51GoL9ykdiIRJUtC2ejXyh9D/9x8Cbc8duXwUJ47bnKJko50KosDkUIcHZXF7AwSP6RZ0PakIoHPWNW/uDww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=baylibre.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SG2P153CA0025.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c7::12) by
 SE3PR06MB8666.apcprd06.prod.outlook.com (2603:1096:101:330::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Wed, 10 Jun
 2026 07:56:51 +0000
Received: from SG2PEPF000B66CC.apcprd03.prod.outlook.com
 (2603:1096:4:c7:cafe::b) by SG2P153CA0025.outlook.office365.com
 (2603:1096:4:c7::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.3 via Frontend Transport; Wed, 10
 Jun 2026 07:56:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CC.mail.protection.outlook.com (10.167.240.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Wed, 10 Jun 2026 07:56:48 +0000
Received: from cix (unknown [172.18.64.61])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id E58D34084279;
	Wed, 10 Jun 2026 15:56:47 +0800 (CST)
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
Subject: [PATCH v3 5/5] arm64: dts: cix: sky1: add audss system control
Date: Wed, 10 Jun 2026 15:56:45 +0800
Message-ID: <20260610075645.3581145-6-joakim.zhang@cixtech.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260610075645.3581145-1-joakim.zhang@cixtech.com>
References: <20260610075645.3581145-1-joakim.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CC:EE_|SE3PR06MB8666:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 91c4dacf-e811-4bcf-bb20-08dec6c5d427
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|36860700016|82310400026|1800799024|7416014|376014|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	vkNjsul07cBF1weehXO0+vWQbgwA/omBHkB4760pztZuPVw0Oy5vrs7O2TzaW4MDd3P5F2xh+LRLAYXF/A3b93GhG514lNB0IGGJ+kDGUIVSVVtstk1fjaq9UYnnZrn+yXrAYHlBNZrx/k9D+pxMwKiQbrQq5hBujaaqPOF5tz1D9uFEiDCrEhHMEj3M4MhKbNp0OhikplwLdiF17Meprx8PKC9M3deF0AQasGFwGxLDyhRqTPvpe23JWR8z7rxaaj6MYxauG8LzvcUTUaYETLaCqJTzKaXiugJ1BYJSA5ai8KkD0G3Vjus1KZeUftobTsbQVUI8aV8DqLEm93ntX8YNzlSIuQhwc/l6LBw0dqfa9q7X4fA3eCIs/7znH++Q5YID9L0l1V1EOUAAT1pYzSdnztE+tMPCE2LBpaKEtlrkJHWIbN+gF3dEBUkQ2pLnjDITJtRfj8J+216pwdwmMDcVRjkpMArn9yJW5z2lUA0Mjs4WIuDJVtqvcufai8klMh9+MD2UM9K4H9AHXuGXTljqMN5owUoJatsY+X2BTx6npRQD2SBWzV0pDK73RIl/GGalwAcr3aPtNAfT5qJoMzLye77kQ3I9446OE7t7BaGUT22r8EKtjTIPWVvLIO4bfY178hfcBvCA/SnATS0iLSWwX3WwD2BTDaf3HKbVCZv2VipsrdXttmylCgbyy/A/i1pKV1N6IvP/Hd8wdy5qHytHwxDitWbl3oKIqq8OUAs=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(82310400026)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	bQk0RbH19bSzPj42aRbWh00zZ6YTcnX6Ff3dpLDkcSAP4BJevfMQGmkm0yboHFjXK4P78oz0NonCk5jn+evrZfvhrhy/8Q/o9SMda5r0SX6CxwBx4108AQOBcQEGUZRQn7k29H8Ib4jv2TSwil19WwvPPkGVxcFMxzgigAk79HsvwtHyQaNnlmlpjWnrqnujisYeXoyqWjEShBzg6scBNRtRgnFAtRxfdAUzE+Ju+xt2RgVGVM6S+pF6334nvV1r0lVYwld9QtMsds+qVyGLOgGwK1isU50wtE9uv6vw6E87XxNmYv60H54wzuk07hhPfWN5o2YFtVob+DqHqGu7tuDR8ee8m8AVORl/U4eiN8ZEUkPVGMvAwoRiQfhPxuISj223SL22vHyEn+L2eBIbTo5rbGo6SA8xye0Pn6ny+Ew+gyofb/DBJcfCKa2tBrzF
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 07:56:48.9439
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c4dacf-e811-4bcf-bb20-08dec6c5d427
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CC.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE3PR06MB8666
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-309492-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:joakim.zhang@cixtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 645AB666E24

From: Joakim Zhang <joakim.zhang@cixtech.com>

Add audss system control device node, which would provides
clocks and resets for devices in audss domain.

Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index bb5cfb1f2113..368a1d85c93d 100644
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
@@ -488,6 +492,26 @@ mbox_pm2ap: mailbox@65a0080 {
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
+					 <&scmi_clk CLK_TREE_AUDIO_CLK2>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK4>,
+					 <&scmi_clk CLK_TREE_AUDIO_CLK5>;
+				clock-names = "x8k", "x11k", "sys", "48m";
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


