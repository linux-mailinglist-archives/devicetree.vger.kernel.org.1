Return-Path: <devicetree+bounces-309488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZUg9GeMYKWpPQgMAu9opvQ
	(envelope-from <devicetree+bounces-309488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:57:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D022B666D65
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:57:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309488-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309488-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7DDF53011055
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5B6397E88;
	Wed, 10 Jun 2026 07:56:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023103.outbound.protection.outlook.com [52.101.127.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0645E391E52;
	Wed, 10 Jun 2026 07:56:52 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078214; cv=fail; b=fz+aUkvjHUq5T6veMOl0qhFTXPqq4gxrolCqZEatwg7Wjyk13zLjMbmUcUbw1Bah4ZuN1VQv8SK9p+dsc1E+a/6/0EdaxepLwwLk/M3IR3vwxXquLvaH3l+Nt6CGT/YblNTclABhwfgVbTMWHnXeSJUDP52hfToyVuO4gujK4bA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078214; c=relaxed/simple;
	bh=J4I9WTFtywDyUD7GmEEZzE8sDsumYbGqDM90W+J7aBk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SP5ehvPRd40PKAFtD7g4nmdzdrAiwY3B5KC8cD7ie1HpO2G61VSHaddoV5hwZvB9xERh77RtojM0F29dBwwXFBEcmHRTYdD44pmweeFLbDOb7AomZSR2awWfHDnH7w0LnD2pPGsRq7BpHmPHfPr0BUOKgcA8+kQ6joxTyfA9Y2w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.103
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t/DaBzLh1YKi4SpZNCHh3AsYayLw/oVpR8OOlDvlxnxfa0xtYIOd0tl1hc+L/KHqdDKAGU3vkew9rdKCm0Q7OvG3HsEYZq56rlnrH8XHFa6eU5J/P5V9V1Law0ncxygF3nb5cKfDD4Lj5zkTcoNhtMgIMGDzAPZ6fAvXBIpTyyWg3r+YSERp8EjpEDYdkZCrLf6G6Z8fsLCGV+bZpv8u7M+NcZtiBoVVdtoEq0X3+wG9kvvnsYDCANn0pP3kWeVPPbu7S4pf+uoAyNGacoKyPUzJ2tZuyEZhiRcIvXIV1/sjLzA1DQZBCRZs1yJrL3tBrWHh1xNPqCHXvyykSyUE0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8alqY4R5hutRsfyBo2HXDGln7eQlwJBz+LYE97EJFwA=;
 b=MwZqGi16SmfWljbuMjhX/CwcijI05ROnG7AR53JnfztDQx4gV/cuDanUTBiI9r7fyKLnXeqtL/xo2jxnCX44sEtNnT6ypX6gr4rMSFWYjJ6LUBu7EOpPXNgvCV03ffzYQUOmUOFuPelK6f/wsEJBDtRn7QXCDtqUX+Bq70VKEwZdafjC2BMxB9LcwuIidUSDZBfiprexQr34R0zGee6xC1erNNNhwNbGNbgBme+Y7bx7W+DHRrh0ndd5vxLnGD3WVm2mf12MSmRJnp2yrEHmMk7Ihv27y4Q/Id2+q0pNRV/ZfEhTl2RJ7rM3PSn8Gyl+fF5fJOUUZx3BOiaegHbzvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=baylibre.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR02CA0034.apcprd02.prod.outlook.com (2603:1096:4:195::9) by
 SI3PR06MB8756.apcprd06.prod.outlook.com (2603:1096:4:2a7::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.11; Wed, 10 Jun 2026 07:56:50 +0000
Received: from SG2PEPF000B66D0.apcprd03.prod.outlook.com
 (2603:1096:4:195:cafe::73) by SI2PR02CA0034.outlook.office365.com
 (2603:1096:4:195::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.10 via Frontend Transport; Wed,
 10 Jun 2026 07:56:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66D0.mail.protection.outlook.com (10.167.240.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.7 via Frontend Transport; Wed, 10 Jun 2026 07:56:49 +0000
Received: from cix (unknown [172.18.64.61])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 786E94084278;
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
Subject: [PATCH v3 2/5] reset: cix: add audss support to sky1 reset driver
Date: Wed, 10 Jun 2026 15:56:42 +0800
Message-ID: <20260610075645.3581145-3-joakim.zhang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66D0:EE_|SI3PR06MB8756:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b5cee643-934c-4654-982b-08dec6c5d3bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|36860700016|1800799024|82310400026|376014|7416014|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	PkEQM8aPAcnl6toIu9R1lG4mts5+iCC1gFZydTl04fmb4Is58kNuQMjqq+NC4rCp6cq4HjGOrZo+Sx9aUA5RdsnsN3qXPVPx1737mNcbSFytfitJBV7eYRUfChozit5rvaAqybc/2vdPkzcx4gkRGyy3YddEb8/4zHhPsb7Ontgjmo4hZHo9lnk1AVPTsukptBmNXNGcbb3phJ5nied5VEH9FUs1iNQY358DE3jjttJLcE2geb/p/SFb0pV30PVmZqPPbXLR1feYLTyXQqm4QJTF+2kFVGj0YYWGQmBY4e9++SSZXYzdMRQuIjHdmfiE2F/2T+e4VO4gOF3XPfGYkjVVjgk+MV8MuVgf/pJZgPiaDcp+3IX8eVqxuUlytDXu24QIpPtTaTaI3p2c0sS7eP7aPLR33qk/jcPg0prtsfvyttBnoPtlTfMb121sqtplp2ONp9+YXKydsXBC2N9LNS2ImgjLWFLUksBlMklhYhe9dsBQqbtuKlJLVvLT7HzjJyslYb3Bv5UJwjpIhbI9Y72HZuKOrq6QWJvOfsjgCDjESl4ok2KEdyMZMD5/T5fbZu6xqzjETtKtbmz4DwBq9JcgaZofOrt41JVlvIqXf2qAzpWS3Rj0lr7JUTsV/qhereh4RWflAVxd0RFlokHk9X2C9BZPKQK/G5OV/NzM7Rozv/Gnjon2NVVRssr07kkDZRn05oDDh51liUL7J0B2nPdRrCLbq6f4UK3Nri9Nl14=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(23010399003)(36860700016)(1800799024)(82310400026)(376014)(7416014)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	SnZDxQ4OuPPzGR4omzRDFtI7Tbf3P62w5/c0Lc7hcpeb7mw3rjTA2AYhk4/IVAGUU4mzfq+LgdW9g1RV5SkondkG+W+zyyEYjAUCGoCS2A1ZmlCVfe7+rJIy5BlZa3hIL0nDD1933Ssm+9vYVa7LOCGEy/3/QQA7d1aTGbVCPYkqysp58I7dyEFg839a46LwuXx1+X6kmpYdK2w/0mDwmOsc2ZGkS7Z2l9SHofbneAaMt7NjvkPcyArB7M8eByO7nnFSU35BV0AX/Dsm+V5cR7TkaPGWob5xyGczxEzn54O+nB7TrefTfPrSMgGdBJL1fvFSghhWVKYBT+KlzUJg5uwuntHg6MhKE9bdC1XPUoe6Yipxu0oAH05Sc0fJfqZvyCq1C1PgwXcFZAQ4WyxM9yiNCHlp8ghtaQ+QJ/Im64BzE08dPTqG92VwawZJC05k
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 07:56:49.4641
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b5cee643-934c-4654-982b-08dec6c5d3bd
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66D0.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI3PR06MB8756
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309488-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:joakim.zhang@cixtech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,cixtech.com:email,cixtech.com:mid,cixtech.com:from_mime];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joakim.zhang@cixtech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D022B666D65

From: Joakim Zhang <joakim.zhang@cixtech.com>

Extend the Sky1 reset controller driver for the AUDSS CRU syscon. The
AUDSS block provides sixteen active-low software reset bits in one
register for audio subsystem peripherals.

Add a device tree match for cix,sky1-audss-system-control and the
corresponding reset signal table in reset-sky1.c, reusing the existing
regmap-based reset ops used by the FCH and S5 system control variants.

Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
---
 drivers/reset/reset-sky1.c | 36 ++++++++++++++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-sky1.c b/drivers/reset/reset-sky1.c
index 78e80a533c39..88100c631cee 100644
--- a/drivers/reset/reset-sky1.c
+++ b/drivers/reset/reset-sky1.c
@@ -16,6 +16,7 @@
 
 #include <dt-bindings/reset/cix,sky1-system-control.h>
 #include <dt-bindings/reset/cix,sky1-s5-system-control.h>
+#include <dt-bindings/reset/cix,sky1-audss-system-control.h>
 
 #define SKY1_RESET_SLEEP_MIN_US		50
 #define SKY1_RESET_SLEEP_MAX_US		100
@@ -258,6 +259,34 @@ static const struct sky1_src_variant variant_sky1_fch = {
 	.signals_num = ARRAY_SIZE(sky1_src_fch_signals),
 };
 
+enum {
+	AUDSS_SW_RST = 0x78,
+};
+
+static const struct sky1_src_signal sky1_audss_signals[] = {
+	[AUDSS_I2S0_SW_RST]   = { AUDSS_SW_RST, BIT(0) },
+	[AUDSS_I2S1_SW_RST]   = { AUDSS_SW_RST, BIT(1) },
+	[AUDSS_I2S2_SW_RST]   = { AUDSS_SW_RST, BIT(2) },
+	[AUDSS_I2S3_SW_RST]   = { AUDSS_SW_RST, BIT(3) },
+	[AUDSS_I2S4_SW_RST]   = { AUDSS_SW_RST, BIT(4) },
+	[AUDSS_I2S5_SW_RST]   = { AUDSS_SW_RST, BIT(5) },
+	[AUDSS_I2S6_SW_RST]   = { AUDSS_SW_RST, BIT(6) },
+	[AUDSS_I2S7_SW_RST]   = { AUDSS_SW_RST, BIT(7) },
+	[AUDSS_I2S8_SW_RST]   = { AUDSS_SW_RST, BIT(8) },
+	[AUDSS_I2S9_SW_RST]   = { AUDSS_SW_RST, BIT(9) },
+	[AUDSS_WDT_SW_RST]    = { AUDSS_SW_RST, BIT(10) },
+	[AUDSS_TIMER_SW_RST]  = { AUDSS_SW_RST, BIT(11) },
+	[AUDSS_MB0_SW_RST]    = { AUDSS_SW_RST, BIT(12) },
+	[AUDSS_MB1_SW_RST]    = { AUDSS_SW_RST, BIT(13) },
+	[AUDSS_HDA_SW_RST]    = { AUDSS_SW_RST, BIT(14) },
+	[AUDSS_DMAC_SW_RST]   = { AUDSS_SW_RST, BIT(15) },
+};
+
+static const struct sky1_src_variant variant_sky1_audss = {
+	.signals = sky1_audss_signals,
+	.signals_num = ARRAY_SIZE(sky1_audss_signals),
+};
+
 static struct sky1_src *to_sky1_src(struct reset_controller_dev *rcdev)
 {
 	return container_of(rcdev, struct sky1_src, rcdev);
@@ -329,6 +358,8 @@ static int sky1_reset_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	variant = of_device_get_match_data(dev);
+	if (!variant)
+		return -ENODEV;
 
 	sky1src->regmap = device_node_to_regmap(dev->of_node);
 	if (IS_ERR(sky1src->regmap)) {
@@ -347,8 +378,9 @@ static int sky1_reset_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id sky1_sysreg_of_match[] = {
-	{ .compatible = "cix,sky1-system-control", .data = &variant_sky1_fch},
-	{ .compatible = "cix,sky1-s5-system-control", .data = &variant_sky1},
+	{ .compatible = "cix,sky1-system-control", .data = &variant_sky1_fch },
+	{ .compatible = "cix,sky1-s5-system-control", .data = &variant_sky1 },
+	{ .compatible = "cix,sky1-audss-system-control", .data = &variant_sky1_audss },
 	{},
 };
 MODULE_DEVICE_TABLE(of, sky1_sysreg_of_match);
-- 
2.50.1


