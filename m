Return-Path: <devicetree+bounces-185150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B00BAD6986
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 182D01BC3475
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31718229B12;
	Thu, 12 Jun 2025 07:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QPt4ys4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5C7227E9B
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714584; cv=none; b=N3Tfia8TtFqwKZGamhzxne3C0cMs8hUl4Kn/6PDgvY0mXXUTCCgaQCQvaqsQlygiLgz/B9G0INrCcCqklrsqsMCcAVo0GTsdA+BOFAoWw9mOBpbGZGZMedT4Z/mMIwmozuh3IE/44StfrPHAoESJPpckXW95gB53LVTwB1UETgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714584; c=relaxed/simple;
	bh=mgKRPAxHp5lw/IYW6/80BbNLOKQ1CXL+sHNydAPoR2M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jZZ+ycWxwOQJ+ygKVKZeQiVcq1rIDYJ2lafumE1aHrt9VVbgmY2lvy1M1VXl24N7gBC3loXRkTHl31UfKpJ4Qi+RRF2zxLNVUoACGaJgYEFKk8y7NZnTAIKiXGbiq8doyTKhJhOoTA/GgIRnejSmuxzl8ks60ugB4vkKgJj4p1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QPt4ys4Q; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2352400344aso6200785ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714582; x=1750319382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddcn6csaeeV+h8a6qan45mbc5QA320UytwqG7KT7p5k=;
        b=QPt4ys4QNYwt3/Sh66gUaxGP1JRYAyslYTdNE+iyZdAmRIMMLVBo3dCrDQ8A0Ax6MJ
         VNZ59azg0FB5MMBBaH6Kp0XtIgSPXw0cqsIcszhTtwBVNUJKDWBtvzeoX4tWWcc21Piw
         aF6fltV3kQuEZbFmnpfb1qFCvBN7Lgy3b6448=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714582; x=1750319382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ddcn6csaeeV+h8a6qan45mbc5QA320UytwqG7KT7p5k=;
        b=YgYGxxz2jbhjZT0H2/pXbv2G1edJcVLm4S84QdmJYoKkb0s+vd8e4oO8m21Yxeam5R
         Hp+6NAa/MOi/xClHEzYzSL12x6G2chjtRlssiWM5WrWsoN+gexLOSG3JveoTKI17sCh4
         YTvUU+dKs5F7C3YdJXjcUEqmN4az9uSiUItjLHG+nyuJ87p0qxFTheZc0N0FyAWANYsg
         G8khoWanm+E9tauSH26mkCxHzxdtEePQzUwy5wCGL4RNJdfruyd1Jcx0OD57S+Yg1c6l
         dP1K1Ri+ydIgpQ3oqeFiRJWh7oI4cmx0/nOE3QNXgrXFbkDrTrROwsxGPWPrPqseeUU0
         ks+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX6KiKxZd+8CFJj7aq0Ta7SAqQyHez5/Ok6tKGb/BVKtoAI/AbHxfTmaahtbtYeZ2DVxj5BH2+xR4vV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5SJNR5/hmO8OJ8RjMgljGGvk3yCgpQ74j9bgdpWmDGhQc6Wdk
	OU4lbAvqdg/l6kzMlqPZDFJpYBeV7FZgllTmZUXy8+rCqN29D5jciFopN5+Myd1IB9zv8gqq/DL
	yeDg=
X-Gm-Gg: ASbGncuk83gGLU4GMf4jMK2Yk5aoOaglViMQU/K5cWmLx393eL5R7tdFFAfGYgg+9Lp
	oFDF5Lcz86PquJqbSPrw2jCU/Y0cNbEE2eTYwa+vEdyvwWJj7rTZeROU2Lo4v/LYPc+nHuXKGNU
	f7Cw3/0zd8jzg/9WCl8METqQXKZaArRNg9aOH/YHuONycf/wAqyDAE0IGR7Bqs7g6GcbLxx66G/
	K12LWFcoiCR69K0FhZZc7gtN2a8It8iFPtUPvQoa5TR2ZcQVAabzl/dTcA/0h7kNxk7hElUlqtO
	m9OK40Lzmr0v6pooI8MN4m4o3SbmtzkXJc9MH865vEZrudyeC6V96T3AxsMnw4hy9iTLH/L/yVi
	M3/w=
X-Google-Smtp-Source: AGHT+IGBp6g9KafxxLhpwpCbKXrP6FojB0bp0d+xTc5kKarZApwn/2KeJhM/CNXIUtiGxu8HhD0Ecw==
X-Received: by 2002:a17:902:f684:b0:234:b41e:37a2 with SMTP id d9443c01a7336-23641aa223amr95318655ad.11.1749714581947;
        Thu, 12 Jun 2025 00:49:41 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:41 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 9/9] ASoC: mediatek: mt8183-afe-pcm: use local `dev` pointer in driver callbacks
