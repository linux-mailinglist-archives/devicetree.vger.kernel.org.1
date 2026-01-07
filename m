Return-Path: <devicetree+bounces-252476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F51CFF986
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97AB833374D9
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F44346769;
	Wed,  7 Jan 2026 17:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YNwSY8ty"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010046.outbound.protection.outlook.com [52.101.56.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941AF35CB92;
	Wed,  7 Jan 2026 17:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807960; cv=fail; b=XKliKN8WbEGtHI9sbGxeWvSD++3SZyoGAxXNIGFaMG4qoLGC8mFa19mmBvBp7hAyM4UyGciIiKJinDSzr+z8SlgfXvo3R1X0BFr+0BmYObDw/YS+9Pmo5LHGpeMmXeMTNnLSRJL8lBxf5EnVe1uvSwpGytZYB/jf71JoNFBB43M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807960; c=relaxed/simple;
	bh=9c2OkePqEXfTWtQTZDsyNBfefgAiGfDz/yBB4VOj1D8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b3aajpQZm1foP8eKXMQgvjxHqma+aFVS6QLmJJWTwsAtLLYryDIqQ0NoEmgVwuADz1V/U5DRlE3/aHDw9jn6NmwaDo6PdjELcorEvrhyyUC2eQJeA3SPQl3PVeWTwtMJhvoTxnx/UKH4x8x2VlDPc3p4x6NnHQsnyUtE7sFQ9MU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=YNwSY8ty; arc=fail smtp.client-ip=52.101.56.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Szqy1pXYUcd1Ds4UDTyZRvZflIxdN/4nnS0LgwRauBynhLzrDD9pf58FMnCYV0ST6K/IPCGmj/4K5RR3BgiNeqx79KHyApEq6yPDZgLJyw7NsjO9pxWd0wDzdiJxj6AL0wsH0JA7QmlXWMvTRSbfQQLwYJNe8Q6Fj6svuEGysuiMWvxVAb2Ej/UpkoldcuJ3o/u2o5UazHrdOxKvmlQPPtccEh50+9bROXRiPzQ4YnJTUsLENTLclx+mjJb004eSwWa7CsOjXWpCr9MNsMjYHzXewX4hqBgIDewqTzsr7TVKMrL0WYx6F+oTTw6R69w9jJeyER9z2v/OUdBXS9o42A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=goD7tmVEHdin/jipBK3eElHNIN/a3r5+DvMTN8Lmg34=;
 b=o33mIf8gRFAqP9edb5xUvvFtpuq8icahRm2UsZWWCT4bPQ9qjwhsRduFkF6Nt8hseTEI51jWJlDZvLe0E3S6aXUOJJjcsJS1LDRoc18mjspGqURLdNg23Mk4O3ftp0H00UN3zwXpfaCCxCwCJKo9XWv5dJ0GyEv8u47agB4cHWTzkXJ+QtzIKyi0/bVhKJ9psxtLrPkSez5lRZ8PpNd0zTQB2+T6lT/1wLQlp3dQfSxTjbcp/40GAFkz+q9i90eRHXGHaQ42NKg1sHOLyGu/yN9h091FigNM7xaEaL3MiJlZ6WC0BhAY23RBUCeZ6IgyGgcXmCg2ifLZZyOqmoLo3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=goD7tmVEHdin/jipBK3eElHNIN/a3r5+DvMTN8Lmg34=;
 b=YNwSY8ty6kwO/c/5LRINb535Cozv9GFfkkWhUz6aj1b6xJPJmoitFYEwxG0M/+8Eq6Ur+5B/sHxL25qMzWfgOFAmUefx+7G302u3hnTed/zD3CTPx5XfSSxRpXSjkcWhhBAdW9PKu8NEBAnI4TQTPgyloINpdWeC9oWXPYYTL6o=
