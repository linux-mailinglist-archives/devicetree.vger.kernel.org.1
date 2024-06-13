Return-Path: <devicetree+bounces-75530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9616C907950
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84CD11C21B85
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991941494D1;
	Thu, 13 Jun 2024 17:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZGpA7Cv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F17149E0A
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298315; cv=none; b=aYqmMIn7j0scRp7Irx9YeaVMQ1FW8NfLctZW2vJ/fpONNU1lr4eb6ihh9HmfrFY67v7EhwJCHt2pcix5rsVCO0gLPjKGYVHkF3n5WuArjVkiwqpzO+X/ubY3mE0E1jjvctc1fBTXV1I6DjHYsteUtS6Vjn2UmRwZqILcSwM6ANc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298315; c=relaxed/simple;
	bh=QUCPmblJLuOJth7ZyUHXw5QYG/4ROl41Z9y5v31PglU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hSL8EUhzvSftOwG2XWzM6ux3leM6rt8DmCy4lbnDdxXe6/3OSXCrO+z/KZupMfdrxT4Mlrj2jFxQGTR+Nqq3L7MSEzzJqcpTetNNoIic8gZDbcX3ZUuwEHgJa9e+yzIandG4HPEPOPX1Wh8V9oNKqoV6L0AIWK1pzjo3X2uUTSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZGpA7Cv3; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5295eb47b48so1612459e87.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718298312; x=1718903112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LxfhilPdPb1RXE+S/LuVgqnL996/AiFZGIBEx4qRgKw=;
        b=ZGpA7Cv3F10rPXfuKKyiEhS/ZfkUkQb3+bcea3oLD8M68uav4a+K9aSoRMoroN/TV/
         8Us24MWZr0uiJU/5mUuDu44El8TGpUwD+cRF8uh1DRdvFZelzPHKKINV1A+fNwtv8wSX
         JxOfrTf5+K01c1+2sYiq6xOaDFuu7tatNfQ18SgEv23H5mMdv0dcHfVfvneb8JmGJopl
         XLUUlhlmv6UjlDgj01Yb+N5WjjDIEI8or0ydfVQUBPebpnYL+9J6mcKcnaKUo1R58YT2
         obEm6PnLEFGJpXyH8SEdERPBy3tirvRoYUy/snRdh65MdMLg8uqRbvraTQxMHUPfvrhK
         KG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718298312; x=1718903112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxfhilPdPb1RXE+S/LuVgqnL996/AiFZGIBEx4qRgKw=;
        b=YRCB/3RlAUpdBS6lpNPZ6I8/BqiEBwkj8L9Ui1bJOGPGOOto7F1ni92d9fYmRz+nC9
         1Vfwj2vx1QxjOST3Jqtf3BSuQd9u4rkxUJuWHI8Ph1HZ7iWICObhhzfhWAgj6FDuKZCe
         qGVrOyISwtCFq9O/GyniW8HNNdGXt0UCPAxxfJx5xcmJ9Ab3n7EbADNSe1G5i6wg0Uso
         7PHRtVGTpv0nzPTlyY9STX3s5n15TNNFqF7Jgu6taCbB38Zg+WgFPrbwIGk5osEn9Mes
         J64ofr4d0LmecGPrMIPX7f2BTvOcB4wDPI9TvIextjn6JhY1FOAzEsLgsJHowT1Q1Ef+
         I8NA==
X-Forwarded-Encrypted: i=1; AJvYcCUJgUkb3XcO0/mQEuZ4COxKSDahScbrbHlcX3doETMa1AdWLJrMKjXRtLAiea5M1njft6mf4udUwoFOdBiOmsnlWvx8B/1Sc55vGA==
X-Gm-Message-State: AOJu0YzRBL7pIJqAzWFNv+gOq4FOm4ioPxeCaJuAmpbyaHCvhm3nLC4M
	E3fv3b8jAdHXEAnVHc31nkM7sjAFWqXKlGiLAdXk1CT2gAZ/zxa1Xaf156mc+S0=
X-Google-Smtp-Source: AGHT+IEf5wxWTGAi+H2OXcWUzMFlgq68EhRU3vSbXtmfgZ+Fn9MOelVxmGfI8CUyr5IIWCUCpwtrfQ==
X-Received: by 2002:ac2:5227:0:b0:52c:8428:1d32 with SMTP id 2adb3069b0e04-52ca6e6e429mr236455e87.40.1718298312025;
        Thu, 13 Jun 2024 10:05:12 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825733sm287312e87.60.2024.06.13.10.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 10:05:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 20:05:10 +0300
