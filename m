Return-Path: <devicetree+bounces-266171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GS7Lhp0lGnVDwIAu9opvQ
	(envelope-from <devicetree+bounces-266171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:58:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBA214CDE6
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2B21303AE6A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048FA36C0CF;
	Tue, 17 Feb 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="cAC0QJ9M"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010057.outbound.protection.outlook.com [52.101.201.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86E536B07A;
	Tue, 17 Feb 2026 13:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.57
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336532; cv=fail; b=jHF9OJZuS65+dEe/RHi2Aks6XPHHdljqY5iPuMn57YrTj2BOCP/uGrmy8DdwIltH/8MoLta0zDRM2qqOrzQuZUgFRa/brMKONKs1ldSvnMLucjYi0o7AQZ8LSQnG50kNld3A4LZNzIELE7F7i0RR74hNCLy7LyIi0x8+OVJeX6s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336532; c=relaxed/simple;
	bh=10XhVfIigjpv/D8FCCNmBfXN26ILw9a1M+VyRBPayZs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mWbrQrob1jT4XhKtLRXjzsPbo5AbRMfJMhEr5ml/yP8AC0HFOMT1aTObMojrb07HRfofudRU+FZ2dmDPjy3NxbpkMQo4a3I/qn9eapXp9+6PXlOmYX014zSefsMT56sR9c8cAfZCzVdZ4c8o/V+2kHrg7KI2e++XGE2UaPl5dCs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=cAC0QJ9M; arc=fail smtp.client-ip=52.101.201.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUBzzdI54fpjmRwMrqx4hPko/egtvHFFwVT+SDsPy17G9FcYZsDvgyyan1FRGFsaxt7LSLpN+ggRkqzRjG3AG1tEyVBqvuEyLjVrdyizTNQ/mPV5L33Uw1wgMCbIAHZlJp8Se8e5cvABN8cm2L/6XeSlxeYKVjzyZhc5hVekMWVErsqomc0deD6fNffuN7sPXKbCydxBW3bsbimySmn06DIwlfxGVH2LJqw/nCt/PGZzBKe5zpA/xnF7q9QPzIGEFKyENQPTPTw/KV7CYAkERkWBDnbA0wIfxWff77GFhMWaYvmrkJscdwjfBTSOglTTfY6jDYcGgk8WqZiuF8I/sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pMGxqHBenkhXclD0cCA641SdS/zbYThx3ZyEhqar1RQ=;
 b=gyF/yHB3EHeH5ilS4TcctR0/WhcZSuXK3iGonYQ+L8pKWHHLJTJ7zwjoUUCldx1VUqot2DLsTVCuvSSLAY0fTa17IOdIRxhd5mMCgRo0azctPiGMlXwI/dFniM4V/NeXk2lLtnKsiDl+L86GYdAqKsXsFsMqtO/NaxbToGuxEZXehqk8E7WRwpMA4tFMucDMAJnEkx72eHkE3Jt/iI6mS8x6UE8FJU5fys5XerNWfzaRJdjkYunQet4ITwH8Ljl647iFCufKmro1Zwpay0E5+rsD27ManTctuGIsXSqUTPE9om0Dnxr5E2n5QVWABlojl6MFESSWMxI43pLHSuoDgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMGxqHBenkhXclD0cCA641SdS/zbYThx3ZyEhqar1RQ=;
 b=cAC0QJ9MX05VhRKsLgLu34AxJPgSPFiF34HYirMUkKE8iL6sLiN4ERqbDRUPXkvvUAG/lkQe4P3LXkeiS2U2JyabNGib+VEz8CKSX87+N5humkGjtq1bLES7q1mShEKfjlVpPTmqRaKrLrIPcZAJfZEiMZU1b646Ys/J6QYuX9eXuRwYbNOwR3yUO4P26OOu1RftgS1ls8PLZADh84PdbHxD4L2I/+ZEJJNmU2IYqINczEwQl/U2b7UA3iVGcsAoZw5QDhjOqQEXiLVe8S+EhoUzwqemVRp8o37Oe+A2oz5Tc6+IZ67gCEEFoZeGeAmxkUUib+BAUK2L59xmSAgXlw==
Received: from SJ0PR05CA0017.namprd05.prod.outlook.com (2603:10b6:a03:33b::22)
 by CYYPR22MB4393.namprd22.prod.outlook.com (2603:10b6:930:c1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 13:55:29 +0000
Received: from CO1PEPF000075F4.namprd03.prod.outlook.com
 (2603:10b6:a03:33b:cafe::9f) by SJ0PR05CA0017.outlook.office365.com
 (2603:10b6:a03:33b::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:55:26 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 CO1PEPF000075F4.mail.protection.outlook.com (10.167.249.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:28 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id AF514FFDA2;
	Tue, 17 Feb 2026 15:55:23 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 5/5] ARM: dts: imx: b850v3: Disable usdhc4
Date: Tue, 17 Feb 2026 15:55:20 +0200
Message-ID: <20260217135521.65742-6-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217135521.65742-1-ian.ray@gehealthcare.com>
References: <20260217135521.65742-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F4:EE_|CYYPR22MB4393:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 44aa140d-e734-4034-4cf0-08de6e2c3562
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?FoxNGzwaesj+/xV4Bqw7bkfL0q9hqfQdFzADWs5gaF1niNLCh3YHr2+LbIDU?=
 =?us-ascii?Q?mRzxHuX+s+UHeXw3oEg65CjYi0svP3GGqvqJQfmCNPnleD/f5LuIdjlH0G0Z?=
 =?us-ascii?Q?aqxjAIpR4jI1dgpVYmBPa+TE2R0kQGTcKkltSjP5ilBPW7hUs2IdG8C15ppc?=
 =?us-ascii?Q?PZfT4zBNeUi0/a+IjXYbkluzWFJehJGKAQM4MF7ihOtHhyXeTMsX7epRmXnI?=
 =?us-ascii?Q?k9lzwFP1y9vk8r237SNoYhVr2PGIHyNC2UCWopFPXNovoz0YOauUTp8qpxuT?=
 =?us-ascii?Q?UXE3/njRNwBdDCm7XpYprSxtMB/d7pHdCpHeIEjB2QaMf/Zb8L2PNoDHZGRS?=
 =?us-ascii?Q?jOWGQ8OM0isvAem4zTZlk4Mm5qcr5wtVEpCDbA+p2k8lzCySPafZY8NHvCm1?=
 =?us-ascii?Q?yB65PijxP7cmT6ekeyo7mgJsrkos6mvy9AcrS5Km+05uDWttswwTz19SZftu?=
 =?us-ascii?Q?16RKfZwV4cUpEgINUcHgHOUlg8n5lJQTGe4OYGNxezWzYRI9uVVjZ2iy2Ruk?=
 =?us-ascii?Q?lMBUMlGv7elsz60rCzFXkVFAmeFjXVie0pQYrRvIZ+DwYofl2kyNQyklY2kB?=
 =?us-ascii?Q?zIX5Z7hHCof9SzwRXiGNkqNOScqx//KORKnRAD+ntsAdQQ6M+kIWIEz+d1Kp?=
 =?us-ascii?Q?oEapFmWn3M611WdtehOs+SRHv2SSzM1WS8Ac5Q02pG3PBlaAXOJtSGd3ukmc?=
 =?us-ascii?Q?glqLfI262+Vk5VsamOp7LI3Ei6BBOdPJhMpl0eBi/E/zPWMn/FU2e9/hyG91?=
 =?us-ascii?Q?B+7X6qzHnoxGH92Y8dNki70QRvGmgnLAyl6JqT92B5F23K9QV+i1unzx1MCr?=
 =?us-ascii?Q?nxcE3pFiGUiDVyaUL+mjbmFlDl1QG/acF/btbE71gzoRQHC2tv/FbzilBiIc?=
 =?us-ascii?Q?4cfTC6ETVpjueh1uLu+08rLQHK+lDRyNNRoZLGlkAaO4+uujW9RMBfR+ql4J?=
 =?us-ascii?Q?cIu5sJVEBLt1Ahc/kEFpNknNh3Cn0Cr2qiHqcvN9zuhiIx6pG/ZPNy4BDgbV?=
 =?us-ascii?Q?ziHhIC3eKQ3UL75DNUUQZlCggUeH1ZlgAeztQdeABrSpB7+1g1aeq1Mmm6dl?=
 =?us-ascii?Q?vW7qmGz4/E+DuJXmWix5JY6oP/cNKohs2l8nwhHSeGaIQRrUQOQ12mK+9DLZ?=
 =?us-ascii?Q?LXfkMEkjO4dX/7mePV3GoMq51TldATTbwo6uH2+qJd/AvKk+RJwZhC8FRaKr?=
 =?us-ascii?Q?jij5lTEZ/N2QAqv3Q4pAEzYrEAmwHfCsw78s+zorvSzLlC3Q6sizQiUk8qla?=
 =?us-ascii?Q?kbxeELSJ7ItghWO9+7ydEyCbawKshdROusJjg0xeChXfb76w9WEOAsPYrX2/?=
 =?us-ascii?Q?PqSqxgiPOuwODMzNnxm7wTp7jijFb64RH55RjHdwgvgfwDpe/UP1tsqkFEs5?=
 =?us-ascii?Q?NRWFz5/hb9Qzkap2sg9T4tn0jN2xuEsN4Pd342hq2bFenBvT4WPLDZkZQm7v?=
 =?us-ascii?Q?pQxfPE7EDd4o348b8Tdz7V9I5eXYf9x6Cr83KC7qRyLipmgWkEN2SKkOVTx6?=
 =?us-ascii?Q?Xm5uicwfwWKmqcISjkVImTTvb/B33pkar8UReVSG3Y73jSJ89voZl7YK22WW?=
 =?us-ascii?Q?uglwJ45Li5pVvw1B1bpBuWv20MrbOSsM6UCLcJj2i5dSZFqO7mbQuqfhQhCS?=
 =?us-ascii?Q?JS4RYA58qmb7BXR7G0AHzwEUFmV/udzqeKkERWEI2kZTB/EFas3lMp/YYRqe?=
 =?us-ascii?Q?XWHQ4A=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	XJYvX+6wqtXLmN1ziN9BnSTt2LB3eUq9+wlRVumWoC7AwB1L0TBXQO/b+ZOJqeC+G8XwjhYQRq7mfS0vccLqRuJyCqg3lWm2PVJ/712c0mY/5MEKrEgXmC3Qrp+42FJUAUdNvDIlIfT/I3RcNYqG5mTb58BVPLQt6pGN6WRzUPzpcvVxdHt0EQK13Z2AS+q73h4OMEUne6ZrcPvGFuCczyOF5rkjK2yPWL3cAP3M9RIQfxtGm/gKx0MNo1dl2wfLnx0wBiHv7reTNlIxk2Rg540ABCsrLumZhLFLYc0CnwX+s/4oM6PZJNVZZDtmBdgwN4lZp1fy5x24hzEpxhBce+gKwDv22YS8D6zx69fG40lGxiuxgC29BbkvV18UJbwgTkTDcX5O7qI6AxB1ltgpIUiY2a3lVqsLn/YOuaR9ykD7ZUMKCoD9GIcFMz6v9fhj
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:28.3357
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 44aa140d-e734-4034-4cf0-08de6e2c3562
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CO1PEPF000075F4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR22MB4393
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266171-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,0.0.0.4:email];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5FBA214CDE6
X-Rspamd-Action: no action

Disable the unused interface, to fix a log message.

```
mmc3: Failed to initialize a non-removable card
```

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index e5e66d536a2d..d00236a07dc4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -303,3 +303,7 @@ port@4 {
 		phy-handle = <&switchphy4>;
 	};
 };
+
+&usdhc4 {
+	status = "disabled";
+};
-- 
2.49.0


