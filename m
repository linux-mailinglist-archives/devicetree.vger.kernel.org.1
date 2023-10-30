Return-Path: <devicetree+bounces-12840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D47677DB83C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DA5E2815C6
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412673D7F;
	Mon, 30 Oct 2023 10:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="otz8bmLd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B2512E50
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:36:48 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF78D3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:46 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40838915cecso34089015e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698662205; x=1699267005; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jJA6FvyzBdV4oaFFbQEfL8vLOpiwYy2jt4W5/R0Bx0=;
        b=otz8bmLd7xUlRnsx1wY5wWqnhYQgoet3DN/Z1wnNeDSVC1E2j4O+PIxw/NoKHx5TTc
         L5jLNEZsL8vVcOx37LBIt0xqIumT+22hVlE8SquGOTZz0CRo/yPhFMzcxtXT197obq7K
         2jE/HjKsbuUyEafbuPXwqdHoapTwz7CpLXpOMHtVJ12nhXO2O6fF+T75zkRiKBhxnYGs
         j+ggAe87koQc5o3yM3sbm/4KjWxzJSkmQQvHOkEjgYmz1UYG1+i2mSwJaiZSL98q3lHk
         BoI/wOdvc3ay8aP8FofDKCHBVVEJGNKAeHxL6dnQDrSTp/Xfyp8MKPxu/mhPhbMP0XHW
         sqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698662205; x=1699267005;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jJA6FvyzBdV4oaFFbQEfL8vLOpiwYy2jt4W5/R0Bx0=;
        b=F19WCzLe7EySVndohZNQ2W0+KGjr8sYfaywjvAvHiKsAoT5HwB0/5O4ZdtKM8yKjqO
         nITryQm6J6lMusiY4MIov+ApfHLy9VL3uBy9m6TwSvO3xHT3ZAblvalrXIK25zZUxoCx
         f+S3tEvwXL+enRJnCVuGXjNBPXQLzb04LoUQXSJEGUy2RH8lQFs/C/KGhW07MjtDPJBN
         FF+TIYm3pgVynVf4aJrJqfJdPlDt1j16FP0vAVFyRQ3SFXY1gN6icRZ8Kv9af83FwCgJ
         JeHEFgBBdvxWnU1isQYYV615pK6Y+afpJKELmV5XXnKMPTUTAJUjn5REohBvCqpMxwgQ
         2/zA==
X-Gm-Message-State: AOJu0YzRlzyepE3CXH37VDWBYh/OpSBkZAXWQr+3ygOPTnebMrjsdwkg
	zyTpzW9ADLTZbBaUlYjOy4ZxlA==
X-Google-Smtp-Source: AGHT+IEeVna2B4vgqYf3qgMr60NDi22xHHrS6/BBHHXFfgvcpqpbfmjptxClZMjSiCnTSyuKvx8Muw==
X-Received: by 2002:a05:600c:548f:b0:405:49aa:d578 with SMTP id iv15-20020a05600c548f00b0040549aad578mr7921279wmb.37.1698662205383;
        Mon, 30 Oct 2023 03:36:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c458500b004060f0a0fd5sm8783209wmo.13.2023.10.30.03.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 03:36:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 11:36:24 +0100
Subject: [PATCH v2 2/8] dt-bindings: display: msm-dsi-controller-main:
 document the SM8650 DSI Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-mdss-v2-2-43f1887c82b8@linaro.org>
References: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
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
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1188;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7BNrdKXKV/4oNSNX94Rau4amrT1G6Ff4tZmVAsgnGfc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP4c2KiuBCvGC/0B+iGFp+H3PYmMuJgRbWk6YxTEt
 d5YR552JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT+HNgAKCRB33NvayMhJ0Wh+D/
 0Y/5gtQcRq7vuhQwuHw3AnD0Z3+L21BQKv1jHU6rRC62TGX6Am6cJNJo38ALwbPEI6Cll7FN9Bsf49
 zcRXYaQAEWcfYEWuB9dk9TYazLbdfTtOkvuWPZXAWaYLHpTn8B0aSdL08FUSdRdA6KvAEVWUSpHz6r
 Frzzt9SjZ9VWjcnHXv4ilpHjYE4JIuiQ7/jKVES3pi1CLXfwqR/nv00D5uqGc7iIqXQQrLXE5MXIBB
 RKceLx+1k6HLGnud13rE0ecpezq2EjMkx3yZdha7uXopPs2XzopoHSSaH11/hgp7XhZc6G3k4/2kdP
 XuaVrbh10qQ/2Z8dNc1bnb1crxWhkNSRLUEpHNCjiY0jeHm06aR7kwoSrTpA7xyHcXA7kKw0jUaRvU
 dCS5yUqyXOgzAjZ2B0elg3fvc17V1jmHUmUpNbNQgjfuj6+K5JT5faTMIc5rzOQ5apTI56Oi541raj
 wZdl96EkyURlFGTNVuVN6LWAnODDsRO/TfUDG+hd0f4yuu6acITm6wSlYMGY1K+vIHdBIEjwva6gWz
 tnH4sc0NNFMUrJU+Hr7r/X5QFaVgc8/G5chL23Z+yPgV7wvBWditnlIGIWGLnToxw6YkdV+3hdG+H3
 bsaINBAvJ/Tb9h5oWyquHx7g8WMwagk3ST08WsCdYI0I9+SKQd7LzuReIFSw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DSI Controller on the SM8650 Platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


