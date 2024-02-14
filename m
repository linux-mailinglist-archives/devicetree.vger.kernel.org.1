Return-Path: <devicetree+bounces-41825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A40088554B1
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 22:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B4652885D1
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 21:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B948713EFFC;
	Wed, 14 Feb 2024 21:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RFuIdK3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA36F12F594
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 21:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707945891; cv=none; b=DGbmHAyuRYB1a5QJwOvuhcmITnGrUst89zKMqW3hUWtNJhG2BwjhQpoWbl2gT1+KbXjoA/ihoQknWSj6m1NZwTYGkoIvfBI5XMduWnHuSp07HlFuvMAaphN/ZS1FOh9svJP4YQHcZBAtj2vZbWHKEmPTqK0aRS1XGoGFO5cZczQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707945891; c=relaxed/simple;
	bh=3fqkWRAWEhMvUeo5imQmShT7g1nWczGCo+8D0wU2SRQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SMwUJT5n+rktYhAktSqW0KH3ie/Djuc24yzdNm8G0zHNyUXkWHTQJUCLsN6qsveIZUFXZwvpNHb0Q2BlT9Q8fLcaLabJBmrluPoFFFZWmetSQhyr1yomvWler4dWzXFl6C1gTg+YOd/VMESZc9bPwfZpzgLCLkvE62bJ0yCnL2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RFuIdK3t; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d0e521de4eso2064421fa.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 13:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707945888; x=1708550688; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5GynGv5hpMUN3bzrSGDn2ezOmfgm2bwcrCwWDNKglf8=;
        b=RFuIdK3tAOZYn9DFDh9vIMNXPVH8aKF2f/K7BondWTP9l0wpzC+AVZBuPQXWNV+Cc2
         GXGguGY8cVuAFoeNxktYuApLZKljAYX7AR4QIwSHZZxKk3HoTN/SDlbm2ii4Od2Bss4k
         23TZLcFxOf348i++Y6Z9UFXZH07ZTSPWlttcPkVdKyr4d9nYWvrgBukVktWIg5qwd5Gn
         RJvTSXJmmS37DpLeV6b8d0gbSldhxpvoje8cqyNwml+ncbZWbj6pBr5gn0mMVoo3Fr5O
         iv6cJL47EyWstSc4AVavQxOCKjSCEcAQPEXxAQpqr5+PTfoi4bGiU5+taJ7buPAVdsfs
         roOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707945888; x=1708550688;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5GynGv5hpMUN3bzrSGDn2ezOmfgm2bwcrCwWDNKglf8=;
        b=uB6ySO6rcOxeo+LpaAiMsoad0pZGDxWXZTU1K9iV4ySnzpBXP54JBsw6VryEel6pQw
         iCTfMIwzA3p5whJ6nAtAafHOyk5wpNIRg5/tMs1Xh3IRKtyg/dc6vygQdDKf/nwxdIYA
         7QHghKQ+yg6ehyUxnztL0pWcY9Uk7Sk4McqEYca43aoCHvmTgY4eitE/dDZe/5653dcs
         Is6F5RwWyjepRfG7ZBQLMX8Aop8RtIcu++Mx0K8Ay1GS8o781tcNzPZiD2UeLmPMWxsa
         etSZMJ3mfWSRjUsKzOWRocSLOktA+TNUG0vE7IEN7UzcV2PX1UTltUaJkJwkIAl6fJGy
         oQog==
X-Forwarded-Encrypted: i=1; AJvYcCW7SOX0mqmdePSMEAWSVkwdSMEXcMHNByXezBgGPkXkv1qRV4rd274RkQKWmSlLW2sDwRlUoQTlHN64FcihXuskL4susMqFwfAG4Q==
X-Gm-Message-State: AOJu0Ywp64SDUS9lREpTopJtrkuufqRDuopBYOdwlIeqXz7usNfqK3xJ
	hwGITI9G9Mie+lHD9nMTq4mqvChPceyAf1K0UiK+lyI2iX0uINlbBzpZ7Ix8p1A=