Date: Thu, 12 Jun 2025 15:49:00 +0800
Message-ID: <20250612074901.4023253-10-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc1.591.g9c95f17f64-goog
In-Reply-To: <20250612074901.4023253-1-wenst@chromium.org>
References: <20250612074901.4023253-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The probe and remove functions in the mt8183-afe-pcm driver repeatedly uses
`&pdev->dev` for |struct device *|, but then assigns this value to
`afe->dev` and uses that in other places in the same function.

Store `&pdev->dev` in a local pointer and use that exclusively to avoid
the numerous dereferences and to make the code more consistent. Lines
are reflowed where it makes sense.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 37 ++++++++++------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 7383184097a4..a7fef772760a 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -770,27 +770,25 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 {
 	struct mtk_base_afe *afe;
 	struct mt8183_afe_private *afe_priv;
-	struct device *dev;
+	struct device *dev = &pdev->dev;
 	struct reset_control *rstc;
 	int i, irq_id, ret;
 
-	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(34));
+	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(34));
 	if (ret)
 		return ret;
 
-	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
+	afe = devm_kzalloc(dev, sizeof(*afe), GFP_KERNEL);
 	if (!afe)
 		return -ENOMEM;
 	platform_set_drvdata(pdev, afe);
 
-	afe->platform_priv = devm_kzalloc(&pdev->dev, sizeof(*afe_priv),
-					  GFP_KERNEL);
+	afe->platform_priv = devm_kzalloc(dev, sizeof(*afe_priv), GFP_KERNEL);
 	if (!afe->platform_priv)
 		return -ENOMEM;
 
 	afe_priv = afe->platform_priv;
-	afe->dev = &pdev->dev;
-	dev = afe->dev;
+	afe->dev = dev;
 
 	ret = of_reserved_mem_device_init(dev);
 	if (ret) {
@@ -835,7 +833,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	/* enable clock for regcache get default value from hw */
 	afe_priv->pm_runtime_bypass_reg_ctl = true;
-	pm_runtime_get_sync(&pdev->dev);
+	pm_runtime_get_sync(dev);
 
 	ret = regmap_reinit_cache(afe->regmap, &mt8183_afe_regmap_config);
 	if (ret) {
@@ -843,7 +841,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 		goto err_pm_disable;
 	}
 
-	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_put_sync(dev);
 	afe_priv->pm_runtime_bypass_reg_ctl = false;
 
 	regcache_cache_only(afe->regmap, true);
@@ -901,7 +899,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	for (i = 0; i < ARRAY_SIZE(dai_register_cbs); i++) {
 		ret = dai_register_cbs[i](afe);
 		if (ret) {
-			dev_warn(afe->dev, "dai register i %d fail, ret %d\n",
+			dev_warn(dev, "dai register i %d fail, ret %d\n",
 				 i, ret);
 			goto err_pm_disable;
 		}
@@ -910,8 +908,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	/* init dai_driver and component_driver */
 	ret = mtk_afe_combine_sub_dai(afe);
 	if (ret) {
-		dev_warn(afe->dev, "mtk_afe_combine_sub_dai fail, ret %d\n",
-			 ret);
+		dev_warn(dev, "mtk_afe_combine_sub_dai fail, ret %d\n", ret);
 		goto err_pm_disable;
 	}
 
@@ -923,16 +920,14 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	afe->runtime_suspend = mt8183_afe_runtime_suspend;
 
 	/* register component */
-	ret = devm_snd_soc_register_component(&pdev->dev,
-					      &mtk_afe_pcm_platform,
+	ret = devm_snd_soc_register_component(dev, &mtk_afe_pcm_platform,
 					      NULL, 0);
 	if (ret) {
 		dev_warn(dev, "err_platform\n");
 		goto err_pm_disable;
 	}
 
-	ret = devm_snd_soc_register_component(afe->dev,
-					      &mt8183_afe_pcm_dai_component,
+	ret = devm_snd_soc_register_component(dev, &mt8183_afe_pcm_dai_component,
 					      afe->dai_drivers,
 					      afe->num_dai_drivers);
 	if (ret) {
@@ -943,15 +938,17 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	return ret;
 
 err_pm_disable:
-	pm_runtime_disable(&pdev->dev);
+	pm_runtime_disable(dev);
 	return ret;
 }
 
 static void mt8183_afe_pcm_dev_remove(struct platform_device *pdev)
 {
-	pm_runtime_disable(&pdev->dev);
-	if (!pm_runtime_status_suspended(&pdev->dev))
-		mt8183_afe_runtime_suspend(&pdev->dev);
+	struct device *dev = &pdev->dev;
+
+	pm_runtime_disable(dev);
+	if (!pm_runtime_status_suspended(dev))
+		mt8183_afe_runtime_suspend(dev);
 }
 
 static const struct of_device_id mt8183_afe_pcm_dt_match[] = {
-- 
2.50.0.rc1.591.g9c95f17f64-goog


