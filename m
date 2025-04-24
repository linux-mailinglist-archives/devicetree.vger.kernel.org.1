Return-Path: <devicetree+bounces-170377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3285A9AA32
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB5A1466BEE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDB4F2367BF;
	Thu, 24 Apr 2025 10:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gZwqnAhL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85C236424
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490348; cv=none; b=uOLT8XBuXoCDOdCkxb9DBZruqMB0YO30FHQeu7qkoKeMhCZ4WDsDPR2IWNh1KmJ4F8Q2r8ZvhJiiIYK0xwGw8chyCKxHfoIbSFymfxJcqv3T1rxKsUPxHSGf1b4Schg5v64FxOqLH0x6u+a8CGbqemm1/E9xewFYYcheQtaAFpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490348; c=relaxed/simple;
	bh=gnsNUIE5fVMgm1yzsatCfzS1CVhAuzl2OFSf1bbgvqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lG6iDj2ISA3Msn6zY45K7IHvNqk2fy8wk2cciVYjngZKHAofKsQlIwM/Sw1zrI/1tOnoa7oMDRrtW/6ZFS5r7R1WguR0l1q/p2cGWMswWjUE6s/3oL6lDEsyQkCpcZWz4bfwWMDSRQsr2dYzYVlu+udVVNVCKfo8b3RSfqOXMbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gZwqnAhL; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-af579e46b5dso499880a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490346; x=1746095146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IE7aKSxABLvt9Zl1mpyqzpBOR0S+DjSniaX8iFCPAyw=;
        b=gZwqnAhLXhyO4Xis3QTZdVMCx4pp3/qI8adTIraxc88BY2vZUaUEA/ZFfel+ajb736
         7MktRFF5SArRt1a40MLr5wYLub3TteKeSlJhZqw7DG64zcsp2IIUCBy/7TeC9qwtsVY5
         IMBpHBQR2wheUkg/flK6P5Dk9gGYiK1S8Fu8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490346; x=1746095146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IE7aKSxABLvt9Zl1mpyqzpBOR0S+DjSniaX8iFCPAyw=;
        b=MG/K9/OCfO1DcfMRT26NiSqn4JDcQRYM1a7qRzlFpm1CjXx2HsB9ct0vonwLItZN0E
         iC4gPAzKvbsUdLPfFDQLzp9+G2bq6vM0NxZcpryqt+g8Udp5qp0GfcekJcLCgMx1tDhE
         gi4F4Wmmbn5pBYAqVpygsZLopEAyHqhGT0/sBVY1mOnzNrQj/mIrBuhtMFttxlLo1dem
         +zjmF19fbMaGjSaemh6AxLdEmp3jZUPPoZn0trZOBpbA+ljmq0Vja4JD9TegY/tX828+
         t9S4PJh0tM4VdUVffuIYNVMuEa7tusmEY0vERk6Pi8w2qq+fYb2EaD4xV/4bqsaSZe7B
         93qA==
X-Forwarded-Encrypted: i=1; AJvYcCVXRYw8cTBj+FRYwOI99vsBLq7qWjCJl/LJMhwzS5fucVWsgr5GoTO+R8FPxJJjnmVu4BLamdqkvRDh@vger.kernel.org
X-Gm-Message-State: AOJu0YxtQoxTKUN6GJvI2T+d2mf2J4/XzFuccz9Eu4XFUYHNxdS4Btis
	C3b7vnWJolL/2dH26LXXiJdHeRXT6Kwe5ceyDrCAslzSUkTvaFQ0b3BeQutpSQ==
X-Gm-Gg: ASbGnctG1RYKERIcWOLbYvVdttolcGS0TWhmc0deKT/T4PgBh69rorB6Srm/oY3qTQ2
	p8N3/TtVTj1tI325dN8uQbKSyD8WdbaBzA3PmQlkT1iYKNTwE3LShL1TO2yQ8GvIVQExxXXCQhG
	+JPIZ1TP042hRI+adwalf149jlztPmVuFJUyoRwWyZPuJb7jsZq58yjGvu1BOP2miIkcWlLahTR
	ffjCWO6V+SzcX2q3QwdjNvAofHIbW1U30Ib8ivNblkiBRGEKCFE6Dea7CHsmd3ANi/bvE5v5+Ss
	CdBssu2QOxj6gpYEBM+CuRY9WI5dDQ4iHoZDcOW+WlCesQEttVIKDbLfqg==
