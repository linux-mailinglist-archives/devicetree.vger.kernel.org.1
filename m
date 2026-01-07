Return-Path: <devicetree+bounces-252475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBEACFF3E1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B56D73011ED4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31583563E7;
	Wed,  7 Jan 2026 17:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="J0Ekypq1"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013052.outbound.protection.outlook.com [40.93.201.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2025368282;
	Wed,  7 Jan 2026 17:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807949; cv=fail; b=azbXWPdY12vk9gbj/bIJY7AiHw6+ns8U8u6Q6zVDh854gofSehA6AJHBEehzpHM1t1REV9MjjwZ7l83pKAQrhAH2/m2Dw85GuP3PiC5H4Q5YZ0DjWty0+MbWeRm00v93XluBivgxOJuXL3duJ4OlK/xnm9+hzcKB5bNIV1iuUz0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807949; c=relaxed/simple;
	bh=IaEtQSkOTIvWGo974tmFQkEiTWN/1Iuyo66zGRFOlHQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mexEZGGvzGfKYzNiGoBVedVx/fc4iU1+IP1sKUuZkPsZcM0j4IsOzgq0IgkTghnAK8PJJF0VnTUQbzgrXzJtNfRHR2qKPl7T52E2F8b6IU1D/kfTi1Vsrgv8AUxO+BQ4r/1/Le6F/gHmbe39IrO9fgaFx/mEyN0Wiqs5628EGeY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=J0Ekypq1; arc=fail smtp.client-ip=40.93.201.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DU9tBS4sS59FiqCYh/Tv8x2tvKIPl2aOpgkmtekuGjXGNo+8gHFh1R+j4WqVo6LVPZzoXEiO3Rwug4Y/RQi3NuUN2rnM5Qp4sef8wNPSjWPP+jXAh7DVaLbxnE0mob1REMuhFemKSLsbj1aKN5lpXvxf5tYoXfAfY42vl7MSdxPzdKPfvummFQmZun4UYeRtWq/pwdH1uu9nPd0FESJBPwPOpXvANghDNY81X8u92dfFEtaucmKlZjK1ltlIJgFY4MfvGhpZgw9rYjTy3/sfMt1SZFTEWE5MIi2qewddHC8HGkqMVWnWo5jpWAsfvdJAsyuRIGcvssCnfvyY6U0f4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YBSCMC3PfSKvJmiBYWp0pbugQXMsu66YvEWZD9olrLw=;
 b=ea/JWl35VD7JjJAZ/B9n7r67BINFM6df+Edoa0bpeftc+G/wE4ETx6GImGbQhDtgh1PJxfBsmfWUlgS8+TnVnIknWfZdoE9lLV0UfxR+j74hlPgQW4xs1+oo3eaAZm+LYI+pGsHS1LcaN6M2zaMKynqsvCO5XdCF0QMImd68pz8GoXLu4oWfdkHGNQTJt0CWSNc6Rz+DQVSL1M/KsChdg49poKnwBuaNWWK1Zdrw+yXttsfJqQTexQ3VSeDN+WkgnBfN+MR8ZlfZSlPPIEHyP6IKyCojTFeaF31ao4YzFcI0O9VwaDPc2xzBICfaeP4sRIhvdopmemCtX41bbQ29ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YBSCMC3PfSKvJmiBYWp0pbugQXMsu66YvEWZD9olrLw=;
 b=J0Ekypq1OMC8jICTTbt1g4FHhRUlsvM0FgLAI+i3/CeTNsFzExxz1tvd4og4IWhdeOfMe3LDuLU7ViIhhd8Ujr12rIMB31waYslEdBsqC6EA4vu+EOMm8+MlOsygvt97TBI+xQA+pVJ8lDViF5+09BcbHU27bLHBhz0lpqIKHTw=
Received: from IA4P221CA0008.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:559::6)
 by DS4PPFAFF9EAD68.namprd10.prod.outlook.com (2603:10b6:f:fc00::d41) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 17:45:34 +0000
