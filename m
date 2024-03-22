Return-Path: <devicetree+bounces-52479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CBA886CC6
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 14:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B59D6B22B19
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CCC46B80;
	Fri, 22 Mar 2024 13:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U6jJTrw4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330E64595B
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 13:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711113761; cv=none; b=VZf3FhM29gkWe6nT3lNROlSUp6ExKJ71/o23X5xg2+IsREICR72YKP2SdvCmMTNlqd2ajCA5V0EL9uKybQ97uEwd/Q6jdrYDrer1sNyPe6tU6s2xZQkNtVADMtofsE6SqVACg8mOaEUWQE9Vu6t9Hm1JcLWgjuAAl/Ou236LMiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711113761; c=relaxed/simple;
	bh=qc0EfWboibZiHcWOnPjRaVSUrErmgCEbUhza0YDil3o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bjJwESU8s66j1QVeZiHblerOC9FBzmwCLiTvanGrNKcZUW82aBlw6QtkdElkIApuuCXaqB8nmJIJgX4o7p2DAJrEx+U0US24DfAf/TMs6kUiozSqa1NLrAr0nnZBuec2hiBKxRKeSLHLSVjb6++Vn/4Fg3ts12M+Ifg0z0u6LGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U6jJTrw4; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-513d717269fso2723680e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 06:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711113757; x=1711718557; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71W+5io5Kx8kfZV8uQBYKocYOd4dyz/odA4LMSFZCo8=;
        b=U6jJTrw4u/2EiPuJay2gx90F4XlSfiuK2nx+Jp8InJ7LDZSddoACwd2IQUlJUdPnRH
         JeK6vLj5/3Py1qjxSuEaSMXZ0L2OkPa5QmHHYA+vTjzkMp63BXf/AjIKhpjVTKV+Bkv/
         IoHSkQUkLlpuYRYNBn4BcFTLWeZCw4OJP0AOpKVesJAK+UthnJvcrwU2g8MGfVK0NQIY
         SNY9wOWqQJYekuUwAJAmpdlYFsPRikHn80zvkUso+qxljlYG6fT9yZVRIn3SFB/Tj22Q
         qaz8FJugaj9Xj1XubzRuRYHKZku3xSB+MLAkdNVdDGRMZVUdA4RUA2jKEIBQQO9CbXWR
         DmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711113757; x=1711718557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71W+5io5Kx8kfZV8uQBYKocYOd4dyz/odA4LMSFZCo8=;
        b=pIk7cK1211aeij8xNznicSOjGNrG0vQLUikZ4s+j6cFjChgzVM9o6vfqHWGJpoe6eI
         dJ3nTrLvinVyjfO4EZoYH/4N3gIJRDQqj8Jvj83fy7spIftOgTXAmig32jb/k6nHwVUo
         zAzfM/mMaVUqNvOD/sGXPAa561zXIKG0LxsrPm1hQ8zwVT+1rn8FKBajTDCeD0Wk+KXI
         LahSZp+7nk+pyDAU4yX+c877VCgdLfanmpXAJj9pQIOcOn+WvSXTPukbz3iKrMuFJmSQ
         /jqQO1BoIWtLoUiSNEXOg05RP/PeseO43/D11rA3ewb/dJLpauK03oAQg65f908tx4nc
         PAsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGZIH/aUO2jAzmeOu7OVyOIgW+nk1zqBonV5ErQbCFY+1a9wQ1ha6It+jsR5WZaCCUR+Z1gOuP4j1Na0YV7BHX3Hozr4e2HhR72A==
X-Gm-Message-State: AOJu0YxO7uFkcsIwrCuB6MZW3OX7aEY2ZMGeM5U9fOaHEWVIIDweoOFP
	vbNACJblPZEOt0e0H3gEfB+mQ3KyDH7rxFZcyJMMAZBfVxw1R5yTwaAvAD99ano=
X-Google-Smtp-Source: AGHT+IH+xtibtdYJd416aG/DEUom1GwyheSBAPgz1DH1kxYZ6rynbFgNTq4Erxr192rfy/o5F41H0g==
X-Received: by 2002:a19:4353:0:b0:512:be8e:79da with SMTP id m19-20020a194353000000b00512be8e79damr1576718lfj.8.1711113757184;
        Fri, 22 Mar 2024 06:22:37 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id m22-20020a170906721600b00a461e206c00sm1014176ejk.20.2024.03.22.06.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 06:22:36 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 22 Mar 2024 15:22:22 +0200
Subject: [PATCH v3 1/2] drm/msm/dp: Add support for determining the eDP/DP
 mode from DT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-x1e80100-display-refactor-connector-v3-1-af14c29af665@linaro.org>
