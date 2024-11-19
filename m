Return-Path: <devicetree+bounces-122943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8E09D2D49
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 18:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BD18283602
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 17:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13141D4146;
	Tue, 19 Nov 2024 17:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RMMS4FUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B71D2F48
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 17:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732039012; cv=none; b=EXfO8m4aSU7iR8BjamSkhJqw9wYfS2HlvgKVT12raCNJrMLdZOO4ASGJa82RQY0PAfTVQd9Kf8ib5RyH2d8OiPNFOUeoz7bk4u0iHzogkj/HjpcDjx1rN9+euLFCMqUeeGLHJ8Q7hvV1lBh3XgO8Flgg2LOiq9umOGMyIw8WoPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732039012; c=relaxed/simple;
	bh=0AqIInR9yFwbnFyGS/kSzI6BxCp2Vy864c584EPZMck=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OoErfswx0M2TfPKP0z7E95+FNfvctr1GPXLNby5X+J7dEYfZa21Obk01HFCqMK/7Gzw0NdaK++dWhtMoKXrUt5mulWLklBIwu7v0xWQrmvV5UYBBGqV4r8rKkeCs4RYs2/0ZNPx/1sPCCiIDy0f4fJlVrgNR30BTidxdJifvzRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RMMS4FUV; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-432d86a3085so32765495e9.2
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732039008; x=1732643808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yk2K0oVo05Ww0JMnwaO0UbmeEF/lazoIdfJTPpk/Vtc=;
        b=RMMS4FUV7BY5mEVd5Qru75CRBf4p7cS8sNfnxn4hFs+vzLRYyy4cHg1AAVr3TV8fY4
         H219yEl6uKQ3IGk/c/NDezjCVuqbtW812Y09wLimu7ZmXFiI/0X4rFZ3ZV4eEzVeL5+h
         NZ/Sw+kcLNexZD41aXuL4Dr+1vYHrPNTVHQF+L/Sk5vrLtYYwJt0L+pjeTp0enWPdZsw
         gYpP257yKQLb+zqPY9BCWz1Dch7aSG3lgb/xqC6txhvbUJiw5Ccb/12dEVOuO5hIEr3+
         3+Ak8iA1RqdZJM86NSAYmG89ExQeOQ3bQIKAUwoTRcmE6DBxF2sFNphgwcPsNZxYxiK9
         rzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732039008; x=1732643808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yk2K0oVo05Ww0JMnwaO0UbmeEF/lazoIdfJTPpk/Vtc=;
        b=CudSg6dNDF9JA9fp/s4ZcsXscvZfoQxWKFbXVfu4beMoWhdSoQLE+IMiIHRn5vuqn3
         HISxflGXEjgEyD6iEaqquqYQ+z/CaIpSKS3ZPkF/Dyl7N4JrMBQRhTW/SgWKSynRZTOK
         oP/+K5xhSEbs8BVmdk50HDFJZ8+UZUOQI/Ooxj2LGHGi8vcfNXTxM+wmJlFKE86oiNid
         lmWuAd+otJWP+cl05xgK0Oj5vIUCuCj+y27YuDbv3GVEcGAXxgAbVBqwSeE2/QGxO7JC
         4eVHgmIwkATrovM4GQOoJRC6TZIQ6LLvVdAwTobtWYL75uzPQfCa5UPbA3j2/oE0qpue
         px9w==
X-Forwarded-Encrypted: i=1; AJvYcCU9osqJ8skFMG7uRrqjoRwA0uPAASbYkQN6+ZUmR4bvq+7clHwHTkKcXI2MRlqYP99k/0DvX/oi7h94@vger.kernel.org
X-Gm-Message-State: AOJu0YwH3TLq06eJ0nLxpUe4k7T8aNY5Sj7hDdkg1Tcx4m/qc/mY/kVu
	ZVGkX7H8pTrRlbutpIubr7g4arQysFHTDk338YEM5/mPAC7NmzoV5ryodde4xDM=
X-Google-Smtp-Source: AGHT+IFLcWEe5qWu8x5m4vCYzxI66ajS72i7s4jmj/yVS5iRH7uW+yHCASns+xns7sNbDzPAlyC6JA==
X-Received: by 2002:a05:600c:3143:b0:431:9397:9ace with SMTP id 5b1f17b1804b1-432df7411b0mr172022115e9.10.1732039008448;
        Tue, 19 Nov 2024 09:56:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da27fe68sm208302275e9.24.2024.11.19.09.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:56:48 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Nov 2024 18:56:38 +0100
