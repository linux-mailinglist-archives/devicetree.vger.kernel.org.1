Return-Path: <devicetree+bounces-215918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C6CB53231
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EA131892734
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41780322DBD;
	Thu, 11 Sep 2025 12:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m0aQaF3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F601322A3A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593766; cv=none; b=Zw8oH+UoA4W2CBHJ1idumTu6+R4MtaQeUxYHU6U+63xH+GKXEAhEN9FlPSkUJVZMFtB7AUzQgWrOFZ9Gwtiz3xnhT4WX9Lqt1RVuUgZGkwAloPyX+3nF38BsMRHdKvIZ0/nD2UTG6rlZQIJWIBdpec8Os3E20RIlnQUKKWJO+f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593766; c=relaxed/simple;
	bh=VIaFKqE75CM+elK2XI4KYXHHvaxVuznQBropijUaKvI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XB+CIdvFyuSFs6bWkm1KyzZcx8V0vYKy6dDvH2Adl1jJc3LQVj4w5Ga0ou5Iu4POe87dTlGYb9/Cm7eQzBjRmfvlXTl9ElE3jRkoCJySTq3bqX1ISsT/SrbBvwBFXQO6RYAAe11nrXiSPS3v3b2/KXd5ziEhg6IVmLpGMzUbLL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m0aQaF3B; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso585578f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757593763; x=1758198563; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FYKFAdjOYASo/WjabAdPI3Sw4noi+10vn2fGFK6NGHo=;
        b=m0aQaF3BLAjPuFljvYviGv3JW/AMIEly9WA5rh+j98zrA4zQqrvoYg1hkaTOmQMzh4
         9FU4B6W8WjmIQgyrZyzeFfgJBGt0Z+vz7Sn0MhB3Yr1yyk+vkBrkg0ORuqKQqjkzrpBh
         bUVou+7L+xCGSfMuPORmYOMaIGv4T7g91Q3tVMuUvZyQg8onLbcki/LygQxQ1Z/FdLAV
         6vtZ0wGiyl3ubxOYCBpCZJKWE/ZFIdn74eXSssssw4YjJpKMz+4A4LbpCWf78eQ7dLf0
         xgaf/nxny8DhcwdcwnGG/gXMM0n3K5IevI+l+QRhQTNQujaDqBguoM6nmX6Tz/mCFQxY
         Ayyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757593763; x=1758198563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FYKFAdjOYASo/WjabAdPI3Sw4noi+10vn2fGFK6NGHo=;
        b=RLWW6LD4ky3tUw+XSSL8/m/6pWmta+0l8HSiZNZEJdeXIJDSUAtmGw5iaP414OMrB3
         8dOA/o4ZRON0lK9Zg+TbDQFlKvSwYlM9YvfH2uepWuamAEp+qmTwfriJRyc/vL4IiZ6S
         ysoZHHzwlbo12npTIx/6t7Y7m9JJNMDKMbv+/uhnWsOCFdXtl6ZRcIcpzcPuLRjwJaMA
         xXJ7538fTmRirYEVdZm2vrQnSYXG62Zo7fWBtdnGY328c/ees6a32xbGbTGrmdrOMLHz
         6zVUAjoRThTZWszJaodwDYpOSADuag1XaFIPP7znOeP+Pv7dzpJ2QpNC9Zwcurat/RT8
         0Axg==
X-Forwarded-Encrypted: i=1; AJvYcCX749kAxL6qW1HVSzo1rCr6FUk1CadBssgbgvQreAGZN8Y0BU+3fgYjXHRyBMMqjk7B5yXHgBiFF7C3@vger.kernel.org
X-Gm-Message-State: AOJu0YyLoSZGcXsUo7ifJ4v+EVDmBySHF4Y1DZFbCGhxX3SlfzBoDBgd
	btE8eb8UwJslAe+a0dTeRwkmegQiaqUETyAlXPkxh/4qYscXBOg5MfNoLU9+e/+K4j8=
