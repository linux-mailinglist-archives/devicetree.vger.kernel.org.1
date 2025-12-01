Return-Path: <devicetree+bounces-243291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 12887C96848
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C3CBA345794
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E5C30170B;
	Mon,  1 Dec 2025 09:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="qvthXgS+"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012008.outbound.protection.outlook.com [52.101.43.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E22FDC29;
	Mon,  1 Dec 2025 09:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.8
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764582980; cv=fail; b=V65FRvzE3k0hreFbr3P8fimXmNoMUdJshvIRLE6MQ9uEOaPepLVl2pFyn5YXhHd1fSNa4nUGZqLFC5R0H/6SCN4A/f8kwkW1pItBsx6gnzLy9+4j52x3hA8ClXYhDKW9p1QBGXRzv9UryuF+RPiSPJijzLi1bgammM+LcQCDtRQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764582980; c=relaxed/simple;
	bh=U1qZh2pizmiZUjy9HqOYPJkIcB5Kfr2HORIyZr8kP0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=dMVtJCfbKq164xB4hxOLB/reXrCoGZYH0k7e6EXHMAA3S42LYIrlABTrg4HTzlDzMGKcJcrPIzHmxdb/apAAodlJV+9+Od+H08eKlh8QX1NOtXPAZ+fS+DQaF3T9Hr07cuqzKNT7XyyQRbiT52DWoYb4gDIZOtXza2vEklWwKz8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=qvthXgS+; arc=fail smtp.client-ip=52.101.43.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lGmJTkjz3oLzxexnaHwRTN2ycMdPh+3MOs482QybVr/26BnoYDqKBOHekT8JbunWIXxQ8KYsT4wQ5DJ+rl2/zLMpkQaZgWNsX7KuaAb3ioEFVrXCCppjFtlpdqd7tZdXFkCGLcU19lR8F1I7xXSeNC6157XI3vJt9E6dneqC17I8p8qFc4FiAqSHm+eM4ydRvdZ2qf1sLETppywV3WnIrrJD9oSnAIxX1BFY94tnV3pUCkdQzkxx5LyqOOR0RWmStT6CRcfSNb8arS0tb4vlrLmIfKrS9rIYTSJ+ytGC3bwggbuZlQzTfmOAikDdMU0NvQ2FJBJIvvZrpZKx1BPxaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JC23zVwyQUFnU/DZDDvT60Vkv1LHZkSJ5XqNGQ1Yuos=;
 b=G0WGfhh/45KtMIoZ9JQda7DYM7rDAhftelmZUQzxuL1k2sp1SKcGXQd9GlFYDXS9pCd83wGcTXy7IsZkqZ8ZQrjKkIbBXlWMp1U6PY62ieQbzoTY8EaMJ7VDqnAwZw7oQzBWCJtoQ++GF9XWgC91COcCF4MhyvdmoLH2mh5ISwv8rM1KfxUqMNWvGsbwr+UqEy3zK9CTrvdFfqvEI5VRUnL9BiITgROLsQFvVkc+4eY2lhF2b/wD+DBLYghFtmMrSswe1x+/EtRu2cqFC6mWVqEoqffv2IFX1dQ0vBRYfXaceUtkrBvdNe904GekKbVMW9voWVMhlQqfL8r67FYimA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JC23zVwyQUFnU/DZDDvT60Vkv1LHZkSJ5XqNGQ1Yuos=;
 b=qvthXgS+Vu9JF0t0KOCrkV9Txj26OLQkZ8MJiGPQr8L7ln83qrykzBpaEzNHBh5tro8qLzHxfosX5jbb0bMZLp8qhjDrSOMWhl9VI4xJXyW+W9Z7gyDrAoNFspcPn5f2UKhJK1+1vQEELaKK+PekaVuDLZ16a0t7TKZPx+Epp+kuwIITP7XNx0+inOiOkYgW05Mn+YcAVy9MeKKzcqSIsE7kU5YI1nzSwIbQRFH+IDsHlW92HY90E/b+S/SSP9DzB5T5x+cRu3dUCewpj3BlbFv84WIzoJYiO8NnPnzC1qdq+c5vlKfSZDxj9jocm9Z35wtpLd/tM69OjR48B6PKpA==
Received: from BYAPR02CA0058.namprd02.prod.outlook.com (2603:10b6:a03:54::35)
 by SN7PR22MB3960.namprd22.prod.outlook.com (2603:10b6:806:356::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 09:56:15 +0000
Received: from SJ5PEPF000001EB.namprd05.prod.outlook.com
 (2603:10b6:a03:54:cafe::8a) by BYAPR02CA0058.outlook.office365.com
 (2603:10b6:a03:54::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.17 via Frontend Transport; Mon,
 1 Dec 2025 09:56:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay2.compute.ge-healthcare.net;
Received: from atlrelay2.compute.ge-healthcare.net (165.85.157.49) by
 SJ5PEPF000001EB.mail.protection.outlook.com (10.167.242.199) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.8 via Frontend Transport; Mon, 1 Dec 2025 09:56:15 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id A9C0DDBCE9;
	Mon,  1 Dec 2025 11:56:11 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Justin Waters <justin.waters@timesys.com>,
	Akshay Bhat <akshay.bhat@timesys.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6q-ba16: fix RTC interrupt level
Date: Mon,  1 Dec 2025 11:56:05 +0200
Message-ID: <20251201095606.990-1-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001EB:EE_|SN7PR22MB3960:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 94faa8c6-be58-442b-68f0-08de30bfde00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?mRTbJg6RRsm9Ri5c9TdO3JJixNycK+FuONiqjVVAf37ARgk9Bfq8cQ/WXjDT?=
 =?us-ascii?Q?dBWi29Vt77HwDqvf6XrNvQMSgocmrHLHHU2BqjijPtvoaNjJ7DVU+R4/jfU2?=
 =?us-ascii?Q?rTw30dQryhMaQrVTl+gN4xjxTuY3Xva93TQabzsvDbYj35wu21ECmnjL0U9h?=
 =?us-ascii?Q?eCE46bSYzlN/RhhyKMrp2hWd346eNcUAXC18nMEbVKTDHq7o1s+0//XUjU8t?=
 =?us-ascii?Q?N1bLds/o7oAubO+gsAS8vgXATxmpiRPLQ1gV1Q+9N8HIFLKjBQZRHwmAsoyy?=
 =?us-ascii?Q?f5iP8C5KCfEeuVvNwEBZFaOLYN/LjtTqteRxZBDckP+QT+7tCz4Ggc5Gp0Ph?=
 =?us-ascii?Q?b2sdcwsVbrA46EWwUKo1Q0UukDbru13COhNK9Rjl2goHF6y9mwIss858U47T?=
 =?us-ascii?Q?ZMN/ZmLU1Bi+YgGMY+aaFkEZ2Ecy33bCrY8ePdBKsXu7SXOgvngNgyfls7jS?=
 =?us-ascii?Q?XzbfyEjfWG5NuaaVhT9NN/CRCwKS/gwderVGfaX2K0+DIQzYEH5Ni4GuqFFF?=
 =?us-ascii?Q?TyYj2IlUF2anqC5GT6RE9BQlrBoaGY3r9USJD348AGNOwVc0hEo6d/puVraZ?=
 =?us-ascii?Q?4uFbTEgo0Iuuh5k8dlvkWX0aefdBJoZs72wpfz/LFF7x98qYnvzYLKZQOJhK?=
 =?us-ascii?Q?VEMmIQBfRFfFBg0wExjfUQh1cr6IVt7njLqRbXh8mJXkBowJrIMvd95LMXE/?=
 =?us-ascii?Q?REz37c0p4gLHzo2St8Qaz+RAh9JUkj5VF2PtRQgOYPs4xu3hcmtpFIXkS2FV?=
 =?us-ascii?Q?1TVS2c9NggUDh/N++5e+F8JbeInuPmGKwm/qFRZgDlSF06nRZh7M7nd1mfvE?=
 =?us-ascii?Q?98k1DYDx/+TIrmaJnRWnhPlzYvVNZk28abOHzLD/UIN0spTK5klZp/2TEi13?=
 =?us-ascii?Q?3ehREt++HYVz4eQxp3Cf98Gj4yKUauBCnoGxeMTBxw8Q9WKF2DxpldyILO8L?=
 =?us-ascii?Q?he7meVZ+byrI/ZrS88+vLR7+FmMnvLiRZKia5RoqcxPHAX+PnObpH6IC+dqi?=
 =?us-ascii?Q?lIrN4euN+qaw+Avoi1yg6jvCNWRInckfwm75S+OsjH8Qm7OJ32ksXPqahgMJ?=
 =?us-ascii?Q?vBzOdMfAqXdoKlpdAe90sL/J37UrzmoUuh6cW3escNBuduTwzq2u7FYwtgHE?=
 =?us-ascii?Q?Zu5gn9D5pZBjMhrZ3pkEmczjL4dxr0e4JBOe4CsIf2NS64K+er1HmxxGBHJP?=
 =?us-ascii?Q?KClEhbbIsNFeCzhSBI+A4uKV0Cyi+ymfyMzItqEx52M50rJcG4sk6LwpEKRk?=
 =?us-ascii?Q?gq4HNxe8xhcgcGzM8hov7TmzQazMZT1CFKSV+y6vIlxTKa7b60n3MT4NVHnz?=
 =?us-ascii?Q?FS99kv/RIygbDPOHrs49SFdNs83g4/Mybx1+Bp0cMJteLLkKv/Z9YaPoQ54l?=
 =?us-ascii?Q?InJBZTzv0Die54gr8E0E4Bw9JiTGDM2uDx2T7btnZ7byaodFkDBMOXHGs7Ja?=
 =?us-ascii?Q?1xwoZ1NfIUVF2PQ98ZIm3KrMVfLJZleiiyApN0OZRZUQ07Mx3J17kzq2ZGXG?=
 =?us-ascii?Q?2Fybko+2AzYJVykmmQdNqVamoqDZvUSukD/APItKpJ4ZtCKPJBxi13hU5HCe?=
 =?us-ascii?Q?DUS9gY3hmPiclq8ZGAA=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay2.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 09:56:15.1612
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94faa8c6-be58-442b-68f0-08de30bfde00
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-SJ5PEPF000001EB.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR22MB3960

RTC interrupt level should be set to "LOW". This was revealed by the
introduction of commit:

  f181987ef477 ("rtc: m41t80: use IRQ flags obtained from fwnode")

which changed the way IRQ type is obtained.

Fixes: 56c27310c1b4 ("ARM: dts: imx: Add Advantech BA-16 Qseven module")
Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
index 53013b12c2ec..02d66523668d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
@@ -337,7 +337,7 @@ rtc@32 {
 		pinctrl-0 = <&pinctrl_rtc>;
 		reg = <0x32>;
 		interrupt-parent = <&gpio4>;
-		interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
-- 
2.47.3


