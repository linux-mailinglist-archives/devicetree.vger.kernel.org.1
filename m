Return-Path: <devicetree+bounces-75528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3590794D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A75B0281C7A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EEDD14A0BC;
	Thu, 13 Jun 2024 17:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mWDm4q7Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3C6149E14
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298314; cv=none; b=Y15w7xe26gxIPX3tHFCBWptDzWkDJBtRPlZ2C7gLRfJR3BnR7Jq58OKeVoVqpIkXyoIzI8bay/iaUPqZSxk9bzMf2rAVOkJ+LGfxnGVdCp8iYgQdxadQF2raAp0EcBW/Xl46SfZnt6JwlW0dOUigpdwe6c9jd8Qj+fdsNiBGsJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298314; c=relaxed/simple;
	bh=0Iv1DFyBhdoY+/Sz6mfuH/zko7qqu85Tsijz4fV/RPg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fwzxHQw1dt1r2D0Kkb0dm6IhegIP0l5oP5pJs8AsUHB4jYBU0f4PGey1+wRH2DWl4FNjJcPQML8xhdyG2PQgoYqWqXq9pq74hYZg5ETPEEtD7aWjVDCwfYSaiXHQgkFZdXf/wTLQZtq3bVsTMj9oVefEOq64vi7y4em7K6ocCz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mWDm4q7Z; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52bc035a7ccso1519682e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718298310; x=1718903110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gZ9HURv6FH09oBoBFNfJEOvMeQCHI23ql7MJjHP3eXs=;
        b=mWDm4q7Zs6J3X+EZgU0mLYsv8/05aMF7dbdYDwE1gQaRrzwmoommAXKS2xCuERZfei
         XfhzKiJepz36kWP5rnMoCOSRoVfb1KJgA1IlJ7I94zygIRHr5lWqcOlSAF2OPxVvuzZV
         XOyMQ+CAGtXhnRDbeCHaUh5oFtiaPGiynf8XiqdhVrt4Nwa0+tQnI5Qu4yynfeYwet8p
         zhJIuKmz9+Re6eMsUQSAGS2ZWt/fSjneKwyYmdOcihOCGV8E1dsHuQjgHg35yczCQZ0l
         Gl09gbtpsjd2vG1fMyjfcA85m3BtRxcLI0V5Uzcrqpt29ArwLP0oMij3DC3oTTqfEEjt
         9FIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718298310; x=1718903110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gZ9HURv6FH09oBoBFNfJEOvMeQCHI23ql7MJjHP3eXs=;
        b=R1xL6wYEOyQQ2kmOTiYjO9nowLARBciTK6tr4Fi0j/O3+pN+2jxs3OMLuutISHdIzH
         FyOK3aGLEb1Ysbz+PTQ2spju36kaC5rKVpw5uVBDRRiozk5GuP53o664gViK4BZCD9kp
         2W6K+GqPMhOYGNK2m1MFm0qSLPRXwk7JHHCGASspheCsHxQ8Vg1sMTePzB7reoMd6akY
         EY1hl/3swbYIkfqyBdpB2+pFDha2U3nlX6jM+Ld1UlSJIw8G/gwyvj1IcvHAKIwAYmzD
         qcoRKR0Hn8i4571fJE0PU9+zEjljy8UYL1G3E4jK9l0QZaVeJDipomIOGGNcOwVuN/X9
         RfRw==
X-Forwarded-Encrypted: i=1; AJvYcCUNUMaO+YHPAmT5aoWf/V5VYkAZu+efLeNph8hjHffVp2LIXOqSk3zd+7AMydqZrlL4pLyUG8XQbFMsh0LNVkxv+MBLSTJEaK6Flg==
X-Gm-Message-State: AOJu0YzF+i5Hkvl7pdXyzr941ad6fhVbd21CYoRv4b7zwFtSbHJHXaie
	K3aAvX1lDfIA+6UHFuP9InwedtCWvRp3nCrhktFKwHyTtl6/N440blmVXY2Cs1k=