X-Google-Smtp-Source: AGHT+IEXiipgjpnZjo9b641rUil17G3O4+rk2vLeF36iNimZzjzuklvaviqehXQCV3mCF6B2BIqVZg==
X-Received: by 2002:a17:90b:224a:b0:2fe:d766:ad8e with SMTP id 98e67ed59e1d1-309ed24bc78mr3343313a91.4.1745490345566;
        Thu, 24 Apr 2025 03:25:45 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:45 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/13] ASoC: mediatek: mt8173-afe-pcm: use local `dev` pointer in driver callbacks
Date: Thu, 24 Apr 2025 18:25:02 +0800
Message-ID: <20250424102509.1083185-9-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
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

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 sound/soc/mediatek/mt8173/mt8173-afe-pcm.c | 63 +++++++++++-----------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c b/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
index f93d6348fdf8..c0fa623e0b17 100644
--- a/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
+++ b/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c
@@ -1054,26 +1054,26 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 	struct mtk_base_afe *afe;
 	struct mt8173_afe_private *afe_priv;
 	struct snd_soc_component *comp_pcm, *comp_hdmi;
+	struct device *dev = &pdev->dev;
 
-	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(33));
+	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(33));
 	if (ret)
 		return ret;
 
-	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
+	afe = devm_kzalloc(dev, sizeof(*afe), GFP_KERNEL);
 	if (!afe)
 		return -ENOMEM;
 
-	afe->platform_priv = devm_kzalloc(&pdev->dev, sizeof(*afe_priv),
-					  GFP_KERNEL);
+	afe->platform_priv = devm_kzalloc(dev, sizeof(*afe_priv), GFP_KERNEL);
 	afe_priv = afe->platform_priv;
 	if (!afe_priv)
 		return -ENOMEM;
 
-	afe->dev = &pdev->dev;
+	afe->dev = dev;
 
-	ret = of_reserved_mem_device_init(&pdev->dev);
+	ret = of_reserved_mem_device_init(dev);
 	if (ret) {
-		dev_info(&pdev->dev, "no reserved memory found, pre-allocating buffers instead\n");
+		dev_info(dev, "no reserved memory found, pre-allocating buffers instead\n");
 		afe->preallocate_buffers = true;
 	}
 
@@ -1085,27 +1085,27 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 	if (IS_ERR(afe->base_addr))
 		return PTR_ERR(afe->base_addr);
 
-	afe->regmap = devm_regmap_init_mmio(&pdev->dev, afe->base_addr,
-		&mt8173_afe_regmap_config);
+	afe->regmap = devm_regmap_init_mmio(dev, afe->base_addr,
+					    &mt8173_afe_regmap_config);
 	if (IS_ERR(afe->regmap))
 		return PTR_ERR(afe->regmap);
 
 	/* initial audio related clock */
 	ret = mt8173_afe_init_audio_clk(afe);
 	if (ret) {
-		dev_err(afe->dev, "mt8173_afe_init_audio_clk fail\n");
+		dev_err(dev, "mt8173_afe_init_audio_clk fail\n");
 		return ret;
 	}
 
 	/* memif % irq initialize*/
 	afe->memif_size = MT8173_AFE_MEMIF_NUM;
