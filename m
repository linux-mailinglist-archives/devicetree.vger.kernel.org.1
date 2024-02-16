Return-Path: <devicetree+bounces-42531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A03857ADC
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 12:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C16B1C232F8
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FCE58127;
	Fri, 16 Feb 2024 11:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YNqLPcKd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4976F5789A
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708081437; cv=none; b=fV/W63ya/JhtvtSRfifgUaoCU4JLMwP8fa863legNg8ks+LKPcrTWAvZTb/hPAzp4OIOv72Jhy6hmVUKPeZodbE4o/RrPNJgNrVk5DfxPtera0wLft9qKIlavvtkWzyUL0MVJJWb+2ut5YPvtAkqCvDTLwbYQosSBNKTT1+ThDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708081437; c=relaxed/simple;
	bh=88200XhLDsXacy4SUSb4HPXY0yhpQByIXc7VIaR90QQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hjZLO2TvhRnvJsR+R4VkMwNSg+CT//Wnyf9EL2MPa8biiEybx3YRpCyz1xHZyaIMg5TXT0FZRWYVPsLKVxEEUyJbdCwL/0J1rYv+c/FGsN9UbnSAH+UGVtb7vuCa7pnWYVLkN3BejUfdQYKVVqaXROfV9E33cKMP8NSS/pxD2EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YNqLPcKd; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-41232741dc4so3767495e9.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 03:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708081433; x=1708686233; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PB1x09n9EY53cKGEtrLSo/nG2NPG4AocGBYm52rVvBM=;
        b=YNqLPcKd+BhcPd4DeQ3EDQytvQo2emcnVXBhl90QKD8pBotJCdzlZnfQrVmmPxg7AW
         dEGrWqurHiwxdmKWxysVeZKA/qUeWDE98sehVaOQj6leAI+0NxWz7giJaw5de6C7huJk
         KkmhtDmgTBDW3Yz8DGhbfQ+gJD30+M4k9ubmLE5pkEl8ypFgglNBuR2T+BQoo4jBjmTd
         +alRyTfFUXTja5vllQmPapFHtEUzpaPGXDPK0h5iU2ChdjO23zpicEDmlu2ddsZh9Koj
         kEcGzQy5iiYJQaU8Lptlj8C1aRPHvxDK5Ot8gthEA4RWanMBnh87VbOMU9BMY2RlsOLJ
         C40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708081433; x=1708686233;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PB1x09n9EY53cKGEtrLSo/nG2NPG4AocGBYm52rVvBM=;
        b=okLNigtCdrQeBhLwR47IBZzN8v4Q3m7bZBSt6yrkh8uYEbLvNUzBvNIX8JkjGuXZlQ
         B+qlFvRJashRG657nxuVKbVSWtojETa3Kv5iytsnkS1lLTPNg9NPWkUaV6fCuEVpsoud
         RpChj6KM3Gus6wIt9DdHL46dmzGBXnzEAz6Unk5Zv8p2PNeblWmcQvIv+gBYbiJz8zTa
         9RxSzNI6A4KzlQrYi0cxWwnJGNPsAAvIOKK9pv0YVrdF4EyK8VolhA6qmM9xa6BhR2re
         dQ0cyoBvYSpFB8NA9fv7DLVs7utEkvLr4JZLGT7up5LniNDGkvUyyyT5iHe3mQjiqVPy
         HqqA==
X-Forwarded-Encrypted: i=1; AJvYcCUh5oD/Atzn5xIlH+tnpqbdJ30+O5H64ZVzz3vvUjbi/OASVZjrrkulBprZRPho/qu3W/1IOg6fjXeNy2heASLAL1SWMB4xSmGJow==
X-Gm-Message-State: AOJu0YwTt91TD0ym+t9aUOFMJkp7fGElYi3lxUfdidLuwTU9v5s5GKZr
	95b08b/mu+Ue574lXGuiGatKtsfY/4MSiKx2LwJPWxOTp8MnSxM+BsyDkyJcrp4=
X-Google-Smtp-Source: AGHT+IGdb4ensyCIsGPJM7F0VY29Yu/WCltb5zVpSxiuhAMGAeJyprzsZkYB3SyvWQv3EtBA22VOkw==
X-Received: by 2002:a05:600c:198a:b0:412:1e23:e378 with SMTP id t10-20020a05600c198a00b004121e23e378mr2816457wmq.27.1708081433310;
        Fri, 16 Feb 2024 03:03:53 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r2-20020a05600c35c200b004123b049f86sm1993174wmq.37.2024.02.16.03.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:03:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/7] drm/msm: Add support for the A750 GPU found on the
 SM8650 platform