References: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
In-Reply-To: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2947; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=qc0EfWboibZiHcWOnPjRaVSUrErmgCEbUhza0YDil3o=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl/YYV3QF4UeRaEwyDs6+opT9UnzzLkr6HNGyCU
 c+kgIUNaVaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZf2GFQAKCRAbX0TJAJUV
 VgEcEADG+nzfSGiMPotgiJk3JbU68ceT1L2GBQCiKgE0x2LH2mQX1bXDNAkD5KDKB3xxcpaxcGZ
 LHXWDx5WbU5g1gWRX1/0DNsfOnl59gxbyO4XMdv+wVtHocSTQM6/Fff07lDJfvNiFkzfHsnVEbE
 nNbUJlQionnYtYBXbVpQkZj3yUSlRP/hUWW3CV0Eiu6pjg7ylWI0axQM4BQZjGm6c2gFzMZsgwO
 DoEzDvZKP9E8P/MDHMTDUrijyrCp88k1k8I7/w5UOaNQaP+zBo3zLXzLanjvpFCFHm442g42Vly
 BKgWVknFmpqNh4yLSX6LsNujulS/auYCQIYw2A3CGd8yp799H6SZHq1hIxdmeCyuOC1XJG8a/m8
 kYZBFuJkqudHIjUIg1cpUx0bO6MsvHETeQ39lsRiHBqCZ0Ry8RfIqqkK8bZmZMEpNvGlVzAf1Tk
 V43fomFrw/jQhrkgLqgjzcMIwrlIamYUTE3sedUpWdUr7k+diaMwlbqqwmpkyb6ET+8Xlm53Iwj
 iG7XMOVpbSpQx3C9vXC2kU4CV051t2IAweTjCAnLiquwarD+zbc68j8+M0xUHPnsB7UCE3uEh7m
 Dj4rHxviHlficGoIFhfw6+WyrKTzsKNs7pi3RzBR8GEErsU11JC/Mueroj3VVmuP17K1F8ecTFy
 XWr3abeNrJgrpkw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Instead of relying on different compatibles for eDP and DP, lookup
the panel node in devicetree to figure out the connector type and
then pass on that information to the PHY. External DP is not described
in DT, therefore, assume it's eDP if panel node is present.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 43 +++++++++++++++++++++++++++++++++----
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index c4cb82af5c2f..c9763f77c832 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -726,6 +726,14 @@ static int dp_init_sub_modules(struct dp_display_private *dp)
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 
+	rc = phy_set_mode_ext(phy, PHY_MODE_DP,
+			      dp->dp_display.is_edp ? PHY_SUBMODE_EDP : PHY_SUBMODE_DP);
+	if (rc) {
+		DRM_ERROR("failed to set phy submode, rc = %d\n", rc);
+		dp->catalog = NULL;
+		goto error;
+	}
+
 	dp->catalog = dp_catalog_get(dev);
 	if (IS_ERR(dp->catalog)) {
 		rc = PTR_ERR(dp->catalog);
@@ -734,9 +742,7 @@ static int dp_init_sub_modules(struct dp_display_private *dp)
 		goto error;
 	}
 
-	dp->aux = dp_aux_get(dev, dp->catalog,
-			     phy,
-			     dp->dp_display.is_edp);
+	dp->aux = dp_aux_get(dev, dp->catalog, phy, dp->dp_display.is_edp);
 	if (IS_ERR(dp->aux)) {
 		rc = PTR_ERR(dp->aux);
 		DRM_ERROR("failed to initialize aux, rc = %d\n", rc);
@@ -1241,6 +1247,35 @@ static int dp_auxbus_done_probe(struct drm_dp_aux *aux)
 	return dp_display_probe_tail(aux->dev);
 }
 
+static int dp_display_get_connector_type(struct platform_device *pdev,
+					 const struct msm_dp_desc *desc)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *aux_bus;
+	struct device_node *panel;
+	int ret = DRM_MODE_CONNECTOR_DisplayPort;
+
+	/* legacy platforms specify connector type in match data */
+	if (desc->connector_type == DRM_MODE_CONNECTOR_eDP ||
+		desc->connector_type == DRM_MODE_CONNECTOR_DisplayPort)
+		return desc->connector_type;
+
+	aux_bus = of_get_child_by_name(dev->of_node, "aux-bus");
+	if (!aux_bus)
+		goto out;
+
+	panel = of_get_child_by_name(aux_bus, "panel");
+	if (!panel)
+		goto out;
+
+	ret = DRM_MODE_CONNECTOR_eDP;
+
+out:
+	of_node_put(panel);
+	of_node_put(aux_bus);
+	return ret;
+}
+
 static int dp_display_probe(struct platform_device *pdev)
 {
 	int rc = 0;
@@ -1263,7 +1298,7 @@ static int dp_display_probe(struct platform_device *pdev)
 	dp->dp_display.pdev = pdev;
 	dp->name = "drm_dp";
 	dp->id = desc->id;
-	dp->dp_display.connector_type = desc->connector_type;
+	dp->dp_display.connector_type = dp_display_get_connector_type(pdev, desc);
 	dp->wide_bus_supported = desc->wide_bus_supported;
 	dp->dp_display.is_edp =
 		(dp->dp_display.connector_type == DRM_MODE_CONNECTOR_eDP);

-- 
2.34.1


