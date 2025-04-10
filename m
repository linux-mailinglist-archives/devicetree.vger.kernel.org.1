Return-Path: <devicetree+bounces-165343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EC0A83FB2
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 11:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BF6F3B1358
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667DD26E17B;
	Thu, 10 Apr 2025 09:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="kvgR9mFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9D92673BE;
	Thu, 10 Apr 2025 09:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744278969; cv=none; b=m/9p8oz1BB7joYuhVs9RfJOZzOlriqgxjjgLIhEdFJXmK6amOomJ7afeyEPmdEL1IFKriZ2A6EkgauVK+p++mOPyONsDLK511DnZQTPmC32q2Y5+3MMBxzb9+Yhuut4Og5huHz3LhWyPsMrSFGn3/9PL1lwhdM3qz1Da/Iwp/04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744278969; c=relaxed/simple;
	bh=GD330zCjsoE68ZndJEPOYAbP+QBJgO9VQ4/0ef8ElT8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=njwhQBFsWea6pGOlsNvCLaUjZrkSoEuZA+iimmie05V//8PNfbVkJp321+wL8rSnNKKJmaqBmaC0R6QDSCVv4mSvlx3subYF967C5iJ4IfzXz5kXF3bB3JELKssd8iB3bsk0N02TXKemJ4oG/NA6awgfzl9ZhZdr7tI2jgA/ntw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=kvgR9mFm; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53A60F8a032471;
	Thu, 10 Apr 2025 10:55:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=4
	Y4RXoVTkaHAFxzr+aoICvZb3acrXviv+E1oBtyr2Ig=; b=kvgR9mFmpC74iILv1
	sLBP2Vu46zuqHT9NsVdtcQvpbXXylDanqnQwDvWL0UvcjXg4eaY0C7s9S9KwuQZo
	PjL05rS6kmnEH7q6NT5dQ/pxPNLs5/EBGJ+tE9xxGA3kZyX6foGK8oQMaNndCcFi
	UjTngHCzUDT5EQlNJRaOmCsoTZW+XvMf8qzxVq8FA5t2g1JfTJXUNAAz/JQ2kGhF
	w2mvHqa+zdaP93N+37xEWVJ3p0KyewKhC4VPdNleGYvm2hjJPLM1PC6nQEom/26k
	DzcFFBAtEzOYkX2OxTfHmW7PQtQsSjBps1I7MYotyTHDWg3FpK9wmQfLzJN0ms/e
	sBLww==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 45w86h1d34-11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 10 Apr 2025 10:55:31 +0100 (BST)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.6.134) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 10 Apr 2025 10:55:29 +0100
From: Matt Coster <matt.coster@imgtec.com>
Date: Thu, 10 Apr 2025 10:55:15 +0100
Subject: [PATCH v6 16/18] drm/imagination: Add support for TI AM68 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250410-sets-bxs-4-64-patch-v1-v6-16-eda620c5865f@imgtec.com>
References: <20250410-sets-bxs-4-64-patch-v1-v6-0-eda620c5865f@imgtec.com>
In-Reply-To: <20250410-sets-bxs-4-64-patch-v1-v6-0-eda620c5865f@imgtec.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1866;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=GD330zCjsoE68ZndJEPOYAbP+QBJgO9VQ4/0ef8ElT8=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaR/n9ocoehi9k+mp//P3keCj82zGH9rswcKBt+Ojyytd
 lPsOnSro5SFQYyDQVZMkWXHCssVan/UtCRu/CqGmcPKBDKEgYtTACZiepeRYYpv1o3SG++35H0Q
 tZ5SUaAT9WNjkrbCv27josndTuudlRn+RxY/kVb5ENv3l+vVnRXT8xTdS7f9CA/usPw3QTdMZbE
 bKwA=
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Authority-Analysis: v=2.4 cv=MLNgmNZl c=1 sm=1 tr=0 ts=67f79593 cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=UtEzwyU9vMAA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8 a=8q2ZPnE9uwbZrF7VKmgA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: 1txhNOGisuyqHKzYYoPmeo_BrS-_me--
X-Proofpoint-ORIG-GUID: 1txhNOGisuyqHKzYYoPmeo_BrS-_me--

Since we already added a generic compatible string for all IMG Rogue GPUs
("img,img-rogue"), all that's needed here is to link the appropriate
firmware for the BXS-4-64 GPU in the AM68.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
Reviewed-by: Frank Binns <frank.binns@imgtec.com>
---
Changes in v6:
- Add Frank's Rb
- Link to v5: https://lore.kernel.org/r/20250326-sets-bxs-4-64-patch-v1-v5-16-e4c46e8280a9@imgtec.com
Changes in v5:
- None
- Link to v4: https://lore.kernel.org/r/20250320-sets-bxs-4-64-patch-v1-v4-16-d987cf4ca439@imgtec.com
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