Date: Fri, 16 Feb 2024 12:03:47 +0100
Message-Id: <20240216-topic-sm8650-gpu-v3-0-eb1f4b86d8d3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABNBz2UC/23NQQ6CMBCF4auQrq0ZxpYWV97DuKBQYBKlpMVGQ
 7i7hbjQ6PJ/yXwzs2A92cCO2cy8jRTIDSkOu4zVfTV0llOTmiGgAATNJzdSzcNNFxJ4N9650GU
 jLdZocsXS2ehtS4+NPF9S9xQm55/bh5iv6xvL8ReLOQeuQFcCjBLKyNOVhsq7vfMdW7WIn4L8I
 2ASCmPBCNOihfJLWJblBdgefTrzAAAA
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
 iommu@lists.linux.dev, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2554;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=88200XhLDsXacy4SUSb4HPXY0yhpQByIXc7VIaR90QQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlz0EUmjR87lIPCfi/Gb7UFQg438WdU0lWU7qVfQOr
 uENaJoeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZc9BFAAKCRB33NvayMhJ0cW1EA
 DH6fQ5F4pT1r6Ym1YBG1uanj27R0Rd0ajpmw/qZ0rm6nT9k84uMuaGZYNoRR1A+8Rt8XZo1p2gxkC5
 erG+1yjhFuLMVzmMnlGShi1mcpuz/gmQIyfvP9jasd/RLi3Q+pQIZyFpRysyOSo3xDn/IZ55CsRVrW
 acRQ8/U4EWpo9YFlhELxf12PSvNX5g6NoJub9hyGwIs47/Igm1xP6CG4yVfRcJJk5VltNo1x5WevFf
 ytATAhGfb4T2tpAljgPf+kL1yPpEHLSzf6NEyT3v1aGiJQ2At3a/8KMBxuA3XYqSVFFCNfLTav+5JX
 gPq5fnDEkmRudgosN1w1EdyKz6wRIAB06g65mFmFzvi4+WQ374QEdxe0DA+8ErBO82fJ1u8bzk+f4Y
 ikSU7Vi7mlFBfcMpVgTJjlceBAXEkpCu9YOS6cBFS4VlsJbQ219oTSw47igyGWo66B6VJNBZa+cXCw
 G8cwmm192O5Ik8Ac0Nxk9ErtDcM9hRFoMeWhIe7hmwiQnT3Vx0hitq3nX7Li4zQdC2dFCdUqUBVc8T
 pbnFHaRwcTROZ3y2F3nnuhJFQSkV+C95SF/xYEludWs0JhGSGwT8T1nG1VDFIRr8lfxlb7YkRg0q73
 onvN/ISIwGAoSgeWwuRs4Zlsle3ZBwnVrhBm8O8LhR1J0Z5I7kByt0c0gnQQ==
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
Changes in v3:
- Fixed smmu bindings if condition for GMU smmu
- Collected reviews
- Link to v2: https://lore.kernel.org/r/20240215-topic-sm8650-gpu-v2-0-6be0b4bf2e09@linaro.org

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
Neil Armstrong (7):
      dt-bindings: display/msm/gmu: Document Adreno 750 GMU
      dt-bindings: arm-smmu: fix SM8[45]50 GPU SMMU if condition
      dt-bindings: arm-smmu: Document SM8650 GPU SMMU
      drm/msm/a6xx: Add missing regs for A750
      drm/msm: add support for A750 GPU
      arm64: dts: qcom: sm8650: add GPU nodes
      arm64: dts: qcom: sm8650-qrd: enable GPU

 .../devicetree/bindings/display/msm/gmu.yaml       |   1 +
 .../devicetree/bindings/iommu/arm,smmu.yaml        |  17 ++-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   8 +
 arch/arm64/boot/dts/qcom/sm8650.dtsi               | 166 +++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx.xml.h              |   9 ++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c              |   2 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c              |  28 +++-
 drivers/gpu/drm/msm/adreno/adreno_device.c         |  14 ++
 drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  10 +-
 9 files changed, 247 insertions(+), 8 deletions(-)
---
base-commit: 2c3b09aac00d7835023bbc4473ee06696be64fa8
change-id: 20240208-topic-sm8650-gpu-489d5e2c2b17

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


