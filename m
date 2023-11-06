Return-Path: <devicetree+bounces-14212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8137E2B96
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 19:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 290282814CD
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FE62C85B;
	Mon,  6 Nov 2023 18:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EhZXzxcj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EAE18035
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 18:04:29 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08FFDD4C
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:04:28 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9e1fb7faa9dso6809966b.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 10:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699293866; x=1699898666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MFwbWDLUdsWWY4JdKUSpXKXnctZdyDOvhR+9uQhZNK4=;
        b=EhZXzxcjrT/aal9pth6IIgfH2GPtxiOQ0Nwgity4E3xbsejEOn5uk7egPocA6wNc07
         NS5wZSrexeqLtmuRdnmPcBvznhMuL75uc0guj9owda8S9v9N0mF1HmbhtRXrLmkXWLri
         LgMvjaQ8slrxl+eQL/m2/yf0nBG2AAavZ5Uc6M3pks0ciiWqqRS3U8asQgIOMFXcdfp2
         HYV8QifsShkiuYiPui/Y/3yfDYEqZw6ZvhW90t54nDqVdubmnrrLQsb1EK7Rhk34jCMh
         rvAFeu3qwXT3ESm9MS6YM5ZoznTDitnUUtDrF/rg7XGigignsr5g6tZRWRsUc44yCFl7
         ogFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699293866; x=1699898666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MFwbWDLUdsWWY4JdKUSpXKXnctZdyDOvhR+9uQhZNK4=;
        b=bmrLE1Bt/lYYPRppY8OWZUAe0OfE0rCN6dnct6yfgF9+bs67cC1no2MAbu7M17A44K
         Qzr3BlWca2L6uWA4h3rf2I4O+BeWDQ6MDHScbGZLQjcetMkD5/b9T+qTXIbJOfINAUul
         8u8J3ef6xn2uPqswAYrsY+uzCS4m998JX20VqEDujZZhPHAx2SX/7Lf/9Y/lBR9vo94z
         WwMFCAW4iPsuUAGakahlJl8sjtbD3g+3j35tVQHOofur+ydIk/KaCFpScCmTpgRX1wcJ
         mg96A1lVnbAttOYsgt1CnVXYJnyg3mPheA9kdY+kjjMXaaNYMmz2GO43aW71OrufKI/L
         Bn2w==
X-Gm-Message-State: AOJu0YyPLo3GD4uP+vbJYJyNEPbPAb5VBc+NTm0DbsrTWULnwh3qwOat
	hcbkFLNBf5aoj4ihpGIl5jmjWA==
X-Google-Smtp-Source: AGHT+IHr8bnuWZj/iOFtunRgfK7Wwa+dsby/zXewBm5diZrFmq94VJef1rIQkqwg9lkIuEsT0/wTeg==
X-Received: by 2002:a17:907:7e84:b0:9dd:cc3d:7ba7 with SMTP id qb4-20020a1709077e8400b009ddcc3d7ba7mr6962413ejc.29.1699293866528;
        Mon, 06 Nov 2023 10:04:26 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id u11-20020a17090617cb00b009920e9a3a73sm92962eje.115.2023.11.06.10.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 10:04:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: qcom,sm8250: add SM8550 sound card
Date: Mon,  6 Nov 2023 19:04:22 +0100
Message-Id: <20231106180422.170492-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add sound card for SM8550, which as of now looks fully compatible with
SM8450.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 262de7a60a73..88904ac4aa77 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -21,6 +21,10 @@ properties:
               - lenovo,yoga-c630-sndcard
               - qcom,db845c-sndcard
           - const: qcom,sdm845-sndcard
+      - items:
+          - enum:
+              - qcom,sm8550-sndcard
+          - const: qcom,sm8450-sndcard
       - enum:
           - qcom,apq8016-sbc-sndcard
           - qcom,msm8916-qdsp6-sndcard
-- 
2.34.1


