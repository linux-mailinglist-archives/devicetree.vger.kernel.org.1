Return-Path: <devicetree+bounces-75529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 295D890794E
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:05:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E15D1C21910
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7AB214A4C0;
	Thu, 13 Jun 2024 17:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QGV0Jdbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ED3145B26
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298314; cv=none; b=cDuuC8HFkDkYwn2b02Th2DGAEqq6sxTNAxidKvoOwGAfUU7fAQvXk5vLwIN566DbLJE2+zJXb5GbjiLWDhjF1IEAivedfamBq2/DZGDnjOb89O2R8u1gnrs20h0uZ+OzNixeCB+E0nMx1+J7SNAn6b624FgRGpH7ncNoMhLubCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298314; c=relaxed/simple;
	bh=bDZH3Se3yEXeok1v+4xcgwo8ckhAiicjF4WPwysF+hY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p4ekW+xLfOqKgF4bEW4leviUR5JAqPMeB3Vn5kzZ6repI5iCj2pX6KNCuHks1KUlVDW0t7bgTyU5MOiLZ3deb9u5h+HAJXQGammWq5lUoxAytV0n6cFTLRq6xlNT3xQ+8ieon+YmEdC/Jech8Jb6pz6UxAMFtary0y0NK9IyeiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QGV0Jdbt; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52bc3130ae6so1490425e87.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718298311; x=1718903111; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=riizenq3L8DXhy6NcFp3E1fNog5NOwudZRa/v8cMvOY=;
        b=QGV0JdbteDQEaVK1KFq20kswXFIcy8MHU9xCd1Z/C3mbWA8YcgnmNQpJitPSNTcJwW
         5vQ8Ihspo2NLJD1N8xuufn0VXr+pLreIXf4QUi/3EvMrNIOq+NRSKLuI6b1p7/w7mcqF
         dyxcerCy6lxTCTvJW+3H83lqVYzpP3TqQNDXQKVmco3xZORQT0j8i3pnULwYSgRS1qxd
         I0B2loN1OJrtDnvCPa/6e5buRBRJFobmhzImP/TcQ2oSQiTaT09JBZQyOiLBljlFIvl+
         jIoFQcltlMxW1S29ilnwBhySbavTAQXg7cFQpVElkMu7AXRjEpjb4r7bF1vW5hdlMT3A
         EQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718298311; x=1718903111;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=riizenq3L8DXhy6NcFp3E1fNog5NOwudZRa/v8cMvOY=;
        b=hq7bDiRqs6eR0f0eeIyJMCZdFjpr6TlKzccsHPNpHA601pZVv5tUKlBUAXIIB7iH04
         HjXu9kBOJvvZUjdu3B/zmzTzfK2nknApzP51BZDPemrq7ukw15VNRkIje78expAlydZ2
         Xam9dsDrFuUNFcVv2zByQUk6nYmWGGBOxNElIA+dyPcQi/I4eQOm/egDUAHO9zBdHXWr
         VdLrGtEhwicYA6NRwEePbV9GIhxgnCocHTEXKSDjIboJ5vq9tigeglLF59i0fOUbnXuu
         fY8DIQYzFyFeRHOML3Nz0fGnNAVpXPGgP5ZQRqge9YPmzMOg6BNnaS5ZlPxj/SQjWEst
         O7eA==
X-Forwarded-Encrypted: i=1; AJvYcCXNvsm01eJByaHDgVHxdN/00B39ENN6RbFiEeQ0g9zlaann4lMVZmxvw1FyIJ8cZvIUVgo6yW5NxlwUpaYrDgRa+kZbri+kBvDdPQ==
X-Gm-Message-State: AOJu0YzXTUF67HOWQd/HvnleLbCiUYpYu8MNUTnSosWRohrLL+XH5+zh
	RyalkUxvq2YGELrPuTbBbCSmm3qW4gOm5KsGR86AFzdqFO6S6kSkcD3A1+/XKVo=
X-Google-Smtp-Source: AGHT+IGf02+SM4/sdJmC/eEG5H+J63h6e/5s84OXjM0q6E/nqPnNJNsTbstfAFOasBEHe8VYopvujw==
X-Received: by 2002:a05:6512:402:b0:51d:4595:3527 with SMTP id 2adb3069b0e04-52ca6e99c90mr204031e87.61.1718298311298;
        Thu, 13 Jun 2024 10:05:11 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825733sm287312e87.60.2024.06.13.10.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 10:05:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 20:05:09 +0300