X-Google-Smtp-Source: AGHT+IF1zYdQY6Fg3pr3occ/bPpC/RBb0lJyFppghQlbMqzmwH+rJFKs5cbfkYYL9QR5yTiHTT5DJA==
X-Received: by 2002:a2e:bc22:0:b0:2d0:d49d:5c32 with SMTP id b34-20020a2ebc22000000b002d0d49d5c32mr3821749ljf.12.1707945885714;
        Wed, 14 Feb 2024 13:24:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUbAg+u9fa+uaW2FdbLd4HsrqBm6PIhpHLl+GdKvVpJB98+OPPX6yXBsYCzepwXsb8X3U0ZOhQSdgaMznUTvdJX/w+N3Nxjzs9gu/PuzgxyhI0lkYbqY5eod0OKErk0JDsYQINnR9sqdaW+P+/NU32PESLVmh+aLwNyrrXY8H7/+wYy82GakF/Dfthy03dcHlwRuYl2DR/sa2qet8lQh2hwIEmEC/crrhrLtwatSJy6xGhjb9C1FsgO7L5AALFvJBfuVHt9E96G44z3mtHUSFVQ2kQHNaLeIv1hgHyrTYJTIMscB1mwTJ6qFA+vtUq5GZn+N/6yFVAveZNLdh1FvhtLZRC1N1J9+WIczTZRh+Dfc4518WfTLbIeGDYLRPZcsa+TfkNU7axufVo2kMzIa4cTiMlu8aK/R62cVDy3VpM4P6TgXhamzjz7377OPtmY13NRyl/SKKDiYEbD9yATZINL7DNwFodBBwJtp+/VNonqUlBUxTQaGUVZ89C4rZR04S6UJr2vnaLDMV7qS2BfX50F7OJnIs2wZWDepwxLheWVQDnDDx1fzBFI5p4V3FqEsROKMq+TrgOry6+emIqgt3MKUWp4jnVrZFROUDMLLGaP3LoDqlZ3rZxsvpZ54wqdKMEiZalo9jUZa6a1CZR+4k37BQykYDH5wXuifarevL+FyTtuXdgK1u9OD6HWO4i1PFgWnSZQCRHJwvdmVRTz8EHeujiXeXXP8DUH9aiViudCPw==
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id r16-20020aa7c150000000b0056399fa69absm257298edp.26.2024.02.14.13.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 13:24:45 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/4] drm/msm: Add display support for X1E80100
Date: Wed, 14 Feb 2024 23:24:29 +0200
Message-Id: <20240214-x1e80100-display-v2-0-cf05ba887453@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI0vzWUC/2WNQQqDMBAAv1JybsompkV76j+Kh8SsuhAS2bSii
 H9v9NrjDAyziYxMmMXzsgnGmTKlWEBfL6IbbRxQki8sNOhKaVByUViDApCe8hTsKq15VNoYAGd
 7UTJnM0rHNnZjCeM3hCInxp6W8/NuC4+UP4nXczurwx4HA0o3/4dZSZDgG3S1vhvfwytQtJxui
 QfR7vv+A+899G7GAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1722; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3fqkWRAWEhMvUeo5imQmShT7g1nWczGCo+8D0wU2SRQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlzS+SsgOP2uNOWDXJJI7JxGc/yaoyN7/cVmOR3
 J7kdEYEE3CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc0vkgAKCRAbX0TJAJUV
 VlLhEACrW1OJirPhYh8H2yBMdiFHi72cmk4nG7isKN5Xr2qPxg3vSiTHWZjhWVFG3xG+h46TqQr
 PzfWVLbkXMAa8xhi5q8TbqtJDmi2SeT1/R66V4l9gv3eNOqtjAgsg8wEuFKcjGlRoL/aJjXcAL8
 ijg0Z9lSPBZpTzHG8KdcddQIIrUgqsRaphjUH8OAU2hgnC57hrToShWXQlA0L7Y0ajUP+QdJxSh
 mxwmZuKVj3HTCyx6b59wQqJXxS1k9uviaKbC3Vu7aVzRZAkx5dTSxb8Eeh3uv1fNri0L1wXuoPK
 uic/0FYyqmsmBSYF+5K6RsiOKUUsmpJdzO6s/I51WqUCYdRxi932DXkGMx+Vv9nCJk1JHVC8CdQ
 ZdIAQvQumEexBkBvYOiFWjqa7+/+K3BsNw8ABDSy2tuvexgi2IZw8/CqP+iaLg7xI+r15z7mJlA
 aTTPy2H0Xyxn8Wqp+CW7N+clCO66c4r5lSuU5wka1N2PMGIJUfrOBl4xLLMVMG8X/wY4lpK/bsS
 MOgACkl8shukkAshAi0gSuIWB8fQiAigh7VLqvjgzlny65cotybXCjVx6NuAaTayvXUkT1C29IK
 xMyGy8qD9uTtu6rJjAVpDlDogJDMm0DFw5Pkp/4nGhWMROohaPPYYvRjjj6LZ8NDBGs0xZh65vy
 Tdi6r+iAt+IAbJQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds support for display for X1E80100.
The support for embedded DisplayPort on this platform will not
be enabled using the connetor type from driver match data,
but through some 'is-edp' property via DT. This subsequent work
will be part of a separate patchset.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
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
      dt-bindings: display/msm: document MDSS on X1E80100
      dt-bindings: display/msm: Document the DPU for X1E80100
      drm/msm: mdss: Add X1E80100 support
      drm/msm/dpu: Add X1E80100 support

 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   4 +-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 252 ++++++++++++
 .../drm/msm/disp/dpu1/catalog/dpu_9_2_x1e80100.h   | 449 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                     |  13 +
 7 files changed, 721 insertions(+), 1 deletion(-)
---
base-commit: 85a96a047f413da4b663919a4ced39a4715c6835
change-id: 20231201-x1e80100-display-a46324400baf

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


