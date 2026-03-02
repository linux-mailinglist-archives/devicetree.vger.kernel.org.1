Return-Path: <devicetree+bounces-270190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAifGqTUpWmvHAAAu9opvQ
	(envelope-from <devicetree+bounces-270190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:19:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB39F1DE5D2
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E10E03050192
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 18:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3518B31D367;
	Mon,  2 Mar 2026 18:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="UH+/4oKi"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011016.outbound.protection.outlook.com [52.101.62.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AD53370EA;
	Mon,  2 Mar 2026 18:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772475512; cv=fail; b=QOs8mCw8+ykfQ4p+43jMa3U5bp/TOgo0934kCL4yyZwQEyjkzhu4Znnsdq/BQh6Z9OsEgvUTCxpbxMUQCB/ixiETnGRO7vm18/bgy1BS4Uvq5qlN5uY1K9McsRw2eLGnEdJ6Qc3uI1mSyyFcBumdeZ+UN0jHqfY9EMohju9R1Co=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772475512; c=relaxed/simple;
	bh=MkcBL5KVPh2xkSHGxb6QQ63z3t2jZlATy9b9im66qGo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uCY8SLF3lDX76vSo6SuhnRKXVc7OuMKXniKbWObQ+UzOybjNVsxbuzIzbKJopAzCbIVwFnvczu6KZ7TTizQKQHGva3eCptwlCtQEsKPcS/gsDEuZkQU8q8ZkPgNzWxXMYh9ne4PrJwrvEQNnp6e3rSkf/tuAurBtpmVF7mOtB8I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=UH+/4oKi; arc=fail smtp.client-ip=52.101.62.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TAxnfguh+EBt+MgZarpN0lsDMudUXIp+4K9nwQijeWLicCu7Wl1lzWQJfW8hF8xWS8x4fGmFhq7rsFY01rfAUzaD1XqftXOz3eBoU7pJy8cgjVtj4QPtR/wRwh2lF+GkRZjYZaCF536FAn3mCzSSYW9nOcYkuPP4kvndwyT3o2pSBoc11XUg937Q/KT10eBg14OCe2SSUQtEVDAK87491JzxYWCpAHO4doFDntcv9Mk2ekQBOWZNNtr0X3IGQ0+NKB3/VJnZwtg9W2Qx53Yj4NV+2Hiynbwv95811pxuX+nhaLmqJ1Bc2zbFjp4m4fiIcmFUNNbNWZkSTsmPjL61iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0N/4GHdYRFjKxgsToAobmHxHGVo93PArlFpNwgcT5DQ=;
 b=mKAb9As3BGjLn+f81mS8lfBAjv96/hf5pvzj8jNWJp8Ch3RTx0FE08nZYo3pa6FrXyfxPxa+aISnFXiXNW5IY5u9+Z7AejGTL2M7IkZbYaNfIwDItZGiawFUc1PszxEothpVpZbBSWeP94belln5b6LG7cNSkZTgY8TV7hl3VYDAMMzFK+5JKcx5OXrmPB/3v/cl8V4N3nA7M3x0tSBpUrfwXbbQmNdju7xMEd7T4zRWOp3lJ0V4A6fIsdt5qK0/BmHx/OK4Lzxoy1DZwyf7+QZdczR4an+YFPYRo+vobt84E3nbiatLDskvIDwpuDaJFhIwAEUU4odD/GwuEttlsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0N/4GHdYRFjKxgsToAobmHxHGVo93PArlFpNwgcT5DQ=;
 b=UH+/4oKi0tr0BxvpDSfVaeHrOGkbZ9BY90sJj7b28Y+0F483qgemYUX+oBS+B8dws6bC8Nd+NuZ1EL+aDvfZ5UUu2DW9UeTzbUrcQvvA5FaysF2Cd/3B7P9xv7HJokESVJCiTFC/ZiY/k//tmcJN6VxPA8eWgvlk0Uua+Hit4tM=
Received: from LV3P220CA0007.NAMP220.PROD.OUTLOOK.COM (2603:10b6:408:234::29)
 by MN6PR10MB8165.namprd10.prod.outlook.com (2603:10b6:208:4fc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 18:18:28 +0000
Received: from BN2PEPF000044AA.namprd04.prod.outlook.com
 (2603:10b6:408:234:cafe::53) by LV3P220CA0007.outlook.office365.com
 (2603:10b6:408:234::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.21 via Frontend Transport; Mon,
 2 Mar 2026 18:18:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN2PEPF000044AA.mail.protection.outlook.com (10.167.243.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 18:18:26 +0000
Received: from DLEE209.ent.ti.com (157.170.170.98) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:25 -0600
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:13 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 2 Mar 2026 12:18:13 -0600
Received: from b-brnich.dhcp.ti.com (b-brnich.dhcp.ti.com [128.247.81.69])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 622IIA6x1232767;
	Mon, 2 Mar 2026 12:18:12 -0600
From: Brandon Brnich <b-brnich@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <b-brnich@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-j721s2-main: Assign SRAM to VPU node
Date: Mon, 2 Mar 2026 12:17:58 -0600
Message-ID: <20260302181800.445653-2-b-brnich@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260302181800.445653-1-b-brnich@ti.com>
References: <20260302181800.445653-1-b-brnich@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000044AA:EE_|MN6PR10MB8165:EE_
X-MS-Office365-Filtering-Correlation-Id: 503027e0-dc3b-4995-f5ba-08de78881969
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|34020700016|376014;
X-Microsoft-Antispam-Message-Info:
	wFsbyA1JRWtn7zlwu4FK77TNxFEaGLIYpQtIW89AIx3ZdF8Rg9ngOBIMzfrKcmNv0aDJSqwdfMvWkLlmQDfS99hID23KqrByvPwpv8r7rBHiloaAWyFA6BedahlH9LyFgWCIQF/ObJQb0QxssNMh6eaqzuM/27dPRm6n5eq1/cQU0AtCqenuYLMJ5nIooJUDhFuPdIr5KRdmXX5m2Fpc/8Ezh7FAXPAT/1UaSXYThdy28HA9LE4kGy/P/to3HUgRZLNfiCZ/30c3KBtmWqbJLtz7S6gS0pV+Ay0m4h5nq5T3fMu4QGptNUUhjkNYHDcpJc/rAUt0MguV36WLz2Phx2K89meFq+JfyhCjSo9KNcoAuJ7iU093OVRGoslbgyV1l8KgsskcTvsJsbgK4TPuW63DOnWxegvl92AUnk52kGWKNXjO1SX8xxoQocLf0/X4qGFOfzsb1iFfP41y3oVLjF2fmOCm+F1bxM141GnAQ+LHduzTbrsq1mCkkAhOut+DCm8G0FEsoWhtR+hJcq+6jp1TGVmYVKc5IyU5iU6ahgursU2zEA+kWE7s+HQoP8kFhvlIK6y9Rv4Eq9VT4YTiHaJ3veeHSU0uLipmo2Agv5+brWvO4Q/kHq1aHNLYZlcK1QtsKyQwC++1LAexBQL8KXt1HF7w3uJijeJUDw361B8Ro+HixplSaIFANTnwOZXbTuPlEIOl08daGVfEqUtnNUWSOyGHUMAHMq36ris9EkU8o9MMiiq8k2H6zJpUc9bsMIY86UOYALDpjEuYj1DRdB3xN1oVwoP2k+IoEIu4ozulf7A+Qq0+Jgd/sJRZBAyY8wYU/a0RSlt8ezoir7JiKQ==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(34020700016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	hlKgnCKCVDNfAOpE4WN79xdeeF31Iw9N6NuGuByIFwsKoTWw7A05BxdovtNMc0CdVvpLJBulL0xNfttHsbn/0MlYopWH8VeMZzk0uVYD8j/QGHxvuifLHFTZ/QjcvG1HEVqsuL8ZigHSbXVKwJY1UPAQm4ICOomBOsnXVWBweDY7YG0jxDmevXvaCXLdOLGa4yoVSygMempI2QFkQ1hhSLpWZ56PLHXbUOdvgW2fzfnt3kg3hFiiMfxwIAiodUhLp+WuJol0ydIeB8Ot3jTvayty+/tveoFVYemkvqa4qYV7NFG56IX+VGJpEurljKdCNKDyWn34Kfu+GDM/hJuOMlv0w7JtQk+Txj1w2SZScYTBf3mfzv6rAReM3wrFWdE/f46oFJWz/peVcrF4SP/55Ge5oSw84WnWyxoQTmf72RRFdhk644Y5qIR/hMrofKEP
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 18:18:26.9338
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 503027e0-dc3b-4995-f5ba-08de78881969
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF000044AA.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8165
X-Rspamd-Queue-Id: DB39F1DE5D2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-270190-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.64.61.80:email,4f80000:email,ti.com:dkim,ti.com:email,ti.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[b-brnich@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

The Wave5 VPU supports connecting to on-chip SRAM through its secondary
AXI interface. This allows temporal buffers to be stored on a per-stream
basis, reducing DDR memory traffic.

Signed-off-by: Brandon Brnich <b-brnich@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 7b1ba34ab719..27061918e463 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -717,6 +717,7 @@ vpu: video-codec@4210000 {
 		interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&k3_clks 179 2>;
 		power-domains = <&k3_pds 179 TI_SCI_PD_EXCLUSIVE>;
+		sram = <&main_navss_sram>;
 	};
 
 	main_sdhci0: mmc@4f80000 {
-- 
2.43.0


