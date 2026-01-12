Return-Path: <devicetree+bounces-253845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9869D11FF9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:48:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A42B3026502
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED552836B5;
	Mon, 12 Jan 2026 10:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rU61a3Ml"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012050.outbound.protection.outlook.com [40.107.200.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB49A33DED4;
	Mon, 12 Jan 2026 10:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214764; cv=fail; b=oEn8gidj7QA11GfBaSp5ZmSphg0JHjnSU+aW/9FECbE0oDyzgvx+RHyKLOgcTdafwUOSB46KFN90xcbkXuo6FZEAd4CDCe1lKgwxMnIpR5Y9xiccdBvcIJYmwY+V3T8NNtRRUkhQyEJkNn1HA7OvT1qDcXRJQqyutmwrC2D8txI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214764; c=relaxed/simple;
	bh=1pp6Oor3dKO7XTS85Cq3gNKy0pD6m/Az988XBIAmaiE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xal11qJPbb2Zhf6IagVXKIv7+1kPRRXB10DoJRYoaXRDgte+DuCjU6J8bRhz4kfsksF4nXOtGCx3yhiB5E4b4RIayC4dMtunltIvqj7+kITg8h99fuyRNPwAfLSwsHRG1KC6WS+Qb7lnRWuB8AMxtfdxFiS8YMChJxM0WNavixQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rU61a3Ml; arc=fail smtp.client-ip=40.107.200.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q2H1MFvDBD9DVijbpGKOEVsD71A8T/hXxyE+b//BzooCfWTzgttX2ZzIuDGW8EHUte3X/nvFhmGnb12sKzNRAxbl0lpHdW7m2XT4oQgklvtajFDbsziQBgbzlkFx/LMGMEf+9OSNuZJ6kvBJ53SuWhStOKd6CTAbCOmg/cf5NB11UcXn/htpbtvzlAJfkviKi1kzyEHrQSDBboWH2/x6i7Nq6+ohg2sOo3tH9ON6WoLht3IIetJHyciHx8TPP1RtwotI7qrc3SCQNsBu0Y6gZ7n2rPWCWHomFYc3q2SiEMG+bTSbxReXpUN/EyByrmjLA5JZEePgyfSOHNKiRyCT5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NJ1nAfQs65MD73P07v8Bpxi/FVPMkmQB1bxhWaVAko=;
 b=Sy5G2Mwlo4UHXbHaERuuJtFSaK4H27qe6Pp2869I6bix44iYpAMj3v0H7axDfNkbzFnVPFkmtSYBgPSyfyRLMYlkK6/e2ml+NQ16ZqtWvi4LgdVDlajW4HBxkEbbIXmkgrk1ozI8C9xnuAqnosOEI662Y2ylPcG0nmhSOJZZvz0bbTY/kCsgWBuYpv9nfjd4my67l8pQfhew66fnQLH3xaIgoSa0yEBioEQfW+dMNtw1bymWssuSlYJjxFhtTyUpyd0CxzmJ1sa72tuBGTqsBiYSR9Wg39Q9yNjomqOxrWnUiVyk9ZYIf00VIa5jGOtWqfq+SvPpeZGVyZ0avnZr/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9NJ1nAfQs65MD73P07v8Bpxi/FVPMkmQB1bxhWaVAko=;
 b=rU61a3Ml6UMs9npJjuuLgLBAHgrBUVHgF6WaIC5k1DdQtx2nQCtbDtAltjDB0SrK5dCvhq5k5T9UvSapfPsOtjxqRd/8JhS1w/7hIv3MVnkPgsBv0w2RWqEaS7XLQcOS/wzSuhw3zI/Z/SbdW5qDQvFZKAQszWK+zyrGnLgxOLE=
