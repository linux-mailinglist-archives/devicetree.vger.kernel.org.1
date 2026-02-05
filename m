Return-Path: <devicetree+bounces-263011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLGTDQuWhGmS3gMAu9opvQ
	(envelope-from <devicetree+bounces-263011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:07:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E651F2FB7
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:07:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 039703004D0C
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D038C3A0EBC;
	Thu,  5 Feb 2026 13:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tJ3dkfk9"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012012.outbound.protection.outlook.com [40.93.195.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B745F3BFE25;
	Thu,  5 Feb 2026 13:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770296839; cv=fail; b=hUVI5+kWPUPGjajJjM4QEKEvFYsg4643wk3iHt0CPbyI9vs/q5+ClPBJsaEK+aLyMmBRmrHmowiJHqN878Ult18fiX4vi9ya4Bbyu7sdOuRyydooLqvI8o+QmNFB1zKgEvzLZUuXt+xBjkK0Ke9Fmf8/GLn5iilL3kWKAmMjRes=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770296839; c=relaxed/simple;
	bh=4Dd6886o5WWUipo43fLmw2h5QyNPoqNs9bF+U3FppLU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VvARaJQOJ1rxUEbmmhow8X0UcwKalLOmge8G9iY8akDZsUZwTz8FC1ZqICq4/K174hXhvEI1OrF6LfQm38j3Mf/mrwfIIM5UELiNG39S0PUWevV2+5gkK21NLWUxTLLugmHdhdca4v1AdU04+VZwCULAFoszAnqyQ6HuQqxiZTU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=tJ3dkfk9; arc=fail smtp.client-ip=40.93.195.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aibgIx86Y5dWuS6oLwDgdtZD1Owy/aze0/xulS2CdmkeY6UjMMjQ2lrpXT6fehyucYib2aJcpRUB9YmJwuKtAfA6RD2Qp8hmPAZjhJKbI8tqRgqem5M+zfhOzUnHL9xPRhCoByhguKAlk9zZG/qvkIjyV4S7GrXGbUR9Lj9WaCjio4ko/tVSbJOog1xYu3nc5u/PYLtYcvKxKD52fvn8QPvPRqSEPMT8WkTFyX8gVYpLz8UUdDiqF5rR+XFHcPAoS/gZUW5ndiSxKewhL46uNPZR29GebcVLp4Ak4UX4xHVPn/TOXJYO89zh23w12QrEHdnBH4sBNy+PkHdM2AatFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8yn+meXZ1ZzWGuMC6MYnWeOTVd5Fd8gpmDfSTBbreVo=;
 b=dA8jwHT+U+zVpATlJ0kCmrZU6uGZpEz8gnqmtBmd8zUIAq+fbwj+PPJWPyIiX5QkH7/KMOR3H28VG0LbJ8UrzhhRx5iH93GfexD4ICW0yZRkMVJfOnXLn3+agN7TftnH/6EECItpjzE55eZgS4b+yRkDm68V9YMAQA4JhhNfKxZvzT2EMs6sbhKv2c5vE1ZfPTxyTJ/0rF+HLXVqGiV+YBIjV+Fa8eOt4SeKr8unH4nXYFj36KByru4W3qYFufr2rZXt5hI8Qqu4eDKc/xlmdMzHJCe3vsHQSrGK3xkCvo1lqGo4IBqQn0j7elwJC01HNb5dyMQzuTvmHbxOyij8oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8yn+meXZ1ZzWGuMC6MYnWeOTVd5Fd8gpmDfSTBbreVo=;
 b=tJ3dkfk9d3C4VGpbxJdetQp3SFbh0N4f/1lkMUCnjW638AAr4myx3kqVm91KF8qlxRfx9H/Wh+o+op5kroVF9b3a9ECzgSm7HFc02SPXzXW1eBjdlw6l2DlQTVzji26imcYACSHFJYPHHlse7dg/mv1q060N76IzP/bYNGt3680=
Received: from SA9P223CA0013.NAMP223.PROD.OUTLOOK.COM (2603:10b6:806:26::18)
 by IA0PR10MB7274.namprd10.prod.outlook.com (2603:10b6:208:40f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 13:07:16 +0000
Received: from SA2PEPF0000150B.namprd04.prod.outlook.com
 (2603:10b6:806:26:cafe::ff) by SA9P223CA0013.outlook.office365.com
 (2603:10b6:806:26::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.15 via Frontend Transport; Thu,
 5 Feb 2026 13:07:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SA2PEPF0000150B.mail.protection.outlook.com (10.167.242.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 13:07:14 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 07:07:12 -0600
Received: from DFLE202.ent.ti.com (10.64.6.60) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 07:07:12 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 5 Feb 2026 07:07:12 -0600
Received: from moteen-ubuntu-desk.dhcp.ti.com (moteen-ubuntu-desk.dhcp.ti.com [172.24.235.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 615D77C33027516;
	Thu, 5 Feb 2026 07:07:08 -0600
From: Moteen Shah <m-shah@ti.com>
To: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<y-abhilashchandra@ti.com>, <m-shah@ti.com>
Subject: [PATCH v2 1/2] ti,j721e-system-controller.yaml: Allow audio-refclk as clock-controller child
Date: Thu, 5 Feb 2026 18:37:06 +0530
Message-ID: <20260205130707.2033197-1-m-shah@ti.com>
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
X-MS-TrafficTypeDiagnostic: SA2PEPF0000150B:EE_|IA0PR10MB7274:EE_
X-MS-Office365-Filtering-Correlation-Id: 662a39c5-62f4-495f-506e-08de64b77b84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?o11P4Iw3g14lDmr7L7dyNztJPLzyXRWMJ4vvU4NMc+xKcT2/4RzkKZu3nx8R?=
 =?us-ascii?Q?SKZxDmsTtVBGFsPaVgyCKOUqVAMMb/49wEazof4gcYh/ppUDcelNOnAMfxn+?=
 =?us-ascii?Q?zGN9JxgumzgWurX7HCzpc4bfRFPS1yn8ALJjkh7fpQ1iPNDlIe+QYFWIirgJ?=
 =?us-ascii?Q?CiaW+8X3Z8+fxURn+ihTSLmfFVCbpWE1ymVcQbHSKjchW2hI/8DfxucTYbZR?=
 =?us-ascii?Q?DzCiEWkKNsi3NxPWgNYbYfzk27sodG1MsCHPKphQgp6ELC7VOYj+EnDOF+i7?=
 =?us-ascii?Q?eUHkeBBUUoSlSVkHaCAypiFy9O4wavZNWwsN4kMwPtn9R/wCTZlYslkkwVJI?=
 =?us-ascii?Q?jWr5/9gkkMfpuqCpciR+Ns9N64rT3VKNUDlWvpNv/MBGmNXuAkDiUPLNFBDa?=
 =?us-ascii?Q?wP+cAk+AF+ZnDxi/FdPPxoiLFci+ohZosuZW24cYQhSG9KDIFruR9YhcU+Pc?=
 =?us-ascii?Q?hn+jYm6QxXYsI4HhgiNvbsfsiJcgqxDKULOafQyzdBUCizXvSGa9B7RIocwr?=
 =?us-ascii?Q?Y4hDTQHiVqOJEQ/XuC6jwr/W0FphJA4BXN5654ahPSCGMMWTRzb2/l62KxSr?=
 =?us-ascii?Q?8nHb5vNxLQwzrg1kO6ahZQWcgH2asP23byM64Mz/TSvf1ivXyt0n9P5+CMZO?=
 =?us-ascii?Q?mv9sUgJP1rmTiiusYsZxo6ZXge4zlIRvMH8aSNCYITgkSBRczMyA00n2Zfsg?=
 =?us-ascii?Q?aZcLaU3Gl5smKE2Ez1xD1aaILoY/d5phFxqJe0dUf0Kfp7XA/fQZItMDBgCr?=
 =?us-ascii?Q?EevExKE9iEoNccXm/QMAen1+76teOPkmrVUrctWwXJgpmDGI8EEoC0ESsiaV?=
 =?us-ascii?Q?Cg2aI/FQWbjsUOq2Um6mBZhSNzGP37liJvEfF9tQDBomus2fQm3F8Dq+vIKH?=
 =?us-ascii?Q?po45CrXZn3C4cBXXjJmX2vTwvYcB9pIDvkvYdPuTGMjfnOfnwMgvoD+89fWJ?=
 =?us-ascii?Q?Jxzv4Aczp1u4+yeAEZKBMHm7aa6f0J0GIU/zGojjVeetXr4QKtnpqSLkCtXI?=
 =?us-ascii?Q?+RXxv2oE89Y5pq1uGqUeblVJomkLQJcp6MqG4jo3pyimX0MopJOOKaIVfBrL?=
 =?us-ascii?Q?sKJSVQ6hmcV8a24joNuLZABli0+pYAt/YW8zeFFfrC72331nN7HKXUcsn76U?=
 =?us-ascii?Q?lAeinqtmTwaawbTap+2pbyTxUlHObZdVbCfiNdJEJJZ0i8Dg/qcdQgupaYuE?=
 =?us-ascii?Q?JsHmqPmmXWDfH3yYatc2bXNWC1SbxXn9/6nk1tZN6J2W3uA/h8pQz05nn1Yj?=
 =?us-ascii?Q?TYAK1CrodeJHUPBVa3PvjygF2t2ByTgVpg4yY3VHuS7j01ybNyueQWxmyM9N?=
 =?us-ascii?Q?xZfNRJBQFudVwFk0Yf6jonYfP5UIi6c2EoMZO25/JNlBAQvqbEHrCYQu02w/?=
 =?us-ascii?Q?wtB0Pcj8jI4KbwJZ0vpQCfNqAYl50ngJbkO0sn4TbyeDRgmUVZ6MvXbhvRZ8?=
 =?us-ascii?Q?4CpKo/PN33oQs3shaEJCk76dg7LfbsIP7RwzyUFLbxAB3WRi1EBM59bsDXAO?=
 =?us-ascii?Q?nmQ2TMJYKRH+6FBscHQaUHtVmv2MXVz7ZHx8C1/Z7pTnWvdR/1kQKc72a24E?=
 =?us-ascii?Q?XdTk2b0iDzB/OVYs8KmU5uLuBKW0n4jMX5bQ5epQmEWQi3sieG3zcb88teU2?=
 =?us-ascii?Q?iayof5d5GAncPYU8mGuxIlPd8qktBl7OZIIWb/4MfM0qmPS9Uj/tVJXvKR8J?=
 =?us-ascii?Q?aByFuw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	lrisGUROYteEMAD27DIGHoQIHUudnUnU0EZC7bF2xgRFaoFdpkPRpEWWdo6tAnvgM9Cu5uRX7n6/PesteS1ZURkAzWGMCBo+VlrcLqm7kT99Hq6oxcjzEfjHhzj6V1lhF6C8u7YDTLSKRzRM2DeNWxjDCFuhX2xzbmbZ7TF4pL8VSwBVSrVjSOYDUryJpOKUe/XTE55Rqw1madK7LgRPEIUtRCMGQflzV0VgQ3d4eZByqa7royG4wvTEVID1O/GUjTiaxNeTP8YyH8EGYAD6FVi2mwh1TPHxyiKTyuKGq10sBPy7xQfGtSc/u9umje7KovR/IIcJEWM71qgDQcslkmqixfVvKMqWL4c4FlmB/vk625JsHcFbXOmYBfaJYzLbmxwCBR9pVjBFRoL2uBxFfv8gNibBzc/ih5RSuA+ozB2VNLohgQX5kMhkiHGLhdhv
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:07:14.5925
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 662a39c5-62f4-495f-506e-08de64b77b84
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF0000150B.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7274
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263011-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-shah@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9E651F2FB7
X-Rspamd-Action: no action

The ti,j721e-system-controller binding currently only allows
clock-controller@ child nodes to reference the ti,am654-ehrpwm-tbclk
schema. However, the system controller on J721S2 also contains audio
reference clock controllers (ti,am62-audio-refclk) that use the same
clock-controller@XXXX naming pattern.

Hence, extend the clock-controller pattern to accept either ehrpwm-tbclk
or audio-refclk schemas using a oneOf constraint.

Signed-off-by: Moteen Shah <m-shah@ti.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

---
 .../bindings/soc/ti/ti,j721e-system-controller.yaml         | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
index f3bd0be3b279..d5d84a8f1257 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
@@ -53,9 +53,11 @@ patternProperties:
 
   "^clock-controller@[0-9a-f]+$":
     type: object
-    $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
+    oneOf:
+      - $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
+      - $ref: /schemas/clock/ti,am62-audio-refclk.yaml#
     description:
-      Clock provider for TI EHRPWM nodes.
+      Clock provider for TI EHRPWM or Audio Reference Clock nodes.
 
   "phy@[0-9a-f]+$":
     type: object
-- 
2.34.1


