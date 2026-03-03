Return-Path: <devicetree+bounces-270760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ep6JyBKp2n2gQAAu9opvQ
	(envelope-from <devicetree+bounces-270760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:52:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 054251F6FD5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCDC93053A42
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B305A388372;
	Tue,  3 Mar 2026 20:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="sVb5nPjY"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010016.outbound.protection.outlook.com [52.101.85.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE2735F179;
	Tue,  3 Mar 2026 20:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772571165; cv=fail; b=Qt6hiWCJXnQIeqJ+p2bx6tRs+zxqg9dEE8yXoy/Bqel+oU7+NCtsr1ksOagiUU3eM7IKCYL8nR+r82NNgbdEaIpcy4roUgZKtqz2FvFyB5uSq0fWkY+mpqB++sfpMgurtQD4VaL+txcW5GJzR6VF+Fs34voTPKFLqszARvE+lUc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772571165; c=relaxed/simple;
	bh=q3CqJQTPPnaduST01Bv4WGIeTrUxPtgt2aFlS2UIXSY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=tSpGg7QdrdRC8iPjCk5f0J4UNkzJPBptExHwG0ipdgA8aH7uilCd/q+G0Ctwep9DkNJ/XeFQKVkv4O3D+ZwvrkMmdvyw+NqgrYsnrcXl2KtnlShGKRSXxGZu8YD9bdaGaxZsTdDWu0xar0rjoqOqluFiRt+9nIGdUbxUPRyOe+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=sVb5nPjY; arc=fail smtp.client-ip=52.101.85.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lo00pHSscjEV+vJKXr61Fuo9Csnuv8WEl2ncJj9P+CVlS8kvAacaKKvuFx++m023kA9/6FHoUqKUn3XR4VXRfDyKYVWKvFfiGbqXw3qQwrIW89u5PN+nQI84yx+dW8OVBruB1o/JiWmA0sbixJS6FpadirhyMvsQt0QJG6F9Ho0ad+MmvQDGleKiZUKtAEH02d7yuKfHHPDG1tX4ZKahCyXgVmOeCwArJpRWpD/Tyldk+cxQ/wH6RCxAxNJvJH8wUSES1AwyTBJ3YNWXJ8BQiO2VCn//fgmSTrUcDJh1gm6zJuX+/L7KtE+yTPtPbpA54SGEl5ueQ1Fpy5OH3NgyzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rp8GXgPDjtFzFEDyQK6pjLff936huWRlwT4Sp6aeP8g=;
 b=XHVwFDxQ3GKJyQ1gvXvQejY70/tgWyOTNza37dDwX+6eXereMOZqMejhqlVOPcDQcrdbyoatFVeFYTJ4fe/OtV6L2D9ay4sLJN5m8ilVJEDFjCX17Q7kjDrFvlIYpy8A4CuYM44zAWiyB6BdQcKg5lm+86Gbw8GL3ddAXfFaqfxpZuVWtd3CVrR8jYSveqEY2auZXGjFFwtHQkpVm9tC2LSiGiktQsu4l7FKBsZ2scTk9OYbRpVut4smzLKqNR6Ie/cagSVlkawUi9vGPDsTf+eOITD+8ziQGiROewqiXmoQmQDdMTM3NpzE1mPkP4ESIchZb0xm6Z770x5cIDpJ3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rp8GXgPDjtFzFEDyQK6pjLff936huWRlwT4Sp6aeP8g=;
 b=sVb5nPjYf7PUs/cc5qw/o+3daHZTUEuBZ8b5jwCm8pAlpFeuuHh5yES0qsyk1QFuFZHorh+0udQqpKfCeaxsJ3ij2UMQGzsj60pfNPewn+qZqy7Kv7R4SAlgudEaLo6lnhiTq05kCLjuGlq7gbl6JYy4VyfQgZzSTkgf9d4reFc=
Received: from DS7PR05CA0090.namprd05.prod.outlook.com (2603:10b6:8:56::13) by
 DM6PR10MB4251.namprd10.prod.outlook.com (2603:10b6:5:21d::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.22; Tue, 3 Mar 2026 20:52:41 +0000
Received: from DS2PEPF00003442.namprd04.prod.outlook.com
 (2603:10b6:8:56:cafe::ad) by DS7PR05CA0090.outlook.office365.com
 (2603:10b6:8:56::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Tue,
 3 Mar 2026 20:52:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 DS2PEPF00003442.mail.protection.outlook.com (10.167.17.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Tue, 3 Mar 2026 20:52:41 +0000
Received: from DLEE212.ent.ti.com (157.170.170.114) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 3 Mar
 2026 14:52:27 -0600
Received: from DLEE203.ent.ti.com (157.170.170.78) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 3 Mar
 2026 14:52:27 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 3 Mar 2026 14:52:27 -0600
Received: from lelvem-mr05.itg.ti.com ([10.249.42.149])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 623KqQBu2782957;
	Tue, 3 Mar 2026 14:52:26 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-j7200: Make MAIN domain system control bus a simple-bus
Date: Tue, 3 Mar 2026 14:52:23 -0600
Message-ID: <20260303205224.108217-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
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
X-MS-TrafficTypeDiagnostic: DS2PEPF00003442:EE_|DM6PR10MB4251:EE_
X-MS-Office365-Filtering-Correlation-Id: 592f774c-929c-4c13-e9f1-08de7966cfc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|34020700016|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	OqX6eTkbVeMcWmgzZimVMiDsr6JJjhW97Ra1J+E33jQ0WD22M6+Upu8xJtJK89xOtFbvA0UAw2dABgVY9GMstIlKEL88GbhjaOF2bEltNaYw2qngGMoRAqGV+joHRZdKkCLpvaQyVTqq+2+/jN/WGAMbH8PsMFAmU06FCKPonWidOhADBmFvJXlYexL+aKUsTqE5OmPF3juuvFrIOx9+IdEIA1pYwUHNpHyu3V+1T815qEfYCDcRJJjDmtL96+3vw+h9qjPptJXtrCgwUStWTTXllhkI3JIsw4t0EHYwiQzx6IM5LM02XqlYLpPe/ZGWSukwKeFw7nuTJ2A4h4GBF7ty8Xnm/ZimS+Eg1PrlY+CLcYL+dghEaz2IOLyyOkzrgwokkHCMU6JMi32qC0NpI9BTdrI7gAX0xBDccQwskqJQh4Hb1ro38OE6izeYQMjAHtfL0YzWYvYsJgLqSjxLnW6NntNd8Kf9zaL19sIlJXlsfDyDHORFXzNdJ0JyCAGqIeO8m5WzbNmyFDjNUTnHQ6p73vFfFhVEhknKwxW60gOG9ceSlsRvS7WC1Q1ZE/ndKXfd6zsA6DgU2J4GgwtgHy/ga89e5dBhmVO30xqicv9bHigr532QqbU6hRAo2dm6vvc6CvIhyl9dRRcP8ns2+R/6aW68kAJF3gBp++1GiOXe9DhhTYeZrbjhd61AiI8kztIGztU8iOmpH4bXf0kv1zJpnWcFO0SHTlXmTfa7LwvIMrg3FL0hMSKAyIa1WzKGqk/QmwIqq/SGJsYTiqWsi6iiorqDIhQhGs5oCv0PkjqcHNcCFaAS5JWuFOQ5k/pkdJ+ib6Lhq/o+00Q7pk9s2g==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(34020700016)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	kTkEYhKCzIqlejSXKjXO+0l+OgcE7T+p2rK9laq+3mqf0sq1ni3YM9VZxmSxSKBu6RFwsw5KIA4mWN/a9Q34iMRscXvf0z+L0K/A/5f13fF3hWqOc8c75Yns8wJZ0a6C+XovyzCb2g9jWKrAha50eYqLv6BhY2daIYGl5rJU8JQ2m8aww0tnW5R8niSN2bKP192sa1W4mYfcO7R+HaX1xxA3M87bEVg5oTZnj6NwmtE7Jf6hQu59G7pYp43F3LnBTYxy2TXPqlq2npidFBKHMwLrLGCJJTXMD8nrFxBkS5JHb9EiYFGfZbybMl3JcztaSS61t2fFks2eDSddf+np1Wrl352rDUU0ohEvEQDv08GaU2sjWkrpV31hvqcT+QQSOxO0IcGtWOy26vVwdhcVOpASQaw4CoUbxBKGmOf5eFH900yOqibFuBkYkLdV+74q
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 20:52:41.1433
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 592f774c-929c-4c13-e9f1-08de7966cfc2
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF00003442.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4251
X-Rspamd-Queue-Id: 054251F6FD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	TAGGED_FROM(0.00)[bounces-270760-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[afd@ti.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.0:email,ti.com:dkim,ti.com:email,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

This node describes a memory address range containing several sub-regions
with control registers for various IP in the MAIN domain of this SoC. It
was described as a "ti,j721e-system-controller" but this is a J7200 SoC
with is not compatible with the system controller region found in J721e.

No project consuming this DT has been found that makes use of the syscon
compatible for this region, to prevent any from using this node like a
generic syscon region in the future, make this a normal simple-bus as
it should have been from the start.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 628ff89dd72f7..67fde5667b8d9 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -25,9 +25,8 @@ atf-sram@0 {
 		};
 	};
 
-	scm_conf: scm-conf@100000 {
-		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
-		reg = <0x00 0x00100000 0x00 0x1c000>;
+	scm_conf: bus@100000 {
+		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x00100000 0x1c000>;
-- 
2.39.2


