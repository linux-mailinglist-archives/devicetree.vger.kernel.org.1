Return-Path: <devicetree+bounces-129657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 620B99EC734
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93871188C188
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAF81DBB38;
	Wed, 11 Dec 2024 08:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yFN2GEys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EBA1D8E06
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733905803; cv=none; b=uIL3gkA73ktEqXrfU423ieHOzrEY/5YSo7rFa6RnYYLv4SItAT7ZOelM4m84IsPpt7oorG13HniB+TW3Lzpup1xv4sPFuOigeglaU/CWOlxWjJUkF5FDEr36HLVfBi7nU1UcOV1uDTY+KKYC6XiONFN/eWbWoMh9BN9qxowMgog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733905803; c=relaxed/simple;
	bh=ghVOoUCP6ClulQHKSlvN1uTAOqfE8YlIThvntPRyWMk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OjXywZgVeRdpzbQzUbsJIzI7Y157nf9v0/XCJ7EDr941R/+qGMvdcWEcIisma9q6gePNyw0kZ5LZ5Evnkz73uqVwVRAONNUp1w7jH0eqMdSK1IzdncJY2qoTVq/7172VC7O9xKkeneZ2WEDow4DkToqqLoOK0kJH4dUU6E8Cqw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yFN2GEys; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3862ca8e0bbso3847236f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733905800; x=1734510600; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uN5AdeRScLJtHfsSOT+MoztnVZIiM+ZCP6fGO7QOEEw=;
        b=yFN2GEyseWwmrQq3Q2KTqqz3ZyjSoWk4JKIvEto/iUvA11jXZ45Cn6azZHspPR4bO1
         8s9hJRkLmayEEDyc6hwKvvmi80h/ItuNSXmrf+aiYgTybQpjeIQoz81yRbar9L3mdUEj
         N+UKvE9BBMRhLyfA4OZPCzrIMux2QTBZKCvhRJ0qAcBSzpmSex40ob6K/UNUtK+YIZqe
         jZ/wOs6EEn8CY963iCAfMHVRNWh8LrUACwAjARf0TPQU2ldLktfEaijX98w3lsImrwzf
         cIWgVmaEkSR9XjNolHuCH3e33In7OJY/DxHjH7gguCDtSjCQo7kTWHfHvVlSQwFrTyIk
         cACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733905800; x=1734510600;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uN5AdeRScLJtHfsSOT+MoztnVZIiM+ZCP6fGO7QOEEw=;
        b=UuInlPYSuaXTq07G8wjyhTrDj6PhWFmFkZNc6yE17Mbwzb/th9PJ0ygj7zSREGaAoo
         ejbb0nsuKOnwX0uyYMJYOGKDSJnlvq8sNKsDixCDcIxjG4GU9HRTSNQ1KXKhJ5mZFeJ6
         /FJ8lqSim8jHv/1cJ6u+g5j/QdIRfe9PezOWbkjp1AbQ0Zgu0HoF1hAWd2R+fbJJ0bLq
         TWkcbRuciXWEl1s4aAaMBOZh+Nzg6K7Xcx4v9X5CpA9sSbzp3bJhD8o4gzxhG9HyH1W1
         zRsBy+jXxq/uwt0G31zJA6qh2Ox0jXvSkl0tq01TDn1ixwjdf7r3d4BsEcFB6V9tA1+C
         jqCA==
X-Forwarded-Encrypted: i=1; AJvYcCXMgL4VIRt3ZbqVscCv0fRkHTVJyrTLMblTTUGBUzGxeyRy2R/8VDK0T8hAHMf5MqppVpsJrNVnCer2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2zRvp/1mOyDi1wnWKexQFuwYYRWKhwb0odHFEc6SyD2lVIg5O
	2VO3ODN3Asjw2HHHPGp/Ujr2MEDtqfkxIWwkz9ROyhxcWbARFzrmP6EbxoezUaM=
X-Gm-Gg: ASbGncvxR0W2aDem8clVkxAqnd906g5N0Gs5jNVYy/Zx2QUxYlv7BQFl2CEfwNuxPou
	c60E2jC2V/JkITVkff78t5qU/qluCGe/JctuJTZE5y1UelfdgwLDfrOIcUuuKhokdO0STVHFmkw
	sAMRqn4rXW4m3hTg1/L+aAuuR3/Ua0J5ofg3dK+NGUTRovo/tsMq/9I6XSuxxGuJCFw0bDVtSPS
	CgHpyeIppoQNCenRpmn0VWbz/sFRYxUuVawZdgF5ANTewvnFjAvFFt9ZtFwO7iTbQoLooll7LM=