Received: from MN1PEPF0000ECD5.namprd02.prod.outlook.com
 (2603:10b6:208:559:cafe::7b) by IA4P221CA0008.outlook.office365.com
 (2603:10b6:208:559::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.2 via Frontend Transport; Wed, 7
 Jan 2026 17:45:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 MN1PEPF0000ECD5.mail.protection.outlook.com (10.167.242.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Wed, 7 Jan 2026 17:45:33 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 11:45:31 -0600
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 7 Jan
 2026 11:45:31 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 7 Jan 2026 11:45:31 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 607HjQlU1103883;
	Wed, 7 Jan 2026 11:45:26 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH v3 0/3] Add Display support for AM62P SoC
Date: Wed, 7 Jan 2026 23:15:22 +0530
Message-ID: <20260107174525.1702585-1-s-jain1@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: MN1PEPF0000ECD5:EE_|DS4PPFAFF9EAD68:EE_
X-MS-Office365-Filtering-Correlation-Id: 638e02e5-b40f-45fc-8ae1-08de4e148f11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|7416014|376014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?MraUxqePyik1oz77dgOaJcHCwYUreSD1NrWwKRzD/EaaKgYHXaut7EsM7LQQ?=
 =?us-ascii?Q?jYSG4rD0gJt8gdIWM/t6Dp9wuCrD7fE8uyIR48ZMqq1ljzU4dOkWf8Re4FwR?=
 =?us-ascii?Q?xGR1S2sne43i7HTGZ+Xl4SKZcnMC2NAuNWKxzrgcWw6HzTi8BUNpc6w47gZU?=
 =?us-ascii?Q?REd94UB76rlpCpOz2KjVPNh4K5CgIj8FYibRXzA+JdVVDkUGFgZh4qNPBnzX?=
 =?us-ascii?Q?qnJXG7CjCQbsMkEskmTsrluEURloj3nn/ZfkfMuad2kLZwfQs9sHaMQW33lr?=
 =?us-ascii?Q?I2WAfbqX6u5PtnjmpsPcam1wHb0O62J5J9X8pGKYSNeOir6Kca1vx4JOQck6?=
 =?us-ascii?Q?O8diibWTKXQHo+CyXoZoABQAGKVUCjb4vtB7fTHwUXfJJhpbl71n+46tPZVG?=
 =?us-ascii?Q?whFE8uINd/C1RUafqhUTkjA3LJV2zGu1oTlh0KLUCAcxTwiU98FrRaXyQ8f5?=
 =?us-ascii?Q?LatAE7BzcMfEs3u5UWrDAJJ2x6FkHtMMDd+F4Irm5pBGhQog2GzhtJvvRqNm?=
 =?us-ascii?Q?t5CGRMZcn0sio+AMj4Tp7rs0D6RWlyAF9h+zxpkknLBx055cFKsV2AJ1o7PW?=
 =?us-ascii?Q?gRKtGMn5k/L/XgH+nfcf3GBw8Oa6Vd2AYDMv4kyS3pNcBfddM/a9Mrrjoqk9?=
 =?us-ascii?Q?KvPHRLda9CtQFDb6OaIwRgAQnFDMCc6s7Q2SqjKTAAieq0veygbP3SRlDDxQ?=
 =?us-ascii?Q?iCkfuBlUdcHgr5ev6W3mMpJ6vnTUeJAHUSFmr8BGxomzF8nV8HfPqUy0TFMR?=
 =?us-ascii?Q?3ichCyNKEJE+COlqt6q6XxAiB8Jf/x7aJnvA4fWNCt5rjUbQkIb6x3DNWxaW?=
 =?us-ascii?Q?KBc/3XCGgREBQ2tUccjfjM2tGHvEoYdNYGxchLdqXtlhQ4rrjq11F0ZJpnVk?=
 =?us-ascii?Q?y8ZXraTh0Fb/TWh9PN5mneRxdA+WjKydjPZug8cS6eb0W4CTWigQfwT7C9S3?=
 =?us-ascii?Q?VR+IBkkL6lEUCybeaW4RvtmFn8cFMcF0tsg1FFSoOl148y5K/X77onkBhVj3?=
 =?us-ascii?Q?0tPRF8GHukWp2fRpI0x+ecF0mCoWYDIngwOKC6uxScaZJXVD7MFF4joHWQoa?=
 =?us-ascii?Q?YXwxfdEknRzqs46EeW+cssxVSIxv6hrn0t73vIq058P5IwASJaVw8EFptXY4?=
 =?us-ascii?Q?iXHhTH/zihB+0cOThNY+Pc7oUBc8Rut9t20ZMsigdIe8r25d+kaptYeR/PMC?=
 =?us-ascii?Q?F/pAp0P6EVb5iqusiGfG0l1t/vEDkuqiVsDHD/axBmsd+d90yp7ycLH1vR98?=
 =?us-ascii?Q?Kkn5sFUHK4kPnDDpVrx96BnnzSIPoHdmZLzJmwK22WRCg73SX26VXBjk6o0E?=
 =?us-ascii?Q?RuJvwPzb4b8NApArhfp4GeV9KtfcSCq6pEEmxLKaLykxojVb2yPEz3q2KsrP?=
 =?us-ascii?Q?kHambiPKBq7qrwX8dabPdJz/IkN4B562i3UU9kWzIrkV9bJ6ZdWmvF3D2Z0S?=
 =?us-ascii?Q?33kaqaOyOhVq1Q1Ra4DewgT8dPf8j8mg72NXNLehDErTiuk4KnjR+I5x00M/?=
 =?us-ascii?Q?Shys8Bmx1qwUZxiWbO351gwAw6bzet8II+Wepjk2fBPuMjJ6WuRdZ3kG1XMp?=
 =?us-ascii?Q?5176L0qSu4oS6piWqiDzJC1hb0PlHXwsKNb5LOYyOEquilJhNbmQeHRquDcL?=
 =?us-ascii?Q?aA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(7416014)(376014)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 17:45:33.8617
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 638e02e5-b40f-45fc-8ae1-08de4e148f11
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MN1PEPF0000ECD5.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFAFF9EAD68

Display Controller Overview:
TI's AM62P[1] SoC has two instances of TI's Display Subsystem (DSS).
Each instance contains two video ports. Combined, both instances support
up to three independent video streams: OLDI, DPI, and DSI.

This series:
  1. Updates bindings (PATCH 1/3)
    - Adds "ti,am62p-dss" compatible string
    - Modifies power-domain requirements
  2. Updates driver (PATCH 2/3 and 3/3)
    - Adds power management for attached PM domains
    - Enables AM62P DSS support by adding compatible to the driver

Note:
  - Device-tree changes will be submitted after this series is merged.  
  - The device-tree patches are available here[2]

[1]: https://www.ti.com/product/AM62P
[2]: https://github.com/swamiljain/linux-next/tree/AM62P_J722S_DSS_v1
---
Changelog:
v2->v3:
  - PATCH 1/3 - Add a broader range for top-level constraints in the 
                bindings to resolve dt_biniding_check conflicts
  - PATCH 2/3 - Remove and modify some comments
              - Use IS_ERR_OR_NULL() instead od checking for both NULL
                and IS_ERR()
              - Changes in error handling paths
  - PATCH 3/3 - Pick R-by tag

Link to v2:
https://lore.kernel.org/all/20251125165942.2586341-1-s-jain1@ti.com/

v1->v2:
  - PATCH 1/3: - Remove unnecessary example
               - Use "am62p-dss" compatible check for multiple
                 power-domains
  - PATCH 2/3:   Add Signed-off-by tag

Link to v1:
https://lore.kernel.org/all/20251114064336.3683731-1-s-jain1@ti.com/
---
Devarsh Thakkar (1):
  drm/tidss: Power up attached PM domains on probe

Swamil Jain (2):
  dt-bindings: display: ti,am65x-dss: Add am62p dss compatible
  drm: tidss: tidss_drv: Add support for AM62P display subsystem

 .../bindings/display/ti/ti,am65x-dss.yaml     | 33 +++++++-
 drivers/gpu/drm/tidss/tidss_drv.c             | 84 ++++++++++++++++++-
 drivers/gpu/drm/tidss/tidss_drv.h             |  4 +
 3 files changed, 116 insertions(+), 5 deletions(-)


