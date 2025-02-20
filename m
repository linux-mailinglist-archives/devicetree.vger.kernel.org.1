Return-Path: <devicetree+bounces-148817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3383A3D808
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66A4D3B1689
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE2E1F4175;
	Thu, 20 Feb 2025 11:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RskiQ8dr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFDC1F1921
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050106; cv=none; b=GamZiss7hwi+TSZpud+ipNg8tUUCVLZsVKrxCHZcyzdOlUH7K1CK+/XJMPmbXQCNjAcCu57zLvam3ZQFS9N5G5m8m9DOkWUkzuKWpM+GyldD0YZQ3Zh3YBbNONIe07CPwcZcoygr57DMZasVo2drY4COcbMCFLT446IUcSyQttg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050106; c=relaxed/simple;
	bh=nznA3A8GlMjZ03UpAd+EaFdRwVMW2jSUcP5sfO1ICTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ENLGAz8QAeiTCkJ5MFvidGmZIKEyFeOJSGx5VFtB21Drc1ghSlAgRm5K2dkAce2yQXtz79yLT2U12GfCSXlWRekqxEdjoWr0q+UMiOC4uOL8N6MBDrLVJbNFxZn27GfHDsx1uhltuQMa7qyHByuNM3SGFncezhM8NkOrwnKZ7aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RskiQ8dr; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5454f00fc8dso765025e87.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050102; x=1740654902; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8FeS/va+zHK5sGx9TRcjS6J+iyejHe2ih+fYa/2Q5k=;
        b=RskiQ8druaVN5Zmaf6bSU5vQysqosg8jXKAufIFYDvpLx/xPdzcW3QiuR6cKNQZqrL
         obP0UqMrACbhy0PXpnl0WDM3le0a5DVieNfgo9+svQsnQA2MRQWot3WPlHUDiwBhUiJc
         Cd+dxtilfbvYEFGrF9zEtAKQzH4jI5yAl6CipMoNfVPPp5ZMSDNgq5LD/gkr+tDgpspz
         blTlCq9yr/VyjP9n5B11u0pzVFVnmIueXWw5bvXpIhBuu6LtqNO1E5mHRdG9flPPFQ1f
         MKh79/BfA4phw+Zs3mUpHh0c40bAOPD/wBXaq0C5CLNehEOiOWR+OHT3p1NJCgxtdURN
         +qgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050102; x=1740654902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8FeS/va+zHK5sGx9TRcjS6J+iyejHe2ih+fYa/2Q5k=;
        b=Q3PCPSJ3qDg/BvI4w0cyXjwwTl6lMioGicOdbqPf6+FozpWP6Fw+wZXFn65KShT6nD
         dF7ATvOaK7tpObu2C4FB/Z2UEWFF0nKxkqvXSdn9HdHIccLIJpjMoivNqvT+4qMqFgXA
         FhGHwZ8enJO/mYZBX/eHPmY3NG0yanKokWxhsh5gIc6F7QiSPUZ1/ZDsKcDT1f2xfVm0
         iqf2DD5rEqmgvO6YFBhQ6FOSkilhPIyo/GmpCIuDMdNOGDF0nQxu8Yh4Dx/TAm4TD45+
         0IaLtZHsqfZir74Xv0oIvEJJ9EvmUfUXHO2ipBofAcTQy53d9SoG4kmU8tQmsrQHjWUF
         yb/A==
X-Forwarded-Encrypted: i=1; AJvYcCU2SwoAADgsm4YLD/ew+8xhwvCOMBX+oNUCsJvmaMXORkjv/S/3j0ItCmaD9Uq4ghXfsA1+6BlrbsKw@vger.kernel.org
X-Gm-Message-State: AOJu0YyX8FiW2FT6M6prAD0Cts0PZ470E42aA44X4LUlmwu2r9certTH
	IFp/Dh6xMphBcVm4ikTgwUL29uksZkQvwpNPrOr5pKJEz+dTe5eADUNqiOHZcz4=
X-Gm-Gg: ASbGnct29AfpxQry4/sg3xGbvef6nWdk+7umQxajGExInkpZUVHzoqLc6LIHdiNN3fh
	69PzM2+JE5nYtbLOvNBw07ypa/JNPpNuQ5v0miFXvZPN5glprBIcCZuWLv0AfkkbI1dly8n9vbp
	L8LY0fbUqGpijLxYptjX4DrXn2dnBnHQwz0GMg+7wueTjoEJG5WsZCRQl0lNZeP723/eD4Teb9Y
	xrzGGW/ZiNf0A8jg2WR+v+huNUoPV6DoFjqboDOASmTkvH8r7l/NOyEiAZXC+aiBVQ0aos07+ge
	U5CZSenmpcYhpE1lT0r3tBw=
X-Google-Smtp-Source: AGHT+IFU9ElSwjjqQx8XjrVFfwUEEeETjZJP2gCbsJDlUGmgPawhSl7mzS0K/iqHALGezyTI0ARFpA==
X-Received: by 2002:a05:6512:3b06:b0:545:1bd:a0df with SMTP id 2adb3069b0e04-5462eef45cemr3252158e87.23.1740050102303;
        Thu, 20 Feb 2025 03:15:02 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:15:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Feb 2025 13:14:45 +0200
