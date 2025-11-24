Return-Path: <devicetree+bounces-241659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BECC80826
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:40:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A911D3A7CE7
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1005301489;
	Mon, 24 Nov 2025 12:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="hAD2lZ1a"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11021079.outbound.protection.outlook.com [52.101.65.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405993002DA;
	Mon, 24 Nov 2025 12:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.79
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763988011; cv=fail; b=i2ZiSF3TDVjTaqL6yYZasNt6Hk+tXVk+ornhrSXDb/FaVVb86SHWpmwtg1TUxQNwrL8V94t+gHiCfD13xd+nvE+Pd3FQFEMKRYp06D4SONy9leOGREz8jqe4k9s4VyqhiJLV3XpTIeIgxZAppb3hb9xugddPNLz9COw7Q+RfydA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763988011; c=relaxed/simple;
	bh=BRg27OUVPkLPgENSjrvsx81eXJ011p3gGoQbaeUNTyI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z13JQu7MWzbZfma7aZUrIpXaAiTSgbr6dwwFGEHlidI+SV63CGm+JVFQ8xMtk1chwJonwpKbwBBvP7rok5wzYARB9RKuvqsH6sF97/UKEwbi/LxZlwnUJTg9Dm1uU31v7rAVsNRkIEUxPD4h3ho24DAEH2+UK0YTMwCaDHKG854=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=hAD2lZ1a; arc=fail smtp.client-ip=52.101.65.79
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLvJ5BOY49Jtja3dJkhNLr1tN3+M4U+VuQ0jWE+wJaob5N6x2+ZLp22oTv+92mBDOrGoM7XEZyUb05DOKcrcyg6obFKbymMmHU4AIXj36gE1ZLcPWEpxkE3VELw2NsW9zOy3vV1UHRbDmaz+KsW5tmq6vgTIZUmanfZnPRgGgo3i6jGp8/BDHJuNeHXSxJsJBTQ7IlU0CzG548OF/3RgJG0GHkAs7I9BIXHfmephCAINEbPg5dNsLKORhSxHJX8ewY+uxbxFnZyLv6fIWXCs86ssTka6Mr0kdSnaNTkOU3nm/V8iX/y6yE3bH1m3hCf+iUbtFLire4XQu1hQPVPk/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6YCS070f0HECMbg5D/uMVn/e9fyRfWtYhycBfvkLrQ=;
 b=CAHx5X7ck3UhTMiFFIRWwVfC6coAcRe7DqjtsLzrfaCDOBEKweBCzaFpydoheOD27CaB1oLRdaw4ysR1LI79VV5Qd2dmX8x3POr6vU5l1+jYHjsuXF/KmOQa92AB+oNXzbJGb0a5NS+hxlqHSJSQznIeSiJqE31rE0yV/x+vJO+gPEHyyu0K/ugXyhVPd4Wds9+rTp5AiJzmIWyOaliiidC5rbAf759yCYgdgMl9k/v6V7pGHuYxPKOxOfLPPH32n2hZdO/K1SZ00sUXfOeM1jheaphfpD14X312Op96Hm5sdTuAEPa5hBKUdpO5LCTxobXzOSXmCfJukT5RWKy/Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=linaro.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6YCS070f0HECMbg5D/uMVn/e9fyRfWtYhycBfvkLrQ=;
 b=hAD2lZ1a1JzwwLqMiN2mCG/eW7HohNGIevU+DJ7h7TQPe9nuoXX+M/rSEzhbDw0mqFYsF5r5sAr5eFoLm/ojZC4JTibDnZyG4Urw9CMvAEttNxZAaCxdNA15gx0fLtKOy07x2LFQdf/d2CIt699eW1/1ib0x41d00TqUMn5fn3nDYgtkF+NQZl4ubZfX5JMuP1VcQWEqsSbwlVGEBazChKWk9PRW1KZJXtmSWTN2jQqUN62HDpVLDdcsuVPLvlzuVNZtSaO/I/4+f6v7OALqd6ZQXOC0IJSHWT8lPmq4uR4Te6I3T66+TKJXHpjA5lOz6a4/tv2/m/eJNvNiB4c7MA==
Received: from DU2PR04CA0268.eurprd04.prod.outlook.com (2603:10a6:10:28e::33)
 by DU7PPF971B7265A.EURP195.PROD.OUTLOOK.COM (2603:10a6:18:3::bdd) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 12:40:03 +0000
Received: from DB3PEPF0000885D.eurprd02.prod.outlook.com
 (2603:10a6:10:28e:cafe::a2) by DU2PR04CA0268.outlook.office365.com
 (2603:10a6:10:28e::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9343.17 via Frontend Transport; Mon,
 24 Nov 2025 12:39:27 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 DB3PEPF0000885D.mail.protection.outlook.com (10.167.242.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Mon, 24 Nov 2025 12:40:02 +0000
Received: from ls-radium.phytec (172.25.39.17) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Mon, 24 Nov
 2025 13:39:58 +0100
From: Daniel Schultz <d.schultz@phytec.de>
To: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<thierry.reding@gmail.com>, <sam@ravnborg.org>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <upstream@lists.phytec.de>, Daniel Schultz <d.schultz@phytec.de>
Subject: [PATCH 2/2] dt-bindings: display: simple: Add Sharp LQ070Y3LG05
Date: Mon, 24 Nov 2025 04:39:38 -0800
Message-ID: <20251124123938.936521-2-d.schultz@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251124123938.936521-1-d.schultz@phytec.de>
References: <20251124123938.936521-1-d.schultz@phytec.de>
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
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885D:EE_|DU7PPF971B7265A:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dcb206f-d59f-4d52-79cd-08de2b5696b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|7416014|376014|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?xdGr6H+FFVy+ySES6sUyyDBrX7m+bc9HHIKn7oVsBcMw5urypdnRDj7Mz6cK?=
 =?us-ascii?Q?bkvzi0T03nXkepoZwp4gUx2Fin6Fp9qzq1hQwWzXASkNfdLZnOBc1XAEv3HP?=
 =?us-ascii?Q?McWsOcn6XmVn8ADx9GHldmO8Wilq+t2gBa5FN85XwKlZV6QE6tf5t7ZdODWN?=
 =?us-ascii?Q?rYa/OKvlXsZ1Sb68bqCzCO9NGMmUXJkuFaWrARJ4ULMUg5QhdMG37eNozEjr?=
 =?us-ascii?Q?7H6D5kS59OBPWXCwi0siqOIfgNHZ6ucTofttSuzm82grslsbqRRfgnaBUUdP?=
 =?us-ascii?Q?kIe2m3bXG08WOFvjchWWyvbaPfEcbfs5Jl899J5Swt97ClBSgsyUMcQMVlZ/?=
 =?us-ascii?Q?NM+fDgLS6ahVGveVG0GQJoiphn5RSzP6nCFgmh26iUWPMJpTkQHQq41MJluP?=
 =?us-ascii?Q?fBNiJK4z7Qys0lmVAskc7IkP1arC0B6UTfUiGkYGzOVtiwN7va7rVC0yz49A?=
 =?us-ascii?Q?SzTXAUfenhM/jlFF+neAPbJaCMDisoEkcLgmYHEcxP3A98/ezP4K86T2S5fY?=
 =?us-ascii?Q?zKig3yb5P5PcjiAdMUI0N2LcGe6C8aspRI6iV7CF9sEmVqA3ipuT5oceRea9?=
 =?us-ascii?Q?4SL8WbLAfEOONCZ/mPzQc16s+x2Sj92GDzi5fkLmNPpt6W/xxdswO8eOtLZa?=
 =?us-ascii?Q?DTq5gWZUyRZLMGJa71S3n9IGOIDDxlzFI8fRjoYEMGkSdfJm96BEhsLPcQQ8?=
 =?us-ascii?Q?wIZcxbQ07mm98nz8etNk+Q9kPnVkrjNeER3Y4LqMNZGqJ8+T6avPfWYz25zh?=
 =?us-ascii?Q?Uz9eal2afezySAUfPgjPnz9gMhuSUn1H+86GaakfcfCPJ+wTF41KchA/yah8?=
 =?us-ascii?Q?9sfausRr/M6S+8GjBl5AGkOyBlB9wEBxzQKtz8QfAON8gSJL4E9m/0ZakhzF?=
 =?us-ascii?Q?vkPxBhmEgcjMB8IxF+oVLRm6TVmLlEsk/bDxh0QOHGiWkXo//YzCJqSFEfkP?=
 =?us-ascii?Q?f0sgNB7ZiWOZMQ9VyWA6sCLdTY6IGCMc9GD1dJMrcnAs4aZ491hiKbjfxVZ3?=
 =?us-ascii?Q?+EG3M5h98+HGrBljJ3vyKunDLXAoriKnBeuiVMeyxNAI0Xefh9zkS/jUsDhJ?=
 =?us-ascii?Q?bN6G4yAdAWPTevU2wsWDbCzKgTdu9yBeZUma5Tm2g1PClT/Nqf4LCRka4z6F?=
 =?us-ascii?Q?e6ONlBVfQnfP38b57oLr5zQlxnFO4L65/SMp9nzE2F0YE/3ObQ2sKiuJEcKk?=
 =?us-ascii?Q?wxwfJJHHWEOsriIrQqitWUMPk/pleKgM169uDO0kMXplKNQQL/pCm+D/z+Du?=
 =?us-ascii?Q?eCZp47nZLtt9K54ocOkO0eo332hoaPN8y7M//EVOw5adr/BCuZOkZ7ivfBQC?=
 =?us-ascii?Q?+6jF+8AA+pnbnDfnebg21fJnFxiZI206tPbpDS+Vpg9Z6OdaBPf+ek1f338z?=
 =?us-ascii?Q?3VQWuFa6s2vz6BaoqUwy/4FgUtc04f9QipNlj1Z8RCQ515gBPqRdKUqfnkQL?=
 =?us-ascii?Q?t3/qlmFAi9qypghK6OyAtOS77iYer6F22MMs5nGKekTpugLutCN/N2oD9u0H?=
 =?us-ascii?Q?bA2Zw2PP3oAAWjNffs7hsN+vukEGoauMEuAbS0l39zoVqd780/hIqrMB3Axf?=
 =?us-ascii?Q?jaItnWjUOND+34D/Iv4QcfLYc8CcWqXyzMKd/iUH?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(7416014)(376014)(1800799024)(921020);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 12:40:02.8218
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dcb206f-d59f-4d52-79cd-08de2b5696b6
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU7PPF971B7265A

Add the Sharp LQ070Y3LG05 7" WVGA lanscape LVDS RGB TFT-LCD panel.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 2017428d8828..3a55829f960b 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -284,6 +284,8 @@ properties:
       - sharp,lq035q7db03
         # Sharp LQ070Y3DG3B 7.0" WVGA landscape TFT LCD panel
       - sharp,lq070y3dg3b
+        # Sharp LQ070Y3LG05 7.0" WVGA langscape LVDS TFT LCD panel
+      - sharp,lq070y3lg05
         # Sharp Display Corp. LQ101K1LY04 10.07" WXGA TFT LCD panel
       - sharp,lq101k1ly04
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
-- 
2.25.1


