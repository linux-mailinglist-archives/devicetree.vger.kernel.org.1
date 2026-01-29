Return-Path: <devicetree+bounces-260915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IpfFYZ3e2mMEgIAu9opvQ
	(envelope-from <devicetree+bounces-260915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:06:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B16B14BD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E3B1300820F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2730D287257;
	Thu, 29 Jan 2026 15:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XUu5KxHI"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012024.outbound.protection.outlook.com [40.107.200.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DA02580D7;
	Thu, 29 Jan 2026 15:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.24
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769699176; cv=fail; b=VWBWY2etReL8eZe7hlNvLqRLzL/TsEXn/lgc396dMfqJIpqvEbToiBgKYAgWCFZtAq+mleK6Jh2n1IwFm3lWvgDsLFnRoHGL7L1vqjsv/tNbIcxq8/Gg2aUQbp9j5TuR+LgTqHEwDT5qwkBVrRuMwMZDavPYgdyIKgzYBtD7Ga0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769699176; c=relaxed/simple;
	bh=Z1usP9w3pqDp3hEVBds15JRgUm0CfXJCNWFA6LWruAY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BEkdiM5zkjdJTJxemEvZcdVcUd4g3LX5DtfEmk9oN8bZ/3P55PSoGMJC+UwBzYxftkAbw+yegX9mcqkIdnXJpDk7Kz1mQZaEPWuxgwJFcW/RUcIVnNb6a0aW/pQnzndS0ElPWe1b2oLbz+AOqR5U+mKaVLDw99WaUL1uzCVBIZI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=XUu5KxHI; arc=fail smtp.client-ip=40.107.200.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SVRaM9qAOuHcIdukllP9Piq5FzpQI6G0i3ZbLn2MSYbQ/W0yCyc5mIsEX4mQqGuv8ne+551xTqxts390igw8saSwbDcc0onc6RiPV2hUXGCg5z7KC2TFlgg2kj4Qn4dWt72j6M81e1GzNsZIqVjcJdqyz0vKKfs2p5FH8V1u028+aMf8/si7sGTqw8mD9iRb4FHUNo7DghY/gbuRvCoqmjiIahdGuIUAuZ8uVw6h2s7zUby4zLUTrEyhbLgByiXiGEKTbMbWUd+5G/Ak5oI7f4IDwAAhJVWDmO+dLnt3Jo5209lyrrPjUhu1fQb63NbhLi1EAu+unpQfGWYgF88/kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBq7k1WGsvFnYB9XbAotnXSzwKQ6pNeb6I8dr7u3WxI=;
 b=wWh0vQPUCNDfJehb0qXsVKhPr/6bizezjgl4qyhTpViSlnLiT7AAuFDn46xyWegUUlGEpcB+w7DtkfhuFm7/uh/ozVH3Fw+YlO7TnUMY8DMJGfg46loRcMZ45E/k8xpMOAiLIulEDXIn6zbg2dJObwd10ZeQbyDAXQ/RpUT7PAZbIoxpTl2eBdvIpdPUcAuCoZG8lpn2ejWej7Aszd6W1keesSmoIY+IA04CQDafdCzLqqIpaEMkgORLRTZer9dfEdfkRaWlOXjh7wciB0hXKlvh0+er4U1ICyfdPPlvAvquppvygV06z09CKoNh6B9R8bnn0BNHpHk12v6o5t9d+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBq7k1WGsvFnYB9XbAotnXSzwKQ6pNeb6I8dr7u3WxI=;
 b=XUu5KxHIh+2OTHeBRg8YM4pfw5YYSnxisrgpbJXpdp+WRmnkcwiTRP3MPgojd3Zpyl40r8FTX+0yTyeofHERWuJCQym4c2WajpCHw30O0hzVK3lq9Mm/w+Z1Zjs5+eUO83vo480NgO+PGYMzAunBGblf1ps5fpb9CvpHIghjihk=
Received: from BYAPR02CA0036.namprd02.prod.outlook.com (2603:10b6:a02:ee::49)
 by DS0PR10MB7956.namprd10.prod.outlook.com (2603:10b6:8:1bb::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Thu, 29 Jan
 2026 15:06:10 +0000
Received: from MWH0EPF000A6735.namprd04.prod.outlook.com
 (2603:10b6:a02:ee:cafe::67) by BYAPR02CA0036.outlook.office365.com
 (2603:10b6:a02:ee::49) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.10 via Frontend Transport; Thu,
 29 Jan 2026 15:06:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 MWH0EPF000A6735.mail.protection.outlook.com (10.167.249.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 29 Jan 2026 15:06:07 +0000
Received: from DLEE215.ent.ti.com (157.170.170.118) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 29 Jan
 2026 09:06:06 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 29 Jan
 2026 09:06:06 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 29 Jan 2026 09:06:06 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60TF61mb121208;
	Thu, 29 Jan 2026 09:06:02 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<devarsht@ti.com>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <praneeth@ti.com>, <vigneshr@ti.com>,
	<s-jain1@ti.com>
Subject: [PATCH v2] dt-bindings: display: ti,am65x-dss: Fix AM62L DSS reg and clock constraints
Date: Thu, 29 Jan 2026 20:36:01 +0530
Message-ID: <20260129150601.185882-1-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000A6735:EE_|DS0PR10MB7956:EE_
X-MS-Office365-Filtering-Correlation-Id: 42b2fd01-377c-4844-ead9-08de5f47ee46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013|7416014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?zmz2kldZBzLDL7P5l+Xptx0yz3r7eoBMSPOSxisB13UHI/yHgjWL1xDxP8r3?=
 =?us-ascii?Q?KchRYjQcfez1J9fS4qaQy8+Ygl2SOVGdbAFL5n1XV3j+HCa8jrh0HLnyzY/A?=
 =?us-ascii?Q?CNfCMPPVyL9GBo5kUBhqWYFMPG+F8o6DH5F1wrBni+f5WDZmkGyOC3ue5qR9?=
 =?us-ascii?Q?t/1HgTXdJAUF4RvK4hDgNN1wQDEey0MEOseX1EvHK3n8vfcrVsTq6NpIiGp3?=
 =?us-ascii?Q?fIIEtVQObkSCVEyq+RIgDGzLbJdMQJNuN1wyvDLyYO0VGvqFlktA4B5/ESoQ?=
 =?us-ascii?Q?DAV8pk4UuTnOwyo+2RbZ9U6C6uDuJEIowj2yqtmYLc0AE5NI1qok4HhpVBF6?=
 =?us-ascii?Q?KOGm/QYpsc/Ta5dzolQgIr/Zl8tGxQKbDiUVheivygPATkWscjng6aHExhfG?=
 =?us-ascii?Q?xeWesDLBz/76IDjkBG/6lMXh7mR1OVy/moqoDvwBO+8d3PGaVLWHGnYuA1eT?=
 =?us-ascii?Q?hU9OkqEi3lTGk6YNTrhSauvZfR4/s8k949mKht6/kFrH7yorYBhYvO2XlSc3?=
 =?us-ascii?Q?TIfUZqw7NokLU1AC4SS+wGRHnFYp/jDvjBo0QFk4tEj8u81BZD2L57002TAV?=
 =?us-ascii?Q?na7qfGlXBMEaghGgvJ4n6TEGDOqZSQ/T292R6E/n5r9hMs+3NpJoc00zSsne?=
 =?us-ascii?Q?WZ3JtEg7VpOw0Z9U8kUn9h+cZZ5e6Mfx+eLL97YSZeZFKkfOJFmSwimHzWBV?=
 =?us-ascii?Q?hnlE8TB1IH9sLYG3rrXhmiiJ5uE4ILZ6/NU9U0dFTNCHp91T52DVFbMYOToK?=
 =?us-ascii?Q?FMU3rHD1wrYnOu6mrJfP+WeqhfanWkDer8OuNqsN8SvuRMaYviJmeilu1kqE?=
 =?us-ascii?Q?IuY0WmwlCqhPJdhMDLI9oqpy9rmbRCuLStfmbvYgSwyDyWeoNvZR+Ch1Yt2b?=
 =?us-ascii?Q?WiS25MBqCo1ChXUcXEChm5J32EDe0WYMBlH3bjCybbFM6XIEAvhVU29IAZr1?=
 =?us-ascii?Q?iT6FrZ4P+UUFDTmX90mbJqOmi1HOznzpSnDHcRzottf2HhgGQRgfmod3jlvD?=
 =?us-ascii?Q?InfzO7w9jVbjoGAX/AKhldYrWqKIYmSXLqNF4cr6wsUW3UqZ2C+Jnj5rWtFP?=
 =?us-ascii?Q?kOyYXADvmBjjK8wnZMWrbhoXBMhCpdFDWcOF0h8wFgmVzE+AXY8oHbYTiQ8z?=
 =?us-ascii?Q?Omo5nCnVFEixoD+rs3jTxgrAwc5STVvRaN1u1qA1HCEjOEvNpQC+pIo/ubAZ?=
 =?us-ascii?Q?3EAgH7BD86pKD5q2gpB0u2UqhAby7m3Sb7UAeQem+lze2kbNPO7PrIaPS01A?=
 =?us-ascii?Q?hcFT1+av/ZGAK/xfzUlMAVVD439YvCNJK2j8qZamyRufmif2z5S5RO7Xn5+0?=
 =?us-ascii?Q?KvOPojGR14me7S+rH7KTS5VqnGB/ZMmF5CapMItHJMBl8iDlVhOFgvJ7Irol?=
 =?us-ascii?Q?3B9XMGwbgU1ihYvO3f4Hjb8+ZVNuHQLy3xYXukAvHunPtGpXV5N5Y+sR7Rc9?=
 =?us-ascii?Q?R/jJq4qlvss5+QrV+5OsdvmbtZ7HFSvpS5Xqsj2f7NGcbM752LmGhIOndY3X?=
 =?us-ascii?Q?e9ghKDGWR+6ZV76d9eDmO/8oB8Jq1kQSf5pkYmLOmNBFzPgwFvdBSoxWjl6Q?=
 =?us-ascii?Q?qvkZqWra8Q7svVy0wy1d2OJdVJMR/RxxNH+fn6dlt165ZiXGSGapkDYP7ngG?=
 =?us-ascii?Q?TIUC5WqltU8kupnqfuAbTafqOGP7Q/+R2sGrdMlqyQ8FXOWb1zrRbia+t6FA?=
 =?us-ascii?Q?k8yiZSum1gBoPgxhtv1SiHszh+s=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013)(7416014)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 15:06:07.7124
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 42b2fd01-377c-4844-ead9-08de5f47ee46
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000A6735.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7956
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ti.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260915-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s-jain1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:email,ti.com:url,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.0:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: B4B16B14BD
X-Rspamd-Action: no action

The AM62L DSS [1] support incorrectly used the same register and
clock constraints as AM65x, but AM62L has a single video port.

Fix this by adding conditional constraints that properly define the
register regions and clocks for AM62L DSS (single video port) versus
other AM65x variants (dual video port).

[1]: Section 12.7 (Display Subsystem and Peripherals)
Link : https://www.ti.com/lit/pdf/sprujb4

Fixes: cb8d4323302c ("dt-bindings: display: ti,am65x-dss: Add support for AM62L DSS")
Cc: stable@vger.kernel.org

Signed-off-by: Swamil Jain <s-jain1@ti.com>
---
Changelog:
v1->v2:
- Remove oneOf from top level constraints, it makes bindings redundant
- Remove minItems from top level constraints
- "dma-coherent" property shouldn't be changed in v1 itself
- Add description for reg-names, clock and clock-names
- Add constraints specific to AM62L and for other SoCs within allOf
  check

Link to v1:
https://lore.kernel.org/all/20251224133150.2266524-1-s-jain1@ti.com/
---
 .../bindings/display/ti/ti,am65x-dss.yaml     | 93 +++++++++++++------
 1 file changed, 67 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 38fcee91211e..dbc9d754cf9e 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -36,38 +36,18 @@ properties:
   reg:
     description:
       Addresses to each DSS memory region described in the SoC's TRM.
-    items:
-      - description: common DSS register area
-      - description: VIDL1 light video plane
-      - description: VID video plane
-      - description: OVR1 overlay manager for vp1
-      - description: OVR2 overlay manager for vp2
-      - description: VP1 video port 1
-      - description: VP2 video port 2
-      - description: common1 DSS register area
 
   reg-names:
-    items:
-      - const: common
-      - const: vidl1
-      - const: vid
-      - const: ovr1
-      - const: ovr2
-      - const: vp1
-      - const: vp2
-      - const: common1
+    description:
+      Names for each memory region described in the reg property.
 
   clocks:
-    items:
-      - description: fck DSS functional clock
-      - description: vp1 Video Port 1 pixel clock
-      - description: vp2 Video Port 2 pixel clock
+    description:
+      Clocks used by the DSS. The number and order depends on the SoC variant.
 
   clock-names:
-    items:
-      - const: fck
-      - const: vp1
-      - const: vp2
+    description:
+      Names for each clock described in the clocks property. The number and order depends on the SoC variant.
 
   assigned-clocks:
     minItems: 1
@@ -195,6 +175,67 @@ allOf:
             port@0:
               properties:
                 endpoint@1: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,am62l-dss
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: fck
+            - const: vp1
+        clocks:
+          items:
+            - description: fck DSS functional clock
+            - description: vp1 Video Port 1 pixel clock
+        reg:
+          items:
+            - description: common DSS register area
+            - description: VIDL1 light video plane
+            - description: OVR1 overlay manager for vp1
+            - description: VP1 video port 1
+            - description: common1 DSS register area
+        reg-names:
+          items:
+            - const: common
+            - const: vidl1
+            - const: ovr1
+            - const: vp1
+            - const: common1
+    else:
+      properties:
+        clock-names:
+          items:
+            - const: fck
+            - const: vp1
+            - const: vp2
+        clocks:
+          items:
+            - description: fck DSS functional clock
+            - description: vp1 Video Port 1 pixel clock
+            - description: vp2 Video Port 2 pixel clock
+        reg:
+          items:
+            - description: common DSS register area
+            - description: VIDL1 light video plane
+            - description: VID video plane
+            - description: OVR1 overlay manager for vp1
+            - description: OVR2 overlay manager for vp2
+            - description: VP1 video port 1
+            - description: VP2 video port 2
+            - description: common1 DSS register area
+        reg-names:
+          items:
+            - const: common
+            - const: vidl1
+            - const: vid
+            - const: ovr1
+            - const: ovr2
+            - const: vp1
+            - const: vp2
+            - const: common1
 
 required:
   - compatible