X-Gm-Gg: ASbGncvkljNqU1wZNBUS6YhkQbrfSZBTy9Of74QxO+h5Es1fdhz4/SSqLLA1TXRfpIo
	7anMXTVIZfGlBN8ISLhOazT7h6FlsHfroMmyiuAov7tleiwwMtZdmYT6L5ddzWNObuRqTifBvtr
	J4c38Ptn1ohnACYk+3ad7GgcjbkgWVUTMxnH5kxQyovkAD9n+N2AniAMHyDVGo/5wCXVyXkpAkL
	W2BnraVqWbIQT+Xl/GYwR/rOFiLhhxWgJVkpk4nqOLcjePyx48GRs1Qh8sPB/t2TewICw3HJN6M
	tGZKzjYoRDxMIZHQefEMHqrSW9s2pV0eQvrZynVTKhFh/txL6Xhv26f47eYtZ6105c/TGURr17w
	E+Fz+kYhLqJZcxskhSOdly69PCygxA3wP5Q==
X-Google-Smtp-Source: AGHT+IE4wZnmN0HF5vilM8y4TE0lu9yYsqD43OkvBy4fyb1qhM9Qox4fLexabkHws0JYYvrRpH+fmg==
X-Received: by 2002:a05:6000:3103:b0:3dc:2912:15c0 with SMTP id ffacd0b85a97d-3e636d8f8e9mr16633511f8f.1.1757593762609;
        Thu, 11 Sep 2025 05:29:22 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm2230444f8f.36.2025.09.11.05.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:29:21 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 15:28:51 +0300
Subject: [PATCH 4/6] drm/msm/mdss: Add Glymur device configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-glymur-display-v1-4-d391a343292e@linaro.org>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
In-Reply-To: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=894; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=VIaFKqE75CM+elK2XI4KYXHHvaxVuznQBropijUaKvI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowsCUdGmh3ForSq9QMyjokksSbUSHlc5VCaSEp
 Z/TmI90GCWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLAlAAKCRAbX0TJAJUV
 VqhRD/98jWD57j5rtDVLUAmyM7r+QH6yH7G4HtwgYCTfk4b9yqkUtRFB99WCwwyLcSIPW+5vWT3
 G/7lYSdK+6ZkOnVdQYfuzZqmVIgMU0nr8gB3LTHyUAsI3ssZP+0mLTJQxH/5OtiDbOoldMPDDri
 WmGQGY8ChrT+z9LFFdHnG3WytJE1RqkKTChVym0dUCmulLNjeiEOZZa5hXZs0vDeXVq0e/+ZxpN
 18XQXNojihi+l6o6Vom8r5GERiFnptA4aMMs1ksRJmewxwr5zDh3lrzdPsKTI4S5sKNoKCOFa44
 SBrHee4vRiqfhVXgmTNTQDOQl8UapqVlEjozHl8rA6nNspaFJeHT9cM6ZpQstSnQUnBMVW5LVUU
 VHFEM2KTUnG/gvgxjBfQbrTtgyu8VGrB9IVGfZxysai6mdioklApSIRaS1MMYKYMFHNUBDDu/Nv
 ZtgzjHw6HOAbuZtsEhqdJfvAzF1NLJaWLQrXAfTJt1W9QyjGBz/7+CYp9WgbkrRKANOQwL/rvAG
 vEzYT/JwTeusAn/XRifhUPHf2oxMCvGzfqITVgG1au/FJiUqutUn8XKtwNEdb3ATi3i0n+ehPta
 91zyKEzsYhb+dsLm8+d5w4Q8ZLhA6RZ1tnuiFrLH8X1+6xggAaWK9fIGS76n7A2bsKxZTB/tS2Q
 F+cXo1n16s7mPxg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add Mobile Display Subsystem (MDSS) support for the Glymur platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c044db8ac0c478446d211a982cf0350..60bd6af83a8846f2ad751ea625a20e419c80638b 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -553,6 +553,7 @@ static const struct msm_mdss_data data_153k6 = {
 
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
+	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },

-- 
2.45.2


