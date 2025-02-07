Return-Path: <devicetree+bounces-143904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B990A2C0ED
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE2D01697B8
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3C31DED64;
	Fri,  7 Feb 2025 10:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VkaV3EXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924671DED4C
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 10:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738925445; cv=none; b=ZWNQcF4sdpZpMr+/LUrUx/XZh9l4bYdhldvbws7t1RZzljm/cJlW3F9aK+cn3Qv2I0ZyTa8MmRB1EXbvt6FqVPPwZxIT9HqlIPzuXQGEzZYQDLsaAcPmvl8CLjNej8UOTw5pVlabUBYzQShd5+oV2CLo1TRAkPPZd+ZLFxLc8BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738925445; c=relaxed/simple;
	bh=dSRoyjk/LLc0wZ5pRJ9GYPfexVGSK5yA1Y3qknTE2Ls=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DGikjvxklfwr10ZkToOVx5KM8GdBoeeHRkRBKYMogBIzoPoKubuLxiCr84kRzFG2AeUundiZqplyRJV/IwEtru69SrZLG6tX4qPwLShzWgTN2af4VO7WHDg2PahoE/v7dzHWEstCx4vcXGEHsn49+tME3/wRiUPzrc7MF1UNtSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VkaV3EXz; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so19056765e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 02:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738925442; x=1739530242; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/IumZi2mO95I/VuFFDFwokd0aVkiJwKGF91Pl5x5axc=;
        b=VkaV3EXz7tWE+QyMB9jA1g4UM9dDM7SvQXUdcmz0+SUXyB2yaXEq8dW0Gt8Foe920c
         4B9MNU1rSVQrPJ7VWh69CD/wWtJtX/vpH0r+lj/xYE3n/it/M29lcCs7+pQOJ24NIzTg
         EFECwAett4iQBnda1kLjOdOCf4WVx2R3lmnjRLbNJ8rI0YxZHElRe4M23xa1sd+TbFc9
         QKoqV3JQLnvbKLcAdPYU+RpmEJU4DaGHTxLBn7WfDqgkANg32jIN2WrYq7unoXTnLgIC
         tywjO/kCvDIvdnXTuRFNP9BMi7EHmOdePwaXszcDmxIAjF7dQAcNJJDsasQ1wXU8qLaV
         31zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738925442; x=1739530242;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/IumZi2mO95I/VuFFDFwokd0aVkiJwKGF91Pl5x5axc=;
        b=KI3Q4TDV2PjgiN0Utz2V/mXMwqlUhnbxcpZhVb93Ox8XVtYlhpvBw3bEdzSYCdpTye
         VtEwT6sN6dj4JChvxE+0ZgEakOrBDJv9M5E7TsJYcqFBJ74pl7CsUBoq/j4U90OiMSyc
         0JW8hZEnuuVk0wStJGVyt+MXrOhw1NBCI60lMmV9+xdq2mXsgqWdEW79rJCznl3wRhHR
         WCkUHERiFi7fs5l4bbLa9JuYH7LrA6QMDr/Q61bESan9vxQtZ5seSBVMdpYZEAjDU/8w
         Sv3EnuF2kmObT0qEqRIUkjUx0ZSLDdG1INUq4/SlbK3OZq2Coy25wPVv732F0Ua1pzrP
         sKjA==
X-Forwarded-Encrypted: i=1; AJvYcCVbb2PO3MZBQpUbHO91nNTT0i5XsGF7m6WZm+gLpvj/lM/Dmu+czguTkbEterWa97+AYjrJX/3R1TMu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Tg0jEBaV5mPIGPy2aL6o6lkiYz1OrWjVFYnQFL/hh7pJ7bYf
	6bnqZj+a4mkDrWZodp4yJqz0wvJIEsUv90fxBmPa+dzIsJTf2a/Dmmzt4XH0KWk=
X-Gm-Gg: ASbGncsmPqs3GYJsNwrn7PAGbNB+NvCk6eQQ9mGjKdgkdVO1iGAqodwBle7/F9tceLF
	9XUmz7731Lk4RCooSdsl2PW2dZh9U6nTJBI9AHo8CkwErDvkzXP7u/MiQpJguj8mAF702UEJVIh
	sxcMpKFaXAvM/33HgO8ErpcIbLPg4tmH+OkVal8ni2iTlel3fbEReFhP1Vs8o7QQTIh30tGdskr
	FJ+ekHVHyfFX9LLaB1cYTZ6ITk6WWIrX/ucvGDeTO2GO9xw78qkyqDjXPtDAbeuYHhNFmZKlACY
	k8bOgAnPocRmw8HZuU778c6ubUOgJoiZngQb