-	afe->memif = devm_kcalloc(afe->dev, afe->memif_size,
+	afe->memif = devm_kcalloc(dev, afe->memif_size,
 				  sizeof(*afe->memif), GFP_KERNEL);
 	if (!afe->memif)
 		return -ENOMEM;
 
 	afe->irqs_size = MT8173_AFE_IRQ_NUM;
-	afe->irqs = devm_kcalloc(afe->dev, afe->irqs_size,
+	afe->irqs = devm_kcalloc(dev, afe->irqs_size,
 				 sizeof(*afe->irqs), GFP_KERNEL);
 	if (!afe->irqs)
 		return -ENOMEM;
@@ -1124,9 +1124,9 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, afe);
 
-	pm_runtime_enable(&pdev->dev);
-	if (!pm_runtime_enabled(&pdev->dev)) {
-		ret = mt8173_afe_runtime_resume(&pdev->dev);
+	pm_runtime_enable(dev);
+	if (!pm_runtime_enabled(dev)) {
+		ret = mt8173_afe_runtime_resume(dev);
 		if (ret)
 			goto err_pm_disable;
 	}
@@ -1136,13 +1136,12 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 	afe->runtime_resume = mt8173_afe_runtime_resume;
 	afe->runtime_suspend = mt8173_afe_runtime_suspend;
 
-	ret = devm_snd_soc_register_component(&pdev->dev,
-					 &mtk_afe_pcm_platform,
-					 NULL, 0);
+	ret = devm_snd_soc_register_component(dev, &mtk_afe_pcm_platform,
+					      NULL, 0);
 	if (ret)
 		goto err_pm_disable;
 
-	comp_pcm = devm_kzalloc(&pdev->dev, sizeof(*comp_pcm), GFP_KERNEL);
+	comp_pcm = devm_kzalloc(dev, sizeof(*comp_pcm), GFP_KERNEL);
 	if (!comp_pcm) {
 		ret = -ENOMEM;
 		goto err_pm_disable;
@@ -1150,7 +1149,7 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	ret = snd_soc_component_initialize(comp_pcm,
 					   &mt8173_afe_pcm_dai_component,
-					   &pdev->dev);
+					   dev);
 	if (ret)
 		goto err_pm_disable;
 
@@ -1164,7 +1163,7 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_pm_disable;
 
-	comp_hdmi = devm_kzalloc(&pdev->dev, sizeof(*comp_hdmi), GFP_KERNEL);
+	comp_hdmi = devm_kzalloc(dev, sizeof(*comp_hdmi), GFP_KERNEL);
 	if (!comp_hdmi) {
 		ret = -ENOMEM;
 		goto err_cleanup_components;
@@ -1172,7 +1171,7 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	ret = snd_soc_component_initialize(comp_hdmi,
 					   &mt8173_afe_hdmi_dai_component,
-					   &pdev->dev);
+					   dev);
 	if (ret)
 		goto err_cleanup_components;
 
@@ -1186,30 +1185,32 @@ static int mt8173_afe_pcm_dev_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_cleanup_components;
 
-	ret = devm_request_irq(afe->dev, irq_id, mt8173_afe_irq_handler,
+	ret = devm_request_irq(dev, irq_id, mt8173_afe_irq_handler,
 			       0, "Afe_ISR_Handle", (void *)afe);
 	if (ret) {
-		dev_err(afe->dev, "could not request_irq\n");
+		dev_err(dev, "could not request_irq\n");
 		goto err_cleanup_components;
 	}
 
-	dev_info(&pdev->dev, "MT8173 AFE driver initialized.\n");
+	dev_info(dev, "MT8173 AFE driver initialized.\n");
 	return 0;
 
 err_cleanup_components:
-	snd_soc_unregister_component(&pdev->dev);
+	snd_soc_unregister_component(dev);
 err_pm_disable:
-	pm_runtime_disable(&pdev->dev);
+	pm_runtime_disable(dev);
 	return ret;
 }
 
 static void mt8173_afe_pcm_dev_remove(struct platform_device *pdev)
 {
-	snd_soc_unregister_component(&pdev->dev);
+	struct device *dev = &pdev->dev;
 
-	pm_runtime_disable(&pdev->dev);
-	if (!pm_runtime_status_suspended(&pdev->dev))
-		mt8173_afe_runtime_suspend(&pdev->dev);
+	snd_soc_unregister_component(dev);
+
+	pm_runtime_disable(dev);
+	if (!pm_runtime_status_suspended(dev))
+		mt8173_afe_runtime_suspend(dev);
 }
 
 static const struct of_device_id mt8173_afe_pcm_dt_match[] = {
-- 
2.49.0.805.g082f7c87e0-goog


