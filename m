Return-Path: <devicetree+bounces-159315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F24A6A579
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 12:54:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCD03188E277
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB8B224B06;
	Thu, 20 Mar 2025 11:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="ovb6oZg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABA4223316;
	Thu, 20 Mar 2025 11:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471394; cv=none; b=UypoLEqRAMFVUWOmfiX7g1y2bLHUCua/tbAAmUJmSIObiMyVkNqVqYu5yDKezWgp3OANoft/W14PGQkgCuQDHd8BviaRjf5XvuVeb/IUuIaOIDIjaRwTkiLTITiOiC06X49uyLoe7WFCPgrl5Qr8jHi3jLtb8Zyk4OazeSlAxhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471394; c=relaxed/simple;
	bh=/jn7NtzI9B+n7dwnr4ys/OUVOBta5KgLxbh8zwZgyz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=f8eLiCW3SOqzAg52J11CFnJtv8+qYjLQ1D7us/CdpZ1Ef6rTDsFsQK11VRaFFi7GPzLEFrRdUfvyiu1vuTKsbJvSKadjta1woIb7LYLxfkfYnn/75RgGcpuZr4BARWlqNqJbnGlnoSWYtIoo3lRRPB+rP7+o4H7lgBCrjam019g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=ovb6oZg5; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K7I9la006831;
	Thu, 20 Mar 2025 11:32:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=s
	8TaTRN+t2aQ2wq9zWBw7J+dbIhAxxWvfBigEXB8l0k=; b=ovb6oZg5gADuRL+vw
	CMn1TvbQx4+XU1rG9+yOCAKutwkoreM4H3CcI+iPdHnzer4mtmesZ5F3JRKEdMJh
	I13u78A3/gxU/4CE1BOGFkWDUE8WcTFvnCC9P462bxN7WcYNMDkDkFQ9lgihIAHP
	YYnoO9XHXJQu+lApmZqhqCBFWsw4o5NyqatKVNH3G06xgxD5W0jZf8fC90u3Tx3s
	TCOYQfKI0ki0IFGe16dI6GiY+r/X//7p1sEGJUcUFSBAPG0qt9E1Z4LljmGQqtJc
	5NmBiNytXWxkuv9noDZLiupbA7Ou/zG8WAT1zUV4Qwv5xvJQ+G/Jcvni78maX5VM
	QdYnw==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 45d2h1kwga-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Mar 2025 11:32:37 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.0.133) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 11:32:35 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Thu, 20 Mar 2025 11:32:26 +0000
Subject: [PATCH v4 16/18] drm/imagination: Add support for TI AM68 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250320-sets-bxs-4-64-patch-v1-v4-16-d987cf4ca439@imgtec.com>
References: <20250320-sets-bxs-4-64-patch-v1-v4-0-d987cf4ca439@imgtec.com>
In-Reply-To: <20250320-sets-bxs-4-64-patch-v1-v4-0-d987cf4ca439@imgtec.com>
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
        "Michal
 Wilczynski" <m.wilczynski@samsung.com>,
        Alessio Belle
	<alessio.belle@imgtec.com>,
        Alexandru Dadu <alexandru.dadu@imgtec.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1551;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=/jn7NtzI9B+n7dwnr4ys/OUVOBta5KgLxbh8zwZgyz0=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaTf/nNMM7R8tS5X0x/JXj6WU9LbtaqYLtu8aZFV0PZwm
 zX1bUFcRykLgxgHg6yYIsuOFZYr1P6oaUnc+FUMM4eVCWQIAxenAEwkrZvhf9jaBR9uro+9JbDp
 /XtPBkG+L2XlPzj3xX8N9T0739Xg8kFGhr/ayxXSM5wr0vyYqiLVLquzdqSs/nLxSutuKbm63fG
 HOQE=
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: zMRjpUr7vnlHJGLZ1Roze8o9Eiy-XB4R
X-Proofpoint-ORIG-GUID: zMRjpUr7vnlHJGLZ1Roze8o9Eiy-XB4R
X-Authority-Analysis: v=2.4 cv=V8Z90fni c=1 sm=1 tr=0 ts=67dbfcd5 cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=ETbM1kImDFEA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8 a=8q2ZPnE9uwbZrF7VKmgA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22

Since we already added a generic compatible string for all IMG Rogue GPUs
("img,img-rogue"), all that's needed here is to link the appropriate
firmware for the BXS-4-64 GPU in the AM68.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
Changes in v4:
- None
- Link to v3: https://lore.kernel.org/r/20250310-sets-bxs-4-64-patch-v1-v3-16-143b3dbef02f@imgtec.com
Changes in v3:
- Remove device overrides
- Remove specific compatible string
- Link to v2: https://lore.kernel.org/r/20241118-sets-bxs-4-64-patch-v1-v2-20-3fd45d9fb0cf@imgtec.com
Changes in v2:
- None
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-20-4ed30e865892@imgtec.com
---
 drivers/gpu/drm/imagination/pvr_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index ac4f5855c5692f0956862cebdbf76b16d8da9a81..b058ec183bb30ab5c3db17ebaadf2754520a2a1f 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -44,6 +44,7 @@
  * This driver supports the following PowerVR/IMG graphics cores from Imagination Technologies:
  *
  * * AXE-1-16M (found in Texas Instruments AM62)
+ * * BXS-4-64 MC1 (found in Texas Instruments J721S2/AM68)
  */
 
 /**
@@ -1512,3 +1513,4 @@ MODULE_DESCRIPTION(PVR_DRIVER_DESC);
 MODULE_LICENSE("Dual MIT/GPL");
 MODULE_IMPORT_NS("DMA_BUF");
 MODULE_FIRMWARE("powervr/rogue_33.15.11.3_v1.fw");
+MODULE_FIRMWARE("powervr/rogue_36.53.104.796_v1.fw");

-- 
2.49.0


