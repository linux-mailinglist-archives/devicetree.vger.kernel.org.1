Return-Path: <devicetree+bounces-245582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB1FCB2B45
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 11:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 350AC30909FB
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E31930DD3B;
	Wed, 10 Dec 2025 10:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=phytecmesstechnikgmbh.onmicrosoft.com header.i=@phytecmesstechnikgmbh.onmicrosoft.com header.b="Okvfpenf"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11021091.outbound.protection.outlook.com [52.101.65.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2972D30AD05;
	Wed, 10 Dec 2025 10:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.91
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765361784; cv=fail; b=RcjMrE1Ls9NfPjp8M5+TzXT40R8Qn93KW5kOzRuQBk7A8fwCc3jMaRV983a3gQtSa/k+u98VO5zK1dsrzUL1IG6OVfPNdt2S7vu/CS4DG0GVPfIu0oDxEPnSMUUEuwoIk50DDpnHzoxoqTv+rATuU0r5Nmdq0X4RyZSYHQeP6BU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765361784; c=relaxed/simple;
	bh=Jje1HGvqkXSE2GFUrgAg7ou5ZSmtZhO6jLJq0RwIjRw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZKrdhR6AgAzrxNLRqypzyHy1bSRt9AqXPgjUM+zcEBlVQWnpwEbMZEnD9Ci05Cpy2hdx5hFqd5CpkC+ajEjOtrF8c1tH3uwvkXNOv7M3PAN1RHTBOgfcgtq29JpN3GfnUoF58kkSaJK8C8PvKuT9HGoN/W9yVnGb2bRWA2MabpQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.fr; spf=pass smtp.mailfrom=phytec.fr; dkim=pass (1024-bit key) header.d=phytecmesstechnikgmbh.onmicrosoft.com header.i=@phytecmesstechnikgmbh.onmicrosoft.com header.b=Okvfpenf; arc=fail smtp.client-ip=52.101.65.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.fr
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o3EHkJoMTrs8NVod9tHtO9qVclyeUCDDWBNdvLp6m5hBsJrjgs/a4b5xhi572cLtwGdo45LtpEDEw96DttwrThTiHS2XqtTTj2SmcQ2l8M92YW9BmXhqeH1BRMFTWJcQZ3/mrBPVOsm6Dq3dAZijXMol32BYU2u3bmuov1hRXzwIDXD2bwRkRMu0aNJxr+kAfOMvq/EcZMvoKW/nuYgrvcMTCkhuuS1A+4ialC38jxUpER31yyt1etpG2o45vqPiO2vgzP3Qbl7RYeYLXonpvAFIw9AvjJ9Mk665B1MWtKd6F+WMpHjTx1S4dK1j/XeTq2KxNaNMwbFwMZF2IChnzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/GQP4wRF0C9Ayuoe88iWNVNtaLSpaAhjrkZfGNetWnY=;
 b=O5qzHaPqL4GVlnpakMg43WD6cVNiMHmCGJ1KNBfBKz6nBB/dHPmRLIDEFbnt9D3LuEzz6AY4NNyDj1tktZtq94xlfY2WedC9Q/D15mF48UOD1Iwt9LaWtnQ9rmDEbMPrLu2HDuz5UdH8fRRR0MrxDAptQjvxqA+/9Ry5HG5KuR25HTGfbniYlimTh0npPs0RdW8+8mfwOoMyv1fPWX/m3MKX7XcraikAt+Z3R1baETL3yuO0zjorQxDzAOJFueNck5/rwkt2JqCCgmtkEfJO6jfWWRPxai/9MSbQe+YZ7MN0QrY8ngZf2vmrKlDwpqxDaM2JchN/0R9HLY4VViXFbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 91.26.50.189) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=phytec.fr;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.fr; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phytecmesstechnikgmbh.onmicrosoft.com;
 s=selector1-phytecmesstechnikgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GQP4wRF0C9Ayuoe88iWNVNtaLSpaAhjrkZfGNetWnY=;
 b=OkvfpenfLTjCxcrcVAk1O/FbPE3+UsLP9DYx5ucI/qqXaCCfxfPjxsRDnz1hmzg/H08ZTWHJh+Z1Tf+H/mBN2sbjJYaoTNepcVNFsRZZsjRLLCe6RjG/5zrZJ/NB5jJ+6yvTKI5ixlR/UcRkJdfa4YjlEnZZjXprHlfBr8xICx0=