X-Google-Smtp-Source: AGHT+IGzmf7u8lOV91tQ2bUO6AOqOzShvP6P0N0+WwarOOa/wfspqpwZ4Rf3iZg3JHMLcnGdfnkCsQ==
X-Received: by 2002:a05:6000:1a8a:b0:38d:b2a1:244e with SMTP id ffacd0b85a97d-38dc935f87bmr1688184f8f.41.1738925441775;
        Fri, 07 Feb 2025 02:50:41 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390daf4480sm85968635e9.27.2025.02.07.02.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 02:50:41 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] dt-bindings: display: qcom,sm8[56]50-mdss: only
 document the mdp0-mem interconnect path
Date: Fri, 07 Feb 2025 11:50:36 +0100
Message-Id: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v1-0-852b1d6aee46@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHzlpWcC/x2NQQrCQAwAv1JyNhAjS9WviAfdpDWHZstmkULp3
 108zhxmdgitpgH3YYeqXwsr3uF8GiB/Xj4rmnQGJk7ENGIrq2WM5bolwkUi0LxpzcVdc8O3uZj
 PgZNtKHIb08R8EUrQi2vVrv+3x/M4fto8a9V9AAAA
X-Change-ID: 20250207-topic-sm8x50-mdss-interconnect-bindings-fix-dd975f223d05
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1173;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=dSRoyjk/LLc0wZ5pRJ9GYPfexVGSK5yA1Y3qknTE2Ls=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnpeV/K8vJ2pQ56PUAoz+0XinHG2mP2E+oDhZ8jXi0
 f85TrEGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6XlfwAKCRB33NvayMhJ0QiyD/
 9iUH3Rp2L1QCaj45OJfAnmUngLFmc0VQHV59TFpjfXaPfqfOMTWtHJ/4ZP8wFQJCsxl7yaAzDm6UO4
 zlFHFM9MoND+vjxn1msUPfMmIkYL08fg8GmtAgRwVGTgyQaW8Y/cTxi8Wc7mmQWo8tmZM/GxCbOT72
 yRqCu59o14WNCgkx5ASS/VtMlXALTzIiciepqqKKHRaIT+MSnzgAjKhLjH5PX/9/SqvBXScWAJlpXU
 AmIcI2S82HdjSf1xRZRmTZGZkp1KC14BVM7I/jkA03nzrDEezN284/oo0+Al5ddVMrGc52p4n9uZZ6
 GOTlUdiIwt8wzAwlbzgM+vE1wFAKpOK/wC04wgk74CNTrF8VP/lhsFAeL5HX1iJyNptRe5CE31/okI
 VeUnjknXAFfnNURGiEikQSEpC9EI8JdCRCwVkcbK2mgzR6AnYVGz0KnFaWPOYBN5CNGuU4F6Yyu2bX
 u6rD+sxyXTRD3FkOFPmrpuhSt4RRUjjLgKJe0837rtReagRU8hTueZfih8sf0Y0Gdst+PQPRd81ojD
 fzeJP1Spg3tCntBFFLFK2UhQ9vXwWoeq4/g/+KPaCGAuCSaMLYn67TJhu0VKBtXrUTEEOnr5Wem1n0
 yvkD6ast+usxuP7baNqyx2YBbDnjuPvDxdsDgqGXrk9Vu7ulA2eIXLS8P9wA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 & SM8650 SoCs, so only support a single
mdp0-mem interconnect entry.

This fixes the following errors:
display-subsystem@ae00000: interconnects: [[200, 3, 7, 32, 1, 7]] is too short
        from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#
display-subsystem@ae00000: interconnect-names: ['mdp0-mem'] is too short
        from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      dt-bindings: display: qcom,sm8550-mdss: only document the mdp0-mem interconnect path
      dt-bindings: display: qcom,sm8650-mdss: only document the mdp0-mem interconnect path

 Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml | 4 ++--
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)
---
base-commit: 808eb958781e4ebb6e9c0962af2e856767e20f45
change-id: 20250207-topic-sm8x50-mdss-interconnect-bindings-fix-dd975f223d05

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


