Return-Path: <devicetree+bounces-169923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F08A98B4C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:37:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0282A3B4B06
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586E11A070E;
	Wed, 23 Apr 2025 13:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="qu0yaedG"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2123.outbound.protection.outlook.com [40.107.21.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FE1A0BFA
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745415416; cv=fail; b=uMsH95VoaywLR8VzceQ4sgqxrk45rghr+/rGmO7xDuQ/yyo7d3wAKBjG76soQ/PFCu6z+0Pfb+GxWvaiPdJmunVPsEm2uSjB2R+C0Pkauu9BnR4c+xSXqsn15HVxGdwBCWX5MPkTBsYSjlxIBN6Cz+/DES0osqeRv6/E5LHHggY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745415416; c=relaxed/simple;
	bh=ccgh9NrWCaGHvc+CRZjlUnMA4clz4ARFwbQi5UGTv/U=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lG3aGVtKu+00wiGtKgd7swyFX2kewV1uIHjrnAReNVJ8BAlKZeIcZxiXbhTZiWP13VNYuQjLD7C0yN0DOeMz+mmAEgCQfcTXGbLCkOMYKMxhGF7LTAw2UN1UeahqNPWN/P60eckJKbKfOYt56WoRkGyhD3N9Mj1Jf+pVHHgkF+0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=qu0yaedG; arc=fail smtp.client-ip=40.107.21.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvsizmBoKhO/+RhYxJxBMeMDZR4QNcL6nwwhybnXJatDMC/50Lq0Ck5gD7KEP9BBZ2qjWlFsTas7aEMTpyvPGq254XYqqDJr9x5zwG5XplhyqZbWsg8W0p15Bkq08VjO4q5SvOrlGnVagBY97HNA1ynXQFdpTbxSw8JvzyPu7pk/hhfH5urLRqEPKU6czF5uBkajhJxuVFqzPyHSw+E3zW1YCJuIUglGseuHqKrv047mNdU/HnuSCnqzxTKNGdXNdM7JBb01qQIVTYVFZrFjdMV7Kzy7EGJd7neW9kH1Bed23h/AmZwApsiwWPV6blEbTYtscPFaf2/XtplApymFLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DmKZqDOTLERnHhUhJYE5kSfVUTTRvfEt4LvUxR4ysO4=;
 b=Yo9AnCMsUoQgVPMijGolDzci5yKHRxE9MxDakdBwqxWM+BWwQQhYf7IPePRwCgEypxNi029R0m/B0zlIDD36rEtPegjtY2nfKC3cw0FTUMQvTVkqdBPvsy2ONp7ANIKRd1hcJ1oDK3GV+1zd+PUzdtd9VEWx0bnfniRvzccIAN+cNGtGTz7ouXTrTqRRkjZTqEm+0hG6gcUZFRLY1nIoFWsE6lpZABrhGJP8X2AQ/XqUR6xaj2NiyySKBUYcVNDcI62cK7tHrLVOwi5lzX2yzQHVeTEAzVhBew3tQ4Tn80RNqRLY5Lcm6MsS1FXfv0MhS8hY1Ybtagf1ZrxIBGFsAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DmKZqDOTLERnHhUhJYE5kSfVUTTRvfEt4LvUxR4ysO4=;
 b=qu0yaedGYMu+HgPIMZ3OLBBEfV4j0/zF2t+dG9anFwGyDDE42qQEg323YlfhkhG7PmOGVNndRiiObXO/W9QSNoqgG8xJAMERsJY2MdpZJhu01ICn3HXGrTXak9Au7cvHvZt9G6EFeLsxfkSpEltVmSllBqFtc3TaagZF4FhKq/c/ssBp3M5RlmSUHMzhdPpd5AdEthYUJbtn2Yw9/2ViEaFmqfEAXeK1ZyMX7d3hC8pufcVtvPrGnt4Hk995eDoHTSJUYVD2XjBiBadqMYOTZM317Yls3uX85yuT1K7/oN4V1+bET7S3otq5SdXGDcPtIvYs//iOX9gVn4zCttPOfg==
Received: from DU2PR04CA0179.eurprd04.prod.outlook.com (2603:10a6:10:2b0::34)
 by PR3P195MB0508.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:24::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 13:36:49 +0000
Received: from DB1PEPF00050A01.eurprd03.prod.outlook.com
 (2603:10a6:10:2b0:cafe::bc) by DU2PR04CA0179.outlook.office365.com
 (2603:10a6:10:2b0::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.35 via Frontend Transport; Wed,
 23 Apr 2025 13:36:49 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB1PEPF00050A01.mail.protection.outlook.com (10.167.242.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Wed, 23 Apr 2025 13:36:48 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Wed, 23 Apr
 2025 15:36:48 +0200
Received: from lws-haller.phytec.de (172.25.32.139) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Wed, 23 Apr
 2025 15:36:48 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>,
	<w.egorov@phytec.de>, <u-kumar1@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<upstream@lists.phytec.de>
Subject: [PATCH v4 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC AM68x based hardware
Date: Wed, 23 Apr 2025 15:36:33 +0200
Message-ID: <20250423133635.29897-1-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Florix.phytec.de
 (172.25.0.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00050A01:EE_|PR3P195MB0508:EE_
X-MS-Office365-Filtering-Correlation-Id: 473f712d-46cf-4fa1-5601-08dd826be616
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|7416014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?4cGH3wNHldErUDQuHigASr48JJgp/F0EmIHcNFDyclcbc/oNtLTlUKaCjhVO?=
 =?us-ascii?Q?rO79NBHNHAbdA5TQISHwVLLzRV6iDRpZCrGdyG18tzhT2Kcujz1luB+0vXnV?=
 =?us-ascii?Q?UEHvMQRut5vdW01mN/NG1dLziNXrdBI+vSHskJlVaNl8CE5nAQPaZrtBtfQa?=
 =?us-ascii?Q?aAwMXjrpvP/bAvaEmI+xWXemPin/72zB/IHsa5aj/pEInrnfT9MwLBVczAcK?=
 =?us-ascii?Q?aDP6ZwS5O5ufYkZpxPPExWmz0Z7m98VW93IVgluiFB19Br9YVEK2WYNRHiYq?=
 =?us-ascii?Q?jvmu+f8EHRvMki+a/bGTUN9EWZuxQ/I161twmxafttGLPySJ3kfN0l7QTccw?=
 =?us-ascii?Q?sC8lTeYOSX3UM0QoR3Wx0ldqFixpDukyoLJiyp7NVLkrM/tUK/Kk3/yVsUh2?=
 =?us-ascii?Q?IZTiYCSdBhYVXxVTrLFPDfEU1YF+gbsicHVkTNC5tkfqPSzQvFt/Dc40iC9C?=
 =?us-ascii?Q?3E2MomtVz2tiDYjOGTCPeAzqdle5X8RRrdy5DMvvLqHYZkDsI1tZ7fdD3RI1?=
 =?us-ascii?Q?RRtQ+RS1YDUobYCmn0BETIw4CKO5wa7/QCXVc3BzqSHPzanU1b/90bQTIZLj?=
 =?us-ascii?Q?1VVMv47+6YS6yb2KhyUkjE+2l2yfs1qogokOvM2yMlAGsTjWa7dTZWwgwRC2?=
 =?us-ascii?Q?oNqX2snH3Qb4BEWQOXTkBkoY6KkqbhcAy+hCbPEA9VCV/gQnjhIdDN5XV8wg?=
 =?us-ascii?Q?4I22Uthp+pIW7HMQdMQRvdGr1rZqEykEBXhmX8zIUCUFHfksLxVyvEX4qanf?=
 =?us-ascii?Q?jCKdoyzmU/+mD9HRrynkkCM1xNYutmPppxMShZHc76m7JL1t11rOdk4u0r8D?=
 =?us-ascii?Q?TtW2h+ORLlqWQNWntC3puaUk4m8NiH4K+XxCwLziXDdHNI/VBJ9qWJLHfK4z?=
 =?us-ascii?Q?8oBajyv9jj/rUtOLDO0M7kjqUz/1djMFRtTKbB2O97XBZdakGQuA2iESArjQ?=
 =?us-ascii?Q?8+dMeh/HOc+shZN/dBiew5/2xCsNXdikavD5HmjYpGbn09zyl/1/Sfd6q80g?=
 =?us-ascii?Q?WlyD8E3L2kUFLw5aIKGqJ/PKhql1IGSYSGW/JnqIGJO+hG8fWR8RmQLFaZS7?=
 =?us-ascii?Q?zkAz7iumV5tYSlwZxDuZWIzKIu77vOA4yqwDI5OJbb0hcn++hmLuttIvhA9U?=
 =?us-ascii?Q?FDw9jKGI8MddM4YqZV4mcE2cgtSfqr2BXXCF+LDkqJL9I4+eOU8zLkjS+Csz?=
 =?us-ascii?Q?W/fdMfol7kGt+FP+BtXPej2LAWvDhHizbxkGtvA+oM1XSGdmpN4NDtCUyd8e?=
 =?us-ascii?Q?nts1tMtxZgO0SBwCCjeFzLsGQqheVWzeQbqI8kIC6+duHzLlTb/9ylJxc7/Z?=
 =?us-ascii?Q?N2V9Vw4LiEKp69TiwCsmGXrMdBG/3sn3OdeoLcLuYJxX3SXiGMrPvo/kg0q1?=
 =?us-ascii?Q?BUOMTk7YEycvE1Ey/LRdQ4lqYJxlBh1/kZGVIMfqUnCGJOOT2RlDkoPg1X3o?=
 =?us-ascii?Q?7PZkZjhzbn2T5dqK/BhDO+meCZfdeTcNydbeHJkANogdGKb8GU0k3Gj0k0c0?=
 =?us-ascii?Q?jvpV6C0uen2bTgX58oy5uF/7p8JzWl8FHUCD?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(7416014)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 13:36:48.9188
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 473f712d-46cf-4fa1-5601-08dd826be616
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF00050A01.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P195MB0508

Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
and the phyBOARD-Izar carrier board.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
Reviewed-by: Wadim Egorov <w.egorov@phytec.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Notes:
    Changes in v4:
    - picked up Reviewed-by: Wadim Egorov and Acked-by: Krzysztof Kozlowski
    
    Changes in v3:
    - reorganized compatibles into their own entry
    
    Changes in v2:
    - no changes

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 18f155cd06c8..30631daf9a84 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -139,6 +139,13 @@ properties:
               - ti,j721s2-evm
           - const: ti,j721s2
 
+      - description: K3 J721s2 SoC Phytec SoM based boards
+        items:
+          - enum:
+              - phytec,am68-phyboard-izar
+          - const: phytec,am68-phycore-som
+          - const: ti,j721s2
+
       - description: K3 J722S SoC and Boards
         items:
           - enum:
-- 
2.43.0


