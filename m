Return-Path: <devicetree+bounces-3206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 435B87ADA76
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C5D51281451
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522101CA81;
	Mon, 25 Sep 2023 14:50:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3351C29C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:50:55 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE1A1BB
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:42 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9aa2c6f0806so807807266b.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695653441; x=1696258241; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ir9r9aQtaSZLleag9LnQwnbzzTQdAeEYrkqtlWNxaqg=;
        b=bOuDOD+RpyFvJG2sgsMNlDk4IvQAy6xtX97834h/Ay4UjBfklJQ+vul+f6wYkEy4HS
         +aNZshIZK6NZMtKvy2uRJ0tsyuxo8/Fc21zeZWqLzIztVnCGQdAy67cmCFO5dl+ErzmM
         D4plO9cLFAKnluvBpA4AoD/Qt2od3Jk5O6buqaYHCFBD8ASbjlDZKZOOTExiBL9NXhXN
         fShdDNX0/4YkYm2VcEk4hYkSqJ5hFxD6uITBeF9qzTNgrCTAhd3OlUuMvn7QmLGjtXl9
         WA+I9w/JdkeZp5J4CWl7HgAnhNO6qsYzFCMhSFuCczpzSisEduAZD0yrMwb2Q1q/69vY
         15WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695653441; x=1696258241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ir9r9aQtaSZLleag9LnQwnbzzTQdAeEYrkqtlWNxaqg=;
        b=A41rFAfPM0GgmmtPjet6nFlYkYFXdHUVMhVFC/w2ti/g6ML+En2MS/nAJ7wFCl6qfx
         RI0wO5yKq7LFqilbgsjvBOE/x7V37fy5VcB79awpBB52wTfC8ASn6ZlNLZDFQYEj63aK
         rBJozf+mw7ztGGl4x8XnGUkI8MagjTgp9rMHOyrp259XXh3iMz5z3E3nDJz50mkwm5AH
         sRuThuXArs9SU3NrM6vufAbzIjNV2ICBG9smSeB6tCxj0MDX2DzvizRg7lpyCkYWaT3g
         vLE0Dq83uj+x3dKwj1puZ+Uv6AbApB3mxVKMxJ3SKeLBnn5ayBNFFo/+vX4XsLJUBPxs
         oxIg==
X-Gm-Message-State: AOJu0YwpU/1KoVVrc2FJk1IOa+24pCYXF1Au5Tf60VYijUTQv2XERR7L
	zWb5dZse9xDJJrJ+n2GC66voDQ==
X-Google-Smtp-Source: AGHT+IGHgppQ3t1g2t9wIH8gzziGpmJuiaRZ/DBH8tYnX7LyRs0DsJWIUJeBhl3sIsr96cxKd34DGQ==
X-Received: by 2002:a17:906:51c9:b0:9ae:82b4:e309 with SMTP id v9-20020a17090651c900b009ae82b4e309mr6338031ejk.0.1695653440967;
        Mon, 25 Sep 2023 07:50:40 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id k8-20020a170906a38800b0099bc2d1429csm6426640ejz.72.2023.09.25.07.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:50:40 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 25 Sep 2023 16:50:32 +0200
Subject: [PATCH v5 03/10] dt-bindings: display/msm/gpu: Allow A7xx SKUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v5-3-3dc527b472d7@linaro.org>
References: <20230628-topic-a7xx_drmmsm-v5-0-3dc527b472d7@linaro.org>
In-Reply-To: <20230628-topic-a7xx_drmmsm-v5-0-3dc527b472d7@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Andy Gross <agross@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695653434; l=1566;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=VV4z2afr+St9/dA+OjbMmt+l3E+tCjarurRFVAL3RG8=;
 b=4eEgEPSWcXcG1XOQWyF6YaP+CTqzt1E587uUOjGP0HmHvsTNjiBkWW/tLiSqzWD/JO3j/KXdI
 64z6gyrDFYpCrI9hRLtQhTiLfCrFW+MsMrtlMDTn7b4jVPCYXnI11gO
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Allow A7xx SKUs, such as the A730 GPU found on SM8450 and friends.
They use GMU for all things DVFS, just like most A6xx GPUs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # sm8450
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 56b9b247e8c2..b019db954793 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -23,7 +23,7 @@ properties:
           The driver is parsing the compat string for Adreno to
           figure out the gpu-id and patch level.
         items:
-          - pattern: '^qcom,adreno-[3-6][0-9][0-9]\.[0-9]$'
+          - pattern: '^qcom,adreno-[3-7][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno
       - description: |
           The driver is parsing the compat string for Imageon to
@@ -203,7 +203,7 @@ allOf:
         properties:
           compatible:
             contains:
-              pattern: '^qcom,adreno-6[0-9][0-9]\.[0-9]$'
+              pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]$'
 
       then: # Starting with A6xx, the clocks are usually defined in the GMU node
         properties:

-- 
2.42.0