X-Google-Smtp-Source: AGHT+IGvKUv7p0bySo4rj/rZSBrceXdME0hrdstc13IuQeGdJAJK/A7l8wW6sihQ18u8uzyhFCb/lg==
X-Received: by 2002:a5d:5f91:0:b0:382:46ea:113f with SMTP id ffacd0b85a97d-3864ce86a3fmr1725077f8f.10.1733905799294;
        Wed, 11 Dec 2024 00:29:59 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm735687f8f.23.2024.12.11.00.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:29:58 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 0/7] drm/msm: adreno: add support for DDR bandwidth
 scaling via GMU
Date: Wed, 11 Dec 2024 09:29:50 +0100
Message-Id: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH5NWWcC/43NQW7DIBCF4atErDsVDBAgq94j6sKYsYPUGgtck
 iry3UuyaapIVpf/k+abKyuUIxV22F1ZphpLTFML/bJj/ambRoIYWjPkqIQQEpY0xx7Kp71oDuP
 8Bf4MNS0EgyaOOJDplGHtfM40xMudPr63PsWypPx9/1TFbf0HWgVwkN4G6Yw0nfNvH3HqcnpNe
 WQ3teKj5DYkbJIK5K3xhMrZJ0k+SGg3JNkkK8Ke94IP3sgnSf1KyPWGpJrk9poHoUNQUv+R1nX
 9AZlHnqqfAQAA
X-Change-ID: 20241113-topic-sm8x50-gpu-bw-vote-f5e022fe7a47
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4929;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ghVOoUCP6ClulQHKSlvN1uTAOqfE8YlIThvntPRyWMk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWU2Cia4TKjc0Ij6gMzsPHdLygGocf+k8W30t9bd/
 H4zFC2GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lNggAKCRB33NvayMhJ0XA4D/
 4qDdfOHr4uO7VFWs4QAIMuSpAsaARTcV3cNztIoVua7vvMixLg4wt641nl6a6oLQlwDKLImfuv49+u
 IVbbITNnANRFvHAqRJas3dif+WKOyz70U7zWvSB8iZPmiecX8Xw5etHb91wWWDfJ4Xh48Vz7E6FGxk
 zA+V9/w8HKFpZCeqFsKrQDE0miY2bMLPb7Agjug+y7YA2DEg32JWpGQ8nSNrWGrxsRgSCHYv4WF8wy
 Ob1I20jPHcZ5zpktuN4QFAwA+Y4SJUK91dITaoIL+O+5G7WkpGBoLs7bg8JrpsI8G33/v6sITgfzX5
 KxPoECeY4zj76rO67O5OC1z4wxWSU29/FCUPX09ZcIJyHD6Ldv/qQ+r7hsPhfKWzoAHrIxQrlHkQZg
 P0rgq4207sXXNC0lJy28EyPnNgipX1Us2kZN39RjEQO+RCvXRyZGySJ1d+3FaEkMmeqCVCy7wxc7xJ
 /rx4a9gVPwMPQLqqf9EX0RZMCxA23yTLbiBjzyToJGlrcKQQa+Sbsypq0lPwVBtV7FqwQvAzfQ75bd
 /LcmrARqy3Iv91ZLr1QWxmq0l8mZinvSXEf+rDph3PwuOhXFlr6qTkYIx9GSrPVo0IgklVUt5NjlbM
 o8GLhXca4StR8amW0tM2IQN352Z+BAHxlau03DO4RJk5aNDonffT4UK+3LAg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Adreno GPU Management Unit (GMU) can also vote for DDR Bandwidth
along the Frequency and Power Domain level, but by default we leave the
OPP core scale the interconnect ddr path.

While scaling the interconnect path was sufficient, newer GPUs
like the A750 requires specific vote parameters and bandwidth to
achieve full functionnality.

In order to get the vote values to be used by the GPU Management
Unit (GMU), we need to parse all the possible OPP Bandwidths and
create a vote value to be send to the appropriate Bus Control
Modules (BCMs) declared in the GPU info struct.
The added dev_pm_opp_get_bw() is used in this case.

