Return-Path: <devicetree+bounces-267353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULCZKdsxnGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:54:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 073491752C2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56E9C30547C4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3334635B654;
	Mon, 23 Feb 2026 10:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mjh2MoBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013001.outbound.protection.outlook.com [40.93.201.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA56D35CB68;
	Mon, 23 Feb 2026 10:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771844014; cv=fail; b=NzWFw7y0eaRLyoROAZhEUFyyiGqoXKpY1xbbNwlOJ8JINRYR1HdaCAo17pTIZOGHRfU7/LQRCnpJNBNNvp51ujl3wpBYtqzr9Kimsqd0+y9/qD65jnekOIfPR2uzuUgi6p7Mt+UrCgZJ3108OsUILpyYvots2CgCaANxG3ghsOo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771844014; c=relaxed/simple;
	bh=whw/dOGK4M4zbN5sKw4RpciTuhDskCp07wmamax86hY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ey1u6cej1BFm9x8q5ZuXX7sjmZ78E6ZtN0odP0L/GArzmy0krxtsA1bqzrYLSp9UrXCci38QG4WFmnkwV3GWn+mW66nsMsgIajNV4ujVwjZ3726l71Aio96BBUqusDuw6u107oj2Y4hrmCGKzwmGz9qWHv6PYDHGoAwoDkH2bNw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mjh2MoBZ; arc=fail smtp.client-ip=40.93.201.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g75eMF1Anp+M9BBMI6HlxH1LGKY9Qn7REhsPx5g/5yhp8FS77Zrlg41JrOUkwoRvopq4gTO3STuSAlfZd1we4H4v8oJuy6xEYvfAMLyLbcS658edEt1EIw2/WH3etwqsLfecw3oBnN9EUW5qiWp7QL3msw/TYgm9c071gcFmEai/4VtO0BBYIndeMzOJTed/Opv64+2KZXzkgEA7HFcymZDJAeEEjFLi3hCKJWL4Cs6LNxefWDbmUETYfKue1pmbJ3hlfJpYRBhn0jc0tvAbrQcDf7PYFB7ju/qBPzvLjg5eRwJsMBT1qITmMgTpJW/RCis9lbeFD8zUsSi1VAAcqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ee6aRlOGTv+YnZm06vTr9I+fOvEc+zQd9HyT0q+aC8U=;
 b=sL/k2jOPJ80/zpV9GqSant72LAWFs49J1HCqFiHj9y553MNIXeYEvmDW8gf2/azXwSlPYZgF1F0riFqjyDwgAqvyU5K7+k1aEwLGcMg5ch/w7yIPAu9oXPU9oK1av4TyeKHb9kd9NmjbaGlDQf77K79/6Cck7FFPJQbb+DAc4q/B5mo5Gz4WPLJyWwVJdctkrAegyod/iaoydHYvdyMHwoRFfmuQCHvcdXGGL+u9mA5/syFf+Lq1rLR3QRUL3oTiSVTykG2Mr3tYyYGvk8NLYhydnPpUBv1UPvZUigpSEJzXBI4PTeJi4e3qJHI+hnM8d5aHwAO3rJTql+G5VLEmfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ee6aRlOGTv+YnZm06vTr9I+fOvEc+zQd9HyT0q+aC8U=;
 b=mjh2MoBZ7/MPIBpvaa3K/PBXwR2Sw0U1azyrOeD0A1gJAIctnj+DvP2R5RckhJtesKw9dxoIAr7/RE2o7aVkupfXZAKJJ0YdQb8I0ggEeVP5p/PCU5/IY98Uckkw6qG7qU3zHeO/nCvThQsKOGHkoRfch7mllZfR6KYEhbnaEM8=
Received: from BYAPR11CA0107.namprd11.prod.outlook.com (2603:10b6:a03:f4::48)
 by DS4PPF17DE2E3E9.namprd10.prod.outlook.com (2603:10b6:f:fc00::d0c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 10:53:30 +0000
Received: from SJ1PEPF00001CE4.namprd03.prod.outlook.com
 (2603:10b6:a03:f4:cafe::e) by BYAPR11CA0107.outlook.office365.com
 (2603:10b6:a03:f4::48) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.21 via Frontend Transport; Mon,
 23 Feb 2026 10:53:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF00001CE4.mail.protection.outlook.com (10.167.242.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Mon, 23 Feb 2026 10:53:29 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 04:53:29 -0600
Received: from DLEE202.ent.ti.com (157.170.170.77) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 23 Feb
 2026 04:53:29 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 23 Feb 2026 04:53:29 -0600
Received: from toolbox.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.73.74])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61NArIFF179443;
	Mon, 23 Feb 2026 04:53:26 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am654-base-board: add ti,min-output-impedance
Date: Mon, 23 Feb 2026 16:24:13 +0530
Message-ID: <20260223105448.1110428-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260223105448.1110428-1-s-vadapalli@ti.com>
References: <20260223105448.1110428-1-s-vadapalli@ti.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE4:EE_|DS4PPF17DE2E3E9:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c1cefac-c626-477a-7f9e-08de72c9c7d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?6xVtRdtPJAWnVLA4bSvHwMG1TLtN56KDt1fhbxGZOXl4QCfM+xjUaPgUJ5kG?=
 =?us-ascii?Q?DRm98XyVjGSKutuPP8Q/V83bEx0oUBE0sQFAJ1qq+slBigOr0sT3x4JyYPep?=
 =?us-ascii?Q?nrrCyiIeNsqzEbesruQSkd5exD+NDnn00fh3mF47JQLKNLdqleFXB4oZhX/g?=
 =?us-ascii?Q?H4xKvVBpmledrtRhV5v2VChVnxJALvfFq1Qe4vWeSqnXWLZYTJ5ywejnlANo?=
 =?us-ascii?Q?EotQBQ09zN6/lfHlYE1c3gtPLdKLrpMXS3+ho0N1XoeUrJn7EJNfwft/yUWT?=
 =?us-ascii?Q?I1Pc8wqN0TkdJvyx06UJagoJdNiJ9rz3G5edvfIzgn77gCEJ9TOcyE27heUO?=
 =?us-ascii?Q?w8oS4fH2XYxjFnaBGdUDEORC573O0uxva1vlxXSpOUxsWmEySKGBXir/uC7R?=
 =?us-ascii?Q?kHF4JhSiI5InBYrbJV9dGjAykIrKw1qOHIc3go2VOVQG4SWgDd8B5eQu92zc?=
 =?us-ascii?Q?xCUHIQdZ/3INZcYg8mQvztjWXqvH+uERdoMb31tOFfDK5mHd2b3GUG1Qg8i/?=
 =?us-ascii?Q?koyf+ytI5Op2nnXMBE5KjKcFJaSl7x5hFz27qjy6MQo9cM7oZ2miRWZg2DiY?=
 =?us-ascii?Q?4RUToKm29LIQbNlUWQhqnXe437ZXMPtSqM4nSq9JQNV+272igU3kKwvGPTFR?=
 =?us-ascii?Q?NnAG5ovPl4BniKyH55D34qLMqG9dh9JNkCo3XrgdNIzIan1IP4mySmnzG/Dy?=
 =?us-ascii?Q?3OUiHrIp07BM3D2EcZJpbHhOCuVH+N7NK4fyW99vBwN0QkCc2yeSKyO3TFau?=
 =?us-ascii?Q?0AKRYp1DQzOQE3Y8YXHAerF7pdMiqSUQpbFfQWj9+3V6dATg0pT2w28tics/?=
 =?us-ascii?Q?vY88q0XZPssmOkUUiYnBWr5JWHKUYIftGIoEhX0wko7EK7EgZh9S5fzPu8Ui?=
 =?us-ascii?Q?Eq3mcjaDudIQ199+idFw5Zy409xIz3rVbM/aoqZb49IuKj5als6fxrpmcaWW?=
 =?us-ascii?Q?1cw8tfLT0DVb2iAkXvcMElPI52giZ1PVO4bFcGgm7iNbxno3y6/yPIRget/K?=
 =?us-ascii?Q?aGn2HBx6iv5ldMk7K4RuI7MhtT4WrU/iohWZFN+EopmoCzSR3zu1gtr/L4P2?=
 =?us-ascii?Q?PyTX+yZTUN1eF7mcK8mcvv7tg+tidEPu4yr91vqu3fcOuSPFaTU81DLQdXeV?=
 =?us-ascii?Q?85/dYXFD+hXADWBnD+tjbuw1eccIzr9uUQlGbgTinPlK/5qpnjRMZJjZ01kc?=
 =?us-ascii?Q?mBcNuhCnU9h+k42Qokyc1LBAfyWNfRxTMOBtgSt3UIdmqLBwqnXJZPyKAyjs?=
 =?us-ascii?Q?MVGVnHxucWYsH1fnx++ayVvLUHcCWBZ3I4ZxXqAD5gEoKYD75hO3X3QaOoJf?=
 =?us-ascii?Q?d+jrlTyZCPDcjM/Oiyx0oVd7RLIg2YfK6cQ06mg5l58QzHEiL0vXbR4fjIbg?=
 =?us-ascii?Q?Ciz1bD7gguDpLVdlHyMiliZ7IisXf4ZJVYcL9IUNC/pHduDH5JHNCgOC97zG?=
 =?us-ascii?Q?W2TmKjsd7/QTCVLd1jOCnfU86HKXFm39m+vMpFqugZy44i7TuAz1Ay9LbKw4?=
 =?us-ascii?Q?DmC7ZLQrOApxIOCyaGozF+8bl5dr3uXD4B2jPSGMtpd8ax1rokfz/tfq6Hj+?=
 =?us-ascii?Q?Bzybs50NVXMkqG+P2vlpfdo9XfpJm+gA8gXNmzR4lOWZhBcNXiCLEYLBrZGR?=
 =?us-ascii?Q?m/4RMrBmeb7CSSW2woUuO5WOxoICtmdUit1PM9Kz/fQRRcfqTZM2P8m8a/gb?=
 =?us-ascii?Q?nkOGZQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	ZcuGrSFrhrOQUZXpuXBVVMlVpYf+lPrVbcoVpd2wrx7cCguusmcvS3E+6s4If/5B/ZSLvXJUxR3+dTBlzaWbAsC6KIExvzg7KeqzC4rMk0BHElZXb4wSCBm52mflU68g8J6RygKC3iLfgJJdFtTddvdg0Hf+BVR5Tk4NYi9BhjwZ2QsWEGWxaFljN4AmRR5zKghlm67SDmlYj0X5uTAUZ7P3eIaBJddifrVZ0faYT5PD8bf4w2kKo2jP4bIwaZ4STchMsJulB19MBtmL+f6nt+bG8cpBBQ5OZIs8LBHJll/17KmkMqEB3Cs3ry1GbL9Mv8THyL3VJNdLU97OhhkUgKI5t/9kFR0bA6jnILzQn9buk1fvjJvbS5+fJhusXNX4aulQ0tBPlvqH1Noto9pMrIpuyEkXye6rgDjkFClR0+8GFflY+6bjVB0jhYRkHqta
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 10:53:29.8322
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c1cefac-c626-477a-7f9e-08de72c9c7d1
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CE4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF17DE2E3E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-267353-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:url,ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s-vadapalli@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 073491752C2
X-Rspamd-Action: no action

The default impedance for the MAC I/O lines from the DP83867 Ethernet PHY
is 50 Ohm. Based on the board PCB traces, this impedance is relatively
higher than expected, resulting in CRC errors for packets being transmitted
and received. Hence, add the "ti,min-output-impedance" device-tree property
to set the impedance to its lowest possible value of 35 Ohm as described in
the DP83867 Datasheet [0].

[0]: https://www.ti.com/lit/ds/symlink/dp83867e.pdf

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index e0262c2743eb..ca1300e13093 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -583,6 +583,7 @@ phy0: ethernet-phy@0 {
 		reg = <0>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
 	};
 };
 
-- 
2.51.1


