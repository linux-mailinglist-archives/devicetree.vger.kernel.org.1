Return-Path: <devicetree+bounces-11596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5677D635A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8515D281C8F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373A91864B;
	Wed, 25 Oct 2023 07:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W9M+tyQR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4AC18C32
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:35:46 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0ECF3852
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:10 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso797157666b.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219309; x=1698824109; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z4zOtiipUT8sw701OMgXZHG72ZF/cn8D9ojdqcZ+I6M=;
        b=W9M+tyQRyCC37AFIud/4M80c5fpBYcDp47q1dxaceoX9cl6xjT/Ab3W3w7VRnFY5GE
         EnQad//dZHFEjFIXSqpYYq12ZBh48/WB3WP6NpIaTJyzZXsmTPXGJvJRk7gOTZrcEcss
         8uaIWEL31anPCRjWIc6UVCjDBuI+5otbe23P0NDj+W+v4j0QL2728PepWYB6nY3ktmm/
         uyiXmI/p8c1mCwWLVnoiV+y94N/wXlunyAV5Pbkinjrlh5RB/R1IwGgvbgmsxQ5K2XKK
         wdRo9uiiZb478kVkDGuOEe00ore/0uAIcWsXB04VahKu7TZT46cFTaPT9mUtP6JZWEFO
         rdXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219309; x=1698824109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z4zOtiipUT8sw701OMgXZHG72ZF/cn8D9ojdqcZ+I6M=;
        b=FpFRbB7a3gpJfsgNz2N8fPkrHkz08srGjrjF2rUNfSVhpFGCqrtP9+ALUyOVCeIE3M
         PNVl2paRSLz1WGu0MG4b58iCU35+1iak7S7AwdLbCz6QvmI8hzyrJy5DO9O8FnvrGLsY
         L0N2lA/soeHAqxgG+FmMWFlh/oDpfqzYFhvPBof0ES6WtrUXQ7uYkzVu2KgOYejaY3VJ
         pAXUDPC3oxsgqqy2ITK1mqjoz+uxT45wrE3lUUH2uw4mNsPe9BSaAujXQJV4+WuFeFhB
         S7mm27a5kQaNHU56hBZd2Z7y0uQUUUVVGrbgWKflvEyiO2PRf3QhQziyrIR+Y0rXsg8S
         BcVQ==
X-Gm-Message-State: AOJu0YzOT9PglLQlMaeZerR/o8knMg7+3UoZabrxhqyyt6PU5ijTtPOg
	yFBTCqrbylN7bdFRI+EkQCnBbw==
X-Google-Smtp-Source: AGHT+IEWIlRxJHjlqkDhPQzwZYLZEGQw2y+NFgK0dXdjyK25j8sEgY+p48QN/rjnemCH40nSMuXAxw==
X-Received: by 2002:a17:907:940a:b0:9bf:2ddf:1bca with SMTP id dk10-20020a170907940a00b009bf2ddf1bcamr10284265ejc.62.1698219308901;
        Wed, 25 Oct 2023 00:35:08 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d60d2000000b003248a490e3asm11449058wrt.39.2023.10.25.00.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:00 +0200
Subject: [PATCH 2/8] dt-bindings: display: msm-dsi-controller-main:
 document the SM8650 DSI Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-mdss-v1-2-bb219b8c7a51@linaro.org>
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1121;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RmyjIW0lZguWP9hWwmPF3DabpwwT0EuPrdA5wtaVnxE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUmE/hLSdAHnisyVX6XnsRoZy11MItZW/udDqz5
 NGspU5iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFJgAKCRB33NvayMhJ0T8BD/
 4gJS5f7QwonEjarJZE7rXHRj4qWZe2gJ9BUxjXRBaFYLeFFwEBAtOyOMAiE1dRXilnJj0TUDZcKC3A
 BHhMD5VsCXzEmta/5kPIGS9OZjZvJkdVzPkp8vyiyokQfUiUdv8sjD0NwOVWNTC8xIlCYK7P6pPE+J
 UHY1JOLMIHJierdDgTpHfyM8PSR7rCb1luhfelsmTRIL3BIWULwiTfdvPBNGjluXLOPCizkxqLTWJF
 wk669lsH26PKp8pmWCDHke6OIU//IVF2fy7AwyLJLMNhhIij0w+O2Ry97rDoEcQyOshJNS1C3lvu9j
 WB6iwaBu7RtVOwde9E8BNjBtktEbR5ZTX1kLd6l0Ah/5u+NGOKMCNKmVecubQmnGGuLg+XQk+AKzPq
 7sD8RBXk/CNJGqz0Q8YuQJN2gMP5MxiIZo+kBq20Bo3EHGHSFc97ZcakRDdM0bq4bwQAZdROJrtxvA
 vv//I9Ouq8Xzl4gCBLnKZUYXjS74zdtNRYh+cmwl/NzFuABX5PfioTJFRvb86YkMrCxP74m8lqBz94
 LfL4eMGRk2Hy2l2v13+2J5tKHzOndjb32BTfS3to35Khyt4tpf490OPG877c5TskAPKyiuiN+ueHBf
 u/G9qOnRMDygT+Y0Ltuk/YSvUH68+AoLeHTAfWaD6KQtSu4O4cfaXZSxquZg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DSI Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index c6dbab65d5f7..24944979d500 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -35,6 +35,7 @@ properties:
               - qcom,sm8350-dsi-ctrl
               - qcom,sm8450-dsi-ctrl
               - qcom,sm8550-dsi-ctrl
+              - qcom,sm8650-dsi-ctrl
           - const: qcom,mdss-dsi-ctrl
       - enum:
           - qcom,dsi-ctrl-6g-qcm2290
@@ -333,6 +334,7 @@ allOf:
               - qcom,sm8350-dsi-ctrl
               - qcom,sm8450-dsi-ctrl
               - qcom,sm8550-dsi-ctrl
+              - qcom,sm8650-dsi-ctrl
     then:
       properties:
         clocks:

-- 
2.34.1


