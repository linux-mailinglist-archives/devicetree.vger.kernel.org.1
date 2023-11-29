Return-Path: <devicetree+bounces-19951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 920707FD5B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4186628307E
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A34C11D540;
	Wed, 29 Nov 2023 11:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TD1HTmbm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 134C4171D
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:30:26 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54bd7e5182cso643303a12.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701257424; x=1701862224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FuoTW5fNts47GPp/zz/U4BPEMqSdOcRJOpgotFGXLGo=;
        b=TD1HTmbmVOmkmbeL7NASVcgXpk+ouNAYhqa6M04Du+3uMpzxq4maeXwhqrsClgsVip
         N4dhPKaWFz/ZYa1y73bmk77rxI2WyyluvtwZRuji/YYtxlWdws4Bi5awxWtdjVYD5TaT
         hYMsV8xZfXc8e4I0ZEu+Oo5wU91ODbqZDCk430YmGFyb+qmcc32vyCbnMNdvhx2bFt2O
         ikgMm0zAQXctXztxAVol+sSJQq9shT7vReFFORbaEwpIP8E9q4SlMY6K6IQucb/2u4CP
         n4ZVVkhTdYWom/IRELsQggGZzp3kJ3oluv/JJ43JzndDPmcAYfb7f6bce9ZEHeW8R6Dy
         Gupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701257424; x=1701862224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FuoTW5fNts47GPp/zz/U4BPEMqSdOcRJOpgotFGXLGo=;
        b=r33q5qIfU+qqFZKaxyUdrCN8keKzGNVmIoL9Q9b7QjMje7qOc6ka6NiBRIXKK0Ja5c
         yHyKxuMmIxOmPsKOUaOGjoOu6bOy8peBSeCtMCtGliFAt1PTMvxW1NvK3SM9C9ptHWZ+
         uikbLca/+SP/Uxzj4qj7s29bIQocoOFgLkaKZuwgV/12OZ/TdRj6dtSCXPXgF5JpT521
         aausvNCWy528Wtb9LAd4sK3qhTUfOqZNt4KDuUwCq9vi+nipoFQuzHfnIWvAzn0gXm3m
         OV+/OV2jfadeB33rSYqDDY1j/olAIWrwLlBKCrm2m2gQrT0AelriutNrbVrNuTYfTBBf
         bBXQ==
X-Gm-Message-State: AOJu0Yyl2vt3JB5TvkDQTnT6fjwoMj7u6/opDZSAz6p066QRVwxIXWmN
	aWbem5uHxA6C6WxAnQnJeV9PiQ==
X-Google-Smtp-Source: AGHT+IEHx5bvhNh2IGOAE7PXOlw27mYMxj7q8yRLiaQc1GYWBHE0clKsOrSLO7MzxHMzKLVRVjkuPw==
X-Received: by 2002:aa7:df0c:0:b0:54b:52c4:68a5 with SMTP id c12-20020aa7df0c000000b0054b52c468a5mr7456394edy.39.1701257424378;
        Wed, 29 Nov 2023 03:30:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id y5-20020a056402440500b0054af224a87bsm6213829eda.33.2023.11.29.03.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 03:30:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 4/4] ASoC: dt-bindings: qcom,lpass-wsa-macro: Add SM8650 LPASS WSA
Date: Wed, 29 Nov 2023 12:30:14 +0100
Message-Id: <20231129113014.38837-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129113014.38837-1-krzysztof.kozlowski@linaro.org>
References: <20231129113014.38837-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bindings for Qualcomm SM8650 Low Power Audio SubSystem (LPASS) WSA
macro codec, which looks like compatible with earlier SM8550.

Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index eea7609d1b33..5fb39d35c8ec 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -11,12 +11,16 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,sc7280-lpass-wsa-macro
-      - qcom,sm8250-lpass-wsa-macro
-      - qcom,sm8450-lpass-wsa-macro
-      - qcom,sm8550-lpass-wsa-macro
-      - qcom,sc8280xp-lpass-wsa-macro
+    oneOf:
+      - enum:
+          - qcom,sc7280-lpass-wsa-macro
+          - qcom,sm8250-lpass-wsa-macro
+          - qcom,sm8450-lpass-wsa-macro
+          - qcom,sm8550-lpass-wsa-macro
+          - qcom,sc8280xp-lpass-wsa-macro
+      - items:
+          - const: qcom,sm8650-lpass-wsa-macro
+          - const: qcom,sm8550-lpass-wsa-macro
 
   reg:
     maxItems: 1
@@ -94,8 +98,9 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sm8550-lpass-wsa-macro
+          contains:
+            enum:
+              - qcom,sm8550-lpass-wsa-macro
     then:
       properties:
         clocks:
-- 
2.34.1