The vote array will then be used to dynamically generate the GMU
bw_table sent during the GMU power-up.

Those entries will then be used by passing the appropriate
bandwidth level when voting for a GPU frequency.

This will make sure all resources are equally voted for a
same OPP, whatever decision is done by the GMU, it will
ensure all resources votes are synchronized.

Depends on [1] to avoid crashing when getting OPP bandwidths.

[1] https://lore.kernel.org/all/20241203-topic-opp-fix-assert-index-check-v3-0-1d4f6f763138@linaro.org/

Ran full vulkan-cts-1.3.7.3-0-gd71a36db16d98313c431829432a136dbda692a08 with mesa 25.0.0+git3ecf2a0518 on:
- QRD8550
- QRD8650
- HDK8650

Any feedback is welcome.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v5:
- Dropped bogus qcom,icc.h flags
- Properly calculate _wait_bitmask from votes
- Switch DT to qcom,bus-freq values from downstream
- Added review tags
- Link to v4: https://lore.kernel.org/r/20241205-topic-sm8x50-gpu-bw-vote-v4-0-9650d15dd435@linaro.org

Changes in v4:
- Collected review tags
- Dropped bcm_div() and switched to clamp() instead
- Dropped pre-calculation of AB votes
- Instead calculate a 25% floor vote in a6xx_gmu_set_freq() as recommended
- Use QCOM_ICC_TAG_ALWAYS in DT
- Made a740_generate_bw_table() generic, using defines to fill the table
- Link to v3: https://lore.kernel.org/r/20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org

Changes in v3:
- I didn't take Dmitry's review tags since I significantly changed the patches
- Dropped applied OPP change
- Dropped QUIRK/FEATURE addition/rename in favor of checking the a6xx_info->bcms pointer
- Switch a6xx_info->bcms to a pointer, so it can be easy to share the table
- Generate AB votes in advance, the voting was wrong in v2 we need to quantitiwe each bandwidth value
- Do not vote via GMU is there's only the OFF vote because DT doesn't have the right properties
- Added defines for the a6xx_gmu freqs tables to not have magic 16 and 4 values
- Renamed gpu_bw_votes to gpu_ib_votes to match the downstream naming
- Changed the parameters of a6xx_hfi_set_freq() to u32 to match the data type we pass
- Drop "request for maximum bus bandwidth usage" and merge it in previous changes
- Link to v2: https://lore.kernel.org/r/20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org

Changes in v2:
- opp: rename to dev_pm_opp_get_bw, fix commit message and kerneldoc
- remove quirks that are features and move them to a dedicated .features bitfield
- get icc bcm kerneldoc, and simplify/cleanup a6xx_gmu_rpmh_bw_votes_init()
  - no more copies of data
  - take calculations from icc-rpmh/bcm-voter
  - move into a single cleaner function
- fix a6xx_gmu_set_freq() but not calling dev_pm_opp_set_opp() if !bw_index
- also vote for maximum bus bandwidth usage (AB)
- overall fix typos in commit messages
- Link to v1: https://lore.kernel.org/r/20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org

---
Neil Armstrong (7):
      drm/msm: adreno: add defines for gpu & gmu frequency table sizes
      drm/msm: adreno: add plumbing to generate bandwidth vote table for GMU
      drm/msm: adreno: dynamically generate GMU bw table
      drm/msm: adreno: find bandwidth index of OPP and set it along freq index
      drm/msm: adreno: enable GMU bandwidth for A740 and A750
      arm64: qcom: dts: sm8550: add interconnect and opp-peak-kBps for GPU
      arm64: qcom: dts: sm8650: add interconnect and opp-peak-kBps for GPU

 arch/arm64/boot/dts/qcom/sm8550.dtsi      |  13 +++
 arch/arm64/boot/dts/qcom/sm8650.dtsi      |  15 +++
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c |  22 ++++
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c     | 183 +++++++++++++++++++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.h     |  26 ++++-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h     |   1 +
 drivers/gpu/drm/msm/adreno/a6xx_hfi.c     |  54 ++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_hfi.h     |   5 +
 8 files changed, 308 insertions(+), 11 deletions(-)
---
base-commit: df210b30304e9113866a213363894a6d768411ec
change-id: 20241113-topic-sm8x50-gpu-bw-vote-f5e022fe7a47

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


