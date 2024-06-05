Return-Path: <devicetree+bounces-72939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 383058FD722
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 22:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82329B22482
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055FF1586D3;
	Wed,  5 Jun 2024 20:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JkI0XPNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE3A1586C2
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 20:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717618225; cv=none; b=ISA/LydymhsSpCaAi47gzT7Wml+V+mHfM0ETZMNMupjnoQeyG1NzgMALc0DnxOCvVRgT2GF17EYREG9KZcom4LaObHcPHSiWVbzihPd/uEvylGqmFdxfL4mPC8zQYHLOXnGjNIeF2jb2vIb/koXUDVHlYURqXN04r318e8uFbTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717618225; c=relaxed/simple;
	bh=pcoDxWlC8iqZ1yXyRHWFFhfilc2C0qAAL9dra9Pimmg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LMbefPx/8kJoIYhvgoE0T1fa85YzVbdX242TuTessfUQjPzMcbnKz1t2VtOFsOKuhd5P//MIoohZN+/OeMo9eUR8NP7UiY78gAAOLmEr4xy8u43Idm4Z7iwhMK08iNLu9Fbpyn0/gOx/B/YOlMtUuQiz2COMXIccy7NDu6BfWAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JkI0XPNX; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57a9a3bc083so98021a12.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 13:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717618222; x=1718223022; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YGczuZ2lWdVfE1piGkex5C9npOPV1bJTkT4lzcILbpk=;
        b=JkI0XPNXxURCIVC+6+0OEoMPlAqEojE+XumAZ+FSGkAjdNLxpUzP20ZXmX2YOgv3v2
         MGNCB1GNQ5OFRCn43tgVr4LBZ92bqiZNP/SpvWxXHOPaE4L/XxIDZnc+7KI37TNF4ehO
         vwA2yI0GXvSmNE1xnn9eR/MLGnG4NnkqnjnG/+Ch7INo4Ske0uWPsMuAV5IfvbGsK7b3
         nYsCCWiPEELaTPyp4nAf02NdmswEKrNMCby8NF9HjjJ/0W7cVmJ4McmU/0cmnHOme7Nb
         X3zHdYWb2RJ+RV2YiwefVaaGhw4Y1zypD9V2Q125fn0fBzYm5PRw7HGD60zQVx/6t4Nr
         Q6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717618222; x=1718223022;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGczuZ2lWdVfE1piGkex5C9npOPV1bJTkT4lzcILbpk=;
        b=YY5P7anDZIj84evVrsEJdvsT+3JQAPblZRFkDLmPHb1rN95aVCQRvZyQC9IVpTLYFZ
         frMHhy2OZgWuHQufAxthlwOoomrmYu4+60w5x7i7rbZ9CVMJ4sAyjCmZ9ouuN/4Xq6us
         8JSeQ332RI9ZtxrC/UXKK1goDT6icxwi4IL5ojaM3+GpXKXxx8yQm8Dp2JAhNl6VIRUM
         P8M6DPs050WjVZZtMP/k9KYy8O4OREKrr46GmuDAch3rp/w2ogb5WnL7/4LaTULw8PeG
         p0j3yBWKGUdCPS4hd4wVZF4x0cxscG6i4HiEsWXSZmvbJKLYKE4Mu0r1ssqNi5zgh2ft
         080A==
X-Forwarded-Encrypted: i=1; AJvYcCUA2N5YUDBYPJk0sc4GCSvFSyonhTmBj5Z1xcWRawtLLGC0D+NPAwWgcniFbV0GLwPBvb39fglcc1TRzg/k+xbMVv/cSacCEcI5Sw==
X-Gm-Message-State: AOJu0Yz8P9HERN+y8KhRa1Lbu5o3XyY3LuPvY7owI83/zHBUQnv82zne
	O+aHuhYYRHFtQBS443PHd5MQy5VhNxQQAiCgp717+m267uBcXEJK+llwjROIGCE4cQBXDNlSoo0
	tjYY=