Subject: [PATCH v2 6/8] drm/msm/dsi: parse vsync source from device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-dpu-handle-te-signal-v2-6-67a0116b5366@linaro.org>
References: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
In-Reply-To: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3355;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bDZH3Se3yEXeok1v+4xcgwo8ckhAiicjF4WPwysF+hY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaybB2LKaRw9mB+qJ3Wcyy+ofJN/TyAW6ZOgMG
 +BEZKGyyn2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmsmwQAKCRCLPIo+Aiko
 1RvtB/4lo66prEsmuaIsbxhLnN5kdIup7X3NKwqkkVugXSxRS3KGlGbjuMRWGlC9PnUCnI6+AWa
 opaaFF+z3OoCPe9e1j/YhneHyHRoAWKpkQ88893u3CkGgvLXTfV/jhP1qjB/ZqUKrtN63lD2Ja7
 ZmPU+Cpg0mAIBiC3psYh5K9u9crLtO6dLT6MYTACjXoui443ZpVZHqanmFiF7ARAihHvcjf/zRM
 U23qB0Nx3lQD25w2l0BPYT0ncHtyWVPa3oP/dkGxkoWuO0A1FN33z8/0tuRLQbBACJkJAskIzpW
 xUSW968YgQcYVAaXkgiQ/bpUQy8ZXQrac4NjraKf7QyzXHWL
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Allow board's device tree to specify the vsync source (aka TE source).
If the property is omitted, the display controller driver will use the
default setting.

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi.h         |  1 +
 drivers/gpu/drm/msm/dsi/dsi_host.c    | 11 +++++++++++
 drivers/gpu/drm/msm/dsi/dsi_manager.c |  5 +++++
 drivers/gpu/drm/msm/msm_drv.h         |  6 ++++++
 4 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/dsi.h
index afc290408ba4..87496db203d6 100644
--- a/drivers/gpu/drm/msm/dsi/dsi.h
+++ b/drivers/gpu/drm/msm/dsi/dsi.h
@@ -37,6 +37,7 @@ struct msm_dsi {
 
 	struct mipi_dsi_host *host;
 	struct msm_dsi_phy *phy;
+	const char *te_source;
 
 	struct drm_bridge *next_bridge;
 
diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index c4d72562c95a..c26ad0fed54d 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -1786,9 +1786,11 @@ static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc
 
 static int dsi_host_parse_dt(struct msm_dsi_host *msm_host)
 {
+	struct msm_dsi *msm_dsi = platform_get_drvdata(msm_host->pdev);
 	struct device *dev = &msm_host->pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct device_node *endpoint;
+	const char *te_source;
 	int ret = 0;
 
 	/*
@@ -1811,6 +1813,15 @@ static int dsi_host_parse_dt(struct msm_dsi_host *msm_host)
 		goto err;
 	}
 
+	ret = of_property_read_string(endpoint, "qcom,te-source", &te_source);
+	if (ret && ret != -EINVAL) {
+		DRM_DEV_ERROR(dev, "%s: invalid TE source configuration %d\n",
+			__func__, ret);
+		goto err;
+	}
+	if (!ret)
+		msm_dsi->te_source = devm_kstrdup(dev, te_source, GFP_KERNEL);
+
 	if (of_property_read_bool(np, "syscon-sfpb")) {
 		msm_host->sfpb = syscon_regmap_lookup_by_phandle(np,
 					"syscon-sfpb");
diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index 5b3f3068fd92..a210b7c9e5ca 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -603,3 +603,8 @@ bool msm_dsi_is_master_dsi(struct msm_dsi *msm_dsi)
 {
 	return IS_MASTER_DSI_LINK(msm_dsi->id);
 }
+
+const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi)
+{
+	return msm_dsi->te_source;
+}
diff --git a/drivers/gpu/drm/msm/msm_drv.h b/drivers/gpu/drm/msm/msm_drv.h
index 912ebaa5df84..afd98dffea99 100644
--- a/drivers/gpu/drm/msm/msm_drv.h
+++ b/drivers/gpu/drm/msm/msm_drv.h
@@ -330,6 +330,7 @@ bool msm_dsi_is_bonded_dsi(struct msm_dsi *msm_dsi);
 bool msm_dsi_is_master_dsi(struct msm_dsi *msm_dsi);
 bool msm_dsi_wide_bus_enabled(struct msm_dsi *msm_dsi);
 struct drm_dsc_config *msm_dsi_get_dsc_config(struct msm_dsi *msm_dsi);
+const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi);
 #else
 static inline void __init msm_dsi_register(void)
 {
@@ -367,6 +368,11 @@ static inline struct drm_dsc_config *msm_dsi_get_dsc_config(struct msm_dsi *msm_
 {
 	return NULL;
 }
+
+static inline const char *msm_dsi_get_te_source(struct msm_dsi *msm_dsi)
+{
+	return NULL;
+}
 #endif
 
 #ifdef CONFIG_DRM_MSM_DP

-- 
2.39.2


