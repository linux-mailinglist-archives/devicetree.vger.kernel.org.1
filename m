Return-Path: <devicetree+bounces-41926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01872855DB5
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B5911F2EF01
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDC614005;
	Thu, 15 Feb 2024 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wzvYGNYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C1117581
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707988834; cv=none; b=rVI+uWzW4DrTy6Azej+YAzMZLsMhfD40DxJE3156b7UJqZlykTiXwVvlo5DmmfWNu58Hthpw89rTZqnTmvVqRo7xmhG38+J17foU00cIwGw19B+6rdIPZ8JOCur0+OYfWTOqmfXJ7+qVXxh1k6dXyE2pH3VxJshXK77aIQ+N4+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707988834; c=relaxed/simple;
	bh=oKbyhmQGCK031NDJvd+F9DRL6rEnKmMTN5jcd28ewGo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MmYzwOVXNK7aeM1Iq1s7g9+lU9/VkG10SttQX6OOJgvj2TBxwL9XWtoFrN04D8Yx/qTh5ykJon3FCRhjtkpw0pjBNzkj8x9lZ2JhixfvuAwiCvYpDPe36g9ZmrzE+ljAR6NLnaRJye65/+6t6HoaoISXuzDCqNi41v04edKIygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wzvYGNYB; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33b29b5ea96so285309f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 01:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707988830; x=1708593630; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sCJIqfXANTyxQ1cWg0J7Xq3pgA1x4Oyiz3VOApAbg7U=;
        b=wzvYGNYBJ/PrmGKCCf8o1sR77+3qYNoAt/QW4CscBuJz4eZArWgm2mAjNaP0cLY23H
         MXa2plzTASmdEMWG8Vk9rOms/Xk7edz7uHJ5Ap76eNW/cgsCfTfbSKLlyyI+KXa74UmF
         CI7iqOtuk3B6lHFCLFlZksk9nxbujOKC4p1K5+vMFMuGWkIRlyGWYllqWY+jQsUmvsFz
         6h3TO6jdabTNblIXLVbUOYvLWfmn8q6wwK3q5dcslevW+2qQSNNA7sUvEBKMhYkyumkH
         ahNwVfs7Rc52r0XGQ+7F9u1QUea6cEEFL/mVB7eaIEcJKsqTZfezKmpvJAcBJWHtm8Zi
         1uHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707988830; x=1708593630;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCJIqfXANTyxQ1cWg0J7Xq3pgA1x4Oyiz3VOApAbg7U=;
        b=Rhd6EwBPBE64BZJWxsgpv6mEV9NuDJYUdznw28Xi/HtTkBzAALRY1VSXz+e8qDKrK7
         6rFoiaagOmAIoSM3ucpwEm/NgxgN8gOAeUZYEH+SkmMV9i1SyGwgZq9OmrtPXws7HR65
         4bmmMSW99y3xjujMR7CvLqg1RUWmIQDfUn4bDjdDBVsu1Ce+LR6XObdOA7t0dr2/KVvH
         ukvvm9eiNmeg0TCYji5hv8heBleYxTCHnIvjMQlmAKXOeDRr01Bzwux7dZDbruXNIza+
         2ZWsDyfmu4upkoxA5lNIOujX0wwA25P/oDJrANVg1LlY1V7G7t5HZahf517PBTiTuN0z
         0+mA==
X-Forwarded-Encrypted: i=1; AJvYcCWyXxd51oKuk8jH9CpCzWt+1dSTDYgkfXCJSBg6v1aLm5Fv+wDAqJ1tyeR7dorYK07Lc9EY6b7jtXNhONTToqqsr6jjsOm12dfDOw==
X-Gm-Message-State: AOJu0YzC5UVebdqojWlBQC1WD0GAm0hD0jIPc3zpopkwQcFR9U4mw5oq
	xrqeV4XkHwZgzkiL93HueCGneJTT4eEeDlY1wtdCEmfGv6ilZPFUYx5KfVjgZ2TAe4kOzgMIKp0
	GaXGmkA==
X-Google-Smtp-Source: AGHT+IEzIX1zQSb8A6KxIEeLGYgLf9voInovtkhGG2UhbsN7a14+GKlnqiOaIdXdfVUStV6dDYTqFQ==
X-Received: by 2002:a05:6000:107:b0:33b:68d2:c5c9 with SMTP id o7-20020a056000010700b0033b68d2c5c9mr1080779wrx.8.1707988830565;
        Thu, 15 Feb 2024 01:20:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id l8-20020adfa388000000b0033b66c2d61esm1156435wrb.48.2024.02.15.01.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 01:20:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/6] drm/msm: Add support for the A750 GPU found on the
 SM8650 platform
