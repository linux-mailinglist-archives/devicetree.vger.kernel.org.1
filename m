Return-Path: <devicetree+bounces-262802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOsbD0a8g2kgtwMAu9opvQ
	(envelope-from <devicetree+bounces-262802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:38:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97612ECC6A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 22:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8AD6300DDDD
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 21:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A59039525A;
	Wed,  4 Feb 2026 21:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="TzUVn6l1"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011028.outbound.protection.outlook.com [40.107.208.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5921BC46;
	Wed,  4 Feb 2026 21:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770241071; cv=fail; b=nsneaah5a6cMjhGraqAnC7uPimUWXAEqDgg5s+K6yKujvR2udIRKUzHKi64ij6xAkFIr95jQ8Iz3okfigzTsaq0+8R77457DPFGuCLpNah5MIun8BqOYub9gbZ8sa+QHIAJQ2m51FYghvwEeRUZFO77CvxW3aV2tvFQdkcjotWw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770241071; c=relaxed/simple;
	bh=fvvayCCgcmU4fbBMQXGoYxl5i4fktnKsw8/vHW5kWxc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UpNPsLY+daPM1ZXVhwDiyoOBPpFXMIQ0Yua+N72JBN7Wux5a6ycFC3sJYOdbRJTVsM4OpXGK2dS+1E4QA8nWXKY45CPEzuyHbmEdh+hzj7TvNlW9B1r46dYX0Mu4uRFNH8Ya+fRgYpUsay0sJvZgswCpihVUxE9FdtWC+7R+ZCo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=TzUVn6l1; arc=fail smtp.client-ip=40.107.208.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L/KmYIPyJE2NDxbvLSyWFG3foAr4iJ9Tvd1YW9wUXPRLvgno7MEhK2xXhrP42dojHg+2wRG1Kxsnz5SZqyRp1C3H9OHa6QODuvdxfzfSmF5dr73uMm+vnj6P25eUeW2sbrRf+2zjP4eLGA9NpgDxJptkuOs+7kLL8i1WQp2Ny4kmoVhQoqDEpdiGEYxN14/bC9efG9k/K2Ek2vW7pjiJut1otvu9UzZYNJSNjX7nVE4edfJb66a12MarqUJRE25q3/qfI/ScGCgL5GJQ/0O6kq+7zitQkq4vpZQHf7nu0YqAn1no0mUOwQXRJxj2XpyHHtm28IgbNjgFBeCHXBaNXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVRUuiYN+gi6u5rd6F59xpCZXUbCxQY4osjgHeFqudQ=;
 b=L4PNSvh/fxuXHJ4CS8tIFKahyAqV41knR9Spx5qhd7GKUOIr+QTIyZm3EKXcutr1uEuKDod422XVRq80p01SE52c81RiWaWh5p72YLZ092Dk/zy39D/ZvRIqa2iEp00dOw0zmXxh3gRE5myEIFzGA8L00gwWbjGoLT/G2rp0sD95RJLG/20xuTcAIMT8V3FGJDvAYMjh3m1Q9UgO7Uoc17UrH6WgqHBdqS5y4aiQinxbsTJvse3jfZU8z1vmXNht1BbKd70ftsq2SV7LIIYokM5G+jP+1JuoGevNfEy4jR7c9ZibtftUdDo4hqHRU84qhDecFfoF5vg3e70dtJd5lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pVRUuiYN+gi6u5rd6F59xpCZXUbCxQY4osjgHeFqudQ=;
 b=TzUVn6l1CelXeqJWB3nNYQOtO764Zi4SZBTTkKcJga1CM3/Ja+288dRX/4l/yRVu4wNcVdpu3kMBGvcE8mIt/j9Uw7TkazivsUUxfeuqaQpOdn7i0xQpYgqohz/LVUdSL3XHmER+mNkQeo8HOmiDcEMuf+Ct9swdAjI2OTXMNKE=
Received: from SJ0PR03CA0133.namprd03.prod.outlook.com (2603:10b6:a03:33c::18)
 by CH2PR10MB4277.namprd10.prod.outlook.com (2603:10b6:610:7b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Wed, 4 Feb
 2026 21:37:47 +0000
Received: from SJ1PEPF00001CE3.namprd05.prod.outlook.com
 (2603:10b6:a03:33c:cafe::50) by SJ0PR03CA0133.outlook.office365.com
 (2603:10b6:a03:33c::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.13 via Frontend Transport; Wed,
 4 Feb 2026 21:37:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SJ1PEPF00001CE3.mail.protection.outlook.com (10.167.242.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Wed, 4 Feb 2026 21:37:47 +0000
Received: from DLEE211.ent.ti.com (157.170.170.113) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from DLEE209.ent.ti.com (157.170.170.98) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Feb
 2026 15:37:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 4 Feb 2026 15:37:46 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 614Lbk1R2231525;
	Wed, 4 Feb 2026 15:37:46 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 1/2] dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
Date: Wed, 4 Feb 2026 15:37:45 -0600
Message-ID: <20260204213746.2589028-2-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204213746.2589028-1-jm@ti.com>
References: <20260204213746.2589028-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE3:EE_|CH2PR10MB4277:EE_
X-MS-Office365-Filtering-Correlation-Id: d5bfb533-ce2a-4598-df41-08de6435a399
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?rCcIux1Oxn6msV0LTVXS6ghln33npSz74wfQuAdzGyTnHBs/84IBl1TWbzb2?=
 =?us-ascii?Q?29qt9iq2dpipje9a9JnnKNfvRWe7QpyoYGWXY+QfLrUE6Ldm9/vFGAKqgfZs?=
 =?us-ascii?Q?e39YRAssUSoZN3LvW7KEUkKRWTLKugh/wLqWSplXXcsC2pZRFMimGAcqw3tw?=
 =?us-ascii?Q?BiYcGd9bAJHXhA5TPxOuIpNVRNCiAgUZlJzRuqTC70PSH3zSt93RbenJI6xJ?=
 =?us-ascii?Q?JdhsEbHdhd0ffRGogcKoJ+cpNWe7W7ddglD+6osybaX5i0s9EE+Q5cdg/K37?=
 =?us-ascii?Q?BA0jnIf+ld4Nexkl2MGDFdJT/lFAthzoa6cXFWbpz97xeeg/cqjzmGqszxPR?=
 =?us-ascii?Q?VN7hHDdneYsy041bMkmBWYZ66w4qtOY6PXDyRIn2aRTWfao+dI/Svy5oXVqI?=
 =?us-ascii?Q?UUdD8NpJNmhCs2jKFFDB106exwPIcQphV8ewgVf6RmAziNvowOE6ni/iOuWK?=
 =?us-ascii?Q?s+i0fF+SrEFm+fZDgxAK35EC2mE9VMzr/dvCrOkEbEyYnjA3Lx5Zj7yvT3UY?=
 =?us-ascii?Q?MdKmcmZFpa8ws3gqA4fOPKN3DJQkScV1nayAgF443NK08AI7Kl6DucqD3tAX?=
 =?us-ascii?Q?1O6zsv0gO7dTwYgPIRLFWdMdXGmZkzucACyO6yGgBQV1K1GJnF3iUP6DDih2?=
 =?us-ascii?Q?NgH4PHa7rP8ZcwnWRBTbiKA4tDXFN7XeCmkh4wHst+w8gPoe6cfR446hhShx?=
 =?us-ascii?Q?7EwpCrUcPjmYgLKfytr1yWNFcNrpAgHCfQ24GmN4GnbhNcJuKa+CgwZE3SkW?=
 =?us-ascii?Q?JYj5fl9l8eIYTde1m5HKHN+4ySTHym9EoWVbpnNxyxq22yyJSDzuTkJNfTtC?=
 =?us-ascii?Q?FFHm7veMIjNJA66q0kqwpmv2jZin6pGtThii5tbFJJ9/bxmPszFPD1jXLJxf?=
 =?us-ascii?Q?X/NAdYDTwOEwycFrxCAmnmJbs5CfHCwxFbC2QUU901yq8Q1N2XIiAneT1A9h?=
 =?us-ascii?Q?KPZO/K2X+xe3pQ1J2/UlbkP7CwSO1blN66oO8dzpWEocqQB/xZ8hAsPLtpxG?=
 =?us-ascii?Q?Ticp9Zf+r1Ik1pdyUIahc543LE6MfCDnV5+aL50eBYdE9qSEbbCuuWj+me32?=
 =?us-ascii?Q?cKiHbvyUMxeaQsYfS9ICDiTgZql26WTElMyRnoiIFUvj7ZTUIzTbqhbGkbtN?=
 =?us-ascii?Q?GCV2c+z9ZtlUu9vIFxBK9M7fqmeof8qbgPWSW4ktUnQvGsVlRae4Q45gtWwZ?=
 =?us-ascii?Q?P4A0bXzd/nE2mCGe1mpuKTMgTHCkGhddP99mSQ0YFP0Wu8pNW/IBt2qXWHiR?=
 =?us-ascii?Q?v/a6Gqakcdru8q1Vv9+3Y8zAcesd3we/h6dF2BkIfnZ/245pHDz9dWRmHQwj?=
 =?us-ascii?Q?ZzldzptQ9pOH7byVPh2kS1KA89e/E+uxOgdMvckSPNkUSuKuxTvHz6VzNAkK?=
 =?us-ascii?Q?EfdIpuJBZji7Im/ClZUiyPZWXe0AI5HwVnOcoE7K+Jkf0cE0mdt/MT+EuOKS?=
 =?us-ascii?Q?CJWmSnhERlJs3NIlrmkcWSvpMO1LkJccB2kx5sAAbWVWQyuvtMcnw0nCBir5?=
 =?us-ascii?Q?RQS0XFJnEzq85yYKjHh2chMhddTK3NZUdddJJmeQhr/uPmlAe50a36ozchI2?=
 =?us-ascii?Q?QJqJuvqbcCTeeXgpEmUlHGGnzPhZ+WusO/BjQxRXdUX8nLynLJIHswhu+OlY?=
 =?us-ascii?Q?EZ5s43IOyfVEpBuiyf5wXNgrd0pCmCLz1hmcviVfE+WOQFq6dsXs89yyj+HC?=
 =?us-ascii?Q?JibtqA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	WA+g1ZpEAA2niErsa+mX0hkUBAdS9q26/xRJOHtq9sI8eT5fvpiPQkV8KnnuJ2ANRjoigqbmvTZceoRr2z4CG2RiRvCG/tWK95j3k3z3rX/TJF3SmFeW9+Av+FxD+FIdMZNaQ+jHO0tBNhNRerVllsd8MJhCbNh/aNA6O2tzwUEen6HSNN9Ixanu1v0ZtTTFNFdh8X3RE7/riquOLT6tOjvYawLYL5rsx4eKWkl1vNGlKmri4aMPl12USCC1HqaSNA0/HrVAnavc2Yem0VT7TokpVxn9AWi2rf4GcTRTILN4v9IHBhvznj4JnxYrZPKQT2fF5FeeYW+43O2QUST17kRfDVa7rhJUcJpmCSgEA454knXUaLYunZm+Za7S7j+SaSeO5brauukWK24JZeSRH+HRivp2Zz2Am+Rp18QODNZfAxR6WnOY2oU3DMq0WpIq
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 21:37:47.2646
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5bfb533-ce2a-4598-df41-08de6435a399
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CE3.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4277
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262802-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 97612ECC6A
X-Rspamd-Action: no action

Add optional nvmem-cells and nvmem-cell-names properties to support
reading silicon revision information from alternate location using
NVMEM providers. This is used on AM62P to read GP_SW1 register for
accurate silicon revision detection.

Signed-off-by: Judith Mendez <jm@ti.com>
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


