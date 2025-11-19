Return-Path: <devicetree+bounces-240204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C6DC6E72B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 6B89C2E21F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6112C35E521;
	Wed, 19 Nov 2025 12:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="wURjS5wD"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013004.outbound.protection.outlook.com [40.93.201.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1148335CB79;
	Wed, 19 Nov 2025 12:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.4
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763555110; cv=fail; b=W9yhdMVfbUcBB1pOzG5pqC3ztLKtC6fj06qt9PYCtsEwKDBV8biBSK8o3q/j3C+YLY49HNLo2XpeaUVaMjSQdiZCrSxnqB110o7gbCdngNhBCWU+vaL4o909vaNcKunffbLHjvPKOHgQqpmFoxHVqigzE5CTYXbcn6neNuIKKPI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763555110; c=relaxed/simple;
	bh=94dWCkJXmpA4zipdSVAfGpO3VY5u00StvPyDlEsO/pM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=S+wRULjjU0VTYiZbpPGnnQ5g45T56a7wXmwSBa+evyivZgPYiS3liuvFsNtD0Ip/DdiDR37UlNGQk6vNYujQd5+la8Nr1yz8YjDCR0UtZBF0FWk02VH0of1gIEev8zeBP7IsJrOU7GqMmynw94gFm211m+9mS95+udckVlLSV/w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=wURjS5wD; arc=fail smtp.client-ip=40.93.201.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1f9rvBr3DB25ilbjpLlTAsoSSyCEobN4xf5/NdEeGYh8OVt5Dy76nvtlaFTIcfcDIrYgobY5UWWbUn1CXaQ+fYEGpbzN0VpkZSnsjuvx3tWcTwgGcieEBeqOWbAfBEhN7i5o1QyMQ3oagGpud4DC9dOkwe2+rlsUuPDLq+9F7NeLiGffhhnKnCFQoWZHXkcAcB6Mlb4juiFwPY9EkZ5ZDv6QtiUwGIf1aXDpaKgtPOtmgMyzuBiytnELqVFVsL1uh/Xk+BVjXpA9cwfcDednthCfMlp5UwiwrYlZsNtbVtrj7DcBm5jl0Hy7bQMqBfDNTDQZrJW5AhQLI9X0p7xTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73eVZ1e6X19rI+Blg0R+ahxQZILYKEC3QJo0k4z1hWg=;
 b=VitP2dEmK+jgvjzvEtLgMmU9fT9Z+Vn9ZAzw4ajMPqti+9SIQ12i8dDz2Q53tHAg651HcZ7sEivPfsHPCqubH9TUiuSw1rd0e/n8/lwJuzxp9fI5l9CzvEFtikMan1Cximu7ba4Rk7BJk0DQ+9EYZdzVqJtfJgfhWwxdaiYk1ZBLEF+cqdmCjJ66c6EQF7OM8awPZQWT3BERsBimyWYIl9Nb4TURaM5qReuksoT+21QhN4xkTTbnNslWEyBMvPxnXLxVkzYMmjkxUGe3VexL9A1J9Pe9X8fYM9Gx+mynm9VqRWMLZjhTTTJ8WxFSsj9zhviwIfgpzNE6IwFobnsTBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=cadence.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73eVZ1e6X19rI+Blg0R+ahxQZILYKEC3QJo0k4z1hWg=;
 b=wURjS5wDr/W5ZeDGvnOlb8HdO7RKOba8m4OjXKhfo9ZiH89/QW7fH8vBVldc+v1ZfOsmQiwjrlHxZxDfVkcSk2L3MnuueO/OUpcIbE+dxOoUwflkUihQpoRHIiAaE8wMRh8HPOE4V1KryFbbm5vG0peOqPBG0oRu6JPWHIursE4=
Received: from SJ0PR13CA0171.namprd13.prod.outlook.com (2603:10b6:a03:2c7::26)
 by SA1PR10MB6541.namprd10.prod.outlook.com (2603:10b6:806:2bd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Wed, 19 Nov
 2025 12:25:02 +0000
Received: from SJ1PEPF000026CA.namprd04.prod.outlook.com
 (2603:10b6:a03:2c7:cafe::60) by SJ0PR13CA0171.outlook.office365.com
 (2603:10b6:a03:2c7::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.4 via Frontend Transport; Wed,
 19 Nov 2025 12:25:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SJ1PEPF000026CA.mail.protection.outlook.com (10.167.244.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9343.9 via Frontend Transport; Wed, 19 Nov 2025 12:25:00 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 19 Nov
 2025 06:24:55 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 19 Nov
 2025 06:24:54 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 19 Nov 2025 06:24:54 -0600
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AJCOmE41865532;
	Wed, 19 Nov 2025 06:24:48 -0600
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <robh@kernel.org>, <Laurent.pinchart@ideasonboard.com>,
	<airlied@gmail.com>, <andrzej.hajda@intel.com>, <conor+dt@kernel.org>,
	<devarsht@ti.com>, <devicetree@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <h-shenoy@ti.com>,
	<jernej.skrabec@gmail.com>, <jonas@kwiboo.se>, <krzk+dt@kernel.org>,
	<linux-kernel@vger.kernel.org>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
	<s-jain1@ti.com>, <simona@ffwll.ch>, <sjakhade@cadence.com>,
	<tzimmermann@suse.de>, <u-kumar1@ti.com>, <yamonkar@cadence.com>,
	<pthombar@cadence.com>, <nm@ti.com>
Subject: [PATCH v2] dt-bindings: drm/bridge: Update reg-name and reg description list for cdns,mhdp8546 compatible
Date: Wed, 19 Nov 2025 17:54:47 +0530
Message-ID: <20251119122447.514729-1-h-shenoy@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF000026CA:EE_|SA1PR10MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d25fa52-fd10-492e-5c80-08de2766a8fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|7416014|376014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?jGSXVj4FfRvU33LysV/EAWsvLTwt4K7MQDd0R9VCacLt7A8MqdEm7UOu2hLi?=
 =?us-ascii?Q?CUJzehFuThAxmTMc0uiCmf3RjSU5dGyPrVFQ8UEd6LSvuR+L8x2AeW89fwYq?=
 =?us-ascii?Q?zeGlTOVNDTIYMmRzq/z8Bhgy0Tkfa/odnBpoCirp225B2rHzdOdlqOKlkbK2?=
 =?us-ascii?Q?vIx7qWG63MPu7K9jc3L8ssMFID47jTBuApSAlS0IMQSfnP7arGP/hl/lS4Ob?=
 =?us-ascii?Q?XP74x8iiYftDs3YrYgt9XNorf+/6DVvZoxNxtzT8VNwb8a0PSp4Wt5PmFEuJ?=
 =?us-ascii?Q?c3Ubl6YXNJ57fFX/mFDfbJWKWy1o7fmsCSo5nXklUIvIU59/jgQH9JOPRy/T?=
 =?us-ascii?Q?GKYwbvkeLONJJsclQ2PEHy12tbVOrp+LuzJrEnC1zwZ058t5HAQidvSpQhxn?=
 =?us-ascii?Q?L5E5I/ynvJZWC+PUdI562Z6ARIJe99qoiRF6sXvi0jmICa3h+8qkyDcENyLu?=
 =?us-ascii?Q?5NHkMkPr3gCPW+dgXkk1r9156sHtwBwI2MLhjbwg8j5o7+na+IdwVrGN7Yyn?=
 =?us-ascii?Q?k5CLxxxWvWEpHWI+ugdtc0srF0HQbIMS5KP0RayNyv8WZkLLDorf8xZ7ogzo?=
 =?us-ascii?Q?XIt0yvigoLbwU39hmDA4dTkyh4zM68arjfVCv0cHWZCbmEbMV2E0YfWOE0U7?=
 =?us-ascii?Q?zQzfUjLUMnwC3VQSuzfsri3vxcW4vpZmq1Y1FFfeUD9+X6stm8BifHBhmyT8?=
 =?us-ascii?Q?UIZtCUioZd40IZiB6KBM7qzXQBmJgKmP5JBLOeR3LorO2XLzHyuzJFo97GFz?=
 =?us-ascii?Q?60srTyzR97mAcV5PkDoOvGIRRE/M3ck/QWgsbNkWMvykILBtANDAEID+ESBm?=
 =?us-ascii?Q?9iQSTJVc+/MHid4AzsBYrciEfD/VwZMG2a33zRL89Kp4wm/G1zHQnggmvvSU?=
 =?us-ascii?Q?orFmaJgPMSSRYE7AK8jjO3iWpK2goLQisyiEZIuBRVQ4lArtj2fBDrkHzHRL?=
 =?us-ascii?Q?ugShQraaMbBWSM+FgfTbiFMjYnWxz2MtYO8SvT0IT8y3R2RRvYEhuvZIXqdB?=
 =?us-ascii?Q?lHESIlK9Qgy1TuqjMDSMGGyDH2DbHWnJ9HWC0ZKlD9vPqKU7zwFtVzdQe588?=
 =?us-ascii?Q?pXoQkRtjDOettPhu7gj6wZY3pLI0m4OBzP3kD1SAnkTw32Fc0ozFaOYeOSqM?=
 =?us-ascii?Q?FmG/7izUWZjC8YSl+qAUxs09yfnLpyutUGVgIiF3hYbthySEf8EQDhgf4e73?=
 =?us-ascii?Q?p8lE1jtLvWdCne+cgBB5ylXkCpZjTM5hB+ojM5W6yQ9OhBlxR/FrTAlgI0Px?=
 =?us-ascii?Q?8Qn5qcvPuDLiV9Gj9cnL1XvSJht6DK+D1pgE5Frm6mR3cut3iqD2wncA1hCs?=
 =?us-ascii?Q?PLtxmXbY1Cf4PN9M0hJRwkuPlkPRh5NotTaa21QHHzIgpVKnSTFzSieE3eVg?=
 =?us-ascii?Q?atXi331tOo9SWlg/xu0fPuE1oJT1qlA8m3cf803e1ZXvHJATkSxW7z2pMbx/?=
 =?us-ascii?Q?On1kSf6Vt4CnXzTSuvH61KjXduqBDZ3Tn171umGql3n5njoSSEEkOCr23GSe?=
 =?us-ascii?Q?xqAxtsoUrurEsKzrKB0UAM33T1krlW2ar3cSsIaUNjSHJRC7EdRWVgBLN/Ax?=
 =?us-ascii?Q?iCak+vXkAWz0O7xcPiwHbFOWinLhv5oteivKjz6X?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(7416014)(376014)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 12:25:00.7834
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d25fa52-fd10-492e-5c80-08de2766a8fc
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF000026CA.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6541

Remove j721e-intg register name from reg-name list for cdns,mhdp8546
compatible. The j721e-integ registers are specific to TI SoCs, so they
are not required for compatibles other than ti,j721e-mhdp8546.

Move the register name constraints and reg description list to the
appropriate compatibility sections to ensure the correct register
names are used with each compatible value also adding the DSC register
to make bindings align with what the hardware supports.

Fixes: 7169d082e7e6 ("dt-bindings: drm/bridge: MHDP8546 bridge binding changes for HDCP")
Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---

Links to some discussions pointing to need for a fixes patch: 
https://lore.kernel.org/all/20250903220312.GA2903503-robh@kernel.org/
https://lore.kernel.org/all/d2367789-6b54-4fc2-bb7c-609c0fe084d3@ti.com/

Link to v1:
<https://lore.kernel.org/all/20251107131535.1841393-1-h-shenoy@ti.com/>

Changelog v1 --> v2:
-Update the reg description list for each compatible and add register space
for dsc to make the bindings reflect what hardware supports although 
the driver doesn't support dsc yet.

Note: j721e-integ are not optional registers for ti-compatible.

 .../display/bridge/cdns,mhdp8546.yaml         | 46 ++++++++++++-------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
index c2b369456e4e2..6de4330d13f95 100644
--- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
@@ -18,22 +18,9 @@ properties:
 
   reg:
     minItems: 1
-    items:
-      - description:
-          Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
-          The AUX and PMA registers are not part of this range, they are instead
-          included in the associated PHY.
-      - description:
-          Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
-      - description:
-          Register block of mhdptx sapb registers.
 
   reg-names:
     minItems: 1
-    items:
-      - const: mhdptx
-      - const: j721e-intg
-      - const: mhdptx-sapb
 
   clocks:
     maxItems: 1
@@ -100,18 +87,43 @@ allOf:
       properties:
         reg:
           minItems: 2
-          maxItems: 3
+          items:
+            - description:
+                Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
+                The AUX and PMA registers are not part of this range, they are instead
+                included in the associated PHY.
+            - description:
+                Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
+            - description:
+                Register block of mhdptx sapb registers.
+            - description:
+                Register block for mhdptx DSC encoder registers.
         reg-names:
           minItems: 2
-          maxItems: 3
+          items:
+            - const: mhdptx
+            - const: j721e-intg
+            - const: mhdptx-sapb
+            - const: dsc
     else:
       properties:
         reg:
           minItems: 1
-          maxItems: 2
+          items:
+            - description:
+                Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
+                The AUX and PMA registers are not part of this range, they are instead
+                included in the associated PHY.
+            - description:
+                Register block of mhdptx sapb registers.
+            - description:
+                Register block for mhdptx DSC encoder registers.
         reg-names:
           minItems: 1
-          maxItems: 2
+          items:
+            - const: mhdptx
+            - const: mhdptx-sapb
+            - const: dsc
 
 required:
   - compatible
-- 
2.34.1