Date: Thu, 15 Feb 2024 10:20:22 +0100
Message-Id: <20240215-topic-sm8650-gpu-v2-0-6be0b4bf2e09@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFbXzWUC/2WNyw6CMBBFf4XM2jHTSbHVFf9hWPCoMInSpkWiI
 fy7lbhzeU5yz10huSguwaVYIbpFkvgpAx8K6MZmGhxKnxmYWBOTxdkH6TA97KkkHMITtT33peO
 OW2Ugz0J0N3ntyWudeZQ0+/jeHxb1tb+Y4v/YopDQkG00tUabtqzuMjXRH30coN627QOHQsx7s
 QAAAA==
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2303;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=oKbyhmQGCK031NDJvd+F9DRL6rEnKmMTN5jcd28ewGo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlzdda1ja3qYhAQD7TxJTXjXvRhkZhcdgfDhtOGB6t
 eX40jEuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZc3XWgAKCRB33NvayMhJ0dKTD/
 9nfYKPsMq1aO/WX60Xfgt6f16R8W7MWflfkynuv7YMpLAyGWDhQOfa7do6lQyxZF2YnwHshnk5YDqK
 dpGFlzMbP3+/zsMVADh2Vy0Rj1FtwUhggfW/IQ2I3UT3IA2MdXedNxVUq4rJBiXdjEsrkoWgAHofSh
 /rNgcsKpu+aEuP9qRCSCMhdYBjVWBU0/ubDi1qnarYadzUqSoAdGgE2hdV1NVrLtmevG4A6PKAjgP4
 mIaQLOrLSuLsvcpOo3cBLYUwSPpHZWQlX4aH0ZPmteXd1Z6iRWE/ynBE2mylsOp2jaKITp1NQnfiJw
 7VKLUt56d3yGbqAzm8yylY+5199zJcQ3iKZLq0wpU5cgBEcKC0iZpJ6r4w4N2PQV70Qmi0MrPPo8Df
 RK82H8IgsRwkTtUerZsLpJ4ktXizoJCtNZ6Yrk9X2zg01oFvhPDyynhh7NfksxuhrO1bPiC7YT3Ccv
 desZDq2p5PWEl9g77A5OXuN/M0/ZgTtrFztrqZb2kzk5RRTmA+6Ig0WhF/2rn9qOs6BzwndTc2y5fA
 RBvb8z5e1EuCKwQMzpcjdab9pZIg6FSVE0Et1MLBAI3M5p7N8zFA+ftQis9Q3KWYcgLfk9NmNY49xO
 rtPWO4swkMjDEwDuFZAEiJx2VnGuFsaVvSUNZptT+CULYH0fWDDIWW1kfrWA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Unlike the the very close A740 GPU on the SM8550 SoC, the A750 GPU
doesn't have an HWCFG block but a separate register set.

The missing registers are added in the a6xx.xml.h file that would
require a subsequent sync and the non-existent hwcfg is handled
in a6xx_set_hwcg().

The A750 GPU info are added under the adreno_is_a750() macro and
the ADRENO_7XX_GEN3 family id.

This adds:
- the GMU and SMMU bindings
- DRM driver changes
- DT nodes

Dependencies: None

Tested using Mesa's !26934 Merge Request [0] on the SM8650-QRD
and with kmscube & vkcube to test basic rendering.

[0] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/26934

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Added separate a6xx.xml.h sync from https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/27576
- Collected review tags
- Inlined skip_programming
- Use A7XX_RBBM_CGC_P2S_STATUS_TXDONE instead of BIT(0)
- Drop now useless placeholder comment
- Removed interconnect properties
- Rebased on current linux-next
- Link to v1: https://lore.kernel.org/r/20240212-topic-sm8650-gpu-v1-0-708a40b747b5@linaro.org

---
Neil Armstrong (6):
      dt-bindings: display/msm/gmu: Document Adreno 750 GMU
      dt-bindings: arm-smmu: Document SM8650 GPU SMMU
      drm/msm/a6xx: Add missing regs for A750
      drm/msm: add support for A750 GPU
      arm64: dts: qcom: sm8650: add GPU nodes
      arm64: dts: qcom: sm8650-qrd: enable GPU

 .../devicetree/bindings/display/msm/gmu.yaml       |   1 +
 .../devicetree/bindings/iommu/arm,smmu.yaml        |   7 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   8 +
 arch/arm64/boot/dts/qcom/sm8650.dtsi               | 166 +++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx.xml.h              |   9 ++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c              |   2 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c              |  28 +++-
 drivers/gpu/drm/msm/adreno/adreno_device.c         |  14 ++
 drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  10 +-
 9 files changed, 238 insertions(+), 7 deletions(-)
---
base-commit: 5a30f6bdb84228f160b331eed2ccfde00bfb3ab4
change-id: 20240208-topic-sm8650-gpu-489d5e2c2b17

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


