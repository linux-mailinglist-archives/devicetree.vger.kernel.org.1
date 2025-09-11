Return-Path: <devicetree+bounces-215914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25626B5321A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56627A82F79
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE20321431;
	Thu, 11 Sep 2025 12:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z9C0vXjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF1D321424
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593757; cv=none; b=u1ilIpm/b44RPJQNfp0mH4/oMzG759dnaj8m91pwPyREN9RTx5LjmpJheqZoDj+/spC4Q6ADRQQ1IDhRjuvZpncCoOP0IFI5J4v+giVmAh08z89ZzfniFSYOJgXfATf3HI/dDDmyngLFHfNXRlGqa2hL+OhyZPKyU1gqPsCAjUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593757; c=relaxed/simple;
	bh=UQ5TvznCATcmW7TKNpwWYXlNr4pPB+TVdlMyODvkOAE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eQYfwgPqj2RZ+2EKaaO6Fy7q/qdORMJdlnuUMeBSt7owY1ad2F0UwZVTlz55RhI5N4LRr25qsDYaKaPL5YDKaKNoK/81Md8mlH6cq3I2AZvMgq9SApygpZDm11rK1v5+7jalBM7DC0c06k/UZo69xSyMMLIINeA6wl/H+F5Ff2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z9C0vXjP; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3e75fb6b2e2so783850f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757593754; x=1758198554; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M7jUWByvFECPwazBbFEH1CWu4/FyyuDx2jex9LWCqcg=;
        b=Z9C0vXjPsI/XNh2g0OSS/Jh+HRKlXw2rNt5MwUVtxZ2tKS9Jd96ocO6uit6TD4Tse1
         mKb+4SDEyl07977AI+ScoD7guX5ZpUfw80UI5OyJIeKi3n3zQqDtZyfJLmLfwlzs4r8B
         cc6bxblvimENE67zEcBQnLnfFM8pu3D/KTX7stoLylbKS6Y+3Udyy0cApTTavAJYkX2V
         L2QA/g7DrUN/zAJ2iA/BYL4wxlm6Esrux7BvKu6RB18Fw01vCiEPMSVkkiMVLNDUsahC
         6sjdhQlSIf9v8EP2k94fdPx6vHhaYzubbjByU0n0WMpzJ0Epqmg1cYPTlEODbWxKxLbS
         UFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757593754; x=1758198554;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M7jUWByvFECPwazBbFEH1CWu4/FyyuDx2jex9LWCqcg=;
        b=LhFg+WfcwDPpwR+k3BPJcDpedGhSm+7kvrMJFrJYnBBxLbEMBZD4dgYdLyjCiTge/e
         x99bYvRHzTVt1TXnj2+NYHfXx52S+mXrCzrgEnDwzPmIzO443mbSKWYBht+Xs1dMXCBo
         +RAfSAX0BBh61fr7cYf9vVcPC3pkVNGRklVI+ztUyFxAFt27SnZmbLVRe8patNR5zX0c
         5sgYOa5JpXLEZUH4oZC2OSM7yp0kJDSQzvE+J/dCsy9OscP+oSHm1o5HzJn+61hFSovs
         no4BJW6jAlaJjF4FgwboqQEHPkbDmiKch4d34HI0JgHjZkCtY4PK/Lt8L/0AeLQYn6I6
         OZtQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0aWY6wI9o5/nMCNM8ZselV/d5OLE17aj40mpOxtoVzk/woTk+jgS32/ZTaMaMqlhnnvhj+kpxDHZg@vger.kernel.org
X-Gm-Message-State: AOJu0YwZXDBaov+94f63M66MwpLp4uMOjnzUgG875DEhmyiLcLNN2AiF
	WmO6sCiAtFMA7xXDCEfIwy4PLIPQ0HIKp36ZyZ9WVLMqYmczz4Kgi3fd+VCqmL18c5M=
X-Gm-Gg: ASbGncv25CWbk7G8RWVCeua7Ob6mS2+QUOIa+pGPP8AThOlU69A3haMQuWt7nqILx4i
	UDT9j0X1+/wy+msQNRi68GWGQe9rEak5Vsi2rEVeTnMD5FhXfohOhd7SgQH+7gDfK5GfFfbxwK6
	CZcRsBAJuD/GvKAdoTw8Ang5XZchD80FV5J9QhFLXJ0pHZ5N9+OkqwgnvgPhInj+D4WncQUES6U
	RjNj2MFEQU9PKWx+GBamZTIt9duLt2tUu0DMW9HWUjC6Pt7LbfCUCaPrBh526D4N0DzfdYCvDBh
	35Y517ZMpw7nDZr/RkqMzkGOTU2ZsOsjKIV9INilQz3fuTS/HMUmvDSRUjR0T1Z3c4bAGiyFWXa
	4nK8Etb6FHlQLcAsPWjp63dlzHKwuecpEeA==
