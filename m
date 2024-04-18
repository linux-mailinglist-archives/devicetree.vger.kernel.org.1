Return-Path: <devicetree+bounces-60620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C8A8A9CCC
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 795FDB2660B
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8EE16F911;
	Thu, 18 Apr 2024 14:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZIc618Qj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7DC16F849
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713449856; cv=none; b=ZNuLM+7I/cuN6ajTgLiWcwasYO8uWQAl+sjxT2QG2Nu0VuNbZXJMIBZWU/d5SsP12cz0fEqxORKSKBf2onFQ0DwCH2JY07XoaBOo217EM6edDASwkN/dhxUW3nANXvCR9kmhTEjCWFOjj6ZpZEhNn7SralU9viOxal0hBBPS5r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713449856; c=relaxed/simple;
	bh=ojxXgu752EUVlJd1wDMQRlXHtGQrZ5ZPRG8jJVphupw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L4CavPkiQ5FIrct2MZvMe9xKAUjIodY5nTRAzYdYIAFrpriI2cPgCBm/rAG7JRDhBfQnorw7NRP7ssfSJzDGtmqBxTAws65nQtthkZ2RZ+u1hpvf0KefmRDaeMJNjS9me3BijEpip5jRoAF0AgEqpjTM3I4ZdCbfUD5l+p03a8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZIc618Qj; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3481bb34e7dso471609f8f.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 07:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713449853; x=1714054653; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nGhN4tMDnWFook0es8LuAXt5ZA9TrdmyBXYcCQvtS3Y=;
        b=ZIc618Qj+9s8OXwOtCbBZc4p1YQUCHZUvL76gAJftzWkQMJ6zJpmYs1cZrmH698A23
         elqaCeH3GOORcygyYzW9wSkf7F3nSP/vAtcPVM/t4yY6ZmI9tFostCiXDyABPUcv+p+X
         rZT8AzUNsFRf3Hlb0zguJhLH9MhoYhmM/XffnRbPJTXPy+hhSB+0w84OTU0UwawlkAOF
         ko1wGN8nLMOHZExD4wL6r5DClc/S4fhrju9SeCd2pikBvKg17f8kQk5gh0aCW8eyqsCz
         0c5SK4tKR/rT2/5D0WLgSPpIO3z52s8xq/Zck8AItluIc2M7qNnBGo/YPtiMnUOac5JT
         PEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713449853; x=1714054653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nGhN4tMDnWFook0es8LuAXt5ZA9TrdmyBXYcCQvtS3Y=;
        b=E+gZ8AtyiCdqBzsZCnYEl86PbJNaPEc8WZ8MhmIeHf935mA8+5l9lbtlfDGE7zhUUV
         HnM7b1QQvVvuuKzMXhI4LMPXqQOvNcxyiMCAQp8ygar3XxNZt6fXMiAJ4YoBTkZbKD+5
         a/pZAVVCe21uiVaqFB0aStz9FypcYPEQRUrS1H4Es3aDFJhwmZMcX8qSaI00EeZXJtkK
         wPxxn8LZGCpRNc8c4sThq57RinOIDFyvyLq2tUZCgncpIsEQ2QcFsoegdB4ZnwD4/tM0
         5JXZ+AV7Syhixnl8015pvH74aShScGns6dnsM/pykK8GkeDP3idw2OSUSqRU2nlsEtaQ
         svtA==
X-Forwarded-Encrypted: i=1; AJvYcCVrPV/GD7CjFPTmEHH8rm/x01ozueRdf2LRmF75zxF5sZbloL2HOba+n9AAJwy4FHWnAYvggvYdKU0iJgZk57Pw1KD2Aw8weJpM8g==
X-Gm-Message-State: AOJu0YxemGtbLmp4HeZN7z9E0NWkKU9Vv3Ns2LT1C2dZ2ki02Cqf1NlO
	9GNJP7VxKUw+lYyAEjAOyB/sPcxuVlI69DaXLmxf7t4KyxVISxUCXIzMMb7ClVQ=
X-Google-Smtp-Source: AGHT+IF6b8Hyds+Df+n8d6GSZC2InYLslqfLyS56mvk1H/o/i0jSb1a/hK0ROLJ6MHV5vWZ7T6O6RA==
X-Received: by 2002:a05:6000:bc7:b0:343:d06e:51cc with SMTP id dm7-20020a0560000bc700b00343d06e51ccmr1672638wrb.66.1713449852974;
        Thu, 18 Apr 2024 07:17:32 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id i9-20020a05600c354900b004180c6a26b4sm6267510wmq.1.2024.04.18.07.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 07:17:32 -0700 (PDT)