Received: from DB9PR01CA0020.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::25) by PR3P195MB0554.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:34::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Wed, 10 Dec
 2025 10:16:16 +0000
Received: from DU2PEPF00028D09.eurprd03.prod.outlook.com
 (2603:10a6:10:1d8:cafe::61) by DB9PR01CA0020.outlook.office365.com
 (2603:10a6:10:1d8::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9388.14 via Frontend Transport; Wed,
 10 Dec 2025 10:15:37 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.fr; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.fr;
Received-SPF: Fail (protection.outlook.com: domain of phytec.fr does not
 designate 91.26.50.189 as permitted sender) receiver=protection.outlook.com;
 client-ip=91.26.50.189; helo=Postix.phytec.de;
Received: from Postix.phytec.de (91.26.50.189) by
 DU2PEPF00028D09.mail.protection.outlook.com (10.167.242.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.4 via Frontend Transport; Wed, 10 Dec 2025 10:16:16 +0000
Received: from Postix.phytec.de (172.25.0.11) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 10 Dec
 2025 11:16:14 +0100
Received: from idefix.phytec.de (172.25.0.20) by mailrelayint.phytec.de
 (172.25.0.11) with Microsoft SMTP Server id 15.2.2562.29 via Frontend
 Transport; Wed, 10 Dec 2025 11:16:14 +0100
Received: from pc.home ([172.25.39.2])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2025121011161432-315 ;
          Wed, 10 Dec 2025 11:16:14 +0100 
From: Christophe Parant <c.parant@phytec.fr>
To: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	<upstream@lists.phytec.de>
Subject: [PATCH RESEND v2 06/11] ARM: dts: stm32: phycore-stm32mp15: qspi: Fix memory map and pinctrl
Date: Wed, 10 Dec 2025 11:16:06 +0100
Message-ID: <20251210101611.27008-7-c.parant@phytec.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251210101611.27008-1-c.parant@phytec.fr>
References: <20251210101611.27008-1-c.parant@phytec.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2025 11:16:14,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2025 11:16:14
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D09:EE_|PR3P195MB0554:EE_
X-MS-Office365-Filtering-Correlation-Id: aa8c9a0c-c707-44a2-7595-08de37d527d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IdvYewS6k7WRvVKsHDrTKgTWnGqko55OVpmHzSXxR0Do2rQ5vNToswg2VAhC?=
 =?us-ascii?Q?AGEUoXldOoGdBnuyt19NX5lGwr0eILJdIYz3D+pBiq9nH8nt3K4G3usYdGp6?=
 =?us-ascii?Q?0drDog7Fprl6Gainx2mN4TwSCb0QrA7jcNp1JeEReQX9+t9y+tkzfxzd8ty6?=
 =?us-ascii?Q?+ez420hEt6LN7mh+YHh84jWmf7jXCH2aNnb9bKQRZRLWH6Ehn+UOLHX9QC81?=
 =?us-ascii?Q?j0ozIbbsp6qAueNRgEhiJ4etXZJfX5zglK4ZjZExCxhh7n3zoO0ErCHZzhVE?=
 =?us-ascii?Q?uBd2LBhu95G06yFU1ebnPxprvouHC+2PLa9+aGHJpAG+ySYmAJ3qMejcrpNp?=
 =?us-ascii?Q?yOsSitx5h4/Ob9hHwkA/6WoK2g1mgYq6J207URerqcHy4olnAOuQsCyFWpAq?=
 =?us-ascii?Q?PR5EFa4JkfBgIpikwH9QJEfyGvjdMcuEk4gFsvn5Em+Nlc0NmM3HOG4mZNip?=
 =?us-ascii?Q?Y9mcGnSRzuGRHlUXzUmIKe7ERN6Yea1zos3n0JTxVum/Rp7ccQgYs6ZIEF2+?=
 =?us-ascii?Q?+1g4IgzuPzYHVaAFMYKitHIwPkTkNVqDEQwq6jIsPr+H0oSjh7bkHoNayiYz?=
 =?us-ascii?Q?nV+afHetjcfx13nv61eqFpsn/P0iIBRnkpy8J//MFRrdsG25GY3bczlwQlST?=
 =?us-ascii?Q?WSnpwMIZcpKkm0go5hPIVFHsaBSWDefwCQ/XRAo5yanBpMzU3swODhEFZGK3?=
 =?us-ascii?Q?Piet6YZcturZA82Dp+bvgGWt5T1eSZ5wlFZUpYBCctsqwccP2YXLcmiyy1X/?=
 =?us-ascii?Q?O3q6pBv/JmA1B7uwDs1IVq8QFfteFZu0HyGts0RMiNPCtM3F1ys9VUrhTS71?=
 =?us-ascii?Q?Qw0BGbXeLm9AAHuEdb13DBOYiwKU8Lks0KRt0huyvdmphOKAbcL0TEYkGkst?=
 =?us-ascii?Q?iO31qfZVDWehMcZbZPdTFbdswX/E3hIOqa9P3BtrOQrkpXIyW5lbb5UVxCw5?=
 =?us-ascii?Q?adsXQAZ1LQzZuZxmOxMWM9U8WhJxJy5ba3DHJkZjNJe5qk+L/oaO0caMZ8DH?=
 =?us-ascii?Q?PDUN3zOvozAprQWyau9Tmrv34dOfGQJXs8gze8AisgKrwxHyVW52bYreUOII?=
 =?us-ascii?Q?WrHktgtS+l4dAxG7hURxH0BVjrChIk0vzLo1Upi/rqN71W0piK84TQA9lj/S?=
 =?us-ascii?Q?upXpnIY/OmHlHcQwGNhHv7H5ZJmDLgfoT2jsesFBsfZEDs6baSWvcVFPVvM5?=
 =?us-ascii?Q?qOMm5wzFLQYectcJB9WERPG5Yvt2pCcaewxd/Mny706gpuvtl+eHP7WTNIfP?=
 =?us-ascii?Q?CxC2KSHT9roqe98ZL3mIo64Xwh1rtSkb7GCoF+xONS08VB4qjk2AwSTWSwgx?=
 =?us-ascii?Q?yFZlGkpLWO5q5FiHNvurxLg7NbLJndfI1DRu9tbn8Chkr3QgnrwCMCQRvpcS?=
 =?us-ascii?Q?YDeJrm7TSlGuX8wsOEU3kjUm3Zy08EuhDTUgi2kWHITxEzVJogcebJJ+RtWP?=
 =?us-ascii?Q?rpsfyxuCUp25gtevd88Hw1vr6nrWVz5IR3woTzbKEFH7BUg6ZQyK5Oi/4VBj?=
 =?us-ascii?Q?a5IJmaL8Qy5A6YFhqdvOAIt+RQJKw4scUK9cC76oIAak8NfUxcUhQrqX2eH2?=
 =?us-ascii?Q?U1jakUoh10S206WKens=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.fr
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 10:16:16.8327
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8c9a0c-c707-44a2-7595-08de37d527d5
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D09.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P195MB0554

- Add missing chip select pin group in pinctrl.
- Overwrite the memory map to the Flash device size (16MB) is necessary
to avoid waste of virtual memory that will not be used.
Without this modification, qspi probe fails because of ioremap error.

Signed-off-by: Christophe Parant <c.parant@phytec.fr>
---
 arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi b/arch/arm/b=
oot/dts/st/stm32mp15xx-phycore-som.dtsi
index 660cdc260963..72926c3de52c 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi
@@ -290,8 +290,14 @@ &pwr=5Fregulators {
=20
 &qspi {
 	pinctrl-names =3D "default", "sleep";
-	pinctrl-0 =3D <&qspi=5Fclk=5Fpins=5Fa &qspi=5Fbk1=5Fpins=5Fa>;
-	pinctrl-1 =3D <&qspi=5Fclk=5Fsleep=5Fpins=5Fa &qspi=5Fbk1=5Fsleep=5Fpins=
=5Fa>;
+	pinctrl-0 =3D <&qspi=5Fclk=5Fpins=5Fa
+		     &qspi=5Fbk1=5Fpins=5Fa
+		     &qspi=5Fcs1=5Fpins=5Fa>;
+	pinctrl-1 =3D <&qspi=5Fclk=5Fsleep=5Fpins=5Fa
+		     &qspi=5Fbk1=5Fsleep=5Fpins=5Fa
+		     &qspi=5Fcs1=5Fsleep=5Fpins=5Fa>;
+	reg =3D <0x58003000 0x1000>,
+	      <0x70000000 0x1000000>;
 	status =3D "okay";
=20
 	flash0: flash@0 {
--=20
2.34.1


