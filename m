Return-Path: <devicetree+bounces-16527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C767EEEF2
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 106641F26FF0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F7715EBD;
	Fri, 17 Nov 2023 09:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UfywWfto"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9A8FB7;
	Fri, 17 Nov 2023 01:42:39 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EB9596607394;
	Fri, 17 Nov 2023 09:42:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214158;
	bh=lCOeXkBHj3GxnYKp57VPx13B7VONqu2PAmr9JmQp0B4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UfywWftonIYwMcfUYDS1omJB0srqfuS56s9ojBC835cHmRmQY/REA9kfrhEuAnmHP
	 AJbqe0hCsLoGngT5ZIB+9sO8ARoh8Ic4z8mgghA29mHFHCz4LjGSvBCdXbhUqifnOl
	 jJtFAWH7mcMEaU43eHd8oRGIsyGHlnA3h7vek8H7nO0GV5avA3Qz6CbhwfcQAPI4SW
	 hf8y6LOAag5gndlwF5M+YE2YYVtnypLWW6NnzqjfkqzHgqEaafAtR7MPKpEUyy1eVx
	 iMmwaIen0pxKpN8y7HOzjD5Ov5YQ9FWyHBk+XJYcfqDEqiCJlTz+eh3GvWJTlyK5s9
	 ywIUZiUtKK1cQ==
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
Subject: [PATCH v1 04/20] soc: mediatek: mtk-svs: Build bank name string dynamically
Date: Fri, 17 Nov 2023 10:42:12 +0100
Message-ID: <20231117094228.40013-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
References: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
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


