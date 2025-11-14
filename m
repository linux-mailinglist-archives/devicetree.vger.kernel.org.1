Return-Path: <devicetree+bounces-238468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C82C5B975
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 479A43BF0F5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9247F2F12BD;
	Fri, 14 Nov 2025 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="v89WWN7r"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012046.outbound.protection.outlook.com [40.107.209.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA132900A8;
	Fri, 14 Nov 2025 06:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763102634; cv=fail; b=Qfj+NUYlV+VskOxgme+pzrCO7XWxdPaAqldsE+Ywy+7nXjaPtw7aXiHO2ZP9rva78HpKto9D4y1YfnDi8LsWQb6jG3oLm7z0AJE/vqwEvmU5TbArcklZOAd90JL8PxFTfl++mytPl29e53KhBFbhrxy5nhPtagUS/DgpBi5q/CU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763102634; c=relaxed/simple;
	bh=p8qRUOxMFElTpbAgHN2+8UTGqBpyKYac7fWBynadyP4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=q/Qa4PqANPGg1ufY4TnkBM4+vwwW9Cb6VAJzxAn2DQW9hkN3w1pJlC/+JiBQRh9uWk4TuUjyFKRQFqmJ1f9R9PwOodigIRrKABfIZJImUlOfUG54fVkY6wfZLReXaNNWP2lyNZfBSFl+ENXDt35LxCMiAeYLpQGRB5EtWIHeVYU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=v89WWN7r; arc=fail smtp.client-ip=40.107.209.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sp60X3SlqcVfbk/1gXzbxHmZOf99pWDRjndLYLLp+JMmDRTPzOePPSeaNXecbuMWt+gbtRrwVY5HWkqyjGaSaWQH/sgt+RbM20nI+59o71Np0RS3J411ZB/QzXCAk3L+QhCeUmI2JO41MO29E/kBw+EnLPAD6O6gydH49Z6UU/xuaa7JLlKpx9JE+GrS+YPEZkHSkOCMbK9Qlvma/BjbYggeWK+MTGgH1QKe+E7EYrIFGPp0EWNHnjhJcKDsFK9nYWvr7YOUe3oDca+WcV3wAjwmGUX1P+aOn6ZGG5jV1eRfKYN0sml2x5+48Xj37MhbuPC9feUSd81X4nFe+HPd1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHcoG5z7P2G9rIPn73QEPVqGUR6XZxfuMfNKWRPXce8=;
 b=H9Qn4aQPo1xxl5c33rt1TpmY7UB7TnjLoJ32GdPHNNnM9QHrl+2O04Nv/PxwMVtIJYARC7Q0sLRsqwQ4zxJmgh0OkR/EWT2ndWujGN+8biSHATFVYd6aBRFhgjaJVjgMEsNZTUPiFFyyg3uMLIHs31Q5JFqUCZxs9VR2xmTzYArZbRSZ6JUbH1yLMPp3We4JrWyQ2S6gj9pBKcJt7zSpOnQ2/Yc1f4/Wj1OyafLK/YMVrx4ffN7peg/68mvYaWnGz95wECB44pFLRORXwRTKkAez4uXGWB+yx3PgNLdpSzKXX7fHLLzkA8ULM+0c8FypxXLZeKhu0Kt1qVum6VUz2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bHcoG5z7P2G9rIPn73QEPVqGUR6XZxfuMfNKWRPXce8=;
 b=v89WWN7rDraRnBnrK18N92to9T5Fk7/cOt53Sr6tL7VlbduAkk5hszyXBonMisCu4h/ar7sF5UZaKWs/o51JB0crQQ6RzQH5y/m6jGGO+BZZ5pZVcHL5+s17jvtGwRpde0fHIo5N6Zm9w8eiB97OohjbqBOhaEtiflwUJEYqufs=
Received: from MN2PR19CA0072.namprd19.prod.outlook.com (2603:10b6:208:19b::49)
 by DM4PR10MB6838.namprd10.prod.outlook.com (2603:10b6:8:106::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 06:43:48 +0000
Received: from BL02EPF00021F6E.namprd02.prod.outlook.com
 (2603:10b6:208:19b:cafe::3f) by MN2PR19CA0072.outlook.office365.com
 (2603:10b6:208:19b::49) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9137.21 via Frontend Transport; Fri,
 14 Nov 2025 06:43:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF00021F6E.mail.protection.outlook.com (10.167.249.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Fri, 14 Nov 2025 06:43:48 +0000
Received: from DLEE215.ent.ti.com (157.170.170.118) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 14 Nov
 2025 00:43:42 -0600
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 14 Nov
 2025 00:43:42 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 14 Nov 2025 00:43:42 -0600
Received: from a0512632.dhcp.ti.com (a0512632.dhcp.ti.com [172.24.233.20])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AE6hbsT1539554;
	Fri, 14 Nov 2025 00:43:37 -0600
From: Swamil Jain <s-jain1@ti.com>
To: <jyri.sarha@iki.fi>, <tomi.valkeinen@ideasonboard.com>,
	<airlied@gmail.com>, <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
	<h-shenoy@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
Subject: [PATCH 0/3] Add Display support for AM62P SoC
Date: Fri, 14 Nov 2025 12:13:33 +0530
Message-ID: <20251114064336.3683731-1-s-jain1@ti.com>
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
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6E:EE_|DM4PR10MB6838:EE_
X-MS-Office365-Filtering-Correlation-Id: 483f59c0-7efc-48a5-961a-08de23492a54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|36860700013|1800799024|82310400026|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ysxyicMl5ze6RGHCZlcFF7Hznn4S0i9IZEwDwwMbDVvsp1A+RhtjzdZ090jP?=
 =?us-ascii?Q?XD3tLQMn34V5XO7EA7WiQe5Uqs52Y7pnAH/NEGDyxR+Fj7wfwiuWyb02Ik0t?=
 =?us-ascii?Q?1bCbcV1Mchuv97eA8YYsxFZ0sFSpVkGjT2dv8QXmvjzM7FDQy58Y/RY2PjNH?=
 =?us-ascii?Q?UKKROZLd/ZvpNrJohLcdGrhPPZqfd4ozfP6uqpMOZ+k96wax2EvXmHygqkkZ?=
 =?us-ascii?Q?+85RQqodK8MBr4lAclEMqyY4iysZPpn3ng+YZ+Ndd9cEWej6clKVBqZbWE+T?=
 =?us-ascii?Q?ZDqCeF2Q0zds+KqmM7UesPfxVwriyzVTeoKag/L4Xp8yqzPlEM4jUUXK8P6R?=
 =?us-ascii?Q?WouLNkKX6gd21Me857YkP8PDRZds783A73zD685q+fXbWhct1bGHAJUUxA/I?=
 =?us-ascii?Q?X2Lez881LDHz6ZYKBLwm8ykyo8KehrjmxCcJzFN1D2Hl7ZDhkgALbCW5NJWv?=
 =?us-ascii?Q?6NtDG6f6ETqXrOSeA30JD0VznYWgtNDfqR2fmXbzORnz0V5+v2jD6vPK+yzD?=
 =?us-ascii?Q?8OR6UN7ve/WWlTjk3PwpCvb42EZ54ON7Eihvh7H4ClRF0F7Ma+mZVueHxaC2?=
 =?us-ascii?Q?1ZwUKVRdok7gVudpgYMVe7w7fZ805KxqW8AgkZVVC2aszJ4agtozHVxgIwrt?=
 =?us-ascii?Q?XQ9bhPhyl3SKMOmGA7aOIIuuPRNFIAmVxV6v1YyuzaBRj+XnvV2yKu2s9+x+?=
 =?us-ascii?Q?ZDBUm/mw7DfNR7wRk/FoCKnrulcXIdOfDz6XprDdA3p00BADO+Fr1blGDhIR?=
 =?us-ascii?Q?XeQz7TGukH7lE+UzMBRiio5GqN+KnvEHRulk1tsndWmjSoKil7T4kahgUihZ?=
 =?us-ascii?Q?S4TAxVkA63Ec29hTAtTyLt5Sqg1s5zPhWWL9ST1d/BW2nj7SjKBXEHANK2NN?=
 =?us-ascii?Q?6GEa563Gk2ll04OxfaAaWbwiIyW291ZrcHzcu7EvGAaCcfSmLD8U2nb5pbi2?=
 =?us-ascii?Q?ervFBPn9xPn230w2qIjMNjNUodaWX3KD4IHSrK7JSX99hVUpP9/3Hn8OyVjN?=
 =?us-ascii?Q?rL8nardOf9113BF1JkeOvHaYyIB+ZcykFcEv+cADGsEOWmoiD8toVSkNrlUo?=
 =?us-ascii?Q?Yy6eaLIwgQbw0XyxxAY6HQc2pyWXg88/CkAGo1Ew7h2rw82jcXB7S5oKWTn4?=
 =?us-ascii?Q?pJ+2yV98PNGg433qXcRvgXNQ7XZtaf+r1ptbZvwHZP1eKn/Ki4O5afI/60Sa?=
 =?us-ascii?Q?AyGpzM/aZU6BA449Tmr2N3X2T2eQipfE/zhGoR4koMx818GHvdnFqVXb9D6+?=
 =?us-ascii?Q?OySr0rtep5HmDXzN703yHaPjYI3SDog4RvGtgcYqLVZfeWWlW+kdvELQhjiC?=
 =?us-ascii?Q?mfCuiWj/nrqJgqL4nsT3nK8pTxHyS7f+9osli2B1iSe+ZCZjkqh02+ZuGPQB?=
 =?us-ascii?Q?f1JEGuyLRQFZI6bRkeunguhc+A5PjMBLVKBlOzkrwGNmxMi2MOmcPwwKcS4p?=
 =?us-ascii?Q?ilhgj4In0O7hskyyk2A6iQPOwJx0cjzilBG0XFPUAB3DyPSxadr+RnDt4zlN?=
 =?us-ascii?Q?zsyUbQgspJb4xw637DxQMqoDzSf2TTWvz63tm+I/h0OVXpz2EckcuZnCbyxH?=
 =?us-ascii?Q?21GjOvrUndwJY9aRHkvDNbjnI8SuevqZ2QSAKLWH?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(7416014)(36860700013)(1800799024)(82310400026)(921020);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 06:43:48.1852
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 483f59c0-7efc-48a5-961a-08de23492a54
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF00021F6E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6838

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

Devarsh Thakkar (1):
  drm/tidss: Power up attached PM domains on probe

Swamil Jain (2):
  dt-bindings: display: ti,am65x-dss: Add am62p dss compatible
  drm: tidss: tidss_drv: Add support for AM62P display subsystem

 .../bindings/display/ti/ti,am65x-dss.yaml     | 127 +++++++++++++++++-
 drivers/gpu/drm/tidss/tidss_drv.c             |  89 +++++++++++-
 drivers/gpu/drm/tidss/tidss_drv.h             |   4 +
 3 files changed, 216 insertions(+), 4 deletions(-)


