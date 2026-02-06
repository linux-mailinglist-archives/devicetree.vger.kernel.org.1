Return-Path: <devicetree+bounces-263497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAIQIHBAhmmFLQQAu9opvQ
	(envelope-from <devicetree+bounces-263497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 20:26:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8AC102B61
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 20:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0F383064EBB
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 19:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E1730594E;
	Fri,  6 Feb 2026 19:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="URINHYAg"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012051.outbound.protection.outlook.com [40.107.200.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9621F2FF161;
	Fri,  6 Feb 2026 19:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770405558; cv=fail; b=msX3l3Fd5cujm4WZ3klaS//e8RhejEbOom+YnT8w4LnOZ440gXQ5LmsE5rsuGuY1zq9tGJR81Xc/4TpZvcCiNpMUflO4w5wnxVXdaUxWLWSJmJX1PCqC6eABS8tdpUw3yka5cdm+PjWw0kPH7WIm7YRybL18AtDPTaYhBUBPsLQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770405558; c=relaxed/simple;
	bh=bnswteWQt8YaFx7kP0aLzosyfCSGZlfC7tOGZRfv9gQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NV7C+h4+h2H4N3EaGFhE9TiPVLYJfjFNEwhT8eb+eDeQuv1SBRlhZrCZWZsoaYxsAOCDbAZLFEIw4OjPNOtPKRDbQ9MYhesHnRIzVSFPF+L9I/UNQbUJ5qmQqVgv8PnUmK8xqEP54UWgaZvVedApD5raHsKMUaIJgohn5tXBHSc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=URINHYAg; arc=fail smtp.client-ip=40.107.200.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z1TD30qvhr+f9EzmnX7K/K8kuBEvjCieLerBcMQDMcH0TWGyI4SZwLf/441OAA9+ofA9lVJ0gd7I8nAQGdB2kF2ErcHU7CYcSfe7kd4FFFmOzwNgK3XlUPBxmjFPUKpnrYTxm5aJBC3a05kpcDxh60714261oXPjEBlrlCjdST7CsicHARf3IbgJBLQJj+w0Hmp5eBClq00aTHQ45yVLT3b5bkrXqjk4J/nlEt8Q3sZFAkxOsOigLNyrs5qUcDgidwoECk5+O/JWqe3LcRLO6Wb6kgcvgAmWAKJz4MkW/b7yTvuf63+x7tgOff3rqcfa5X0VCo1WKZgcdfOpfJntCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ht9p1aNqLGbr+lS6/xqx9Tx1QwH/JPls6GsfzVUtVQ0=;
 b=pxPgeILZpfVIP/uOdDRSR6ux7wBcLxQiTzJSVWbt/iwQQt7hnswFhV0ggXxt4OzfHzRLfkY02il4fH7fWcKdbp40w2NpzEmmTjYiFewhvpkyz0M/6pLaLpCKLNmwWntBefu3zyeWzrlAdWxVMZ7OqP6fj7+Xoe+nKAfGms+gdqTlUHN2RoqhQ5u4BLBhnzzb9r57gSVdDbJJoHlh5A52F2w5+Ju9zuP+ug1cbC8izxgiky60os/xdTPFbm3Kr9sVFTLPASeviZJetSCleVyVY677GALx8dYEvAZcVjL1RWpZrDl7mumoNOb6V4epw2fBQwfJTQST7AmqAcYbBVGnCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ht9p1aNqLGbr+lS6/xqx9Tx1QwH/JPls6GsfzVUtVQ0=;
 b=URINHYAgkUjdivDHO54ZewRaYMVRpSBxBIDQr+RWI4V8vK/XAkjzmueLHGqZgmkYLiWaalnUOF3bekUUIPRjx70M2rlE+a10h+WTnkK6TlsZa0fN1zRkj9P1OjT3ozU0zGV80z8Up/ByXMW32IEs51Xgq78UgU7T4RxFJo4tVXQ=
Received: from DS7P222CA0023.NAMP222.PROD.OUTLOOK.COM (2603:10b6:8:2e::9) by
 LV0PR10MB997662.namprd10.prod.outlook.com (2603:10b6:408:33d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Fri, 6 Feb
 2026 19:19:15 +0000
Received: from CY4PEPF0000EDD4.namprd03.prod.outlook.com
 (2603:10b6:8:2e:cafe::56) by DS7P222CA0023.outlook.office365.com
 (2603:10b6:8:2e::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.15 via Frontend Transport; Fri,
 6 Feb 2026 19:19:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CY4PEPF0000EDD4.mail.protection.outlook.com (10.167.241.200) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Fri, 6 Feb 2026 19:19:15 +0000
Received: from DLEE204.ent.ti.com (157.170.170.84) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 13:19:14 -0600
Received: from DLEE207.ent.ti.com (157.170.170.95) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 13:19:14 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 6 Feb 2026 13:19:14 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 616JJEK71401656;
	Fri, 6 Feb 2026 13:19:14 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH v2 1/2] dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
Date: Fri, 6 Feb 2026 13:19:13 -0600
Message-ID: <20260206191914.52878-2-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260206191914.52878-1-jm@ti.com>
References: <20260206191914.52878-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EDD4:EE_|LV0PR10MB997662:EE_
X-MS-Office365-Filtering-Correlation-Id: e8cfcfd6-8751-4e80-2b55-08de65b49e0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?B7CPan/SFJn5E5BrCtVU/2WgQYl2kqVaQh0Osic5OUcf5w7t5+N7b1plTAfR?=
 =?us-ascii?Q?3e9IYyC2V0IOgHqHSaYRxxakdFqBEt7WTquaBA9Veo89dsLlW5dwa1Ude7Ux?=
 =?us-ascii?Q?IckZLCcJAuYyHrwQSPGZu7G/wUZ6h7rph5ozoBoHNWyaFA6J5g6JvOwMCzyj?=
 =?us-ascii?Q?LDNQOo1nFJHzbB5WdBVBXKYoq3MA6lb8+5TwM5ybws5bp/z0Xa1653czOmz1?=
 =?us-ascii?Q?DxoAHDXU3lQR82CuczaIHqRJhnrKeUPWcwMOdmhipNsTTJiC2lrtEtWkZ3hn?=
 =?us-ascii?Q?P+cDdHyhQ6WqsTDTt6awH0TZlyqW5EDL4XsvBb2YxD1O0aDNd4wntK8G+h0G?=
 =?us-ascii?Q?CEsgozTg0iLq91sFrrK1l8rn/Ko1IBJklI8gdjf4ibrqutjG5ZpHVCW2pOrN?=
 =?us-ascii?Q?cROaOdqnvUvhfr5iyDzq99AwvGBvEefMckv3TNf0e+uXKUG9/ooeApplElPW?=
 =?us-ascii?Q?KRtgfwAUtGti9zZvj9yxFZUInw1OQVBcSdYqIDj/QX5TEYdSZwaaGo7EBipe?=
 =?us-ascii?Q?ydFyMPiJ0cJlV416fXA3jg4NzcXGzWVKrp3bmFA6NV0FK37Dyv62+3d/Yrqa?=
 =?us-ascii?Q?m6ff6594uilqQ/NKo2dlLM1/cOOuS9s3rzaJ9V76b44l49Bp+OnAx9b5a2GD?=
 =?us-ascii?Q?Wlhdcb1Q1vhP5efyJzvAm0f69XrtC7kzoe1aF2g/vKEfLndJP432JtcV93hq?=
 =?us-ascii?Q?LkUEDz/7hCOZdOsAW9CxdzU5UzkO9UETgX/K4qpZVpnO8tSEi8PQ9viANLYQ?=
 =?us-ascii?Q?NkzsXClcW2W1c4+95atJsPBZMWLCfza+rXIbTJLeRLvVPGFTTfhd56GmiVVz?=
 =?us-ascii?Q?MGCCioONWGsifpb47sRSEe7ewXvu+nm4i99QU4NUr76PaadtzWuaFZ4y778w?=
 =?us-ascii?Q?CtlKbr5qpyBcbcsyny/s0kNry+baO9GoWu9u0cZPZ3rmHNy/cFgpN6YILpfB?=
 =?us-ascii?Q?XW2QnrHgegDv83NW8I+6WQXBkm9OEfAp36eTpfD9bo6fjmoSLD9cp2xJjnuC?=
 =?us-ascii?Q?m7i9wiuJ6snMjdDIhKrmm9YW+AcNHjTusK1RF4cdZRavuhvKEpXp2GCUi/Xl?=
 =?us-ascii?Q?ylRnUhd8DCe6YIedSSsS1JHKHIqoB6r7JuWMIlplpd2sUEw86pue+DrFcecy?=
 =?us-ascii?Q?BxrWOrosnHg8k1W4v+XalKfeexYNwrif8p6Nrh3gIQ/qERFXkanxzEvPiE8Z?=
 =?us-ascii?Q?vCYami6zycqIFm06kWv4eeKhycjJySuZ6sCFq84NRx+okAUFSlecyStx9x4z?=
 =?us-ascii?Q?MiKxtOzwz6cFalEK1fR4kzzOL0KND5c6XONkf53KFqC1EpDQQc27q68ozlqM?=
 =?us-ascii?Q?9ddNAgK1RWEK5LFfKMe+WdlW99BFtSUFVyEQTHcRtaOsNmgoTab+Gh4Bzuca?=
 =?us-ascii?Q?mZEcJ0aVBeUU9gFzHIaEiGEfnxyl+JqAuwcKep+p9WoZfL8N09VG6I1Nk2aG?=
 =?us-ascii?Q?H/PsLWHzEegLo3nOyMPuQFOrWwPjGEPu8NN5qiL94b5Me7x/1D7mXGyeQJQ0?=
 =?us-ascii?Q?YLfdrRY+cAi7A8xbpQ+MdIqOB5R0HmKUUAyxIw0DfQdQKbEacdGdaHDDFwxN?=
 =?us-ascii?Q?8wfmJBYXcc+nLdh40AZML/18RfxybgAMh2v7ntY0uPeaPLKCLhJBgzp/eQxu?=
 =?us-ascii?Q?WZ0MuvF4/jOaBMPo51vTmP6OHUtKoEffS+t+dmxZ142TY4lDyS+FV+p+hbgU?=
 =?us-ascii?Q?EVT7RA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Rz/E4tfC4QhWtHNmJJT31DLkBcnP6bxWuVaD29VujNxXilHpZf9SsVYLUYj5FjjxApPzFWtkx2dTZviG+luCzfdpxXugyo4rEzCbztt+uIQBCCRYowWia4iuIIGgSKhS/NJeGiTejdXFMQ0bwtUxEw7wsWKHE9E6/PzUE80sUSk+4WLKFY40BXse+xN8zczd36l6KUgqtxqztRGqhYUzwodyTwlttnpJz5CSlHvcLiOdf4dUwJ4hWZA2nFvaU3XYX6c/Hx/8DtoaMqaeR9x80qA+L0crvQ5oVuxKVV4x6E6eyF/3C4bi1Eo0XbuvDNjxTcu1lPCl6L41es8nyhnLh4S5eiOeaD/CjqoAn5kLl9nSDIb6uKmDS2gQWze6q30ISNc0s/9ocI0fJpmFGhmBSXjNv7peFVsDYiwDdLbha8t5Qx/egfkARF0B7jYYz7C3
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 19:19:15.2569
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8cfcfd6-8751-4e80-2b55-08de65b49e0f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EDD4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR10MB997662
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263497-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: EB8AC102B61
X-Rspamd-Action: no action

Add optional nvmem-cells and nvmem-cell-names properties to support
reading silicon revision information from alternate location using
NVMEM providers. This is used on AM62P to read GP_SW1 register for
accurate silicon revision detection.

Signed-off-by: Judith Mendez <jm@ti.com>
---
Changes since v1:
- no change
---
 .../devicetree/bindings/hwinfo/ti,k3-socinfo.yaml    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
index dada28b47ea07..58cc937e13351 100644
--- a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
+++ b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
@@ -15,6 +15,9 @@ description: |
   represented by CTRLMMR_xxx_JTAGID register which contains information about
   SoC id and revision.
 
+  On some SoCs like AM62P, the silicon revision is determined by reading
+  alternative registers via NVMEM cells.
+
 properties:
   $nodename:
     pattern: "^chipid@[0-9a-f]+$"
@@ -26,6 +29,15 @@ properties:
   reg:
     maxItems: 1
 
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Reference to NVMEM node containing revision information.
+
+  nvmem-cell-names:
+    items:
+      - const: gpsw1
+
 required:
   - compatible
   - reg
-- 
2.52.0


