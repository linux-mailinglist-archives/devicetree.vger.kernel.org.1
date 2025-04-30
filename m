Return-Path: <devicetree+bounces-172447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93143AA4CC5
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 15:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 267EE9E2D48
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E707326AA83;
	Wed, 30 Apr 2025 13:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XStl3a4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB826A098
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 13:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746018096; cv=none; b=a3AgbibkL+9HnsVx2PV1aYohzixnRvqQDyV3+7K/BHSDOmuLwj+5umbKefdOF29ntSw19A2OhI4ib1VohwCTsxi3y1qEv4mlMzM0gzUc4pRab6Sub82qi5u8cXNHzDZr4BIFXovkl5frFZHwwXZhGhTWgRRL+THINOKb5R9kNfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746018096; c=relaxed/simple;
	bh=FYQmnOteyEsh43W4459/HI5xmvv5foibNDY/l+BCr8Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CEiS52s1LhjyY0Diq8IaLE9mUAl4idju2nOjI73R2JopTtIYR9O/rd45jFiA4sqcK5MxhCpJvQo1ERrhXanQYfRGi8f++PtI7+sD2AHSNX9A0vBOqgUz+hJTyhgdXYEfU2RRhzLwSyuC5MmrXXiQFbdNYAwqBueRBzBRyKyloc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XStl3a4L; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c2688e2bbso483644f8f.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 06:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746018093; x=1746622893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2UTx8i3tlDwXsUWoT5VcMCQwgrRqwv+71jsU3q5eQlU=;
        b=XStl3a4LarEN60tmHZb1XjVfKxVpEpIUV+CtDU9NoqWYfe25e08X5PGx1TngCTCeSs
         Jo7D/F65XKdHu21Y2JdstAX62b7CfhNp9sPX+ZQwFbbaDYgb4L/Mn5qX1rRtxDl7SsZ9
         3Ecws3hMdo2atL2iF21LiiZgT08npTj92XiiDKFirL7Dz3iZkNJmhvzyGB2vLUj4Xv+c
         sPZ6dpgGHYBQQDDXRTk8j8IGKjMghv8nRnnuJzce0thfnPetjVNT9lTKf+Rqa2ybCF5O
         MdbRGvE6QTXyI1vcbSsb7ft2FM0M8y/SeGvKO+WJU9jiG7xzMZ4MHt/Zww6D1OKWL+yf
         orwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746018093; x=1746622893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UTx8i3tlDwXsUWoT5VcMCQwgrRqwv+71jsU3q5eQlU=;
        b=P2H2rbR//2xpOvg6Lh34PZ2DV1HQ/f+atwM+4RNqjKAfeAFAfs/3pzmA2S5eOMVGoh
         qpuhL8VkbqqB3s622A6HhKZ5aOTrzPhlMb46PZL6mpMBuipBAuGvtuZeWCR1UBFt8UJ1
         qZXckVdO10jYqV9QEiGvfQ4jvagULQpJEm+eldLX8eJ+TJVftC7y8520PEgV6X6wbfJ6
         OpmmDIceSdfUXkVVmlh1CsxLR5nDIs7sFZ9lrUc7Shg/ayqbnwVLGFZlTST5wNT0chn+
         4lwXapxQuJYn+2rIvCpf7QPdFtP1S/Mz2Q1zzP8fXSWfEwklrpo6wT9bwhfSAvKuj8pf
         6t1g==
X-Forwarded-Encrypted: i=1; AJvYcCVJbaKgscmWikvRAmuvrJHiPtT8gG+ATFCsSn+/7VYt+Q9wD6GnZhx9UnxTuV3Rd+CL40mG35kGE9uf@vger.kernel.org
X-Gm-Message-State: AOJu0YyDIU1lTwwwUssq3Crj45qZWkSgqaCSYZuTmqpaKgF5V5O9lf5U
	CBsnhIHalOG3e7/lBbyUxSmIqCwWAKCj1Bj38iDdrQKM2e62bhX7tBLc91dwb/c=
X-Gm-Gg: ASbGncuFoHbLX+yfqWGAADlqD43r8PO8wJcesrXdronAbTWKe09aPozuwQCppXnmaNb
	3VeM0XB2fbgkmJ7CQKFy5SKkv+9b05CNX/DaSw7BN4cGZJIupys0/j4QYkC8oz3AIK4NY1DoVuJ
	awaewI9+cC3m2zlsfbhOr7F3JvpYMLSBEpkGDF2TTiSonkptfH2LPHrX54hu3WRK7wa9NAJNSIW
	aQQVXeMdeS7bRlMb86PilAiNA1jEAc9VVO8lLKK9kdqySxcwUd2Wa+2GzjZ01Ff08m19b8p8Rcp
	Qkbvog8OdrDyc/f2JyRQTnL8OGglCd0CdECpk71qC/MbbCFe6BS32lQ0rFk=