Subject: [PATCH v2 3/7] drm/msm/mdp4: register the LVDS PLL as a clock
 provider
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-fd-mdp4-lvds-v2-3-15afe5578a31@linaro.org>
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3307;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=nznA3A8GlMjZ03UpAd+EaFdRwVMW2jSUcP5sfO1ICTE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6rRbr96yN51JnJO6N0m78cEm276ifFyrQ2E
 SShQlIaEjCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOqwAKCRCLPIo+Aiko
 1QfDB/9LTU1jklbNgPinoHoSuaCNIbTox61Mp/VXVFwjcGnGIgku+sEd8/SG5lglE//EmBGWt6A
 g+GYO1DSoxgyIDBhioiPRbqPWZ8AmLX62snw6MX24URO9S2wZbECNtWPpvkIKXZwExfe4h8mQQA
 PokpkU5Y420PU0CHcE0rm8N91K0OU3Dz861Tta1thWxOxytytW8WWbxHDv/Yxf8pjAvGbw4brzd
 Urh6HMf9xwocvdRIcaEM8Nkb2VDVEtw94oFGAQ0oNyukOO5jFRs/BlCs1foGhvnJoKGvtsWs27O
 WlUpo1/27GKOfKGo+GWMovy3tyjklSjmA8aiZGvTklHcDUWv
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The LVDS/LCDC controller uses pixel clock coming from the multimedia
controller (mmcc) rather than using the PLL directly. Stop using LVDS
PLL directly and register it as a clock provider. Use lcdc_clk as a
pixel clock for the LCDC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h          |  2 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c |  8 +++++++-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c     | 22 +++++++---------------
 3 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
index 142ccb68b435263f91ba1ab27676e426d43e5d84..b8bdc3712c73b14f3547dce3439a895e3d10f193 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
@@ -207,6 +207,6 @@ static inline struct drm_encoder *mdp4_dsi_encoder_init(struct drm_device *dev)
 }
 #endif
 
-struct clk *mpd4_lvds_pll_init(struct drm_device *dev);
+int mpd4_lvds_pll_init(struct drm_device *dev);
 
 #endif /* __MDP4_KMS_H__ */
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
index 8bbc7fb881d599e7d309cc61bda83697fecd253a..db93795916cdaa87ac8e61d3b44c2dadac10fd9e 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
@@ -381,7 +381,13 @@ struct drm_encoder *mdp4_lcdc_encoder_init(struct drm_device *dev,
 	drm_encoder_helper_add(encoder, &mdp4_lcdc_encoder_helper_funcs);
 
 	/* TODO: do we need different pll in other cases? */
-	mdp4_lcdc_encoder->lcdc_clk = mpd4_lvds_pll_init(dev);
+	ret = mpd4_lvds_pll_init(dev);
+	if (ret) {
+		DRM_DEV_ERROR(dev->dev, "failed to register LVDS PLL\n");
+		return ERR_PTR(ret);
+	}
+
+	mdp4_lcdc_encoder->lcdc_clk = devm_clk_get(dev->dev, "lcdc_clk");
 	if (IS_ERR(mdp4_lcdc_encoder->lcdc_clk)) {
 		DRM_DEV_ERROR(dev->dev, "failed to get lvds_clk\n");
 		return ERR_CAST(mdp4_lcdc_encoder->lcdc_clk);
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
index ab8c0c187fb2cd05e26f5019244af15f1b2470c8..cbd154c72e44c848fa65fe01d848879b9f6735fb 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c
@@ -133,29 +133,21 @@ static struct clk_init_data pll_init = {
 	.num_parents = ARRAY_SIZE(mpd4_lvds_pll_parents),
 };
 
-struct clk *mpd4_lvds_pll_init(struct drm_device *dev)
+int mpd4_lvds_pll_init(struct drm_device *dev)
 {
 	struct mdp4_lvds_pll *lvds_pll;
-	struct clk *clk;
 	int ret;
 
 	lvds_pll = devm_kzalloc(dev->dev, sizeof(*lvds_pll), GFP_KERNEL);
-	if (!lvds_pll) {
-		ret = -ENOMEM;
-		goto fail;
-	}
+	if (!lvds_pll)
+		return -ENOMEM;
 
 	lvds_pll->dev = dev;
 
 	lvds_pll->pll_hw.init = &pll_init;
-	clk = devm_clk_register(dev->dev, &lvds_pll->pll_hw);
-	if (IS_ERR(clk)) {
-		ret = PTR_ERR(clk);
-		goto fail;
-	}
+	ret = devm_clk_hw_register(dev->dev, &lvds_pll->pll_hw);
+	if (ret)
+		return ret;
 
-	return clk;
-
-fail:
-	return ERR_PTR(ret);
+	return devm_of_clk_add_hw_provider(dev->dev, of_clk_hw_simple_get, &lvds_pll->pll_hw);
 }

-- 
2.39.5


