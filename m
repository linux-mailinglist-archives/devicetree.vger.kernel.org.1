Return-Path: <devicetree+bounces-20053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 942F87FDA02
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B78591C20D44
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A47832C8B;
	Wed, 29 Nov 2023 14:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OfJoOzH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4187ED67
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:44:23 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a03a900956dso189303666b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701269061; x=1701873861; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dsjff4lo1TEsrq1gFW/fhWlByzdhetZPF5yWDTWUZEA=;
        b=OfJoOzH5gIscy+ZAbv2JaHsuaw1ty3jXmtwZV/+/v8MmNICNBFvbz/shNyzuMh4U35
         awYo1KMnnmdW0L4eUvfp9BxTCwA3WxSQP2yb47La/N8qG0RogmCL/1MxuFkmfAXbR3Ly
         +LknmvUGb2MwK+1HK4eD0D+l9qL5hhuYyQpcMvLMpVayHZ24D7PEZIk4I7vaXWeJCyAf
         FVHWo7HH+fYfgcXykYfwLN07jEEqO01XRJQGV2anNeo2McpXkUQSXchCMiSUv749g0+b
         V9isoU+ruxDA0jcxwUxHtEMyl6b21RqYyoM/WlK4PFRMNddBIokvAb1jVhVDaY2+DOh6
         RfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701269061; x=1701873861;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dsjff4lo1TEsrq1gFW/fhWlByzdhetZPF5yWDTWUZEA=;
        b=G06mV7L4nZNcgKyfrLn3N2ztjJbfWoPQiWdiOlctHgWUtZazHKMLmjOtHmXhjzJQzS
         fURionQzLpRXo2HRwJAku74hq/XhpmAAQryDYPFGAG7ZWmq44nYmRWDnevguhp62asU/
         ro7PasdRE1SxN9qk0q/H2oLehReh4fIPXWGDUVm1712BFyX7/HdjIhoPlU6u4T//HgUo
         dzduKHaUS9fS4+NSqGTuYjQD8uYjhp+KmVoEpx6uUym/Xg7+Nu3HTAXzQR+kOI0Jgwxm
         NYo3oStLTKCAbPz7IORAf5qqG3Rqtzrl6HIIptpI6Vjg8BkP4as02r/m5HFG/K8bvAIA
         DYVQ==
X-Gm-Message-State: AOJu0YwRVP0nc7YiqYFToSeZ/BwBXq2w34Nt/ydtKlwTgrJImoU9O8Ep
	0LQVlQuks6Bxh6qW25RvK6FO3LyRehh/8CQP5hw=
X-Google-Smtp-Source: AGHT+IHImPQ0Kwr3vcyT4G4Q+oZKLib09Ofr5KqKmrosaTuVEe7JUhtFqqgVl+qKUMGIXXd3C0/kEQ==
X-Received: by 2002:a17:906:2c0f:b0:a04:837e:87ad with SMTP id e15-20020a1709062c0f00b00a04837e87admr19485534ejh.16.1701269061261;
        Wed, 29 Nov 2023 06:44:21 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id e27-20020a1709062c1b00b009fda627abd9sm7913738ejh.79.2023.11.29.06.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 06:44:20 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 15:44:01 +0100
Subject: [PATCH v3 04/12] dt-bindings: firmware: qcom,scm: Allow
 interconnect for everyone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231125-topic-rb1_feat-v3-4-4cbb567743bb@linaro.org>
References: <20231125-topic-rb1_feat-v3-0-4cbb567743bb@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v3-0-4cbb567743bb@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701269042; l=1156;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ATWzTDawV1rfiW1Rmh2AEVyFtBtlEoO5VeMvQ1CdaLU=;
 b=gCLbtSj3IXRE7+/if0uqlBv010cshUZDoa+DZ7Wgb9Nh9NbRTbzIuCXjHUUX/zxf3B95x8WDA
 mNJxa3PkIHpBoWKs0PxWFtCyzT3RZAqByn3YHBkdxhtCsWXsnLGEY7l
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Every Qualcomm SoC physically has a "CRYPTO0<->DDR" interconnect lane.
Allow this property to be present, no matter the SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 0613a37a851a..f3a87a8426d0 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -178,21 +178,6 @@ allOf:
           minItems: 3
           maxItems: 3
 
-  # Interconnects
-  - if:
-      not:
-        properties:
-          compatible:
-            contains:
-              enum:
-                - qcom,scm-qdu1000
-                - qcom,scm-sc8280xp
-                - qcom,scm-sm8450
-                - qcom,scm-sm8550
-    then:
-      properties:
-        interconnects: false
-
   # Interrupts
   - if:
       not:

-- 
2.43.0