Subject: [PATCH v2 03/11] drm/msm: adreno: move features bits in a separate
 variable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241119-topic-sm8x50-gpu-bw-vote-v2-3-4deb87be2498@linaro.org>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9368;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0AqIInR9yFwbnFyGS/kSzI6BxCp2Vy864c584EPZMck=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnPNFY6rTJHRArouHKgcaJro3QHLRsFmspb8PEE2bK
 nanydiiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZzzRWAAKCRB33NvayMhJ0fnmD/
 9bX91os7ateFdrwylRii+JOc3pxDsfVPT2napM/PE+NK2gT1KLBFqhCba/Q9w+6flWwIW9DdClnpZl
 UlwRE95nBjdW0VzPs6b4rL0QMO/PfO9d7um84+sR3NPA9Y1CYSh0iyisTMx943EKiZ7HrBcHqUFRnI
 sSpp5AJ7HGJE1PHDcCrqMGdvZuE89wX/hnrSfrfkW8WPzOlw4duSBc4rN8yIhieOS9AUXmTxxl0pkC
 xfL6/K50xTuP4RdLSg6/c7/AtWWV8J8JPH4LO3MUpMVpRMKlhEic1aJmn03Dpu3sQq1wbMaVkiJWUh
 JvR4vyaZ8xRDP2WZY+ZNefBdZ0xN4WX14lDYFaK5kmknqLdgEbmHkZnQnmL2QKwnK1P+kJkXQ7Xecd
 okzYpa4VQhmmF1wlpR4Hqt2mICOi7QGYwy23/MmTaT9G6Pyg4Aa3F8pIs5MFQUOOwsNoLJM/uD5M1a
 1Pj3aKfNDB9OuL7sXlTApkBYIfZwWaOe8YdjsYG/5XS7btDZsnvGs2yboQi0jQ2ohyO8mwUWMGk83M
 QU/0BGYjbrbCC5zmiBhAfHGw/RjM5MXaKdubV38zdqAgshmF4NyyqUPyIxWwFMhRLNip0Om6weZA1K
 GeumTb54WHO3Akqjc0sSKfaXfwmXmciyu5/fuJkNG3MNJpBfrEn8nKKKYfwA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now the features defines have the right name, introduce a features
bitfield and move the features defines in it, fixing all code checking
for them.

