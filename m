Return-Path: <devicetree+bounces-17527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D576D7F2C49
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 575B5B21CA6
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2B948CF7;
	Tue, 21 Nov 2023 11:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="adLi8EjK"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A451AA;
	Tue, 21 Nov 2023 03:56:37 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 25571660731B;
	Tue, 21 Nov 2023 11:56:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567796;
	bh=lCOeXkBHj3GxnYKp57VPx13B7VONqu2PAmr9JmQp0B4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=adLi8EjKU/pSSuIY0oiyYNLp8EDYc9ZOZmpiLT2preSIyZXYbdqe/f3QcenB0qnxR
	 x904L8s4XMPEPapwPWm9sBV42g2Xg7wy0d9r3TQxMl1V4VFk4iO3qsZy9EkJmBqhy/
	 EHdq+yy6N/ue4/g2rP0cLUrBDOKTFqAmDy94ejVs8kADInhQnleoekW7tcN4CBZWor
	 A/ZiPikB5ughWo0rJ9olbxh4Ty4sRX7y1623z9QEABaRUJPBZt6VdFAFAv1uQTVR/D
	 Lw6vD8rH1wOIqbDdP+YLdzsEQhurzWPalpkRsMiJ7/lW7y/jzOsw9kXk9xEykBYqBA
	 V0Z1dotceCbAw==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v2 04/20] soc: mediatek: mtk-svs: Build bank name string dynamically
Date: Tue, 21 Nov 2023 12:56:08 +0100
Message-ID: <20231121115624.56855-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
References: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In svs_bank_resource_setup() there is a "big" switch assigning different
names depending on sw_id and type and this will surely grow: for example
MT8186 has got a two-line type (high/low) SVS bank for CPU_BIG, and this
would require more switch nesting.

Simplify all of this by changing that to a devm_kasprintf() call that
will concatenate the SW_ID string (e.g. SVSB_CPU_LITTLE) with the Type
string (e.g. _LOW), resulting in the expected full bank name (e.g.
SVSB_CPU_LITTLE_LOW).

This being a dynamic allocation can be slower, but this happens only
once in the life of this driver and it's not a performance path, so it's
totally acceptable.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 39 +++++++++++++++-------------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index ddbb9ba3e47d..1c7592fd6ae7 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -332,6 +332,14 @@ static const u32 svs_regs_v2[] = {
 	[THSLPEVEB]		= 0x330,
 };
 
+static const char * const svs_swid_names[SVSB_SWID_MAX] = {
+	"SVSB_CPU_LITTLE", "SVSB_CPU_BIG", "SVSB_CCI", "SVSB_GPU"
+};
+
+static const char * const svs_type_names[SVSB_TYPE_MAX] = {
+	"", "_LOW", "_HIGH"
+};
+
 /**
  * struct svs_platform - svs platform control
  * @base: svs platform register base
@@ -1696,34 +1704,21 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
 
-		switch (svsb->sw_id) {
-		case SVSB_SWID_CPU_LITTLE:
-			svsb->name = "SVSB_CPU_LITTLE";
-			break;
-		case SVSB_SWID_CPU_BIG:
-			svsb->name = "SVSB_CPU_BIG";
-			break;
-		case SVSB_SWID_CCI:
-			svsb->name = "SVSB_CCI";
-			break;
-		case SVSB_SWID_GPU:
-			if (svsb->type == SVSB_TYPE_HIGH)
-				svsb->name = "SVSB_GPU_HIGH";
-			else if (svsb->type == SVSB_TYPE_LOW)
-				svsb->name = "SVSB_GPU_LOW";
-			else
-				svsb->name = "SVSB_GPU";
-			break;
-		default:
-			dev_err(svsb->dev, "unknown sw_id: %u\n", svsb->sw_id);
+		if (svsb->sw_id >= SVSB_SWID_MAX || svsb->type >= SVSB_TYPE_MAX) {
+			dev_err(svsb->dev, "unknown bank sw_id or type\n");
 			return -EINVAL;
 		}
 
-		svsb->dev = devm_kzalloc(svsp->dev, sizeof(*svsb->dev),
-					 GFP_KERNEL);
+		svsb->dev = devm_kzalloc(svsp->dev, sizeof(*svsb->dev), GFP_KERNEL);
 		if (!svsb->dev)
 			return -ENOMEM;
 
+		svsb->name = devm_kasprintf(svsp->dev, GFP_KERNEL, "%s%s",
+					    svs_swid_names[svsb->sw_id],
+					    svs_type_names[svsb->type]);
+		if (!svsb->name)
+			return -ENOMEM;
+
 		ret = dev_set_name(svsb->dev, "%s", svsb->name);
 		if (ret)
 			return ret;
-- 
2.42.0