X-Google-Smtp-Source: AGHT+IFrCBrnkkLsecGW7l6vDIv7uQOZiW1K0q3pJY+cy9j4zxXAM/TcNHR+nEx9T8KHaN1eo6bC6w==
X-Received: by 2002:a50:875b:0:b0:57a:70fa:8875 with SMTP id 4fb4d7f45d1cf-57a8bcc4aa9mr2438463a12.40.1717618222534;
        Wed, 05 Jun 2024 13:10:22 -0700 (PDT)
Received: from [127.0.1.1] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31be4e36sm9717473a12.53.2024.06.05.13.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:10:22 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/7] Add SMEM-based speedbin matching
Date: Wed, 05 Jun 2024 22:10:13 +0200
Message-Id: <20240605-topic-smem_speedbin-v2-0-8989d7e3d176@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACXGYGYC/22NQQqDMBREryJ/3ZQkaJGueo8ixSSjfqiJJBJax
 Ls3Fbors3oD82ajhMhIdK02isicOPgC+lSRnXo/QrArTFrqWpaINSxsRZoxP9ICOMNetA6wTho
 MElSWS8TAr8N67wpPnNYQ38dJVt/252v++rISUlho015q3Sijbk/2fQznEEfq9n3/AOJYqwO3A
 AAA
To: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

Newer (SM8550+) SoCs don't seem to have a nice speedbin fuse anymore,
but instead rely on a set of combinations of "feature code" (FC) and
"product code" (PC) identifiers to match the bins. This series adds
support for that.

I suppose a qcom/for-soc immutable branch would be in order if we want
to land this in the upcoming cycle.

FWIW I preferred the fuses myself..

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v3:
- Wrap the argument usage in new preprocessor macros in braces (Bjorn)
- Make the SOCINFO_FC_INT_MAX define inclusive, adjust .h and .c (Bjorn)
- Pick up rbs
- Rebase on next-20240605
- Drop the already-applied ("Avoid a nullptr dereference when speedbin
  setting fails")

Changes in v2:
- Separate moving existing and adding new defines
- Fix kerneldoc copypasta
- Remove some wrong comments and defines
- Remove assumed "max" values for PCs and external FCs
- Improve some commit messages
- Return -EOPNOTSUPP instead of -EINVAL when calling p/fcode getters
  on socinfo older than v16
- Drop pcode getters and evaluation (doesn't matter for Adreno on
  non-proto SoCs)
- Rework the speedbin logic to be hopefully saner
- Link to v1: https://lore.kernel.org/r/20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org

---
Konrad Dybcio (7):
      soc: qcom: Move some socinfo defines to the header
      soc: qcom: smem: Add a feature code getter
      drm/msm/adreno: Implement SMEM-based speed bin
      drm/msm/adreno: Add speedbin data for SM8550 / A740
      drm/msm/adreno: Define A530 speed bins explicitly
      drm/msm/adreno: Redo the speedbin assignment
      arm64: dts: qcom: sm8550: Wire up GPU speed bin & more OPPs

 arch/arm64/boot/dts/qcom/sm8550.dtsi       | 21 +++++++-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c      | 34 ------------
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 54 -------------------
 drivers/gpu/drm/msm/adreno/adreno_device.c | 12 +++++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    | 84 +++++++++++++++++++++++++++---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h    | 11 ++--
 drivers/soc/qcom/smem.c                    | 33 ++++++++++++
 drivers/soc/qcom/socinfo.c                 |  8 ---
 include/linux/soc/qcom/smem.h              |  1 +
 include/linux/soc/qcom/socinfo.h           | 34 ++++++++++++
 10 files changed, 185 insertions(+), 107 deletions(-)
---
base-commit: 234cb065ad82915ff8d06ce01e01c3e640b674d2
change-id: 20240404-topic-smem_speedbin-8deecd0bef0e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


