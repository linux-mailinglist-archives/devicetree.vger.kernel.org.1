Return-Path: <devicetree+bounces-167324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CFCA89EEF
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1215016FEE0
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E0D2973BA;
	Tue, 15 Apr 2025 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="f8J+ugpM"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2120.outbound.protection.outlook.com [40.107.21.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8287A28DEF5
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744722323; cv=fail; b=QuZ2rQ6c5zGjqJ1yRw/r97aKzAUu3tjN1p6yKy4tSPRsLI5LC6oQm06DcIZUIzFBipAO9nbcxUOrdQrdq6nIyE+osvNnkf0rINTtVlGyxkCfwYi9GdzK1wZbj1uAf9yJFA05fIl+n5NZA6A0wjJmWbBAKyXyRnbEfQaKBr0LIwE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744722323; c=relaxed/simple;
	bh=c/V9rwC/t5GztueC691Nq4vxVPEG/vu1oFQm4e8fwAs=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=IWljK7a9ucT5tCNd4z7KeWJ/+fmJcfd61vz9tSeaw9/4BlfpsM8T7uR00FrTMQA/misemyWR+XOCh8wXqYjYMYeN6HNv9HWCfUS2dFKyMonabea8IIpE0GQNzACDM/3Ms33iupzeiAMIBxrTbP32/06CvZoGXdgjqTATZPsBkls=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=f8J+ugpM; arc=fail smtp.client-ip=40.107.21.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UsKyDe+O7tLaQzslmtFzwBsMaOeFsOHf/sTyzDx46xS4Y/qG6+RJ4UQzB9ucCIlqvyALic01ycVnk0PsMo8ErvAQ/IuYz62xfrZOxN1joLKZihkoIbGrzSBxyWoIhJquO3NzPF+j7osvgYXeSFKlgwtbIRvlyHiNmrxoPcWYafZzQL9AsWtJdJnGL8h9R12ZGQtMdYKnnE3h7Z98c9llyZoMBLH74A9UOiFKr5sYjUDqnUQq8YqMmcfWkBu4VaxZhFTBBnlyLOfwkAzg6WyxCpNlFgdWMkjX0W4dnh0kiR5usFRFrEmenrGakTLXr0BE9tTEH0tX95MEAaer4pbKUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lpk3tUCx+LmdySb3k6XF7loFPVhvy6rQVkP5PVbSh18=;
 b=mK+S0Fr1Fgrh1JDlWeOrtwjmzGqhMTVjBW6tTSbSm9E9Ca78hGzCCnIzipGB55oUsUs6B6mhjurVeJJ7GUnjIi1D+KoWp10mIFs/Wkm/fJz2dVy40xMog8R0souuSvsSqW2558xS2RwTw6zv4V1TY8vnF+aP14FAG/1pyQQkT0gpcNj0EFtAOi9WgCXNXboB59PFt9H5sZ45H7snlw4xK6e39wgmmfU4XuMGvSLyuThHFQ4NZVmNEbCDjMGNDHFcMICzVWpgQE4sCs/onRRhesGmcSgB7Nppyfnbr/334zHOBsfbKI+kaRNo++Hr/CSEi72TFm4MfTN7FubDutIoeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lpk3tUCx+LmdySb3k6XF7loFPVhvy6rQVkP5PVbSh18=;
 b=f8J+ugpM6OZQQNz9hRKCxrVSfBal5Fo2aF1aUBpfiNKAr4NFxQJTd+D8kPLzM9wjqayHgHCHruPWALoTgEAiaE7/Fp/1xM4V522APw+yByV2VP4NLgO9fjVCvPRVJ4abStse7Law7EuZtay7zsHWM5kuKWUstMWtdBewoNguuNSxKByl8s9lPG9fygf9r2TfbSR9pEO8TDjoY2ywRrkYcSdncZSMjKQmjVX1RALd25idnJpCJHL752kGbMCEXKGVC6Vifrs3AbUtdLe7zZzbqiU/IeEb1T+2BTSOZXFQKiZwPEJU6XSdGcmnIXa3TPG4uhAZ1hEPK0cYha1Vo+tkeA==
Received: from DU7P194CA0007.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:553::30)
 by AS4P195MB1718.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:515::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Tue, 15 Apr
 2025 13:05:10 +0000
