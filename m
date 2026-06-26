Return-Path: <devicetree+bounces-316144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WeaVHumlPmptJgkAu9opvQ
	(envelope-from <devicetree+bounces-316144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:16:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D092C6CEE1C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:16:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=phytec.com header.s=selector1 header.b=XC+kUdVh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316144-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316144-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=phytec.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B4E73077ADE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 16:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C076394785;
	Fri, 26 Jun 2026 16:10:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11023077.outbound.protection.outlook.com [52.101.83.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1A037BE7D;
	Fri, 26 Jun 2026 16:10:34 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782490236; cv=fail; b=aTg0L1jMIO66qGNGrnmmz0lhfiWvQqVlHGjqDoLCk3LM4naBADqrzse/XszkmYbuHONvUwxZBcBQ1RBy7RZ91XP6AAacJGNs7B3AtvRhgcKfRWyCPj7wVaCM9Fo7O36GypiDN5TrhATM8GjAseGFSwW9d4o/pBedBMV2fjr0JCg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782490236; c=relaxed/simple;
	bh=LcKMuczr/RnrbfeF8BTa2S+XRiT0ILA2j2X+4D71Qpc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fmi6LXDpnxwzf49AYYGMia0pi9GnF5Lc4grXKz/rZUYUKJQyj2Zmg57RqFZ7vD/yebvJa97pm+OIYneJbFKHJ5F2nAdPENlvOUbRYgNxF5McGVsENOw0PxyBVI7D7ZT7GgHQZwGmaQzRW1/MEZjo2UtXGZ/BE9VGCIRSeGuIHuM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=phytec.com; spf=pass smtp.mailfrom=phytec.com; dkim=pass (2048-bit key) header.d=phytec.com header.i=@phytec.com header.b=XC+kUdVh; arc=fail smtp.client-ip=52.101.83.77
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oljR08au37E9aX3TOW+SOsrlG90yzIF585DN9DB+sncleqZFkVppbWR/sURLeYcVdh7HGAaSeGiIJNct8JBObRbDLQVtUKBfuWXAFCRnVm09jSfsFcLM+xF9VuiB2ba9rkeAbSM67IZ2orA0/GC7JBlQYFP3E9hlv1whwwRVbnnBGynidbpvBxZNYHvIQKZLMkCUz2lSpC2wUDhDebFxSpDOhw0PPk0gLsU75UZhgvbItDprUSEqWDiyqOnkHSFWTWLTv4bmAy3SCyQmn/vY1wFE7fVOJgSsKENLS/26DAsPHujbLfWBgQ65dzUqgvkKqYtwYO8LqWg5HpwWf+yKag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2aWBvZh578V8IDg5VB5A5waCEKnBVyKHYVkUeWcOaBQ=;
 b=snFG4zn4BTtB0T8LuSi0n2y5hHasBKjhJ6Mm3epR0M08i4GgRWkfVlRDGGD51ThiIwr1bk8Ybwiz48sZ+y9a7Q6vNVbqKy5ZCwnuaCQZIgGP16ueb2vN3F/H3fesVzdDRrSqMCoHA4/SkNHmj4+aCrViozOQSW2cmKpRjKvZz3LAZ/swZue8gatCstG3oR4Q8attBOtn1gc6504KiMJF5v/LqIOTPPqlY4CWGxEB4H2qsKls43gFM93hL/WZ1ovJUcqPBya5ZHrV+vItFLnR3/tu/jjXwlaciKAWJddLV9f9dpD3iY5ImF5gCq2LchSoJ6A9FxjmJM8a2Xze0UF1Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=phytec.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aWBvZh578V8IDg5VB5A5waCEKnBVyKHYVkUeWcOaBQ=;
 b=XC+kUdVhH0osl91cykwbmrRgkD+IBROyKJ6mueYwTXqgg0eAHPsWFkIwuG/HHUD6XpyXNs+uscm/+vmsWSvcEbEA1DUJ2B32ClHFOsOcm/0EfXAWwNGN+J+klO4a0q4TL9QdJcFe9Ip1ghVn2hoesodADnpNZ0V9fMP0u4BPHGb0KEgUFqTLp0DpZa8e0JZydGevA0eJMyNRvflDGla2W8lp44RYkYaxExfgqYIrf9oiQXBCdAJ+Jj3cUV885vRWYGSYcSJMVG/KNVBHBzLsW3IIcqlmQ9ZFic+lwXNLvMEMB/yrwBQzdgpotwmmVOr8tp1HmaX/vn6bu8B5nE+6Jw==
Received: from DUZP191CA0070.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4fa::20)
 by AS5P195MB3382.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:753::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 16:10:30 +0000
Received: from DB1PEPF000509F8.eurprd02.prod.outlook.com
 (2603:10a6:10:4fa:cafe::9a) by DUZP191CA0070.outlook.office365.com
 (2603:10a6:10:4fa::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.17 via Frontend Transport; Fri,
 26 Jun 2026 16:10:29 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=phytec.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.com discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 DB1PEPF000509F8.mail.protection.outlook.com (10.167.242.154) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Fri, 26 Jun 2026 16:10:29 +0000
Received: from phytec.com (172.25.39.17) by Postix.phytec.de (172.25.0.11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Fri, 26 Jun
 2026 18:10:25 +0200
From: Nathan Morrisson <nmorrisson@phytec.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <afd@ti.com>, <sashiko-reviews@lists.linux.dev>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM67x based hardware
Date: Fri, 26 Jun 2026 09:10:13 -0700
Message-ID: <20260626161014.1146128-1-nmorrisson@phytec.com>
X-Mailer: git-send-email 2.43.0
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
X-MS-TrafficTypeDiagnostic: DB1PEPF000509F8:EE_|AS5P195MB3382:EE_
X-MS-Office365-Filtering-Correlation-Id: 4947259d-ae55-45d9-34d6-08ded39d70eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|7416014|376014|23010399003|82310400026|11063799006|56012099006|18002099003;
X-Microsoft-Antispam-Message-Info:
	uPlAaXax8wta2ytK7AnTgTdVdMzzy6m7nW6WPY5MYm7JUQE6UtbJCLuY2lq+a69+xahto6ivukrXqsQLIKyywL9hCdQ5b47xZycqtTgXfIGi67++gS8NKVpSJv7so0Mf8QJs+C0ns38LtdIvdI3I4yYEBnPGGOYUNdcGLkiTukXFmK0t+WL45kRdqHv+uyWAnQJanZ5NmiRIT42OurI8T3Zp5YYGYZ80ve5ra58M+7VVmwYpbzJW8vBbbjqHRwCc1nH2aMJtxVkeeZIbAcjdw2EXX0iptZTADvtuCrzJ/cYMdDiwhb0DT28r/fsW4yb4/fn+5by7ischA0ASrBlmX3RBuPuso5oCd2tcS8NBy5M5hBImbZ4HZFyT5tGB9Md+RnnBbaFIf+HKP9wW0l1Z/hSkZxFb3llH8zeEYUOrpI/iWGY6x9Iqjc6KaDXlYINAwdA8AqnzWpOe38p1NHAed/cPI49ebNnBvlZzV3kagCgH7gFf0H1T7q2amB/cVuqgu7DBTG15f5T/tgir2Vv1kOdMwhKHx/dMEURXUkr7uDr5v0KoifRURCQWwdVNjTSs74VkfROZrfifMHlFgubd7BIKrsTxFiSz8hTWDir1f1kP69ciS5W3LyTtdnMg7oRJ9uvmr7YjBRaSNHza+4lKEVHVHIxH5I0f6LSFNmfg9BmeDlvSiNHWoZEWx4glaNkOkAdOhpRvWj4W++bm/ZN+Cw==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(7416014)(376014)(23010399003)(82310400026)(11063799006)(56012099006)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	C+3YlPlzEh9kdGplEFyAUcMmkn3nUOdwFGDnP+ZYT642Pk7XNKas5dpv3589YX3nk/auKqxvsQuvEB1zEcQPsSBQC2yHGF+aknuXt2exyXjqCaI9GxA/5WHD1pEEgoWUuTfEzuEmwLe6Js/jbNhR4q0hgQMMmFJ5xJTlRTV6nMzB+naPmaGhx98OH914+OBDH019pwl0v5dgAtMm19FGfrBVoqPo7wiH5+n2OINc3P7az1JGiAIKQnC/AvSNIJ/DsaVTGLSJ2/HUxhr9qIe1Z/VciiLbH28fwYIkZyjB5DzZhvge6Pq824Gd5xj5+Alj4CK+t8p2KtzRDOfkszltHP81XIalthYmr+9/uJyEm9XvZS3T6nuWoc/VKAehorvqmBHWa5wn0itw/P/h15EqxfJ12tfb/2D4NvINNDCEoTIiTj3EOYws2B/w/Uq0vJZL
X-OriginatorOrg: phytec.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 16:10:29.0248
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4947259d-ae55-45d9-34d6-08ded39d70eb
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509F8.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5P195MB3382
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.com,none];
	R_DKIM_ALLOW(-0.20)[phytec.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[nmorrisson@phytec.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316144-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:afd@ti.com,m:sashiko-reviews@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:upstream@lists.phytec.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nmorrisson@phytec.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.com:+];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D092C6CEE1C

Add device tree bindings for the AM67x based phyCORE-AM67x SoM and
phyBOARD-Rigel.

Signed-off-by: Nathan Morrisson <nmorrisson@phytec.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
 * Use spaces instead of tabs for indentation

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 69b5441cbf1a..ae47190d1f82 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -222,6 +222,13 @@ properties:
               - ti,j722s-evm
           - const: ti,j722s
 
+      - description: K3 AM67 SoC PHYTEC phyBOARD-Rigel
+        items:
+          - enum:
+              - phytec,am6754-phyboard-rigel
+          - const: phytec,am67-phycore-som
+          - const: ti,j722s
+
       - description: K3 J742S2 SoC
         items:
           - enum:
-- 
2.43.0


