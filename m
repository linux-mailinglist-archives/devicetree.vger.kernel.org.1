Return-Path: <devicetree+bounces-42695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C495785833E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 18:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E27981F24171
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 17:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E73D130E29;
	Fri, 16 Feb 2024 17:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y7RLDLsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51839130E3A
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 17:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708102882; cv=none; b=rHj8AAEZXxxmvvGPMGvrk1Vg9vnVEB6tbFhQQIlt8XlMxGUbQIN98ES7yTwEJnh6jHcqudwhLGjaypgSLfLuJxOvjgU7awhNU75oQwjAtAZJdUTSHjj+y8KBAf5fFHjS+0pDDXFHpbpoK8nJpMLuKTrcbyW2g+5GbRBlzK0Utfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708102882; c=relaxed/simple;
	bh=0iFXpBAkOI5XFf8B+lBsw7By4yXHr24NnEal53Y4B9U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IZC7FxcOT3d8tMp8xsGo+H/d5GpvxIxyvgajOEyod3c4HwN8KpRfgIKpDZpHWSl35qD50xUkU2Dj4ALEGWXgObxILH9lv8S0eJIMXGdExaUpea4xsm2ex8MWZdf8F9+ws1uUU4/qJMWeueIUlKtl/HLXjZb/0orj8X8k6jZIJi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y7RLDLsM; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5620595f743so2935671a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 09:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708102878; x=1708707678; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p1UcFz1FGckNLw1XlmxhxjVgBjfCwoT7hcC1xOssOlI=;
        b=Y7RLDLsMswlx1nHhJCT5o9/4rYKWBhVENA00Jip/VM8c3XCs896W8xJLA85UgfLovS
         7kc28zDoli1oJsJVjjbAWhVKH/SuZ7xR39IUgl4+fSq6gUQcwv2M1chYTuAHaXz2J7Dd
         nf5HHuV2dY5x2TPGuswgk1ED5qQzuaiL04hhIwqFG92LKkGfVZNnWh5x4Vd8NRbRfhXJ
         5vcSAodkf/Zg8JgHzzntX+TegkF2OPCaKfjksX9GW/HeOLdloj37aBSfVyVnOLoRg4UO
         GSMbrs6OoEXqJhjOt9/Nw4+G5oHthturtXcxB/1r8Z4Q+2Dsn0hpBBCLEIpH36wZ++SU
         TB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708102878; x=1708707678;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p1UcFz1FGckNLw1XlmxhxjVgBjfCwoT7hcC1xOssOlI=;
        b=K63bErj2V9Ns4MFtSGdXU5lyN+6JdAZG6YgwACWMzUS5YPfDQHq20CqGVS8eX0elJn
         ZxsVVW37G5bPpa67ZgNpokPkOLNE2V84MBsXRrWhFyV1+hqkO6s9ETGn12lJ4i9lc9XP
         8t3V84zJAELuvC2eL8HjMGMesqmBOU2viTu9uAh55g6R30w0vQEJfFedBQTolOYXDO+b
         MS/5I8O5VWTD6Hh+BFGeSoD7G+wcwLcAex4c2m0d9rY44WSuBtiyEAZsvDg48WkctXEt
         R+AqQS8I3bopqtuq5MEvDNEj0+A3Ijp1c6hUJUSoVbOnPiAfpRuJVPPzjyC4Xd555pbk
         jy6g==
X-Forwarded-Encrypted: i=1; AJvYcCWMVVkgGFlBRqnqXnOtWEv6sT8+uyq6blAwYcFvBTvxr2ga3zQ0kMPT881bnc3P2bzHplpBxW7redHhH3GRzgKJdBcMwqcnUdx02g==
X-Gm-Message-State: AOJu0Yxk9h6VJDXt8jBmpV7/+fQWxeybAaN2gtyeRg5Vp+SEqknUtIBc
	uEAMhjBq5kz34qo6p1S6KL0RzLSdkDQ4wLz3QrqyYn181bvssAU63XXioRWWB4c=
X-Google-Smtp-Source: AGHT+IHKQOQB0YGj0ov9AvBSyG6g37XAlR8RWH9o87R5qxWdfqq2CXR/ocGh+Qm9/bbxo+8iSy3IAg==
X-Received: by 2002:a05:6402:28f:b0:560:c951:57ba with SMTP id l15-20020a056402028f00b00560c95157bamr4631607edv.26.1708102878588;
        Fri, 16 Feb 2024 09:01:18 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id u20-20020aa7d894000000b00563a6c9fd71sm159706edq.16.2024.02.16.09.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 09:01:18 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/4] drm/msm: Add display support for X1E80100