Received: from DB1PEPF000509ED.eurprd03.prod.outlook.com
 (2603:10a6:10:553:cafe::33) by DU7P194CA0007.outlook.office365.com
 (2603:10a6:10:553::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.34 via Frontend Transport; Tue,
 15 Apr 2025 13:05:10 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB1PEPF000509ED.mail.protection.outlook.com (10.167.242.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8655.12 via Frontend Transport; Tue, 15 Apr 2025 13:05:10 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Tue, 15 Apr
 2025 15:05:09 +0200
Received: from lws-haller.phytec.de (172.25.32.139) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Tue, 15 Apr
 2025 15:05:09 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<upstream@lists.phytec.de>
Subject: [PATCH v2 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC AM68x based hardware
Date: Tue, 15 Apr 2025 15:04:56 +0200
Message-ID: <20250415130458.33714-1-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: DB1PEPF000509ED:EE_|AS4P195MB1718:EE_
X-MS-Office365-Filtering-Correlation-Id: c1b706fa-db8b-430b-4f52-08dd7c1e2731
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cp4E9xudZuacjQ90zXh07m4neEV54nFpDI5vk6v3oRz3LyUmYlKi7XNYp1kU?=
 =?us-ascii?Q?b2Pz+q7+SWCc0wTIWNHMaCOR3wY87qP/5DA1qv4x6uTsVqI+tIF2KjX41Coy?=
 =?us-ascii?Q?fbgLgVbl3oY0am4RrutUwv4Jkwg1vKboLxs4QmQcRYMcc+qOC8J4NTQmpC3R?=
 =?us-ascii?Q?DxGZWbU4eOSbOaazkgbx3A8Iw4lncwSigB9Cl3+9WqN7OTRmOSY4BM3ZiSkK?=
 =?us-ascii?Q?72rN+48cgaTMNLAiL2EVAe4paRERO8sPlrkKYAzBoCvjKkh3BseqZU1Qppu5?=
 =?us-ascii?Q?rPyghdmVzdJDz7ebxZ28klsGPnoa+1RcOdKcAHmux5Fily/GiFS3b8UjJrtx?=
 =?us-ascii?Q?kAjhJJa8DxJvLSHnlCuWT87o3rX6N+a9Ky1otQ83p4x3OWP59d8Qr0ckXxsF?=
 =?us-ascii?Q?jeJi+6wGIaMBDd0Q88sM18Ptp+r0KAcXk37foLfFyoylHcmPAu1CAXfGTKpw?=
 =?us-ascii?Q?ac93jsFaK0fbdJ2YRemb9dRjB8ueWF5K0BVeUKbwXPnph3SUsT5IuK0a6Q/U?=
 =?us-ascii?Q?QackkMw6QgjwKR5nF46U1BZ8Yixe9HBG3T3BIhMlJBL9ySoGl3sAdSZzqEAD?=
 =?us-ascii?Q?pTGTbU4FoQLamfjPNDQVBXqypYm+9/wFisji7N+G7VsuXyT/ubUk3MtAueke?=
 =?us-ascii?Q?qGijIE8kswQQ3ni+mSvZaszLgPmVJZneao7267ogi78RSk1dRX1DN9qJTSPo?=
 =?us-ascii?Q?Bb63QEVwzIc1nuAiTRaWKuUsjequK/08iVRND+Y8lIBpm2PzPxKZ6FYMC9Dj?=
 =?us-ascii?Q?mVDqcceKjSlZmZqvxfvY3jyanbUHKhdD43YKo3HlqMYP2RmIWdmMoV0hq44H?=
 =?us-ascii?Q?vEYfCgdCefkFL2OMxYpeV2v2mlyuL6gq36HwRmT/1okxBqEmPIi9VrStS5w7?=
 =?us-ascii?Q?bkggvG4JM7l/h3uH/l9V/f/jgQwrddcdo0TNrC6HKAL67aQIcQqgQhu0OuhJ?=
 =?us-ascii?Q?PlTn/F/dpmKGZ2EUQVBDng4wEQ4RBpmb6k+Y//WwnVlzxY+OyWtjtmDkItkA?=
 =?us-ascii?Q?c2xQTOw8p5D0ZogtYug+5zjweph8mednvT0NPpVNP5UniLW+750wbYsF69cY?=
 =?us-ascii?Q?yQoP/EeJ9lrIun3p4CpRCMOtnzgQLm7PQTU5uEUeHI0ekyD58nGw8+aPYbic?=
 =?us-ascii?Q?jUjeGNTR0zwWv6tGKdszNXKl5RUknGtlt4/KoPfc5JT1967uqZPBiTrOU8TV?=
 =?us-ascii?Q?IC/5gUlcDSSuCeSvK66HJ9ThrIK25GRFWn/Go2KpqHxzxvYoXtvuguWwtq01?=
 =?us-ascii?Q?zxtm4tTFMXimsmiYZzun6yHAFr0tO5px0b2GlITpS03B8xyDsrvZsG95BCZ/?=
 =?us-ascii?Q?AH+YYdhd++Fj1VGvqXFpq2mzoOlbnTQBZdAK2oqJAlr6f1MCn/MJ1u7QMrXP?=
 =?us-ascii?Q?sIocNyp01UeinCL0shx9PR26/7ocEZo3oVD9JlaRo5RKU48t7/Z41LVSzZh/?=
 =?us-ascii?Q?jCchxQKj8VZHlGgqX1NtNeAFMR7HagVHxtA2ytlEFj2CYUdDdK1lI31To/6G?=
 =?us-ascii?Q?LGG7m2US35tySGyE3W+jc4EFoNy1+DkSAUb9?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 13:05:10.4103
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b706fa-db8b-430b-4f52-08dd7c1e2731
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509ED.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P195MB1718

Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
and the phyBOARD-Izar carrier board.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---

Notes:
    Changes in v2:
    - no changes

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 18f155cd06c8..a03fdb9c0482 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -135,6 +135,8 @@ properties:
       - description: K3 J721s2 SoC
         items:
           - enum:
+              - phytec,am68-phyboard-izar
+              - phytec,am68-phycore-som
               - ti,am68-sk
               - ti,j721s2-evm
           - const: ti,j721s2
-- 
2.43.0


