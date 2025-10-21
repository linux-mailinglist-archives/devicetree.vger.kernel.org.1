Return-Path: <devicetree+bounces-229322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBA9BF5F67
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9018E3533F5
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E2F2F361B;
	Tue, 21 Oct 2025 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ko5PChQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E2F2E0B69
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 11:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761045062; cv=none; b=OQhZwyhq14nBAuKIXJJtPRmRFBnjWtnxdcUmhuFBJh1yywtBL3RKS1IknXUTCBlc86XXABM3FTA5EqwqPEuJXcFrGpSmDakIwH55j1JQ81cByHwkhoyIFO096utPjvl7MaW8AcalmigBcP6Dx3vOfUWWa6VeKmBiMMZYAjBoyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761045062; c=relaxed/simple;
	bh=rx99oBPed2XJKc5oyfumby0hPyGNK0fC4ws05bQ8ryI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aEO8nuiR9+I3Su8gkeqgpoKFcWhrouyi6Py0vCSGhvBFCTPPt7y/tLgEedYHheUIKmoI0to9+G4qB6lPMnnNor2egR/0aMV+8oyxQWisYzutAktVScZEU2p8cBg36muV8yFCH5COqHDo2u1Q9ra/xdkAAjzyEiEJc+odoJAKrNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ko5PChQT; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4270a072a0bso573814f8f.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 04:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761045059; x=1761649859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZxh2RHqPkMdvbwb2L7q+GZUxl/+aVRyGR8X3MbWpuw=;
        b=ko5PChQTG5U4GLD9ym5HO0hJe6ioEBrROyasQr9lQHS+GJ1T5O4FFt5osxsGi/9jtK
         eTfnrmALGE1s0sdBEG3gJHnvYnHjViMnrG7GPOgco/o65Km5CJLiNL4yHLPJl5PnsWlA
         DonJSCwA1HdWMiKfrYeGng7S2H8vWeZbITW6bUxp3enH65HIYCvsLoJOJdYUX6m2cUqk
         JpiTmX/hj2J8kpan5PEmuxMSKseSV2p5u+fMhrcuDpongFenuDEJBA7oRQgBjq7jhZeS
         hVkurbMMTzNstBfufa2iX8RbRkMTPqAbiGRg0vKon8Dsz+JQlM5jENQXCdcuTTguNAXJ
         dG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761045059; x=1761649859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZxh2RHqPkMdvbwb2L7q+GZUxl/+aVRyGR8X3MbWpuw=;
        b=ljRi0DqNBz2oYnZ8+TGJvVFCTQAb6zxFLhuDGKkKFEHTSZv2qCD0GgX3Xv8fWLRWD2
         vxx+qNfLGNtBEIS0uMcECuu+G+dvRMGZg6Vmc8EIuKhBAiqnqLnCj1izapSQbOWpV7c1
         ZyephGAHevZxsIUX1xQGJz/H+7u4UYurhwl6Wb2sTOjBH3eOoOp9m9NDT6yukaUH5iuy
         t0QKU8NlUfjcbbpRRfpRlqfcfeg6i4QG9C46/ChlmlYmOBkUFVrira9hnc9xgtb6Hk1O
         sQOPt2DCbuLwsCdH3BCCL4weZ/fTmha66E3CogEpHiQKF28nBgLWHjjpbMH//X9Vjr2D
         BPyw==
X-Forwarded-Encrypted: i=1; AJvYcCXtAbOV74zg6GrtIE//9wYAHbdPvIzMifdKHOaKKooi4OhlIYIn5IaGqE7oFjVWs4fgVwELfualGjrZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzwbWSOXTd4a2MkG7RCz3xAr18dq0uOOaFu+oA4ww17ATlbUwf5
	JSD5mFRWuAdkB/I7CM9FJ96wZAMdWhw+MvTp4dkRLbkLYZg9HbW0BpvzUYZy1nyGPes=
X-Gm-Gg: ASbGncuv2zMoeqW/jb8ZpovokL6UVB1JVG0oq3kVftyfN5pNFzLiH1QJpqWVljpLZDd
	O96vN9Lus6sHlgsBOLsygEOjxTY+fxJ0UhjCtVtMBBiok2XQULEc4iETgqn27HRFH9DsE7ojfHM
	D8MAcN3SVmrWoYS5jtqMp8jt27qnGK1D2G5vWeuoJ/1iLkFYYkpqXsER2nrzWm2MEAoqyqEhCOn
	9UvBSylo7Z4s1PbAKhzgaAGnjwZERc1N5p4UUz+/cZ6AM1t+JUaDhx9bM2pVUrXRxTMfHvqZLSt
	2hF72s62jkqkH25Qc0cud9NvyTBmJ/amBdLT4gxNIFmINeanb+99KWsxxXfgsHRzzlC+dwx6Cn1
	7ni2bFKhx6ew+VjoS/wqF57rYICVNdkl+C1OtfmksGBnojIiON2BZ81EwpkYO2x93R326Itchgf
	6zm/El4FR7BhtF9DxzfmpHUr9dQzBBbvQI
X-Google-Smtp-Source: AGHT+IGVDBYsOBdDa5NG0DSZa5Yr0ZnxdYzLYQZD37fgSLb7c/VmYVbHh3NUBKG7BjssK7ci3BmYKg==
X-Received: by 2002:a05:6000:2311:b0:427:52a:7ca4 with SMTP id ffacd0b85a97d-4284e52da1fmr1195908f8f.4.1761045059441;
        Tue, 21 Oct 2025 04:10:59 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce06bsm19510485f8f.45.2025.10.21.04.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 04:10:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: display/msm: Reference DAI schema for DAI properties
Date: Tue, 21 Oct 2025 13:10:51 +0200
Message-ID: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DisplayPort nodes are DAIs (Digital Audio Interfaces): they have already
'sound-dai-cells'.  Reference the common DAI schema to bring common
properties for them, which allows also customizing DAI name prefix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml         | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044..08c273f707c1 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -198,6 +198,7 @@ allOf:
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
+        $ref: /schemas/sound/dai-common.yaml#
         oneOf:
           - required:
               - aux-bus
@@ -295,7 +296,7 @@ allOf:
           minItems: 6
           maxItems: 8
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.48.1


