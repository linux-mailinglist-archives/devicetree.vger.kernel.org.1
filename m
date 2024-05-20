Return-Path: <devicetree+bounces-67824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98C8C9CFC
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 14:13:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30749282624
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 12:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6985645B;
	Mon, 20 May 2024 12:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lmAfbrYG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE09653E25
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716207175; cv=none; b=IUBV/wooTEtPSZG7UC2WrsFX9w1tuZuEndP29pjIvlVunpM/GJVpBL9OsxCqp16T9mnjST1igsnuiXXMRpjb/INyk08rhbAa8PDhuXtmDmFAPJxDr+MUpcqdhbKomBZ2x7lphxGVunGit2FVfqdOD4tREMmy2TVMZUTVSTmhH1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716207175; c=relaxed/simple;
	bh=7toqt7l/FlYTMysY7uvgS2eGA3+iqhKd5LCxscTShxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XOsazGd9H0XW6/fRa01GZ/hdHNsV0nnLjiFBJK4eodSbVQDPHd+yTEpjsri9X6FYIKFrQUxUQc7SFUl4IxlCnwKBEInGJkTtDfc07u6rQXt0Bq7/m2l2OkdsMXWKSKTsJ4LcNnF8N/IHF71hlPEltiqfSzjVv7f2pr7nEtIF8cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lmAfbrYG; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51f174e316eso3178424e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 05:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716207172; x=1716811972; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ULxxOqfo9Pk/FYLX1o7pjkmz9b8tvWaEdfCGOVJ/5lk=;
        b=lmAfbrYG1PGEt4YgNS8puJ2NQzU5wN/0YCMc+B2FAU2Wux440AJc2X94OYjDBtBEUZ
         iQk1qwmYPPGmP43SdrdzqCjYSCvNn5MlXBHrA1W5sA09CIbS3vmWzfZhb7fTGC3b2vgP
         zebAUAXj7AF3wCQw8k+6ST0dVHfRhG+g0cfuVc/gnzRvjHUMPqeo+Rg5VtkWm+MTckKb
         +JNSWBfVwbfLKQn/0rct+5vpnc4r87R7cOhC2R2pUV7TQqrNfwi/f0j04SF32/P7XgQj
         9uCwW4ElpC1MXguxX29Ugiu63sregWR3glJ/ShELrtxF7oKT5mlwjPT8eqUITXd9kH8E
         DGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716207172; x=1716811972;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULxxOqfo9Pk/FYLX1o7pjkmz9b8tvWaEdfCGOVJ/5lk=;
        b=WnS1imWQSIM1SRRDdb7MbxlrbpAir34TQI1V79fxiVL13QJkej3zLH5kCNUeS78C+0
         KVbYcy3O6PaP6M0pRTqh8AT2DZ9DOuguhYN09cG5O/58hkckGxNWGLapI0MAKuJo7MaO
         PLGq7sq3fE3Nv0zlP0erS1rMblnjhaDZVRyR+wCusdXH7wArqL7iuQOT3ClZrXAtyXWm
         ABlf2jR3Nv/B41gT7OpxTVjnhJTVDF5JAAegRJl4CpJqOKHcB0R8tIsU0SHQUVu0tpoQ
         yivG9bVh9QEtVeqlp25D6Fz2cLe1bqal2HjdELc0Op15H6F2e/MQMQfoSiUN/ZKzXDu2
         81Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXCAFMxgp3X3Z9IwmfN+Z1OuSFnH9ARKOglFJgTvwr70jfsd8LTvuM3C3f+EZwfJQNOO0yG0kfNbTYwUysBumdu3zPAecdDTpNpRw==
X-Gm-Message-State: AOJu0Yycx0Sd6nc4jxh7/mG36VCWKRNVLUx7EuC8cAT7b4egL32yYkv4
	Ix4DcPY46prrHNoHmr2+4npbV5VEMiAFW5Td3Qdr5+t4Th9CncTXLcE6484wxYI=
X-Google-Smtp-Source: AGHT+IEDFC64P7lE2vW5UORuevJHqYD3lJ0Q6Zft1XJ6vcIYM0CJ08aXQGuk8wnlRo9yyagOOlQICw==
X-Received: by 2002:a05:6512:131d:b0:523:6354:881e with SMTP id 2adb3069b0e04-523635488aemr15069284e87.39.1716207172166;
        Mon, 20 May 2024 05:12:52 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad6c0sm4273682e87.30.2024.05.20.05.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 05:12:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 20 May 2024 15:12:49 +0300
Subject: [PATCH 7/7] drm/msm/dpu: support setting the TE source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240520-dpu-handle-te-signal-v1-7-f273b42a089c@linaro.org>
References: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org>
In-Reply-To: <20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org>
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
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2472;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7toqt7l/FlYTMysY7uvgS2eGA3+iqhKd5LCxscTShxo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmSz49WIb9pbWI8TEiPIPXPOC3FSWNeWUL14WsI
 Cl+eS3sn9OJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZks+PQAKCRCLPIo+Aiko
 1RnvB/9kbIvgXcAMipTZjqDLOnWLatyxEZ8kKnjX/HWgL2JAGdYCEGDObvhFcTO41hlHIOKoe9N
 9xxZ1mkjyG9+P4JGTWNY1JGLzwZLtB/N7TNfWj6I8Waqk+fJPORv1NZCAQ1hbBhSrW8q7s+0PWZ
 6WSW0+aGHoeCqTuDPPbRr+01mtXipqi38tfbtpwDc2nIArQJc1A4vaV+NM40dJkEQXdd7cA6Fo1
 aMsqoc3Cp/Ty8gAZ87mVwenhKHZmWo1lmzBKKqdrXQf5QcyC8VHJ2Dr3dy5d/VnsUuhVL7SgCzz
 L6eKGZWd/c8XhHZRsQj7dilyZX8mx8vkB4t1LEt69lbdDoV0
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Make the DPU driver use the TE source specified in the DT. If none is
specified, the driver defaults to the first GPIO (mdp_vsync0).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 44 ++++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index e9991f3756d4..932d0bb41d7e 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -505,6 +505,44 @@ static void dpu_kms_wait_flush(struct msm_kms *kms, unsigned crtc_mask)
 		dpu_kms_wait_for_commit_done(kms, crtc);
 }
 
+static const char *dpu_vsync_sources[] = {
+	[DPU_VSYNC_SOURCE_GPIO_0] = "mdp_gpio0",
+	[DPU_VSYNC_SOURCE_GPIO_1] = "mdp_gpio1",
+	[DPU_VSYNC_SOURCE_GPIO_2] = "mdp_gpio2",
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


