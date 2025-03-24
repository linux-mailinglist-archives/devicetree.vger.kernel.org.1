Return-Path: <devicetree+bounces-160274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA0A6E1E5
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 838081688A5
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 18:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A407264A61;
	Mon, 24 Mar 2025 18:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="Vnvp6Cyv"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2047.outbound.protection.outlook.com [40.107.96.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C082641DB;
	Mon, 24 Mar 2025 18:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.96.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742839209; cv=fail; b=Rf9Re8W4pwzYU7bE+WMwcMlL2vinMKINuNmM7cdZTCmrHKsbkL0h8dw1AsUelNR3rZ8dBJG16TnJruZV5ywvaQ38GERnq8QrmOynek0Oiy/mdODQBa1e5pamV9PO2tmfGHUxe5JAXgvtd4a0vg58YI5h+7Xzgb+q2Z4zx3gwcZg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742839209; c=relaxed/simple;
	bh=ZiEUW2tpqFK48GU5nnL/1PlWIC+qW2P1CPrxGLQFL0E=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VtdGOQd5Eg4MZQJ77WWmpGjHeo9v+trTjJhD7RLZfX/ulO3nSPLYMAQx/2T136eeQSenuqYwuVXkei8nIp6m+G40tn0m2PMxH1MFOrZDma7gu9KoSYuU/9zKoW697/SaK24MQaRTNobthVxcv68f9dfhBKICBrg32Krp1/Dab4o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=Vnvp6Cyv; arc=fail smtp.client-ip=40.107.96.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fq2O88h3dWOTAPbNIw8ihjrhQiakR2oYlsjMjdqIXaCWxL/Tl/dR5VVXooBRvumZdav5ObnhxMd5w0oXVH8YCTRcciMlkVmIUnoLj+NWO3gmkRHOtb0lBDXb0D9urIjFSJ8LQ6kj4iF5LvYm/cgdJhqoMy/K+xYvglfuCD9ZQkAr8SPZLmYvebdIP9SU4I1A9jIbSBRTAbQ/MgtFqSK4AcnGKGIgbvzY0Dl2DvurdQRskqFHdFEt49HZnV3DerNlIvYtY17OpPmDkh6f0H3hbnN26jJ2yKgm6yPuiqtReAGXaAHdC05yr2bBLAruR/ME9yAq1qgatGr8bs5l2CuzMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GL1cDUKammEDDEoDXUXIeXN5sXVckvBTNfoMp3lq6zE=;
 b=caBD4hHoRcsSZzuxNCLw9Um7xTC2qC9iz9voANLQLL4++WzA+D7RIzEzSww7+QpjfepH6ZdNi5tLBsa07A+hAWChZ5i3ly+UFMxCHo5zofyqCvkni+5eiIXTuGVNUAiGwEqKrseWwXjiIkYmKzpNtG33LpoB5pMGA+O+c7qLVBzGm+vMeUgMsSTuybnn5jKt6vUXoKJzRfR1B8i+LtkHAGCtAPbCPoLin+CtejHbpv7HTY4vYat9cGRBgEP6peak+XyYOI8u1+kwtnwZTMXHY0QfCmrEdWgtTM0pFZzpPIxG0E+VTOaXUozq3tz3Rf932lLmUHWANJLryE/4IiQZHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GL1cDUKammEDDEoDXUXIeXN5sXVckvBTNfoMp3lq6zE=;
 b=Vnvp6CyvgzHug4zNyOLUG8uqgDe2kGmqvJ399X3eqjVF7iVSDZjIZRofUyMjm0uNYl5ecSRpmtb4XCxsCSuS8tc6BNhN1Qvmr4PNRq7h3Vzb/UhDQItr/tftZcEh1ukHsZhKhaTJpGvmW6wt4whnMsVjcWuGNc0vXxdrNCKpcYHg6kXLDy8Mkpa4ATE7jtxJ7lbQRaGtQJilj4GoTyHRfuwhElj0jh6h6y6kKFYOccJDP8t8oH5Q83b6eBMtbz736OlX5Wn0mjV1DXAhVddFlLhuaHfKRctooAfMUcy5H6VAeQMQ3HjrfMvIYYqVI4c6ElaBlbGuIaKyeyN1hEfhXg==
Received: from CH0PR08CA0025.namprd08.prod.outlook.com (2603:10b6:610:33::30)
 by PH8PR12MB7206.namprd12.prod.outlook.com (2603:10b6:510:226::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 18:00:00 +0000
Received: from CH1PEPF0000AD78.namprd04.prod.outlook.com
 (2603:10b6:610:33:cafe::5a) by CH0PR08CA0025.outlook.office365.com
 (2603:10b6:610:33::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.42 via Frontend Transport; Mon,
 24 Mar 2025 18:00:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CH1PEPF0000AD78.mail.protection.outlook.com (10.167.244.56) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.20 via Frontend Transport; Mon, 24 Mar 2025 18:00:00 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 24 Mar
 2025 10:59:40 -0700
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Mon, 24 Mar
 2025 10:59:40 -0700
Received: from willie-obmc-builder.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.1544.14 via Frontend
 Transport; Mon, 24 Mar 2025 10:59:39 -0700
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
Subject: [PATCH v4 0/3] Add device tree for Nvidia's GB200NVL BMC
Date: Mon, 24 Mar 2025 17:59:23 +0000
Message-ID: <20250324175926.222473-1-wthai@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD78:EE_|PH8PR12MB7206:EE_
X-MS-Office365-Filtering-Correlation-Id: 4610913d-2193-4d91-e885-08dd6afdb21d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|376014|7416014|82310400026|921020|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?RkjAp5mIzXgNN6JgfJcf6Krt3n2IdbDOf0YByYK4tVtKqiKqPx4wcl0kUC5f?=
 =?us-ascii?Q?BauOBAwg7dOuvNfjZOIS8qouw/x+tJTWYOpfSnS1EscN/4fFuc4vFwaxf+uL?=
 =?us-ascii?Q?j8W6xYM3N4ckxGEnQEPfDjd1xO4snLxabg6C36Unl8BRFmZM4p5tkQCTQuBV?=
 =?us-ascii?Q?IhIdSTRxKgpUaZUpNQXW3zX1TrqM0AQMEumi1YbXgdz5f6fzBQUXFCJZHnkn?=
 =?us-ascii?Q?FI1fmVKCaq1u1zMPCDmRf8p62Ny0ZCFW9eNDy41f39HUqkKG4RwLZhhhO7fN?=
 =?us-ascii?Q?R3VApvyTIG6RfCIa/w8rLtIljfStVf0Ok+eANZn9Y4NAU5PIvDFx/Kc0pt9R?=
 =?us-ascii?Q?DRa2QHVCVJxh+KyJ2sJ4/RLL4rx2qICOmNzpA7TVKJ9ts0lYVLI9DqsKcdMp?=
 =?us-ascii?Q?DIo6BNe2cP2YY6IDpS+alcG0FBSLLk8CzMPYcJhOFnhq2aCJuoYPskC0qj7s?=
 =?us-ascii?Q?oUyUhD87uNDqjajlMbno9tIDbMXtfUx86wISM0EE1NOnv8CrO+HYwYXnOK6K?=
 =?us-ascii?Q?o7RrQIWxU6fYYX1rU7IY4AB9PctfisBMz6h0EAAaLNvPTWV1jiEuOkQABzqO?=
 =?us-ascii?Q?QRJ8NmHWEZLodeEV1REbomzdYi2vpsqI6LfY9p9LdZsj4nLggcTNIzJsuLQe?=
 =?us-ascii?Q?/kFYMY7DU1I7wXvuq6HD0Rumij0dr/uaYH49lbD3m/Vy/5Uomg9NINktJgy4?=
 =?us-ascii?Q?LQRqzcaq1DfvYxXpshI3iEvz7m69EwQLmHSZryPPRyHz2SEjl1DfynSeDWul?=
 =?us-ascii?Q?Gh74AGbW0p4LW4TzdLn1zyhusoDU1KxYM9Lty/M/tlPnaymxJ7IHHzHfINk9?=
 =?us-ascii?Q?92RyqagO1H1b+ruCZIA+AdsSpWKXMvmrmmf5MaKgN/wzhC0xeF3dZBlkjygw?=
 =?us-ascii?Q?kMk67V1W2zlbSBSvqmnCzeHpfHSsPuiCLRzeUVFYko2tqAy2FGraeprKJaA7?=
 =?us-ascii?Q?OeXWWTZjyBSRTxUhgIAj9FAbzazaHe+c3u98PQ+uI5Y6xAU12J4ouD4UuIHW?=
 =?us-ascii?Q?DUIAI08vZ0h4ow4DKvJJ7k14jz3pec1J28EZABcdYp+a2uowpH5Uji/7f9hl?=
 =?us-ascii?Q?myd3gcYVXEhAPYhukcFMqavKLVETwSwVt3WNDYEE1jRefu8qD4Sob+wQeVE+?=
 =?us-ascii?Q?ToEBt4q8hd2PRbrrb6q57lSZNfyimw5CIweABxVMvWqeDEWSipGlIiJmcsdz?=
 =?us-ascii?Q?jnPzIIWDcqiG2xPKcE2Ho3BJCL5Amfe8YqsGWPWg4OE9JigB+rgi5xljnaLr?=
 =?us-ascii?Q?M1mq9rOyevlKgk9a7+fPP9zOvB3mFYxs04JGsXZF0gxe1mCChKdOCtttPQ8T?=
 =?us-ascii?Q?Kw1i/nu749Gid0/SsKHlcOokwfWR733IdXIpYtsonqD2goyhaNeTrg8/LpUo?=
 =?us-ascii?Q?cMdsJzL513Rze14gabRZVxpehswIQnSV6WWxcG24CysuEIqVqMm6UM7OtnxW?=
 =?us-ascii?Q?6vAGDPphibdzaH46qMJlnc/GsGc5lk+eTa10ULJvhzq0APuLsZf4WiSrqGHQ?=
 =?us-ascii?Q?2H7HOloNfeVpJ1/HwQ4pMQ5JWcYQ3kG5iGgP?=
X-Forefront-Antispam-Report:
	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(376014)(7416014)(82310400026)(921020)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 18:00:00.2646
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4610913d-2193-4d91-e885-08dd6afdb21d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000AD78.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7206

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
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
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
Changes v3 -> v4:
  - Order binding patch first in the patch set [Andrew Jeffery]
  - Make the commit message more concise [Krzysztof]
  - Remove stray blank lines [Krzysztof]
  - Remove unnecessary comments [Krzysztof]
  - Remove underscore, repalce by dash symbol in node name [Krzysztof]
  - Remove disable-master property in i2c as it is downstream added property [Rob, Andrew Jeffery]
  - Remove #address-cells, #size-cells in nxp,pca9555 and maxim,max31790 as they are no longer defined [Rob, Andrew Jeffery]
---

Willie Thai (3):
  dt-bindings: arm: aspeed: add Nvidia's GB200NVL BMC
  dt-bindings: pinctrl: aspeed,ast2600-pinctrl
  ARM: dts: aspeed: Add device tree for Nvidia's GB200NVL BMC

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts | 1149 +++++++++++++++++
 4 files changed, 1152 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-gb200nvl-bmc.dts

-- 
2.25.1


