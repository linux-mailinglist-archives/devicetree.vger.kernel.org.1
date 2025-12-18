Return-Path: <devicetree+bounces-247672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A23DFCCA3D2
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 05:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A51E3013563
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 04:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA3E2FFF90;
	Thu, 18 Dec 2025 04:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="CgWfsnfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6299D27F017;
	Thu, 18 Dec 2025 04:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766030796; cv=none; b=HLv/oxwLNxIKuHtMf+gKwvl3mfBsZHctovDYmFmItKSG75FgsFETFwArqEzxwwFqQCeqttwZkr+4pMq6SMSJb8TPCxY4tGDLX9Ta1C0/JN1o5KHy06gtHMGBHWFHkNaBgwzAYC6x3ygjJlaODA2Nv59pXkuLLFv4PgCuYdqaJdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766030796; c=relaxed/simple;
	bh=fHqzKejP7qJiygVDY63xTyki7o9eNbsND63wxWO5RGg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bWkHJXpibnnXDwTQXmHXlYV1UpjPB3msR7yKJgTOrcJ9p+Cr7caZyKrqgLlqFzaWggT/sACuhyLw9RYFlBdlSvTXHxe81FQqA/lyPfey2GYIkR8dZSZXWvsZgsDD6SxZn3WkE7s8wL319SkAwIgGZZVvq+4mRKvkoz5eW+EBE/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=CgWfsnfJ; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1766030796; x=1797566796;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=fHqzKejP7qJiygVDY63xTyki7o9eNbsND63wxWO5RGg=;
  b=CgWfsnfJPzKWs1EKUEjJ8mU27eAjRpqi6U5n72yZgTlu1z9s9K2kMcOp
   6+4yKbTvWY6pjBY5MGtuX6StgnAQMYHtP4dofSvf926Glyd1jDH28sA8W
   sPcH5Sz+e+7Ifg5mBlh0CsW8T1OyqM5C7Y/7Mno+YifT71VgGWytcFYiV
   zAXBu10YN7miZyfu6qXW1xaN2ohFzd1H7zyYxEzAD8u8jhIX1Hg3Po0j4
   5CWimlVwzxu1iBX1BHx2738mPaX5fVd0oDn2KHVJ+cJhzDX0qr0CeXE8r
   m4g03WuwGHmTXucvfHfiX2uedEBlsGeIsb+BoLrkm7N+B13/9cxqwX1SH
   w==;
X-CSE-ConnectionGUID: 8d83aKyqR/m/457MXLOS1w==
X-CSE-MsgGUID: d4FCTZLRQgCwLnJkci0sgQ==
X-IronPort-AV: E=Sophos;i="6.21,156,1763449200"; 
   d="scan'208";a="282081582"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Dec 2025 21:06:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 17 Dec 2025 21:05:54 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 17 Dec 2025 21:05:47 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <lee@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<manikandan.m@microchip.com>, <dharma.b@microchip.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: Ryan Wanner <Ryan.Wanner@microchip.com>
Subject: [PATCH v2 3/3] drm: atmel-hlcdc: add LCD controller layer definition for sama7d65
Date: Thu, 18 Dec 2025 09:35:21 +0530
Message-ID: <20251218040521.463937-3-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251218040521.463937-1-manikandan.m@microchip.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Ryan Wanner <Ryan.Wanner@microchip.com>

Add the LCD controller layer definition and atmel_hlcdc_of_match
entry for sama7d65.

Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 81 ++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index dd70894c8f38..3d57a7182c98 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -566,6 +566,83 @@ static const struct atmel_hlcdc_dc_desc atmel_xlcdc_dc_sam9x75 = {
 	.ops = &atmel_xlcdc_ops,
 };
 
+static const struct atmel_hlcdc_layer_desc atmel_xlcdc_sama7d65_layers[] = {
+	{
+		.name = "base",
+		.formats = &atmel_hlcdc_plane_rgb_formats,
+		.regs_offset = 0x60,
+		.id = 0,
+		.type = ATMEL_HLCDC_BASE_LAYER,
+		.cfgs_offset = 0x1c,
+		.layout = {
+			.xstride = { 2 },
+			.default_color = 3,
+			.general_config = 4,
+			.disc_pos = 5,
+			.disc_size = 6,
+		},
+		.clut_offset = 0x700,
+	},
+	{
+		.name = "overlay1",
+		.formats = &atmel_hlcdc_plane_rgb_formats,
+		.regs_offset = 0x160,
+		.id = 1,
+		.type = ATMEL_HLCDC_OVERLAY_LAYER,
+		.cfgs_offset = 0x1c,
+		.layout = {
+			.pos = 2,
+			.size = 3,
+			.xstride = { 4 },
+			.pstride = { 5 },
+			.default_color = 6,
+			.chroma_key = 7,
+			.chroma_key_mask = 8,
+			.general_config = 9,
+		},
+		.clut_offset = 0xb00,
+	},
+	{
+		.name = "high-end-overlay",
+		.formats = &atmel_hlcdc_plane_rgb_and_yuv_formats,
+		.regs_offset = 0x360,
+		.id = 2,
+		.type = ATMEL_HLCDC_OVERLAY_LAYER,
+		.cfgs_offset = 0x30,
+		.layout = {
+			.pos = 2,
+			.size = 3,
+			.memsize = 4,
+			.xstride = { 5, 7 },
+			.pstride = { 6, 8 },
+			.default_color = 9,
+			.chroma_key = 10,
+			.chroma_key_mask = 11,
+			.general_config = 12,
+			.csc = 16,
+			.scaler_config = 23,
+			.vxs_config = 30,
+			.hxs_config = 31,
+		},
+		.clut_offset = 0x1300,
+	},
+};
+
+static const struct atmel_hlcdc_dc_desc atmel_xlcdc_dc_sama7d65 = {
+	.min_width = 0,
+	.min_height = 0,
+	.max_width = 2048,
+	.max_height = 2048,
+	.max_spw = 0x3ff,
+	.max_vpw = 0x3ff,
+	.max_hpw = 0x3ff,
+	.fixed_clksrc = true,
+	.is_xlcdc = true,
+	.nlayers = ARRAY_SIZE(atmel_xlcdc_sama7d65_layers),
+	.layers = atmel_xlcdc_sama7d65_layers,
+	.ops = &atmel_xlcdc_ops,
+};
+
 static const struct of_device_id atmel_hlcdc_of_match[] = {
 	{
 		.compatible = "atmel,at91sam9n12-hlcdc",
@@ -595,6 +672,10 @@ static const struct of_device_id atmel_hlcdc_of_match[] = {
 		.compatible = "microchip,sam9x75-xlcdc",
 		.data = &atmel_xlcdc_dc_sam9x75,
 	},
+	{
+		.compatible = "microchip,sama7d65-xlcdc",
+		.data = &atmel_xlcdc_dc_sama7d65,
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, atmel_hlcdc_of_match);
-- 
2.25.1


