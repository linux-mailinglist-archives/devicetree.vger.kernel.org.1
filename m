Return-Path: <devicetree+bounces-242086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 436FAC8620B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 327A53B5B7C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FDFB333452;
	Tue, 25 Nov 2025 17:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="SspdvcCH"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012001.outbound.protection.outlook.com [52.101.48.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA72329C45;
	Tue, 25 Nov 2025 16:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764090003; cv=fail; b=hOGirDLDzqTJUeBf6wXKUouA6elQJfteZfcuqutPj2OHncaq0sagyVrIwnh+Fe8D0iOaGtCrIAj9qFE3BF1Kd+N2p2M3tj11Xy5OD7s1LdXP+190212emr6/9vCcsy1IzOukvodoCbAspv8efkD0gaKKGUDS4oOfOuzEoKeF9iY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764090003; c=relaxed/simple;
	bh=NObHu0Lp4jDHsisERVE1XgrzlnS5ljFQcWU6FIjxPLw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T7dQVVk73+/iYDg5KpLVML597FZTkORGJjnOXR8Wnh2tlHFdFfTrw+0Pg0FTQLEMHXJUTzNjwqDIt0DGjSTB1sVTEQr8RxI+5PZyD988jfUcMCcz91CiGCj+Kw4xdTVFzT3WLpqNLDGYZO+aAjIa4b+B2WW1rTgkSS0k14WjRAM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=SspdvcCH; arc=fail smtp.client-ip=52.101.48.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNcmQpTfm3wJMqhU9HOFBYYqwViWMGM+pz1iX8V+eF9vnw3bKcF8cmXqujyd1s8fEO1PTsMr+CkyAGE0OksbAlWiq9XRXwJZKQqHVF/YRpNw+bF7dycGWhTdudSOYlTM30mLYmWiCx3U+Oq6OJkAXfcn9vCgw5kzmZdElLv0O22p3R2/gk18iJ76eJygPohuajUy+AehrgITQy49rFCQyyKxkm/ngvrKzTNzwx46gmbNBP6En9HOjcJWf6/P7/xctG/1VoOyuZdaEDBySUFOc1QPRObaZngX6Kx4qUhpaYh4UWD1j++upVthZFQhlYU4C01FE0Xv0D79NgFlLGRu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eS1hO45P8oHUdOo3H/VdIG6oF/6g1Jt+2eULAkSCU8g=;
 b=W7dcilWRn7vV8/ZL/BW3dvdBz8R6vxNGgXITNg3Zeevm470FyfrynRwp09LN1XleINfq6MfEWLg05WCAU6M2Rlys2jl3DdYmCbN9UfEF7DNvOZ3Q2Dwl1Dkcn9tGwxxIO9m95FAmqYHaR/xt+64SUyo7hGt7QCTR/zwaAqW1x7SsddxXRcPCCdxFnNx8+7HPT2cla/BBpahqBD9+8/vM/wZU5daPeDCqgZLBN77s94TyhHzSBDYS45mElR0SOhknQnD1mxM8nphHILfslzbct8lQCfMhbUhTslziQRizjdp7eJqsav+VMiMGSH8XKjxIpJWMNAtHEuUWC6hEuvPTVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eS1hO45P8oHUdOo3H/VdIG6oF/6g1Jt+2eULAkSCU8g=;
 b=SspdvcCHfVblIEJoKOjtSYpPtTfSqmSEQLg/WH2rItFQw3pap4JPMwIcSN5e3QlbAU58Hj1T5CRcFUBSdg5ineN2XqOm5Cbtw5oLMB9MClVIkm4+z3IbwBsBSZxhbRY7IBJrRPdy4fdeefUoALp7r2fHZg8S86gZ4b5JY1ym220=
Received: from MW4PR03CA0149.namprd03.prod.outlook.com (2603:10b6:303:8c::34)
 by DS0PR10MB7202.namprd10.prod.outlook.com (2603:10b6:8:de::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 16:59:57 +0000
Received: from CO1PEPF000044FB.namprd21.prod.outlook.com
 (2603:10b6:303:8c:cafe::c3) by MW4PR03CA0149.outlook.office365.com
 (2603:10b6:303:8c::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.17 via Frontend Transport; Tue,
 25 Nov 2025 16:59:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CO1PEPF000044FB.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.0 via Frontend Transport; Tue, 25 Nov 2025 16:59:56 +0000
Received: from DLEE215.ent.ti.com (157.170.170.118) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 25 Nov
 2025 10:59:53 -0600
Received: from DLEE208.ent.ti.com (157.170.170.97) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 25 Nov
 2025 10:59:52 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 25 Nov 2025 10:59:52 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5APGxgbS3987080;
	Tue, 25 Nov 2025 10:59:48 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH v2 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss compatible
Date: Tue, 25 Nov 2025 22:29:40 +0530
Message-ID: <20251125165942.2586341-2-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125165942.2586341-1-s-jain1@ti.com>
References: <20251125165942.2586341-1-s-jain1@ti.com>
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
X-MS-TrafficTypeDiagnostic: CO1PEPF000044FB:EE_|DS0PR10MB7202:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f233214-63df-44e4-e4bf-08de2c440ff2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|7416014|1800799024|36860700013|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5xhsf9mXvwY+wyQPgnkn5y8pZT2tvLjwQRfNwjDwW0g9yaDbe69izuGwXrSH?=
 =?us-ascii?Q?EzbjgWIxKWWgIRHaDoUT6hE9Y+eetfSv8553awLKLsZ/HSqNQpRukq2CGdgt?=
 =?us-ascii?Q?aNk/HmSnqoEpxCHjImTM4G/U1i94zNr2NMqWf/GtzOddiV8GZfCNgeUfKMgj?=
 =?us-ascii?Q?nO1Htd8SO7wg2TuuEs0M1XqAik1wzhO5jzhMN8Bo2wA1Kdo8idQbUYWwIB4k?=
 =?us-ascii?Q?uozuBPLsdHuw/zkgTVZFpsZLmqGUDO+axvZ9xpy+fN7Rd1mHaMMl5MpPxuyV?=
 =?us-ascii?Q?d+CIu7sOxJYjD7Av0yNCJy2pdomb4veSUDtsRkUAY27ds2TXfS7kcA+pn2gm?=
 =?us-ascii?Q?2/zj29VE5NUjEk5Nr57gyCw7GkSH0I6krOg7NDrWEN7QhO88pb4YcDNb0M66?=
 =?us-ascii?Q?DVy7xjxhPJmw8hIJ70eZ/ddsyc5zGNaugowz0BVp0tdIO8rG/ez8T7dAX7HA?=
 =?us-ascii?Q?7BjN1uyIL0NEldnm7w6dr81EOFSYDnNRPrQxwabgpUlwpS17MGvdjstfxSDu?=
 =?us-ascii?Q?1y02eeDgb/axFgmG9JZwdHAdhQF5tjdx/XIAe4462ruMl+sAQrHFLjhDizih?=
 =?us-ascii?Q?AwZ1N+tQqPY12t3kjo7aATszFU/DDSQK9sl4gSCO9iuV9Q+YxxqcP/61b17r?=
 =?us-ascii?Q?ml5tq7Nzx5uOJSLC8uUZ7wRlf6jHov7rgDa4w+QFMMomhOMCQ53NuuLfgcH9?=
 =?us-ascii?Q?mDb/YPu+/dZ4C6mZSifk2lyxH2dRdFPHKknbW5NmLj7tpcBrgZiYQx8ECiOE?=
 =?us-ascii?Q?KHHHk8PDfTvssGooMgb257jkaiRu5EBZjAQLqYZ1rHaRnZqDmyMKFd6GDLQe?=
 =?us-ascii?Q?NVoHCJgoGVqpQAr50pnYGt6+LmGmIFW37qkhCffryGMxoQc4ipoL82WJuzWb?=
 =?us-ascii?Q?8fQJnFEeUZgvPpM/Qo/YAzhhwtXa8VdGwy67/gz6oxMhTtIGGP7MLHSxxjli?=
 =?us-ascii?Q?kUOg+6sG3bH/2ycdWfxTUCNP1c9evIRC+HRUiuKoiX1iY6hkEYwbB5KZ9hJf?=
 =?us-ascii?Q?VHVMEcCFl5RocoZj6ySVOksbaxis9hwBi5BtvUsZ3ITOn78vz3pLms4AtLr5?=
 =?us-ascii?Q?cpqUKCsCBSJmgtv3A6YEhimT1iLVwA/Hx8xwUIJIlmATnrXTPJ9lkR4lCnT1?=
 =?us-ascii?Q?VPDxFf+SDO+S0S/ixYbii3Um2j8QUaLj9t7NeL+YfeqjbnIUUdg7ZbbRr6FC?=
 =?us-ascii?Q?dnxnt/tP1ErRW8ata5b6A1f13HGhnIbyTcr1+VgUEnSqEIPIZ1A4jd1RqH+i?=
 =?us-ascii?Q?xlT2vCeehOIa3s3BYTkFSc5V3Btdorfu5MCI2kgXyXdg+AT1njc6SnScuCG/?=
 =?us-ascii?Q?EKF7vaggy9LeOAfBYvju655Qk4nH44z+94rWHyfYs/t1CDhO0nbYoxBJfwqL?=
 =?us-ascii?Q?8cCpRjnfllPll3e3v1J/myyt+Kg3hTOdoLseBvFAZIv0vOV8i2XtQFD+f30I?=
 =?us-ascii?Q?t2/BY1OT9+NnGCKnMly2VGBmKO2XRUw+hxd9W5s6yqAfQ1LB/M1z5UK57VT6?=
 =?us-ascii?Q?LV/XPyJFW8SDZN5xWfmF5HD3KNvvS25Dto9VXEasyamuPCG5qU0x6GfE4hTf?=
 =?us-ascii?Q?59T5rHdNciRezfoOdqYpy+hovN+kM+PLICf1l07d?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(7416014)(1800799024)(36860700013)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 16:59:56.9499
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f233214-63df-44e4-e4bf-08de2c440ff2
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044FB.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7202

TI's AM62P SoC contains two instances of the TI Keystone Display
SubSystem (DSS), each with two video ports and two video planes. These
instances support up to three independent video streams through OLDI,
DPI, and DSI interfaces.

DSS0 (first instance) supports:
 - Two OLDI transmitters on video port 1, configurable in dual-link or
   single-link mode.
 - DPI output on video port 2.

DSS1 (second instance) supports:
 - One OLDI transmitter on video port 1 (single-link mode only).
 - DSI controller output on video port 2.

The two OLDI transmitters can be configured in clone mode to drive a
pair of identical OLDI single-link displays. DPI outputs from
DSS0 VP2, DSS1 VP1, and DSS1 VP2 are multiplexed, allowing only one
DPI output at a time.

Add the compatible string "ti,am62p-dss" and update related
description accordingly.

AM62P has different power domains for DSS and OLDI compared to other
Keystone SoCs. Therefore, add 'minItems' and set to 1 and 'maxItems'
field in the power-domains property to 3 for the "ti,am62p-dss"
compatible entry to reflect this hardware difference.

Signed-off-by: Swamil Jain <s-jain1@ti.com>
---
 .../bindings/display/ti/ti,am65x-dss.yaml     | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 361e9cae6896..3945ae048b8f 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -24,6 +24,19 @@ description: |
   DPI signals are also routed internally to DSI Tx controller present within the
   SoC. Due to clocking limitations only one of the interface i.e. either DSI or
   DPI can be used at once.
+  The AM62P has two instances of TI Keystone Display SubSystem, each with two
+  video ports and two video planes. These instances can support up to 3
+  independent video streams through OLDI, DPI, and DSI interfaces.
+  DSS0 (first instance) supports:
+    - Two OLDI TXes on video port 1, configurable in dual-link or
+      single link clone mode
+    - DPI output on video port 2
+  DSS1 (second instance) supports:
+    - One OLDI TX on video port 1 (single-link mode only)
+    - DSI controller output on video port 2
+  The two OLDI TXes can be configured in clone mode to drive a pair of
+  identical OLDI single-link displays. DPI outputs from DSS0 VP2, DSS1 VP1,
+  and DSS1 VP2 are muxed, allowing only one DPI output at a time.
 
 properties:
   compatible:
@@ -31,6 +44,7 @@ properties:
       - ti,am625-dss
       - ti,am62a7-dss
       - ti,am62l-dss
+      - ti,am62p-dss
       - ti,am65x-dss
 
   reg:
@@ -197,6 +211,17 @@ allOf:
               properties:
                 endpoint@1: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,am62p-dss
+    then:
+      properties:
+        power-domains:
+          minItems: 1
+          maxItems: 3
+
 required:
   - compatible
   - reg