X-Google-Smtp-Source: AGHT+IFivbwBDhax9/vD1/Z2k59af0UA+udS9AYGBjFC3i8fowSQAZAx/4n6gr0/W/KZf7ttitcR8A==
X-Received: by 2002:a05:6000:25c5:b0:3e7:5edd:ce07 with SMTP id ffacd0b85a97d-3e75eddd171mr2860539f8f.40.1757593754308;
        Thu, 11 Sep 2025 05:29:14 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm2230444f8f.36.2025.09.11.05.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:29:13 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/6] drm/msm: Add display support for Glymur platform
Date: Thu, 11 Sep 2025 15:28:47 +0300
Message-Id: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH/AwmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDS0MD3fScytzSIt2UzOKCnMRKXUOjFEOLRKOkFHMTQyWgpoKi1LTMCrC
 B0bG1tQBqC2ypYAAAAA==
X-Change-ID: 20250910-glymur-display-12d18a2bd741
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1453; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UQ5TvznCATcmW7TKNpwWYXlNr4pPB+TVdlMyODvkOAE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowsCHPeqOhMBzz4He/Z4IkOQmFd0kfNeUmdPAN
 g5tuRd0NFKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLAhwAKCRAbX0TJAJUV
 Vgd4EACf0BbVhV+xN5B/TsmSSgYOg73ZeFP+I+GoXeHKWl32iz7eGNPrvOTY1m10FUSnDMVZ/Dg
 WFyvv9ffTz9Gu1AkOLjT+Hgx1sIgVv0AYil1bwHNNaUbNqEUJOk4vwNUXZAe6g7XCsGLjDlMJ/l
 derLO34kRwFpSNoucU+yJuQJ32zt5knYJWwQ0Pz+2w6o2odUrf5Fpy80XtjV4YaCOGwhm0Npu/P
 AaqZluigHo5oCRZitxRBlmtPj/wU9c8i3i89RnCqelO9ir00YEsfItkshbNVMP+7OLlrHSsViwE
 KmK5mvW1Jxa1hhAifrha7x1oLxHUqlLGE4sA0ONLBvikYvgvQkFVErT/ZotpcpNzmdVo9UwN1CC
 1AMMokEvHrzqSbgsg7vhdbgwE2fFil3U9/Y4jtlq+QEkizyvZiI6hpg8gLGwM2Tqm10mtWu4xG6
 L3++ryTG9eWYrmb9yzgHT9UQnPYazDBH0VDtLXLkuKac2js3Q8Bk/2RFhLyhyuOney8Poqp0Tdp
 Ea8tCYp6zfKavtlqHnMiBy5RX9zdr0V7dOV8WfyQLfAWRN8hSZd7BHO2fdTQWp7t3BwQEVIuflg
 RoMBpbfFp6ujyS/Bas5yfEUt1ku6Q71YqR2SejHpCEXqKFIUMyfA1KAf+q1ZzEBOCD4rdAZabd7
 wZh2R2gzu7SdHOA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Glymur MDSS is based on the one found in SM8750, with 2 minor number
version bump. Differences are mostly in the DPU IP blocks numbers and
their base offsets.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (6):
      dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem
      dt-bindings: display: msm: Document the Glymur Display Processing Unit
      dt-bindings: display: msm: Document the Glymur DiplayPort controller
      drm/msm/mdss: Add Glymur device configuration
      drm/msm/dpu: Add support for Glymur
      drm/msm/dp: Add support for Glymur

 .../bindings/display/msm/dp-controller.yaml        |   3 +
 .../bindings/display/msm/qcom,glymur-mdss.yaml     | 260 ++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   1 +
 .../drm/msm/disp/dpu1/catalog/dpu_12_2_glymur.h    | 541 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   6 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dp/dp_display.c                |   9 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 10 files changed, 824 insertions(+)
---
base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
change-id: 20250910-glymur-display-12d18a2bd741

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


