Return-Path: <devicetree+bounces-170379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDC8A9AA35
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA7151B83E8A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A79423A989;
	Thu, 24 Apr 2025 10:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="En950whm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C5E2367A6
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490351; cv=none; b=Pi8haxH6Vsb4WQ3XFyvJcCGRE8bb2iMo+IK3ivAD4JNAl3yLRvCM2PJhRTMYh2XcVYDv4czhBAXAnclrofhtgJ4zjsN8glVZ0azx/koxHcZFOexUHgryhk8yQUanevYzN9qGJE8/mBY7R6aVwqY6ITzw1rPpgpyDCs8+E3onz34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490351; c=relaxed/simple;
	bh=yNzcBctBcltIk7fjKHzagNkU6eRehLtyrLorREA22po=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mVj+YhPckyFOk45MpYKApqZ8iUjkP9fCGQYSzPwcP0nQUdCR/p1BlrDcYhLpb0xVtCJnLTZuFiDMmqgIb9165oV7SAmBgV6VqOJ82OrQYB+OXUyW7ZNFqPCayXJgZOlYPQ9V/wo+r8udw30HirHoF8jh2C48garcMuV4rvBdmCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=En950whm; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2264aefc45dso12694515ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490349; x=1746095149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyQBxT8N1LOd0tBT65hxZtJpAp/ZMeB2TPzFU7H3X0U=;
        b=En950whmll4GhabL/ns8fO8k6VSAV4yLyjTKgZrQWULnkYbZTinJ+S2N1ebXqlvUSl
         mvkInZivgsbL6q7x+IF0A7khK/4vmMQQtJv7n0dDfnJjatkeZ4O4+AH0pWWmFtKS7PjX
         c0uPEfuAaOESuWkGKmmLLMd123HFOay3oAsRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490349; x=1746095149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AyQBxT8N1LOd0tBT65hxZtJpAp/ZMeB2TPzFU7H3X0U=;
        b=UBJBkymL6LBbTnHvwKBPfxUCSUxBcylqvBn4xPp2lpQYVzBqDdCLVK+HTwHZtm/4jE
         IhvpxyaHq+F17qbu88WvyGeUTTzLHJ7FtL6Ut/5buxM4iCQFGdCYDkLSali55vO6w7Hy
         ktA9IebPoYEjfEbtuxakdSgxd5J1CEW8qTuMx9wPK9xnYvlIIxDv9ja9GR533GVhmUiL
         z8kThv8tKzM8/dYRdKdTqsOwDpXovNpBMVjLM7DKorbUeYltiuvLV2MRPnyOXAJxe71t
         a67JlV4CGGr0eEb0M0aaiyct6fbdn9U20D7JLT4UAbcPeo9mOkni/yjEeSdCCot7yfEE
         sTiA==
X-Forwarded-Encrypted: i=1; AJvYcCWu/U3bngjBzEgPwNo3VArC3Utu6ofHLUp/zFnr+DHCwrstMr0WbV6oAt7MOZPGiBQeGrHLfwbRi9Ew@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy64fXx/2xuwDIsTusPyj7Ldy/9ouNL5pwm9E+WJ1CicZcc5oW
	kBV/zuOzMWbAs7bfxEjHZ3tNumer+yllmRWJLzRjb3ZUVAF8JqgaiwnN6yi9yA==
X-Gm-Gg: ASbGncvXzvNeGquWmrjazKDRM+sjQ5NQ9vVeIdbFQn0Pj2cy6tZ3Ii0z9XWMFiuJy8X
	nbOqH2k9HKBJpZGvq34ZThVr/SsrfstgBxCFKGJ9l/jjHGqWz4JjLfutgS+9E+jE0kVxN6ppc/e
	xzAT2Gzql7FZITxE5XzEx1RFd5ZQM+P8HG18NxFVFpciQCSMlbgMn2dfSyYxZo+XdVNCchnpjCY
	rJKDstZhj8yb/R5X5lis8fmIA/fK/Lfzod4hN75LfsZoE6o1AF0pewfu4IGCfn0N/BFP4yzWKN1
	Eg7lhWYyLAAtGSc7JWXVEGYHa41w2Abdiqt/65NFPJS6p2XaLQJu5MiLoQ==
X-Google-Smtp-Source: AGHT+IFt0XUOGJk3Ud4+wtbFjwGwTHDAiFvZxN/Xk3zgndqYjVRMpy5Cx4zWYWH17RjjMOdqNLFarQ==
X-Received: by 2002:a17:903:183:b0:223:8256:533d with SMTP id d9443c01a7336-22db3dd0a8cmr28683815ad.46.1745490348905;
        Thu, 24 Apr 2025 03:25:48 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:48 -0700 (PDT)
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
Subject: [PATCH v2 09/13] ASoC: mediatek: mt8183-afe-pcm: use local `dev` pointer in driver callbacks
Date: Thu, 24 Apr 2025 18:25:03 +0800
Message-ID: <20250424102509.1083185-10-wenst@chromium.org>
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
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 37 ++++++++++------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index a3c8054a434f..d63b7fe19fbf 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -1114,27 +1114,25 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
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
@@ -1179,7 +1177,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 
 	/* enable clock for regcache get default value from hw */
 	afe_priv->pm_runtime_bypass_reg_ctl = true;
-	pm_runtime_get_sync(&pdev->dev);
+	pm_runtime_get_sync(dev);
 
 	ret = regmap_reinit_cache(afe->regmap, &mt8183_afe_regmap_config);
 	if (ret) {
@@ -1187,7 +1185,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 		goto err_pm_disable;
 	}
 
-	pm_runtime_put_sync(&pdev->dev);
+	pm_runtime_put_sync(dev);
 	afe_priv->pm_runtime_bypass_reg_ctl = false;
 
 	regcache_cache_only(afe->regmap, true);
@@ -1245,7 +1243,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	for (i = 0; i < ARRAY_SIZE(dai_register_cbs); i++) {
 		ret = dai_register_cbs[i](afe);
 		if (ret) {
-			dev_warn(afe->dev, "dai register i %d fail, ret %d\n",
+			dev_warn(dev, "dai register i %d fail, ret %d\n",
 				 i, ret);
 			goto err_pm_disable;
 		}
@@ -1254,8 +1252,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	/* init dai_driver and component_driver */
 	ret = mtk_afe_combine_sub_dai(afe);
 	if (ret) {
-		dev_warn(afe->dev, "mtk_afe_combine_sub_dai fail, ret %d\n",
-			 ret);
+		dev_warn(dev, "mtk_afe_combine_sub_dai fail, ret %d\n", ret);
 		goto err_pm_disable;
 	}
 
@@ -1267,16 +1264,14 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
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
@@ -1287,15 +1282,17 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
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
2.49.0.805.g082f7c87e0-goog