X-Google-Smtp-Source: AGHT+IEn6Gn4ud9W6STspA6/L/OaJl+wN3z75c1efnwBhw6nqEM6i8VOzaj9WosELZ+SOH/HPkB3lg==
X-Received: by 2002:a19:f709:0:b0:52c:89b6:6b82 with SMTP id 2adb3069b0e04-52ca6e6546emr269609e87.27.1718298310349;
        Thu, 13 Jun 2024 10:05:10 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825733sm287312e87.60.2024.06.13.10.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 10:05:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 13 Jun 2024 20:05:08 +0300
Subject: [PATCH v2 5/8] drm/msm/dpu: rework vsync_source handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240613-dpu-handle-te-signal-v2-5-67a0116b5366@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2868;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0Iv1DFyBhdoY+/Sz6mfuH/zko7qqu85Tsijz4fV/RPg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaybB/fvZLcXlwp6Sd6UVZoGCW1bqWg7hqV1I+
 WAgW9ocJneJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmsmwQAKCRCLPIo+Aiko
 1a02B/9eIc6+2K7PRVJf1MS1yHmWo3kw4wsfl3I0ZDcGMcrG914sOgEKHz04At6PIzmFVB03jHf
 Z2rl/6FoKCLL5F0vldvdOOhcUGme47GVp3TN16Fi9fkJd38v7J+AYOCNyQvpd1BgmVQ/e2EqJ/V
 VXd98uLTLkCze+c43pmvYfiIWCzwRxHdcodjcRAKAOy4dbfeT9JqGGSl/Qa70Ovs+QK3m9c+I/W
 sCNMYZlHKsYKtUpHZ7lZZLqpw7ON9lei9AIzNLm1sgF5se8YAYk4J8s/8veM5PRx7vTu52+J4Kg
 DTcTeBCMWsDpDNv1Ea321rw7wjIrvARf/1VXOtJy0NJOVJl9
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The struct msm_display_info has is_te_using_watchdog_timer field which
is neither used anywhere nor is flexible enough to specify different
sources. Replace it with the field specifying the vsync source using
enum dpu_vsync_source.

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 5 +----
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h | 5 ++---
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c     | 2 ++
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index bd37a56b4d03..b147f8814a18 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -743,10 +743,7 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
 		vsync_cfg.pp_count = dpu_enc->num_phys_encs;
 		vsync_cfg.frame_rate = drm_mode_vrefresh(&dpu_enc->base.crtc->state->adjusted_mode);
 
-		if (disp_info->is_te_using_watchdog_timer)
-			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_WD_TIMER_0;
-		else
-			vsync_cfg.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
+		vsync_cfg.vsync_source = disp_info->vsync_source;
 
 		hw_mdptop->ops.setup_vsync_source(hw_mdptop, &vsync_cfg);
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
index 76be77e30954..cb59bd4436f4 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h
@@ -26,15 +26,14 @@
  * @h_tile_instance:    Controller instance used per tile. Number of elements is
  *                      based on num_of_h_tiles
  * @is_cmd_mode		Boolean to indicate if the CMD mode is requested
- * @is_te_using_watchdog_timer:  Boolean to indicate watchdog TE is
- *				 used instead of panel TE in cmd mode panels
+ * @vsync_source:	Source of the TE signal for DSI CMD devices
  */
 struct msm_display_info {
 	enum dpu_intf_type intf_type;
 	uint32_t num_of_h_tiles;
 	uint32_t h_tile_instance[MAX_H_TILES_PER_DISPLAY];
 	bool is_cmd_mode;
-	bool is_te_using_watchdog_timer;
+	enum dpu_vsync_source vsync_source;
 };
 
 /**
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index 1955848b1b78..e9991f3756d4 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -543,6 +543,8 @@ static int _dpu_kms_initialize_dsi(struct drm_device *dev,
 
 		info.is_cmd_mode = msm_dsi_is_cmd_mode(priv->dsi[i]);
 
+		info.vsync_source = DPU_VSYNC_SOURCE_GPIO_0;
+
 		encoder = dpu_encoder_init(dev, DRM_MODE_ENCODER_DSI, &info);
 		if (IS_ERR(encoder)) {
 			DPU_ERROR("encoder init failed for dsi display\n");

-- 
2.39.2


