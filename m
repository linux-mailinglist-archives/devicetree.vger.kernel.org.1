Return-Path: <devicetree+bounces-144286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5772FA2DB1A
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92F0E3A74DC
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF4917C225;
	Sun,  9 Feb 2025 05:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q7xvaELA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFF2167DB7
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077629; cv=none; b=NvcQpgX26z+5zZXWJZ8M/Zds9Y1VA/x1RAD7akF8qLmPW2SSGNrYbJza2qhSg29fCL4aA4JAOOYSMXBwfeK1o1PMmlity0myj+C0u68F6rLs3Lklxh5WWFeVL6NylHMNGr1V2hIU5aVX0TTF4ffRqZBDPuonmqjhhXPbEW1VrQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077629; c=relaxed/simple;
	bh=8ggrOHMoONGuV72hshgJDWyRmMWrabWT+tktxkICLQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mmoAeG7rjrAnUPdQZDFDPP7MRUc3cstvIQygQJF516DLkOgVm/MqPbPmJTinBbTinhqp9gmy76ubH4GXpqmo1vHGRJZ86aUcPtpgZoZQZKUmjquHv06N0u/du+ZvZyCSw0IxjI9DW+4NHZRRpFOjd2UrAujzyurLR2IZ/aEh5x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q7xvaELA; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5401e6efffcso3399522e87.3
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077625; x=1739682425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0fvdO4R1nURbqAvtpU5cS7Y2T0kdgB8Gv4vtNNxca0=;
        b=Q7xvaELAby4Q02l8gA5uHh0iUpfnG1Wj/TIbAuSHxsMY5xg26aiG9/dXJ2fLtb+BKe
         Cz27+Lb/TfhZTebyfXYyq/3K4rAriiK0ThKB4L8h3ZaYhs4PQb2tvoSe1GAe5sywsHga
         6SAGDey/rsR1CCm9j33IUqohH7vOek/97zasuopxJTRaQkHJaM8QJ72IaV9/9Wp4/D/9
         cOhGESYfuk7IXqZNdSmcVZxpwuxBJF7ZxcMnhDlX3RM/WYdKevMx091s/YPKPSxygcGp
         2mNHHa2S4oAjQws06SAUWuneLFJ+luZg5uAg5zkGW2J6Py6SB7X/CgsVEqtXTt8/zcMF
         SLug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077625; x=1739682425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0fvdO4R1nURbqAvtpU5cS7Y2T0kdgB8Gv4vtNNxca0=;
        b=eUinY2tI5cBKFz+qX1lQILXV9uk4E1Xvy6JMWfUV7X34cWtteMK8pdx5TcpSppylZL
         1aJQQhAIRHTlPaxLnV64PtIubjl3yPkeGAPoDa8Qi2H6gfnKmvBeH0rm4u2IP7ApfFbP
         irC94amjYFot7wCGbXaUEI4epZv8G5Dp49AMJn3x9bTjhnTn6re/c1aOj8L0TkduQP01
         edkNZ90ezW93hAB6dCydqnFNbVZ2gPx9Vfj5/hzzsfVg0jCPzu6QhkFI7FRJgKGe4PLn
         UdqIazhBHFLRDWws3GuaPRYp2OsJSjUDCIE2r73zYqg5DFt4qS6tUqpwXQIx3jPi5H5+
         ummw==
X-Forwarded-Encrypted: i=1; AJvYcCWCkKzEVXhYpIml9giOoxqttL2gJ7QFwzFZ+b1aFHZQMWTJpmTOa8nKTdocKli0+le+nkEvOVEfZMQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YyR2pe/96+U0LSghRHkYTxJeyMc5xO9f07qfKLhJXuSPTEQYUrc
	lBnUzSy3o7B0UDcewbCmZi4+wZgQ0RE0nVp0FpafZ/WuinHZoEaHAP0GavcnnkY=
X-Gm-Gg: ASbGncvpiLFtJ9xq9m86rUS7WIXEaROMQaFNh+tirXKzTMTIqbPJdtv+AskXaeuepVh
	0+gNuJV0cveYzg6sVd12UdoxxcKUBoeAeNrAsSg450+Wsfga6vPXaXpdzO7N5InmAYAkbXniXZk
	/ytfCDCaZ7d2qZ+tO5C8xE6Q/53bs/+wd/P3VQngpxbI7vKYi8S4YeHzXRjDACDJe+odN+vlP6P
	ZkePSoy8eIUj2lMm76qiCG2XFFE2rgE4fXCxGNHAlst2bifjksDnZ04cTyecT1QtFbKcJhVutGL
	hM2CwI18zOrIhpIqBMxtreE=