X-Google-Smtp-Source: AGHT+IHTVW6h6Ul1dB4RYQ82JlgeupEVs6D5ssmYrEuuWYidHldAYwbLTL4y7ZCltOiWRm2Xax3Xrg==
X-Received: by 2002:a05:6000:40dd:b0:3a0:8b90:1acd with SMTP id ffacd0b85a97d-3a08ff347b3mr843158f8f.0.1746018093445;
        Wed, 30 Apr 2025 06:01:33 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e46c23sm16884043f8f.75.2025.04.30.06.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 06:01:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 30 Apr 2025 15:00:42 +0200
Subject: [PATCH v5 12/24] drm/msm/dpu: Add LM_7, DSC_[67], PP_[67] and
 MERGE_3D_5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-b4-sm8750-display-v5-12-8cab30c3e4df@linaro.org>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
In-Reply-To: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1188;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=FYQmnOteyEsh43W4459/HI5xmvv5foibNDY/l+BCr8Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoEh8Az8NfK/s+6V+lgG7g1iFiCCXAt5FaCBQoh
 7X6AIKruHWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBIfAAAKCRDBN2bmhouD
 12VoD/9ZRMJIrOOLeG7gKh0PkygcJiEgZVQdMe3GNEdLpNLy4r0RSli85RwY+ymOetvLU4LuKJT
 JUcZhQlWry41vKc4N0+1hZkQRp9/O+9vjWt1bRCEEmQClYnT3GShpuMETn02wx3Sh+O4BkrBiA6
 /Xnab/7A9wSeoQDOiUmrtxe3QOKg9+4x6KHFL1b29/cRzZeE8pZcIVP3wi4qNL6U6yqaO0XWGXE
 HYAx1lv9i2vV/oWqPCIa4NJXyf2U/MiLlTit2eFQ3sDRKinHFr/cZBVYPZI5UjxyKlB0YGbdhSm
 e30SkGc11ODeNZvTxpDyOmpSWxzAC+ra6+xRGaTDVXIYp2/Fra+Ji0pBbOvKCXQQPVHlfyHfSgS
 rnMO8QVEO1pb+AacsEkMwoqxQs6TFC3KbRZXC/re+LCdOyts78Q2ReMQLQfSbky1ZX252ZPqS1G
 n9TGueq4YMez+KVlyQIQ+mJgxcOWP0H4daCnIIaSN3DDOom4E0w3QxeNDz8/Gnsufc3JhpzKAeN
 qEYK3a3e/OsB8Licbk0pHc6/ykZvtGeJAr4l60YJbn/Ia1JUMwdazYf4FR6AD+xM0DeVUBh2hdI
 djz2s4hLGCz1jBokqwfI8eQgPJjKdCOMstCPzQ6kNSdJAO8L6yKeKMvkZUevp/bXCcJ46HOBLx9
 ef8Dq4UKRzhyILA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add IDs for new blocks present in MDSS/MDP v12 for LM, DSC, PINGPONG and
MERGE_3D blocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
index 8d820cd1b5545d247515763039b341184e814e32..175639c8bfbb9bbd02ed35f1780bcbd869f08c36 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h
@@ -125,6 +125,7 @@ enum dpu_lm {
 	LM_4,
 	LM_5,
 	LM_6,
+	LM_7,
 	LM_MAX
 };
 
@@ -169,6 +170,8 @@ enum dpu_dsc {
 	DSC_3,
 	DSC_4,
 	DSC_5,
+	DSC_6,
+	DSC_7,
 	DSC_MAX
 };
 
@@ -185,6 +188,8 @@ enum dpu_pingpong {
 	PINGPONG_3,
 	PINGPONG_4,
 	PINGPONG_5,
+	PINGPONG_6,
+	PINGPONG_7,
 	PINGPONG_CWB_0,
 	PINGPONG_CWB_1,
 	PINGPONG_CWB_2,
@@ -199,6 +204,7 @@ enum dpu_merge_3d {
 	MERGE_3D_2,
 	MERGE_3D_3,
 	MERGE_3D_4,
+	MERGE_3D_5,
 	MERGE_3D_MAX
 };
 

-- 
2.45.2


