Return-Path: <devicetree+bounces-22800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23922808D9C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 17:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8488D281AC6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267FA1798D;
	Thu,  7 Dec 2023 16:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iQ/xoP2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E6EB1701
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 08:37:31 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c032962c5so13537475e9.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 08:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701967049; x=1702571849; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8PEt+QfDDJ5QY0VRS7lu7uvP/+wct3MkvhUCwWW9fM=;
        b=iQ/xoP2xzZQFev4JpWtmZLIgFeFTDntI62VsNU/8Y7p3/TlRdQMkl9xZzYsVg/cotu
         6siMqv1jzIHguQfJAruvaw0/g93mwJeR233k6KT69r/flpt+2E08hS3OsjwpH0oKxcCE
         xE/vLSJsueCexzAWk2pDhzmra4egSBvQXQsRfx4dbxonrXaY1ZkaJQuW7w/VgHwv7GrW
         zXcjLujgssK2Ynn4HZ+cOfrrqu2z4i80Q+DIEe4BAh3UfzyK7/iKmemoY3uq6BcNTkQ7
         7c0n4+T8KtEtBC9q0jtydoan92cDuSPaa2g/Z8lZv66SX1Pv4kr3Ncg/7K3T0jHtZ9Kx
         eT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701967049; x=1702571849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8PEt+QfDDJ5QY0VRS7lu7uvP/+wct3MkvhUCwWW9fM=;
        b=d1gvfRMzQfxmxG2oi0kWgTxKMPqDb9Ykve2UPPLP0qsTJy72AgQIKHlCplSYThksoN
         ZkMq79Gajhhji/cyMvj5ZdLLodUy3ATscsba86hkV6Fw+ZYWIjsa826rLnI2tquoszE/
         JB2vvirF59yp4FeYldfsm4Ki6zoWvjYv9u4e2szk0ndoQwcTKaFK3GMLATUOtRAm5qNn
         kKntTMF/4Szq87cV2rFTuIDwl+ID0qmgNRP6swLWr7a5p3N3kOPfN039Hhnz0vwnrVSm
         dArttElTQgDbB0Y2X9VLzg5Ck7iU2fzqVHiQLJOIOVwOrl2+pGJE/IJ+qYy5NK/3zivk
         iC1Q==
X-Gm-Message-State: AOJu0YzZdt7JH57U/Y73QMecE5lj8P4P4VsoLw/xlRrATHhlLDnfLoV8
	qon/LiU4/WA94Byjyz/I8BZxHg==
X-Google-Smtp-Source: AGHT+IFLCN6F2mzcIWhVdSq3m7tUfYJ6ZWDTbU4UbdvqJr3nk6YfRX/d2qwCQlkaks0I8MeS786c/w==
X-Received: by 2002:a7b:cd06:0:b0:40c:26cc:370b with SMTP id f6-20020a7bcd06000000b0040c26cc370bmr610848wmj.235.1701967049265;
        Thu, 07 Dec 2023 08:37:29 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c35c500b004080f0376a0sm175424wmq.42.2023.12.07.08.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 08:37:28 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 07 Dec 2023 17:37:17 +0100
Subject: [PATCH 1/3] dt-bindings: display: msm: dp-controller: document
 SM8650 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231207-topic-sm8650-upstream-dp-v1-1-b762c06965bb@linaro.org>
References: <20231207-topic-sm8650-upstream-dp-v1-0-b762c06965bb@linaro.org>
In-Reply-To: <20231207-topic-sm8650-upstream-dp-v1-0-b762c06965bb@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8Em1kNoxZRedKPhl74utUuPSMeYjKFMJl1aSIOBqFzQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlcfTFRGvf7rBDBItsfhtoUApeP/mdVguFO2qHon6S
 RGsSnoaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZXH0xQAKCRB33NvayMhJ0SgDD/
 0f950v6sK0PIkIQ0ybLTR/EWENY1vCiQIHZq7mENWMLMtcDzsPiiVoj/4/IC/eQFVuO34BKcnL8jOA
 Ijcy4c5jL5p1DnYEMLnJXGsGvawAlQ8JCGTVRqG7MsAnb4gyn2e+EpYz7QxBun/nsJy6CZVFULIRgC
 u1fpGFXW+od5wh+nW2inWfloL3ls9BrVMvlqDhjYxyk8QIs3vKfUg8I5lBKtuRqUTfBHdF3R6vbTEq
 +GEA4wQj2MlS1NZ1kLBeFGuSsGL7p3de2hO2biUcpsOnz5YGaS7iOu2NLRM+314s1FN33SuM4NX7eQ
 PVMvxsjDXvGYeoCZT1W1C0M0AIyT0CZ2kZL2nqyrq9/YdW5E3QGDJUMDXOubOhztl5wH7fnmp6M/6C
 Vh9zVSTQCz0WSi4YoYPMz1mnKh0zb6swuuNKkdiyX8utXeeEeRVGkMYIDDz+JGLNJXVNsGjNGb9/9y
 wa9bBLR+umKkm6CtIxYlYdBegkf067dz1hljRN8wxcWqAJsgxcacyLGFloS99PkjB7eEP4ilXBnhs1
 1CkYDJtMKku+nw3r7pB1+aJzhgTj0s6SpJnAk6xAvHdyXQaPNdVfh7OP4HQ30eP0V5ME67iSFRo20F
 QAz9TBSZF+6qEttJSALe+6tBPkmaFiP/4f4+rFK/MecdiQ6oNdckgNitj89A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DisplayPort controller found in the Qualcomm SM8650 SoC,
the Controller base addresses and layout differ and thus cannot use
the SM8350 compatible as fallback.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml    | 1 +
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index dbe398f84ffb..93ded71c52d7 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,sc8280xp-edp
           - qcom,sdm845-dp
           - qcom,sm8350-dp
+          - qcom,sm8650-dp
       - items:
           - enum:
               - qcom,sm8250-dp
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
index 5638c1ea692e..bd11119dc93d 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
@@ -41,6 +41,12 @@ patternProperties:
       compatible:
         const: qcom,sm8650-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        const: qcom,sm8650-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     properties:

-- 
2.34.1


