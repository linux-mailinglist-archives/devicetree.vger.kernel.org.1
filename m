Return-Path: <devicetree+bounces-59871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE8A8A75B5
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 22:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFADA1F23D95
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 20:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E589A76035;
	Tue, 16 Apr 2024 20:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="gll+5+WL"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2042.outbound.protection.outlook.com [40.107.100.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2DA6E615;
	Tue, 16 Apr 2024 20:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.100.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713299527; cv=fail; b=MLAEAvaZ1m3WXMKvPI44it8s3gOtRItmyrZtx83MtxZOisfTfrY7MBtWOl4WuwrTvOCNudTl88uhdndzAOkP3yLeNuhBuWJyRvy9rRDBVoz0fcYg7v5r6C2WwxxUapfRsvd6dFOmwu9biNVRIOYM/gTgEfFDjMYJ2YgwRm/ER1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713299527; c=relaxed/simple;
	bh=gb6+bZrJciTmZ0Njat6coiSXlo53bgeAqcuTXbE+xPI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=B70zP1bhb4iHwqwbHnS13c1T58EVErP0cM+320Nr6VMZFrJRAn041npFkXlysg/GZNGk6yIH2hlGfjnegegsjn8CfgX9cJw9oPd9Tz22awxpE7WIrILAne2M1Lk8b8MhZMd8nc6W625ySwK9pOvNBGkXXER4cC3XsSuVCq5hyfs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=gll+5+WL; arc=fail smtp.client-ip=40.107.100.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsC/PQQunDs/seieSNrFkZP6yIr0unBPTJgCwIWAhmXx5wiEsLkzDd63A2qM+oXBMSO8Zh7tyPlwyMSh76GHz0eiaDsJr0F4VCvMMS6HjJ8zxqeE6VKdO+bE9kb4UyRj4rz/i9aXNqVgzzE6Py/GIEiP4NPrgzGtW+GeF7gp/aZslrNddYmtnxhMCIMQRsNZxJ+ftm+4uFrqXRTXLSUj9f395jr7TOXJdr+Mn2F1FwnVdMh/YqiGzUtSM0UzPxTgRdO+5uIxwjYY6a6vqz1WZiflZ3KZJUO2EuHbAjxbp7d+zcF+HWbqeCKx1ug/iwtjkdYE2ctSPZ6/I7zBfS5KqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MeVG/3Su+yyUXWvPu2kSIxoOaY/qPFgN0qwlT8p/UP8=;
 b=YwZkmnUYa4kDDDM8V1rl8J7wrknRVwHIcuA8geFzhirxiotmR3naqDCzesMQ/doTIZ++qMKKsKcXmh0lYBXvPnkISjFgfcqFLr98kC/Lg39s5x7zT2GnAwYP1JE9iASLH3BbHo0DbM/itsCN6IiBDGOfyFO97PETobA5bl7ve8hmBJ9gjMKTY6+T8y503A3u08ReXZS9TMWdDsWjYPc5eFjDz6L0X/Zz0wfEDqqczrg7qZ6PJFae02laxpdl876IuIdAjxPnNh/iu5lqhWOQMMbl/PGC7EDPXC627bbnY3Vu6p2s4q+hafmH0dvt69LgijCgYgkyNcA+wyzU/gt0TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MeVG/3Su+yyUXWvPu2kSIxoOaY/qPFgN0qwlT8p/UP8=;
 b=gll+5+WLi/FcscCMqfAoWqYzZNPlyAF4HyebRHuha36Ol7nNIF47VUBDX5YmLfSVSiCfSDe4F4C4aEsHZyqWGfffWWoNKOfapfEJHACe07MG2Y55yLlHIrkaeWfTC+fD/qcher94p4+XW2GXjYMEtacC2as86O2FA94d5BUbGFg=
Received: from MN2PR07CA0009.namprd07.prod.outlook.com (2603:10b6:208:1a0::19)
 by DS7PR12MB5815.namprd12.prod.outlook.com (2603:10b6:8:77::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 20:32:00 +0000
Received: from BL6PEPF0001AB78.namprd02.prod.outlook.com
 (2603:10b6:208:1a0:cafe::fd) by MN2PR07CA0009.outlook.office365.com
 (2603:10b6:208:1a0::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.33 via Frontend
 Transport; Tue, 16 Apr 2024 20:32:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 BL6PEPF0001AB78.mail.protection.outlook.com (10.167.242.171) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7452.22 via Frontend Transport; Tue, 16 Apr 2024 20:31:59 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Tue, 16 Apr
 2024 15:31:58 -0500
Received: from xsjanatoliy50.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Tue, 16 Apr 2024 15:31:57 -0500
From: Anatoliy Klymenko <anatoliy.klymenko@amd.com>
Date: Tue, 16 Apr 2024 13:31:40 -0700
Subject: [PATCH v4 5/7] drm: xlnx: zynqmp_dpsub: Minimize usage of global
 flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240416-dp-live-fmt-v4-5-c7f379b7168e@amd.com>
References: <20240416-dp-live-fmt-v4-0-c7f379b7168e@amd.com>
In-Reply-To: <20240416-dp-live-fmt-v4-0-c7f379b7168e@amd.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Michal Simek <michal.simek@amd.com>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>, Neil Armstrong
	<neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Jonas Karlman
	<jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>, <devicetree@vger.kernel.org>,
	<linux-media@vger.kernel.org>, Anatoliy Klymenko <anatoliy.klymenko@amd.com>,
	Tomi Valkeinen <tomi.valkainen@ideasonboard.com>
X-Mailer: b4 0.13.0
Received-SPF: None (SATLEXMB03.amd.com: anatoliy.klymenko@amd.com does not
 designate permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB78:EE_|DS7PR12MB5815:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b97af05-e791-47df-77cf-08dc5e544482
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	LiyHZIi3IYZi+r4CDApKYRLo7st3jecrmZvk9dFDJ5mAjnqRQ1E6mvcz+ZyiWzXHHbpxcVhnEQffNHqFbRyH01q0EaXhm1Ff10Y/coSFUZoHPLzPlpE1sv2Pzc/3X+PxWeevwVLjtMiuryK3Yj5g+O2/jLjvvXc5K8dY+Lk/BBVTR6JcB2o4uAtk1fnRaNJJOFp+tX+rLXhw/Cnwo3Adgr60zCJdSXlrVBdZbTOqJJr9SKTN2nphtel/VKc0t79FSBpAObDwDP/vzRCU3TqE5ucve85VhvqKPvU05Uf+N4up5+FVqR45dGVCHAmuc7zDNXESNVA10vlwweBUNyhAl3m2HHDyLoa3+h0Iyvs2ofzF6AgQpnay1oY0esHCmIwcYEj0HkYqlA/s4n5U5zCTULCcv9KZXyEI9IeTSstbLX9myftnHBlC+zdhPTNc74/Ca6uEMIfAgRpgn1ky+8KhCvpLTh15TsmO1xHIi8771Tkg1Yt7KYb3CZFo3QYXC6l2fFUgEg4rpvloGC9PO+80fLizKbI9nvAr9o0neNPfkd9kdAkxVIB5s0UoecDW4lwVUqZCqL3IzQkBRNqKR8s7NFpAXVTKqCUxiX/eb14kWSurF92HoDdzhICWxI1O6hmJ4JfCB5e8Fkdv3sdi/ilEAHeNDpPwOg8r/c/lniZ2+fMT8RXbHtBjog/DbzihRPjz5URk7eWtOJsPLWM9GS7kudVqWipl960lj604yhnLUVKXGRZD28q1ymmgzGDo8HY2Avy96swbE8GJ/CbZbQMk7w==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(82310400014)(36860700004)(1800799015)(376005)(7416005)(921011);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 20:31:59.9120
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b97af05-e791-47df-77cf-08dc5e544482
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB78.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5815

Avoid usage of global zynqmp_dpsub.dma_enabled flag in DPSUB layer
context. This flag signals whether the driver runs in DRM CRTC or DRM
bridge mode, assuming that all display layers share the same live or
non-live mode of operation. Using per-layer mode instead of global flag
will simplify future support of the hybrid scenario.

Remove redundant checks in DMA request/release contexts as
zynqmp_disp_layer.info is well-defined for all layer types, including the
correct number of DMA channels required for each particular layer.

Signed-off-by: Anatoliy Klymenko <anatoliy.klymenko@amd.com>
Reviewed-by: Tomi Valkeinen <tomi.valkainen@ideasonboard.com>
---
 drivers/gpu/drm/xlnx/zynqmp_disp.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xlnx/zynqmp_disp.c b/drivers/gpu/drm/xlnx/zynqmp_disp.c
index 24f1f367b1d3..8cdd74a9b772 100644
--- a/drivers/gpu/drm/xlnx/zynqmp_disp.c
+++ b/drivers/gpu/drm/xlnx/zynqmp_disp.c
@@ -1026,7 +1026,7 @@ void zynqmp_disp_layer_disable(struct zynqmp_disp_layer *layer)
 {
 	unsigned int i;
 
-	if (layer->disp->dpsub->dma_enabled) {
+	if (layer->mode == ZYNQMP_DPSUB_LAYER_NONLIVE) {
 		for (i = 0; i < layer->drm_fmt->num_planes; i++)
 			dmaengine_terminate_sync(layer->dmas[i].chan);
 	}
@@ -1052,7 +1052,7 @@ void zynqmp_disp_layer_set_format(struct zynqmp_disp_layer *layer,
 
 	zynqmp_disp_avbuf_set_format(layer->disp, layer, layer->disp_fmt);
 
-	if (!layer->disp->dpsub->dma_enabled)
+	if (layer->mode == ZYNQMP_DPSUB_LAYER_LIVE)
 		return;
 
 	/*
@@ -1090,7 +1090,7 @@ int zynqmp_disp_layer_update(struct zynqmp_disp_layer *layer,
 	const struct drm_format_info *info = layer->drm_fmt;
 	unsigned int i;
 
-	if (!layer->disp->dpsub->dma_enabled)
+	if (layer->mode == ZYNQMP_DPSUB_LAYER_LIVE)
 		return 0;
 
 	for (i = 0; i < info->num_planes; i++) {
@@ -1140,9 +1140,6 @@ static void zynqmp_disp_layer_release_dma(struct zynqmp_disp *disp,
 {
 	unsigned int i;
 
-	if (!layer->info || !disp->dpsub->dma_enabled)
-		return;
-
 	for (i = 0; i < layer->info->num_channels; i++) {
 		struct zynqmp_disp_layer_dma *dma = &layer->dmas[i];
 
@@ -1183,9 +1180,6 @@ static int zynqmp_disp_layer_request_dma(struct zynqmp_disp *disp,
 	unsigned int i;
 	int ret;
 
-	if (!disp->dpsub->dma_enabled)
-		return 0;
-
 	for (i = 0; i < layer->info->num_channels; i++) {
 		struct zynqmp_disp_layer_dma *dma = &layer->dmas[i];
 		char dma_channel_name[16];

-- 
2.25.1


