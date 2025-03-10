Return-Path: <devicetree+bounces-156146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6799DA595CF
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B493A16DC8F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C0722D78E;
	Mon, 10 Mar 2025 13:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="rK+CT3B5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B73122CBD0;
	Mon, 10 Mar 2025 13:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741612294; cv=none; b=YAekd6nsNuu6cc/VfZByR2E99p9tc0HFc1dwfTzx8H/7J62Wzlbpbq68y6s0xRsldQd/A11xfkxsdYJfWPIwu7ttmEK9P7o6oiuQ9lKyXGtTqxXqxAgh2u0NzZpcEQImEAWDUWBCWK4hFQtUN/QVJjbXDglyLMSZElHaBGFuNgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741612294; c=relaxed/simple;
	bh=lJFblhnRVlwEbVEVr+0Ht7SaJduNmHI23uuZPcAfWPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=dNTkjvPvYWSn2WyM2Yavn0LLl8ODmUyUyD/657wbPbrW8OlK4n+eY8CFQDUp4f/UmAGMYHpTyYDUY0eZCrmz5PIYnYfSppX7d30sCOnSWDoLH+JWamG21tUUWVtYNAAffPvQt4Ox8TC0dVJkzW2+ax6cFI+oFkJUT9vOM4El4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=rK+CT3B5; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A55uUG006364;
	Mon, 10 Mar 2025 13:10:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=h
	msDHaK+QJVewvj9cAcY2H3d3wipSlhYdx2PhASkXLE=; b=rK+CT3B57OdEFMaLc
	iTzHTCvxWKcszMPBF21k66IAWy1RjD89g7ilYLZVvtKGIDX0m5hCqaXD+ajm7dFg
	ptLib8DeEq4nyymQXHIhw7EOBdVnsfyxh2qN3r0UPcicpjXG6ripb59BAmMJBXp5
	2qya5WLJAErM/+rrtFvL7Gw95mTjiLncEAj93TRxsQy4GRSTFlF2YQSR4TH5hxyy
	vbpztiRyZksWsOozfiiG4WL0NI1EFNfLQD6k7rEDvc9YQAnPCp8a6cEtQVPHJkLi
	r0jS4e/TKct8dbVwACinhdsJ36iGnLNANdMaDvDTVQfWqyAXXNv5T1c5LmZ4RB0l
	zACkw==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 458ev09ery-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 10 Mar 2025 13:10:52 +0000 (GMT)
Received: from Matts-MacBook-Pro.local (172.25.0.133) by
 HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Mar 2025 13:10:51 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Mon, 10 Mar 2025 13:10:35 +0000
Subject: [PATCH v3 11/18] drm/imagination: Use a lookup table for fw defs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250310-sets-bxs-4-64-patch-v1-v3-11-143b3dbef02f@imgtec.com>
References: <20250310-sets-bxs-4-64-patch-v1-v3-0-143b3dbef02f@imgtec.com>
In-Reply-To: <20250310-sets-bxs-4-64-patch-v1-v3-0-143b3dbef02f@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>,
        "Alessio
 Belle" <alessio.belle@imgtec.com>,
        Alexandru Dadu <alexandru.dadu@imgtec.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3495;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=lJFblhnRVlwEbVEVr+0Ht7SaJduNmHI23uuZPcAfWPg=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaSfe3JRvJD90X6ZyKC1wnemWa8u93D+sXnhitKZ/Is/b
 3nq+KvsfEcpC4MYB4OsmCLLjhWWK9T+qGlJ3PhVDDOHlQlkCAMXpwBMpOMoI8PpuAleRTEvTk/3
 85y6ZEss5/43X87HPzJ/X5K866FZksxrRoYu17KW2XFmvy2jMq5mT/i91/X+7LtRD8q5T3bdFUg
 5p8AAAA==
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Authority-Analysis: v=2.4 cv=CeII5Krl c=1 sm=1 tr=0 ts=67cee4dc cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=ETbM1kImDFEA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8 a=iYL5nd4a90DRai7o0HQA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: bf0myV8qytcAjxs5zE93AKkZnu2SMz55
X-Proofpoint-ORIG-GUID: bf0myV8qytcAjxs5zE93AKkZnu2SMz55