No functional changes intended.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c  | 34 +++++++++++++++---------------
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      |  4 ++--
 drivers/gpu/drm/msm/adreno/adreno_device.c |  2 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    |  7 +++---
 4 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 825c820def315968d508973c8ae40c7c7b646569..93f0d4bf50ba773ecde93e6c29a2fcec24ebb7b3 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -743,7 +743,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.zapfw = "a615_zap.mbn",
 		.a6xx = &(const struct a6xx_info) {
@@ -769,7 +769,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.a6xx = &(const struct a6xx_info) {
 			.protect = &a630_protect,
@@ -839,7 +839,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.zapfw = "a615_zap.mdt",
 		.a6xx = &(const struct a6xx_info) {
@@ -864,7 +864,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			  ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a620_zap.mbn",
@@ -892,7 +892,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_1M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.zapfw = "a630_zap.mdt",
 		.a6xx = &(const struct a6xx_info) {
@@ -911,7 +911,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_1M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.zapfw = "a640_zap.mdt",
 		.a6xx = &(const struct a6xx_info) {
@@ -934,7 +934,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_1M + SZ_128K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a650_zap.mdt",
@@ -961,7 +961,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_1M + SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a660_zap.mdt",
@@ -981,7 +981,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_1M + SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.a6xx = &(const struct a6xx_info) {
@@ -1000,7 +1000,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_512K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a660_zap.mbn",
@@ -1028,7 +1028,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_2M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT,
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT,
 		.init = a6xx_gpu_init,
 		.zapfw = "a640_zap.mdt",
 		.a6xx = &(const struct a6xx_info) {
@@ -1046,7 +1046,7 @@ static const struct adreno_info a6xx_gpus[] = {
 		},
 		.gmem = SZ_4M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a690_zap.mdt",
@@ -1331,7 +1331,7 @@ static const struct adreno_info a7xx_gpus[] = {
 		},
 		.gmem = SZ_128K,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_HW_APRIV,
+		.features = ADRENO_FEAT_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
 		.zapfw = "a702_zap.mbn",
 		.a6xx = &(const struct a6xx_info) {
@@ -1355,7 +1355,7 @@ static const struct adreno_info a7xx_gpus[] = {
 		},
 		.gmem = SZ_2M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			  ADRENO_FEAT_HAS_HW_APRIV |
 			  ADRENO_FEAT_PREEMPTION,
 		.init = a6xx_gpu_init,
@@ -1377,7 +1377,7 @@ static const struct adreno_info a7xx_gpus[] = {
 		},
 		.gmem = 3 * SZ_1M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			  ADRENO_FEAT_HAS_HW_APRIV |
 			  ADRENO_FEAT_PREEMPTION,
 		.init = a6xx_gpu_init,
@@ -1400,7 +1400,7 @@ static const struct adreno_info a7xx_gpus[] = {
 		},
 		.gmem = 3 * SZ_1M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			  ADRENO_FEAT_HAS_HW_APRIV |
 			  ADRENO_FEAT_PREEMPTION,
 		.init = a6xx_gpu_init,
@@ -1422,7 +1422,7 @@ static const struct adreno_info a7xx_gpus[] = {
 		},
 		.gmem = 3 * SZ_1M,
 		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
-		.quirks = ADRENO_FEAT_HAS_CACHED_COHERENT |
+		.features = ADRENO_FEAT_HAS_CACHED_COHERENT |
 			  ADRENO_FEAT_HAS_HW_APRIV |
 			  ADRENO_FEAT_PREEMPTION,
 		.init = a6xx_gpu_init,
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 2ebd3fac212576a1507e0b6afe2560cd0408dd89..654d0cff421f15901cd4bf33b41e70004634ec75 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2478,7 +2478,7 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	adreno_gpu->gmu_is_wrapper = of_device_is_compatible(node, "qcom,adreno-gmu-wrapper");
 
 	adreno_gpu->base.hw_apriv =
-		!!(config->info->quirks & ADRENO_FEAT_HAS_HW_APRIV);
+		!!(config->info->features & ADRENO_FEAT_HAS_HW_APRIV);
 
 	/* gpu->info only gets assigned in adreno_gpu_init() */
 	is_a7xx = config->info->family == ADRENO_7XX_GEN1 ||
@@ -2495,7 +2495,7 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	}
 
 	if ((enable_preemption == 1) || (enable_preemption == -1 &&
-	    (config->info->quirks & ADRENO_FEAT_PREEMPTION)))
+	    (config->info->features & ADRENO_FEAT_PREEMPTION)))
 		ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs_a7xx, 4);
 	else if (is_a7xx)
 		ret = adreno_gpu_init(dev, pdev, adreno_gpu, &funcs_a7xx, 1);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 09d4569f77528c2a20cabc814668c4c930dd07f1..11a228472fa0cef3b6e4e21a366470fbbc3ea8df 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -207,7 +207,7 @@ static int adreno_bind(struct device *dev, struct device *master, void *data)
 
 	priv->is_a2xx = info->family < ADRENO_3XX;
 	priv->has_cached_coherent =
-		!!(info->quirks & ADRENO_FEAT_HAS_CACHED_COHERENT);
+		!!(info->features & ADRENO_FEAT_HAS_CACHED_COHERENT);
 
 	gpu = info->init(drm);
 	if (IS_ERR(gpu)) {
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 8782c25e8a393ec7d9dc23ad450908d039bd08c5..4702d4cfca3b58fb3cbb25cb6805f1c19be2ebcb 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -55,9 +55,9 @@ enum adreno_family {
 #define ADRENO_QUIRK_FAULT_DETECT_MASK		BIT(1)
 #define ADRENO_QUIRK_LMLOADKILL_DISABLE		BIT(2)
 
-#define ADRENO_FEAT_HAS_HW_APRIV		BIT(3)
-#define ADRENO_FEAT_HAS_CACHED_COHERENT		BIT(4)
-#define ADRENO_FEAT_PREEMPTION			BIT(5)
+#define ADRENO_FEAT_HAS_HW_APRIV		BIT(0)
+#define ADRENO_FEAT_HAS_CACHED_COHERENT		BIT(1)
+#define ADRENO_FEAT_PREEMPTION			BIT(2)
 
 /* Helper for formating the chip_id in the way that userspace tools like
  * crashdec expect.
@@ -98,6 +98,7 @@ struct adreno_info {
 	uint32_t revn;
 	const char *fw[ADRENO_FW_MAX];
 	uint32_t gmem;
+	u64 features;
 	u64 quirks;
 	struct msm_gpu *(*init)(struct drm_device *dev);
 	const char *zapfw;

-- 
2.34.1