Received: from BN0PR08CA0011.namprd08.prod.outlook.com (2603:10b6:408:142::33)
 by BLAPR10MB5107.namprd10.prod.outlook.com (2603:10b6:208:324::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 7 Jan
 2026 17:45:40 +0000
Received: from BN1PEPF00004684.namprd03.prod.outlook.com
 (2603:10b6:408:142:cafe::bb) by BN0PR08CA0011.outlook.office365.com
 (2603:10b6:408:142::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 17:45:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN1PEPF00004684.mail.protection.outlook.com (10.167.243.90) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 17:45:40 +0000
Received: from DLEE201.ent.ti.com (157.170.170.76) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 11:45:36 -0600
Received: from DLEE209.ent.ti.com (157.170.170.98) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 11:45:36 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 7 Jan 2026 11:45:36 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 607HjQlV1103883;
	Wed, 7 Jan 2026 11:45:31 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH v3 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss compatible
Date: Wed, 7 Jan 2026 23:15:23 +0530
Message-ID: <20260107174525.1702585-2-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260107174525.1702585-1-s-jain1@ti.com>
References: <20260107174525.1702585-1-s-jain1@ti.com>
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
X-MS-TrafficTypeDiagnostic: BN1PEPF00004684:EE_|BLAPR10MB5107:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b94e537-2c27-453e-e86b-08de4e149301
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|82310400026|36860700013|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?FoblTPddDkpTRQUbPYtagDtK8FJlpQ+G2JZqzHylZO7ABM4m+ALZKZSLGp1j?=
 =?us-ascii?Q?VnywnEsCZ0VWsv1ypxZYOtluODcJ3KiMzmDkcGPzzST0DohaWpDv/VRocWV+?=
 =?us-ascii?Q?QGTSPgrwQPW82LXAHSNeDB8fX0d7B4gT8NNDL42xOegBR24OzQ7i1sYnZnsj?=
 =?us-ascii?Q?rrLtHYvoydALtAKaJH5CFLQ2hS2ejoZCNCfPyw0fwwSiYmljGtPTPXJs0bPW?=
 =?us-ascii?Q?g17uGYd5ioq9slYIcu3y+QYSa8E/QlZGz7bEbKdb0B5TelN6r75qMsq94wvW?=
 =?us-ascii?Q?Dw9uCC/61XBDnyVaSpL8wIcFrnTHCUIlya4UwZx1I5aiSg1ajcFbRUdwoDq2?=
 =?us-ascii?Q?oT4UylcXZSE4TBVakpAR+wJOnIzadmhwRz8maBc2pD3L4WCN8Ih9I0f2kSLY?=
 =?us-ascii?Q?D8v0VmrIeIo3pItAW5jMgRybebrnngUzeiygTBQgd75MfmVPA9QwaT5aMRtr?=
 =?us-ascii?Q?laFaJsWMDFfnYeYRgVDosqCyHN37/UHq+cgD5s3D9/u3pMDwnth/6gLesuj6?=
 =?us-ascii?Q?gFGzbwfjMDbBuJGx/3ceAj5yKwoSoql6fXlZ4uhDaKk0dCObFQoDKKTw1+p5?=
 =?us-ascii?Q?AqI9GIhCKtAEKCGZpbmTllyJ5M2FMonYB2fLgcClV6l0oTvdY3bUBWsv8l9I?=
 =?us-ascii?Q?Nu/TpvM2gdUqcRJ+ERN7JJOzhtcUjJAVaSjFExET6FXqcmdwWT6yeWAdnGXD?=
 =?us-ascii?Q?HVadqEs1nFP4EG50m7TLqq5Yhragxn74rXPlKyNLuhTkkAYWttlyIdegSsY8?=
 =?us-ascii?Q?2b0qwp5ofxdELqxk0YxwyrhoMXenvJuK4V5YWonJlsE4tGHNydsEauGLeWg/?=
 =?us-ascii?Q?1tCZj+EkftS3CkOFU80AGk2iG/1eAn5oqrypfgMUU7VIaxtvyeXqzakokJ1i?=
 =?us-ascii?Q?s8XhHnsGx93gfbeS9pBSqS+fZGscZDeKnMCmy1Fmnh96aOI0Hi3fdlijG2Vu?=
 =?us-ascii?Q?l3tAVqWh9dZNeIdC5TlTgVsRvdxXGse9B4pc4b1uvSsUhXUpxvYJysKlTz1M?=
 =?us-ascii?Q?0jtUw2e+lwtCPqaBy7UugsxI54nXejvLVyXpbuf2y6wXVDABFim0S6qdMyKN?=
 =?us-ascii?Q?hqTAx3JqOlaRad3mCwlIaKZw5a/Wf1vqXHgkwG8C5fhKyeDCld5yE5OBrAZu?=
 =?us-ascii?Q?VSkUAHEmtfeEoNHe/F/T5qpNBoolhHse4kNVNbvBT26OKBsdaEb7tszcppjt?=
 =?us-ascii?Q?OBd5adCPIhFr/xVa7Vc9NAlCr/BTj7SMO3VrVWjD0TTpzLP0XDscpSsfK6lq?=
 =?us-ascii?Q?pGrzxwmto/xgKgIhAaQlR7rLkHh9v8uUKsGNvZ1INPr+Vb/R0MJ8a0PC8LpW?=
 =?us-ascii?Q?8349qPx5V1oPMQ+KyaA96RsaxkVNv012kFv2vnoi7exe5RG4pbSll1B72M/J?=
 =?us-ascii?Q?LZIU6Uv4WPzRlXxWjJonjcQg2OMZwDneUITzZ5iFVkxIcj1IzTpToHqEXWat?=
 =?us-ascii?Q?7rPbYWQ3ulgDmlMoLytmvs8TxuLZbqWmy3hGpP0eVnGsf2PUek7+Xbx0TuSX?=
 =?us-ascii?Q?2+UWCObjF5QDkWXcBF/MvuFRessP/73M5tKiKONhcUpHv1DOcdtFJP+W31lz?=
 =?us-ascii?Q?aTvKLh2wlQRbjmFdqhAxQ07Jm5IrvzI/gM6I61go?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(36860700013)(1800799024)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 17:45:40.4781
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b94e537-2c27-453e-e86b-08de4e149301
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF00004684.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5107

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
 .../bindings/display/ti/ti,am65x-dss.yaml     | 33 ++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 38fcee91211e..e74e710934fc 100644
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
@@ -81,7 +95,8 @@ properties:
     maxItems: 1
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
     description: phandle to the associated power domain
 
   dma-coherent: true
@@ -196,6 +211,22 @@ allOf:
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
+    else:
+      properties:
+        power-domains:
+          minItems: 1
+          maxItems: 1
+
 required:
   - compatible
   - reg