X-Google-Smtp-Source: AGHT+IHvHK9pE/lJ1sbvSikM6yxevJJhOW+toCBmWw7PDK+wzGYcNkAt2K57E9sTUMAV9Ze/PJqhag==
X-Received: by 2002:a05:6512:2821:b0:545:6a2:e52 with SMTP id 2adb3069b0e04-54506a20ff4mr841140e87.13.1739077624656;
        Sat, 08 Feb 2025 21:07:04 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:07:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:04:52 +0200
Subject: [PATCH v4 08/16] drm/msm/hdmi: switch to
 pm_runtime_resume_and_get()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-8-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2832;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8ggrOHMoONGuV72hshgJDWyRmMWrabWT+tktxkICLQM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfibvp8G2Mg6U4kntY4TDix+sHhUGkYjpmgS
 NNb+V0lzKmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g34gAKCRCLPIo+Aiko
 1ZOuCACuIdGuV1z9z9UzxMNBCcGvD/1jN1gxNpsw6zo3qtvGjKRkgE29wRh+70PdHygdsSuJJND
 MQki8GKKIOtm2TMfh+6qLFk75iGLCdaFZeZxBXNCF7DXEBgAgtcHrGCRf8V59wZBCedv3aG+Fjv
 cXg7zqX6S7kZCGzN1etDHpsvbm9+otPbTE3VJ6zkIpDpBw7N1ufN+sm3I2juhcTvXxEDP1hmjxx
 o9YPIO/P3wB5ewBaRYJco7WQme9QVlQs3/YzNlYGghVOo21A0xb0tA9h+FqcQDj+rB+MVHq7t+U
 jSh9lS5oE/Md0BKq6r34Tr65Q/5WqHuA8FJ7DSqmCc1TROtB
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The pm_runtime_get_sync() function is a bad choise for runtime power
management. Switch HDMI driver to pm_runtime_resume_and_get() and add
proper error handling, while we are at it.

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c |  2 +-
 drivers/gpu/drm/msm/hdmi/hdmi_hpd.c    | 12 ++++++++++--
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c    |  6 +++++-
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 6c5bbd772700b0362f884a737598d7bf419adf9b..d7d5d3755fb853377aa999e2a830debf54afe984 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -21,7 +21,7 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	const struct hdmi_platform_config *config = hdmi->config;
 	int ret;
 
-	pm_runtime_get_sync(&hdmi->pdev->dev);
+	pm_runtime_resume_and_get(&hdmi->pdev->dev);
 
 	ret = regulator_bulk_enable(config->pwr_reg_cnt, hdmi->pwr_regs);
 	if (ret)
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c b/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
index e253c1408dd1c6dcd7e94506f0b8edcfd4a9a159..d77c68914c5f525cf12971c1058b1abc33792b24 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c
@@ -85,7 +85,12 @@ int msm_hdmi_hpd_enable(struct drm_bridge *bridge)
 	if (hdmi->hpd_gpiod)
 		gpiod_set_value_cansleep(hdmi->hpd_gpiod, 1);
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "runtime resume failed: %d\n", ret);
+		goto fail;
+	}
+
 	ret = clk_bulk_prepare_enable(config->hpd_clk_cnt, hdmi->hpd_clks);
 	if (ret)
 		goto fail;
@@ -178,7 +183,10 @@ static enum drm_connector_status detect_reg(struct hdmi *hdmi)
 	u32 hpd_int_status = 0;
 	int ret;
 
-	pm_runtime_get_sync(&hdmi->pdev->dev);
+	ret = pm_runtime_resume_and_get(&hdmi->pdev->dev);
+	if (ret)
+		goto out;
+
 	ret = clk_bulk_prepare_enable(config->hpd_clk_cnt, hdmi->hpd_clks);
 	if (ret)
 		goto out;
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
index 03120c54ced686dcd2ddfe809dd9c9011f608235..667573f1db7c6bfef6c75828b5c581c147a86d0d 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
@@ -58,7 +58,11 @@ int msm_hdmi_phy_resource_enable(struct hdmi_phy *phy)
 	struct device *dev = &phy->pdev->dev;
 	int i, ret = 0;
 
-	pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "runtime resume failed: %d\n", ret);
+		return ret;
+	}
 
 	ret = regulator_bulk_enable(cfg->num_regs, phy->regs);
 	if (ret) {

-- 
2.39.5