Subject: [PATCH v2 7/8] drm/msm/dpu: support setting the TE source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-dpu-handle-te-signal-v2-7-67a0116b5366@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2478;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=QUCPmblJLuOJth7ZyUHXw5QYG/4ROl41Z9y5v31PglU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaybBgNJopZrFl3W9f3Uix8iVD9Cn/0h0V/H/W
 Q4JhCCmF+uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmsmwQAKCRCLPIo+Aiko
 1cmnB/4vxIQkTqqcPlHS5vscCiQrq401V8LOYwOI6sO0WLfu28SenfTJSbZihQA9d6fEXydnggC
 ojbnQbpArL33k6dN4OXDGNsMrSCNAUtj4HtF4resPlCGAfpIWvPiGWkZcYQsGd23s3mNxTiKUnz
 MK7PP9odFnr2YI8dJIEKyCT8tqYIxoGnbPHKGkOTvihdNAUyebreidNORDgukMwCYTYNjwWZRie
 4ah+pnwaOKadp0zsQ05lx2XLFJVI7+w6ezXYBE94e/CPPiu0Si2/5LwDeNI6TyRxVSgNwAz75gf
 EHPUQJGn/n/W1p6o2F6ajcqWVYZ8AJYGCeTBVChMBOsgPLEk
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Make the DPU driver use the TE source specified in the DT. If none is
specified, the driver defaults to the first GPIO (mdp_vsync0).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 44 ++++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index e9991f3756d4..6fcb3cf4a382 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -505,6 +505,44 @@ static void dpu_kms_wait_flush(struct msm_kms *kms, unsigned crtc_mask)
 		dpu_kms_wait_for_commit_done(kms, crtc);
 }
 
+static const char *dpu_vsync_sources[] = {
+	[DPU_VSYNC_SOURCE_GPIO_0] = "mdp_vsync_p",
+	[DPU_VSYNC_SOURCE_GPIO_1] = "mdp_vsync_s",
+	[DPU_VSYNC_SOURCE_GPIO_2] = "mdp_vsync_e",
+	[DPU_VSYNC_SOURCE_INTF_0] = "mdp_intf0",
+	[DPU_VSYNC_SOURCE_INTF_1] = "mdp_intf1",
+	[DPU_VSYNC_SOURCE_INTF_2] = "mdp_intf2",
+	[DPU_VSYNC_SOURCE_INTF_3] = "mdp_intf3",
+	[DPU_VSYNC_SOURCE_WD_TIMER_0] = "timer0",
+	[DPU_VSYNC_SOURCE_WD_TIMER_1] = "timer1",
+	[DPU_VSYNC_SOURCE_WD_TIMER_2] = "timer2",
+	[DPU_VSYNC_SOURCE_WD_TIMER_3] = "timer3",
+	[DPU_VSYNC_SOURCE_WD_TIMER_4] = "timer4",
+};
+
+static int dpu_kms_dsi_set_te_source(struct msm_display_info *info,
+				     struct msm_dsi *dsi)
+{
+	const char *te_source = msm_dsi_get_te_source(dsi);
+	int i;
+
+	if (!te_source) {
+		info->vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
+		return 0;
+	}
+
+	/* we can not use match_string since dpu_vsync_sources is a sparse array */
+	for (i = 0; i < ARRAY_SIZE(dpu_vsync_sources); i++) {
+		if (dpu_vsync_sources[i] &&
+		    !strcmp(dpu_vsync_sources[i], te_source)) {
+			info->vsync_source = i;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
 static int _dpu_kms_initialize_dsi(struct drm_device *dev,
 				    struct msm_drm_private *priv,
 				    struct dpu_kms *dpu_kms)
@@ -543,7 +581,11 @@ static int _dpu_kms_initialize_dsi(struct drm_device *dev,
 
 		info.is_cmd_mode = msm_dsi_is_cmd_mode(priv->dsi[i]);
 
-		info.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
+		rc = dpu_kms_dsi_set_te_source(&info, priv->dsi[i]);
+		if (rc) {
+			DPU_ERROR("failed to identify TE source for dsi display\n");
+			return rc;
+		}
 
 		encoder = dpu_encoder_init(dev, DRM_MODE_ENCODER_DSI, &info);
 		if (IS_ERR(encoder)) {

-- 
2.39.2