From: amergnat@baylibre.com
Date: Thu, 18 Apr 2024 16:17:02 +0200
Subject: [PATCH v3 14/17] drm/mediatek: add MT8365 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v3-14-53388f3ed34b@baylibre.com>
References: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
In-Reply-To: <20231023-display-support-v3-0-53388f3ed34b@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2801; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=r/rf6DH3u4/RIc/AgVSnOwA+TJLknIEXoBhT9allVNg=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmIStjypxHC1AF4L3x0vY6H1KMKdkKlh+jAMEpcQ+v
 Z2my7l6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZiErYwAKCRArRkmdfjHURauoEA
 CNdHASvLccHSGQBaHJPhaHKidU6MEYpyOyYukACG9Xl+CwO9iEmJaksqelQGe6Ma4DNNKYtKkfq5rP
 EiITw18CFONG9zkfEjO66VywxOu6sqVlLDDINpjOFSwPYfLuMLARTlcuDucts21j5aJTNLkAMGMUpd
 dy0gI53b6IryirzeYxRt4oMF1hscMI3ndCJoVWOr0Z9vlsyAmwPJHpsUSrlfCyABkhy3qAntmg7U7I
 Wo70cMcWQdW29iapeE1i2aQ9TGlhXnQnwTl0o8C6T/TrnvRCvNYEymzCwTVk4S6uIcIqklr+Yd9mBF
 bHAG0f+VCz8hWMjchFasbVlJQUfvHQlEwAVYCHl0Ons5U/hd4knfKY8ygtCzGoIwHKcMR6NcUu4sEA
 EO53KI+/V4rdp21R+IouIAS/+0h/3vP3CSw9Hsf4XbUJfbC7wdEJDgfQ8JINXJCDyTJx97yaED/Ekm
 RbY6i6UPy6XJVtO1YfLK+SfoVuGnVAvLXUCn7EeefvcX1M0Z/FSs1peMpBnOv3pTlnv7dmR03KrA77
 N7Q+bq8PRbbKgIb+SUzq6kIsFDDqSvzrqQ88Jc/O2/LNaLTIjqFYRup6Z2hY2+tITUHXmet/yppM9G
 ZnVOp4B8GPlaYGX7no69f5+YFPt/zLsiDH9ry0t20It8KZJz0RbfWffcMJjQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

From: Fabien Parent <fparent@baylibre.com>

Add DRM support for MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 74832c213092..427b601309c4 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -230,6 +230,22 @@ static const unsigned int mt8195_mtk_ddp_ext[] = {
 	DDP_COMPONENT_DP_INTF1,
 };
 
+static const unsigned int mt8365_mtk_ddp_main[] = {
+	DDP_COMPONENT_OVL0,
+	DDP_COMPONENT_RDMA0,
+	DDP_COMPONENT_COLOR0,
+	DDP_COMPONENT_CCORR,
+	DDP_COMPONENT_AAL0,
+	DDP_COMPONENT_GAMMA,
+	DDP_COMPONENT_DITHER0,
+	DDP_COMPONENT_DSI0,
+};
+
+static const unsigned int mt8365_mtk_ddp_ext[] = {
+	DDP_COMPONENT_RDMA1,
+	DDP_COMPONENT_DPI0,
+};
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
 	.main_path = mt2701_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -317,6 +333,14 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
 	.mmsys_dev_num = 2,
 };
 
+static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
+	.main_path = mt8365_mtk_ddp_main,
+	.main_len = ARRAY_SIZE(mt8365_mtk_ddp_main),
+	.ext_path = mt8365_mtk_ddp_ext,
+	.ext_len = ARRAY_SIZE(mt8365_mtk_ddp_ext),
+	.mmsys_dev_num = 1,
+};
+
 static const struct of_device_id mtk_drm_of_ids[] = {
 	{ .compatible = "mediatek,mt2701-mmsys",
 	  .data = &mt2701_mmsys_driver_data},
@@ -344,6 +368,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys1",
 	  .data = &mt8195_vdosys1_driver_data},
+	{ .compatible = "mediatek,mt8365-mmsys",
+	  .data = &mt8365_mmsys_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
@@ -729,6 +755,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8195-disp-mutex",
 	  .data = (void *)MTK_DISP_MUTEX },
+	{ .compatible = "mediatek,mt8365-disp-mutex",
+	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt8173-disp-od",
 	  .data = (void *)MTK_DISP_OD },
 	{ .compatible = "mediatek,mt2701-disp-ovl",
@@ -793,6 +821,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DSI },
 	{ .compatible = "mediatek,mt8188-dsi",
 	  .data = (void *)MTK_DSI },
+	{ .compatible = "mediatek,mt8365-dpi",
+	  .data = (void *)MTK_DPI },
 	{ }
 };
 

-- 
2.25.1