Received: from DS7P220CA0010.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:1ca::8) by
 SA2PR10MB4442.namprd10.prod.outlook.com (2603:10b6:806:11a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 12 Jan
 2026 10:45:56 +0000
Received: from CH3PEPF00000013.namprd21.prod.outlook.com (2603:10b6:8:1ca::4)
 by DS7P220CA0010.outlook.office365.com (2603:10b6:8:1ca::8) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7
 via Frontend Transport; Mon, 12 Jan 2026 10:45:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CH3PEPF00000013.mail.protection.outlook.com (10.167.244.118) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.0 via Frontend Transport; Mon, 12 Jan 2026 10:45:54 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:50 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 04:45:50 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 12 Jan 2026 04:45:50 -0600
Received: from moteen-ubuntu-desk.dhcp.ti.com (moteen-ubuntu-desk.dhcp.ti.com [172.24.235.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60CAjbfF242687;
	Mon, 12 Jan 2026 04:45:46 -0600
From: Moteen Shah <m-shah@ti.com>
To: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<y-abhilashchandra@ti.com>, <m-shah@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-j721s2-main: Add audio_refclk node
Date: Mon, 12 Jan 2026 16:15:35 +0530
Message-ID: <20260112104536.83309-3-m-shah@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104536.83309-1-m-shah@ti.com>
References: <20260112104536.83309-1-m-shah@ti.com>
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
X-MS-TrafficTypeDiagnostic: CH3PEPF00000013:EE_|SA2PR10MB4442:EE_
X-MS-Office365-Filtering-Correlation-Id: dfa3bc06-fe0b-4441-0dac-08de51c7c353
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024|34020700016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?EPd4EcWofPkxGQqeJXtIv7BpVtiwRafT+FZw4MmIhL1KWfXcnTu0MrvlJ9Da?=
 =?us-ascii?Q?ARgPLnqpv33arzD/ShHLDSKS2+LAMIRTpdnAtiYbuESO7TYwPa+e17BYJ+np?=
 =?us-ascii?Q?6tq2FtY5mwD+6EqMZc5mMBnVmoMMEFNfGD08hTvYZU/FQG6mavjep7xQ0xR6?=
 =?us-ascii?Q?0m0BCMW3BA/UjnfyA6C7kIQFi0iXh2yKWsP5EydH0S3OlWOgQo6oVb1TTYtL?=
 =?us-ascii?Q?v9zL0UkhRnHiGidSCpl11xzXNgeV+5AgzeWQa22nBqp+PFOnabzxEFMrUd70?=
 =?us-ascii?Q?viaJ6ljt6VWG/5IjNo48U/jc2Os8b320jwMDkqw4otzqyqZTVvvgGaOX9Xuz?=
 =?us-ascii?Q?Idn+R+TGBVfjG9r6RzvX/TsGRrbfYoeqNVIVdxAiqZgwb4OwylR6yMIXbC8n?=
 =?us-ascii?Q?IQ6O660vgWRtXw8/4S2RXGpSg3DwtMYkYw7U8NAhu/Pdc4L4PCL92lEQ9eav?=
 =?us-ascii?Q?xhpFehFOAd8PZWCbLaLIu5zjPw082sViYvPOsc/+kSUuqi9hBsiqyVwtPyZ7?=
 =?us-ascii?Q?1bNkNAk3afxNZqryvow7JNxsw4Zh6Vojrhg6Y/Qrccsp309HjXY/IANv17UJ?=
 =?us-ascii?Q?s3sKawvr7GuA/YrmQ1jMJVQcDxJiStOWnGgpVyqx1iW3Uo0aLrqUUWdFGz7q?=
 =?us-ascii?Q?N5vGsSyRcYNCZXBxRM33nvi7lV4ednY0v37Syemqj2IByK3sMO1cFmdFRw9M?=
 =?us-ascii?Q?144n9FfATVIJJxisUczuX1PNG7YI0rYeiEbMg+AjwiJatoURDWF0ta5qKoHt?=
 =?us-ascii?Q?0ROD3sDEAOMu890Qs5bgPlta5CXHGWk+8Rs+paFo5UbCS/8A2HAYnOrVzFli?=
 =?us-ascii?Q?K/yvwGXlvzKzfkHHnDjtJZVVygDMFmO7t0hIeiYowixx5k0u2y6tZkUPgMZi?=
 =?us-ascii?Q?1M5Pdlsrj663bAub0CffLzH4LCjYVKyUUCRz+QIuB+N5yuRTCwkJ2UT9jF9C?=
 =?us-ascii?Q?S0pV7Tp5D1JaHJpPrFCxpGlaXEiPvMKxcbdRN/hDuaqhPLOs1oWK5LwSmg49?=
 =?us-ascii?Q?ixqYqnihBN4PFp/OrbD3FxYcrHSZAmIwVpto5nOxsnCo+aP6DKPuBr1lwrPG?=
 =?us-ascii?Q?XYzY06AjywefOWZjm9qrijs2cRcA0ZbDooTDdCgki8Im/1cNqmAzZSWABJ+i?=
 =?us-ascii?Q?BcMOiiy6f4OmfHKiY/JqNKMJzy5xrXjPmjyOEFS01QqsaimwN/4fcruBYfj3?=
 =?us-ascii?Q?NP6XYLgaj5b+O2Io1j8N9soEhxE7uPdv2tg7m5PL1ztLs7A+buPCw6Mp6d8w?=
 =?us-ascii?Q?uLZh6P+/TvafCYD026ub9MmUE2DFymiL8IhcCaDfp6rCrM8wpvTs5ddvsTho?=
 =?us-ascii?Q?79oHxDXDyFZugoFmuQSg2K4xmYXK02YMPPXHlgL9zM4WkpmCSOn8eamOl8gk?=
 =?us-ascii?Q?hgj76F93mfjZv4RuzSGAkKPbGt+xx/F4ELqPltChbBetweW+Mua41Z+G/C8D?=
 =?us-ascii?Q?Rbp6fAUCrNRkA9UBLA7cAMURREZJCUcljZqmU2pcyC/GCjDL1WKQSY6zqFl2?=
 =?us-ascii?Q?mpS1kITlvKzxXM8sGdYh4Efacl0+EVNPxr6mzXNphLaDQyBDoPMmrQ9+9xx+?=
 =?us-ascii?Q?cv5ewGrOgeBgBlcBIkY=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024)(34020700016);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:45:54.9566
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa3bc06-fe0b-4441-0dac-08de51c7c353
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH3PEPF00000013.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4442

From: Jayesh Choudhary <j-choudhary@ti.com>

On J721S2 SoC, the AUDIO_REFCLK1 can be used as input to external
peripherals when configured through CTRL_MMR.
Add audio_refclk1 node which would be used as system clock for
audio codec PCM3168A.

Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
Signed-off-by: Moteen Shah <m-shah@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 80c51b11ac9f..3ecc7c973205 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -75,6 +75,15 @@ ehrpwm_tbclk: clock-controller@140 {
 			reg = <0x140 0x18>;
 			#clock-cells = <1>;
 		};
+
+		audio_refclk1: clock-controller@42e4 {
+			compatible = "ti,am62-audio-refclk";
+			reg = <0x42e4 0x4>;
+			clocks = <&k3_clks 157 299>;
+			assigned-clocks = <&k3_clks 157 299>;
+			assigned-clock-parents = <&k3_clks 157 328>;
+			#clock-cells = <0>;
+		};
 	};
 
 	main_ehrpwm0: pwm@3000000 {
-- 
2.34.1