Date: Fri, 16 Feb 2024 19:01:04 +0200
Message-Id: <20240216-x1e80100-display-v3-0-28b1c33ac8c0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANCUz2UC/22NQQ7CIBQFr9KwFvP5pYquvIdxAS20JAQaUNKm6
 d2l3Rijy3nJm1lI0tHqRK7VQqLONtngC9SHirSD9L2mtitMELBmCIxOTAtgALSzaXRyppKfauQ
 cQElDyk3JpKmK0rdDOfqXc2UcozZ22jv3R+HBpmeI857NbFu3AgeGl99CZhQodBetBDa8M3Bz1
 ssYjiH2ZLNl/BiQ8T8GLIbWQKOkEGfe1F+GdV3fLEbD+QgBAAA=
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2021; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=0iFXpBAkOI5XFf8B+lBsw7By4yXHr24NnEal53Y4B9U=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlz5TSztKm9Y1ReskOBVpTZu0w//CBKZim1KNW8
 Fk0rx9kfouJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc+U0gAKCRAbX0TJAJUV
 VlCMD/wJQ0F811zULMoG88tizqg5woFm+ExkHS4/mFScQnxjO+250VkA5TNSBM6eDMDqTEYM47x
 Fe1ZqYKqiUvTfjFtiFv2tmdT/vUewNdtQBNNlhaW/3f5NG2E9/xONI03hY6Tf9lQHpEK8B5Q92i
 peLKidNcBoXsOAfufe0rMntPTxGyGYtb3eAs5/N+S+bb17O+HabqxNqSmf2PBKQLLqbRxvc9Kzq
 PMiLF0PkOc22GI7MObDQG7poVcrLMF0zcVaWrBrBO6feSCKlx7S770Szrki1hNi5xyakOuEj5ik
 7cTnPjvjqJyOqgoYot5JYIKc0BdiBhcOqDtXmTLa3pemCeg4eufj4ZflFg6ds5kzssC1M4lUOT7
 WOC7klglnEEEL6zJxkOuvgLjUj64dQJXMoTm7a69k4xLU/MDRa3sZCJQKRbziF4PNFTjr8/DOCO
 eerJ2dt/af/vs7Jwnz/buOATn+c4m7Uy+2P3fG6iWvLBZsB6+hUiiVv6ACpzLJTUTKlNG5n8Ma5
 sNjNnsfp6ZpfdaQjabrJfus/PZ3jAcwhCagh+nLo/Hj+Su4QelJxhp68ajzoKF0OOBckjZIrRE9
 aEQ36y1kFLJu7ATRCzJYHYuXxurcbZgAs8Zr4LOKDN2hmJwFRkmtNxgSuCXS5dePxFZbZUngk69
 AMzRJnKXWtf0tWA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds support for display for X1E80100.
The support for embedded DisplayPort on this platform will not
be enabled using the connetor type from driver match data,
but through some 'is-edp' property via DT. This subsequent work
will be part of a separate patchset.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Added Dmitry's R-b tag to the mdss patch
- Swapped order of first two patches, as suggested by Rob
- Added "additionalProperties: true" to all pattern properties in MDSS
  schema
- Link to v2: https://lore.kernel.org/r/20240214-x1e80100-display-v2-0-cf05ba887453@linaro.org

Changes in v2:
- Dropped the 4th patch:
  "drm/msm/dp: Try looking for link-frequencies into the port@0's endpoint first"
- Fixed the qcom,x1e80100-mdss schema by including some missing headers
  in the example
- Added TODO comment for reg_bus_bw
- Switched to SDMA features mask
- Added Krzysztof's R-b tag to mdss schema patch
- Added Dmitry's R-b tag to the dpu patch
- Link to v1: https://lore.kernel.org/r/20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org

---
Abel Vesa (4):
      dt-bindings: display/msm: Document the DPU for X1E80100
      dt-bindings: display/msm: Document MDSS on X1E80100
      drm/msm: mdss: Add X1E80100 support
      drm/msm/dpu: Add X1E80100 support

 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   4 +-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 253 ++++++++++++
 .../drm/msm/disp/dpu1/catalog/dpu_9_2_x1e80100.h   | 449 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                     |  13 +
 7 files changed, 722 insertions(+), 1 deletion(-)
---
base-commit: 85a96a047f413da4b663919a4ced39a4715c6835
change-id: 20231201-x1e80100-display-a46324400baf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


