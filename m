Return-Path: <devicetree+bounces-159416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BC1A6AB74
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 17:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADBB2981769
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 16:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB1F2222CF;
	Thu, 20 Mar 2025 16:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="pxCIwC+z"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2049.outbound.protection.outlook.com [40.107.236.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0BC2222A2;
	Thu, 20 Mar 2025 16:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.236.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742489239; cv=fail; b=f1ujEZxP0riA0afJECqWq6J1GzpNDWFfuD2OP54ueaPN011DrmeAVcRl+2HZM8crwmx1CMD4rhuwd0YXiIE4hrlwbopi567WIW2HEzTt7hwnib/gXfsFmss8Ap5yzrYI1tbFt9DNlYRMea0iBZxju+pebLfBOigyyC4CdsHeP/k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742489239; c=relaxed/simple;
	bh=WLoKHhzbsbQZySqEIXOrSeG/dL5F9p8qf6S13P6cbDg=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ty0beQXSI2YaBbDUSWUcCHgmjokymDevLlx1PpmLfr7MiT8VPlfajlmOstcBcfhxfupVttxxoJZyr0JeK4G/PpVfQj6VwOeZYe3xdV039IujvKeoQt/3Az4qhZJH0avzE3Hx/N2rUrdFTedZIPwhsd9eyZV2ePRaArumsSahGH4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=pxCIwC+z; arc=fail smtp.client-ip=40.107.236.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wz0pWTtaAvrKizZLqIPNMjoeu2SVyJVTvg/HnCYArKlrgk8R3rNWilhhWBBNYhP/o6vf9vfwT+cH4zl33nrGL3/yG6mak1/Vc0vnDMGDAe8w40I9NX16zck/kve86O3S9e07WKaPCi1bpI7P10SGiRJD7jAXUOV0bpc1OTr+kQECrPs/S9enc5NkkPR80/UvB5Ok8a1F3DMKljS+uge3ZeQJb657bPbYxyCjTmQpP+mgbPCGo35nAjyGrKtmaMxMgywDemYKdASSCe1eVzX1kQX7f/cWHHIM7wTaKGKY8Tbyw4CS99dgtNRKhaV9sluqJwtQS/1LMKoPUgmYQNhzNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iT1U1SDE0Yrf9C1Lh3TGFkKS4+XkzwyYeN0KPASTdfg=;
 b=WxFZNquTxifkXArVaGVrej3vXKDM/vlAT4o1Gmm5p2ygg3JN/TLDQOHvxUWHC2I+ugs9a5V6veOiapQNNfo/peJzNwiYNZRvAiZbEW3qS/Y0PGK29b8sIHsuPaKB0nYEz7Fw5rRM802azbU07JGccfZRHX0Xo9ZD6NVyyeKx8891xJssQREGcZZtOUbOoivF3iWbsOBcNDBLDF7X7rX9SAsapMtyxCDGOgcmu06raQ3pFbp9kTWa3aAj+LaKwrcl/Mx685w22lNrcupofcO002BlRs+VYp4dNwbSp0FCy3DQMUGukY2rR46jCmU7kS48oOuo7sPCydoMghEheWVvEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT1U1SDE0Yrf9C1Lh3TGFkKS4+XkzwyYeN0KPASTdfg=;
 b=pxCIwC+zD3rCSlUw5NIMNAjttLIVCG3YNzaRx4WDyBC6svMdTySpMdYqpDiDuCm0LrJQvSIIJpm6xtQCR1ZBedyW/slWO2Z3q6jEbVc39+022mYxkPOlik1DLNLLCbC+cBpgvQC/NXqIS92YB0fnkEPKKilc+O/e7GQBRlTW8gnORzHoQWADSdza2cKURzZfeCXxT9hGbh95XPcaguLM+PNNRWYQKg4QbhNQ+9EF8Yj9dv4oBr8Mn4AgS+8yMlE6wVH69b3h/0SgoxkL60Hw9OJ98u2jjtjvUsUAfvX3Ru8n82M3JfaBG1F8DUkOWuTBlOMEDhBNvGLz87FiWFpvwg==
Received: from SA1P222CA0139.NAMP222.PROD.OUTLOOK.COM (2603:10b6:806:3c2::25)
 by BL4PR12MB9483.namprd12.prod.outlook.com (2603:10b6:208:590::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Thu, 20 Mar
 2025 16:47:13 +0000
Received: from SA2PEPF00003F62.namprd04.prod.outlook.com
 (2603:10b6:806:3c2:cafe::a0) by SA1P222CA0139.outlook.office365.com
 (2603:10b6:806:3c2::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.36 via Frontend Transport; Thu,
 20 Mar 2025 16:47:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 SA2PEPF00003F62.mail.protection.outlook.com (10.167.248.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.20 via Frontend Transport; Thu, 20 Mar 2025 16:47:13 +0000
Received: from drhqmail201.nvidia.com (10.126.190.180) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 20 Mar
 2025 09:47:04 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail201.nvidia.com (10.126.190.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Mar 2025 09:47:03 -0700
Received: from willie-obmc-builder.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.126.190.182) with Microsoft SMTP Server id 15.2.1544.14 via Frontend
 Transport; Thu, 20 Mar 2025 09:47:03 -0700
From: Willie Thai <wthai@nvidia.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<joel@jms.id.au>, <andrew@codeconstruct.com.au>, <kees@kernel.org>,
	<tony.luck@intel.com>, <gpiccoli@igalia.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <linux-hardening@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>
CC: <wthai@nvidia.com>, <leohu@nvidia.com>, <tingkaic@nvidia.com>,
	<dkodihalli@nvidia.com>, Mars Yang <maryang@nvidia.com>, Krzysztof Kozlowski
	<krzk@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Paul Menzel
	<pmenzel@molgen.mpg.de>
Subject: [PATCH v3 0/2] Add device tree for Nvidia's GB200NVL BMC
Date: Thu, 20 Mar 2025 16:46:31 +0000
Message-ID: <20250320164633.101331-1-wthai@nvidia.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003F62:EE_|BL4PR12MB9483:EE_
X-MS-Office365-Filtering-Correlation-Id: b77ff01c-7c32-4abb-820f-08dd67cedd88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|36860700013|1800799024|82310400026|921020|13003099007|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?XgHMoS8LtW6ijra5YRRUszrzJ+xkOUSTTxCSDDX8/zcZawDoj253F7zx+J7F?=
 =?us-ascii?Q?zL4qg78sbuLYsLB/H3vYAAQtbGgBHV/yxx4DPCoXGrZSkDFggXgdT8SBVL17?=
 =?us-ascii?Q?Mka7Ub3JYU9w9rEeDvS3LX4VOhfTl/ktr9isz4IvP4di31pRjd5C1DcitQAY?=
 =?us-ascii?Q?Y/PelxiyTVEZLVYk9yFzm4r5rzqog/u9BohT8QK8Hvq6dUKzHfdDnwbik237?=
 =?us-ascii?Q?o5YBCOu7QauMNoxihSrRHlPYN8iKsjQve3F9gqVRTErlLQViYS9QuEuxPv1a?=
 =?us-ascii?Q?zNpU9iYa9TUh3NFxALD1/huuQ2sT5KAMDSysl2vg9Kbopu14WmSJDqV0PdsQ?=
 =?us-ascii?Q?cepSqM365z03fYYQmxWAi19ILvAsTTkUzFec1G/LPHaGIwhZfaP5SSyE0mkr?=
 =?us-ascii?Q?Ak3/K8Ff6SsP94kQ45Oqs+jPSqDeqLoPkd9eIcs4K1w30mI8mNbvFGSMT7hC?=
 =?us-ascii?Q?Z1qJz8JQ0eqn2fKpaF11GDR8/7gbQCzL8CXVKDGyYVijpGGDhbswyzAW7CEB?=
 =?us-ascii?Q?r3DT+ZI+jjPkjJp8z8fcDlbJpHNiihG36P/y0ofUU+J4D4Rdx25Mp02RYRvf?=
 =?us-ascii?Q?1pf4ntHoeOGMa3ZL8QAksEJfjgtuO+YXr9Zz+2O/gKR54Cwhm8YMQDq4BAbl?=
 =?us-ascii?Q?9y08yMyXmXrsPWLG1u4vQS3xWdZrowhrjmBbIkLKWZwLNtdV6DkrP8wHiZSx?=
 =?us-ascii?Q?QDFDG4t7in4kBT5w1s3mT42QFmjB+xxpnlyhSIdFRCL3vlhTp5zbftWjhoLg?=
 =?us-ascii?Q?7k2ao4DYxnnJgD1KSwtnxr9PjdYlFZj99EZddg0VnO0TU4O726rd0ed3XY6s?=
 =?us-ascii?Q?0YW18KYSgg7gXGVUuG8puB6MY9mEsdOqb9gVCJwvBd3C+E4hcp9MJuOasbKL?=
 =?us-ascii?Q?KjxQCEXNCVk2wnPixYXnVUxHYGwnweOTkAxszCJA5L6KVYgldpiy0xi+3+GS?=
 =?us-ascii?Q?4590LEjIHmI+OHKsa5S3GHoMeH5mctAE9s4bUxSlPEnfdB++6RM3DWpwoG0n?=
 =?us-ascii?Q?1CKh/MStINLx0+ISXJUjqP2ehVYviX4hCafy/nJewptE2a8aaKXxkGiFH2CG?=
 =?us-ascii?Q?Bk3v4dZV/M+hspIKnqlRixK98xCnn6iNqgi7eA9K7RfQV2RV0qPgg+veLbHS?=
 =?us-ascii?Q?i0/nBQkwLxkgcVUbzUODuljIdyPKX64BdP0v5KJdIPiju3wRa81bF3XZ/7kz?=
 =?us-ascii?Q?vUZwG9ow7k4AL4VkV58pyTExVJ2IwG/IpPVvNc/4kSqTnKmq9PsHvMIXsWFK?=
 =?us-ascii?Q?DmxuXPjZrb+xcq62cdm/YgPkqcEq1G+W3lAU83H9n3w8mbT++8FPuWrqX7eg?=
 =?us-ascii?Q?9vv8OddlWc98OYoufz2uYh2HfT/ypPY48zKR3hFruQ3ixluztISJ3OTRrgmU?=
 =?us-ascii?Q?QIAz8WaMWrHaxhYXdPtNkQKq/RsRSabzrwvRJ/vrTlVbirbm3qKB9qj+IdI0?=
 =?us-ascii?Q?l7r3GPiRstDVFP8z/rPfXju5dYmWmGw6/MQXDJMGIeFXyNor2aZOi3YMkXSM?=
 =?us-ascii?Q?gY3xtUSVJ6GIrW2CZTBoVsqHIPgixIWs4lTz?=
X-Forefront-Antispam-Report:
	CIP:216.228.118.233;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge2.nvidia.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(36860700013)(1800799024)(82310400026)(921020)(13003099007)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 16:47:13.3175
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b77ff01c-7c32-4abb-820f-08dd67cedd88
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.233];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00003F62.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR12MB9483

The GB200NVL BMC is an Aspeed Ast2600 based BMC
for Nvidia Blackwell GB200NVL platform.
Reference to Ast2600 SOC [1].
Reference to Blackwell GB200NVL Platform [2].

Co-developed-by: Mars Yang <maryang@nvidia.com>
Signed-off-by: Mars Yang <maryang@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>
Link: https://www.aspeedtech.com/server_ast2600/ [1]
Link: https://nvdam.widen.net/s/wwnsxrhm2w/blackwell-datasheet-3384703 [2]
Signed-off-by: Willie Thai <wthai@nvidia.com>
---
Changes v1 -> v2:
  - Fix the SOB name [Krzysztof]
  - Fix warnings from scripts/checkpatch.pl run [Krzysztof]
  - Fix DTS coding style [Krzysztof]
  - Move pinctrl override to the bottom [Krzysztof]
  - Drop bootargs [Krzysztof]
  - Follow DTS coding style and change naming for leds node [Krzysztof]
  - Change flash 0 status property [Krzysztof]
  - Change the phy-mode to rgmii [Andrew]
  - Remove the max-speed in mac0 [Andrew]
  - Put gpio line name in one line per group of 8 gpios, but keep some b/c they can exceed length limit [Paul]
Changes v2 -> v3:
  - Fix missing new line [Krzysztof]
  - Fix missing binding define, adding it in the patch no.1 of this patch set v3 [Krzysztof, Rob]
  - Fix DTS coding style [Krzysztof]
  - Modify nodes name to generic name for: i2c expander pca9546, gpio expander pca9555, power monitor lm5066i, fan controller max31790 [Krzysztof]
  - Skip mac setting and wait till the delay issue in phy-mode fix from Aspeed SOC vendor side [Andrew]
  - Remove i2c-scl-clk-low-timeout-us which is Apseed proprietary property [Mars]
---

Willie Thai (2):
  ARM: dts: aspeed: Add device tree for Nvidia's GB200NVL BMC
  dt-bindings: arm: aspeed: add Nvidia's GB200NVL BMC

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts | 1168 +++++++++++++++++
 3 files changed, 1170 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts

-- 
2.25.1