With more than two firmware processor types, the if/else chain in
pvr_fw_init() gets a bit ridiculous. Use a static array indexed on
pvr_fw_processor_type (which is now a proper enum instead of #defines)
instead.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
Changes in v3:
- None
- Link to v2: https://lore.kernel.org/r/20241118-sets-bxs-4-64-patch-v1-v2-13-3fd45d9fb0cf@imgtec.com
Changes in v2:
- None
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-13-4ed30e865892@imgtec.com
---
 drivers/gpu/drm/imagination/pvr_device.h |  4 ----
 drivers/gpu/drm/imagination/pvr_fw.c     | 21 ++++++++++++++++-----
 drivers/gpu/drm/imagination/pvr_fw.h     |  7 +++++++
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index 6c01d96657de6dc3904ef5ca28365f06cfe0f40b..12bf0b9e5bfb48ef9e5ed9faa44e0896b7555f49 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -739,8 +739,4 @@ pvr_ioctl_union_padding_check(void *instance, size_t union_offset,
 					      __union_size, __member_size);  \
 	})
 
-#define PVR_FW_PROCESSOR_TYPE_META  0
-#define PVR_FW_PROCESSOR_TYPE_MIPS  1
-#define PVR_FW_PROCESSOR_TYPE_RISCV 2
-
 #endif /* PVR_DEVICE_H */
diff --git a/drivers/gpu/drm/imagination/pvr_fw.c b/drivers/gpu/drm/imagination/pvr_fw.c
index c331d6001550a0b1d9cfbda2cd6629533ab6ee33..6e19b20ab67c3dbfe20110cbc7bb0de05b7bb08b 100644
--- a/drivers/gpu/drm/imagination/pvr_fw.c
+++ b/drivers/gpu/drm/imagination/pvr_fw.c
@@ -929,16 +929,27 @@ pvr_fw_validate_init_device_info(struct pvr_device *pvr_dev)
 int
 pvr_fw_init(struct pvr_device *pvr_dev)
 {
+	static const struct pvr_fw_defs *fw_defs[PVR_FW_PROCESSOR_TYPE_COUNT] = {
+		[PVR_FW_PROCESSOR_TYPE_META] = &pvr_fw_defs_meta,
+		[PVR_FW_PROCESSOR_TYPE_MIPS] = &pvr_fw_defs_mips,
+		[PVR_FW_PROCESSOR_TYPE_RISCV] = NULL,
+	};
+
 	u32 kccb_size_log2 = ROGUE_FWIF_KCCB_NUMCMDS_LOG2_DEFAULT;
 	u32 kccb_rtn_size = (1 << kccb_size_log2) * sizeof(*pvr_dev->kccb.rtn);
 	struct pvr_fw_device *fw_dev = &pvr_dev->fw_dev;
 	int err;
 
-	if (fw_dev->processor_type == PVR_FW_PROCESSOR_TYPE_META)
-		fw_dev->defs = &pvr_fw_defs_meta;
-	else if (fw_dev->processor_type == PVR_FW_PROCESSOR_TYPE_MIPS)
-		fw_dev->defs = &pvr_fw_defs_mips;
-	else
+	if (fw_dev->processor_type >= PVR_FW_PROCESSOR_TYPE_COUNT)
+		return -EINVAL;
+
+	fw_dev->defs = fw_defs[fw_dev->processor_type];
+
+	/*
+	 * Not all firmware processor types are currently supported.
+	 * Once they are, this check can be removed.
+	 */
+	if (!fw_dev->defs)
 		return -EINVAL;
 
 	err = fw_dev->defs->init(pvr_dev);
diff --git a/drivers/gpu/drm/imagination/pvr_fw.h b/drivers/gpu/drm/imagination/pvr_fw.h
index 180d310074e3585c641e540a9e2576b5ab2a5705..88ad713468ce3a1ee459b04dde5363c24791a4f1 100644
--- a/drivers/gpu/drm/imagination/pvr_fw.h
+++ b/drivers/gpu/drm/imagination/pvr_fw.h
@@ -402,6 +402,13 @@ struct pvr_fw_device {
 #define pvr_fw_irq_clear(pvr_dev) \
 	pvr_fw_irq_write_reg(pvr_dev, clear, (pvr_dev)->fw_dev.defs->irq.clear_mask)
 
+enum pvr_fw_processor_type {
+	PVR_FW_PROCESSOR_TYPE_META = 0,
+	PVR_FW_PROCESSOR_TYPE_MIPS,
+	PVR_FW_PROCESSOR_TYPE_RISCV,
+	PVR_FW_PROCESSOR_TYPE_COUNT,
+};
+
 extern const struct pvr_fw_defs pvr_fw_defs_meta;
 extern const struct pvr_fw_defs pvr_fw_defs_mips;
 

-- 
2.48.1


