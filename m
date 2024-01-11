Return-Path: <devicetree+bounces-31449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7A282B3CA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 18:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9381B1C242EB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 17:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 955695380A;
	Thu, 11 Jan 2024 17:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qValMmNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027950264
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 17:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40e6296636fso4648655e9.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 09:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704993358; x=1705598158; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xrDQaKaLoC6HAA7NXSJEUsah06CyH+NV6eUOiFE3MbA=;
        b=qValMmNAq/SUd21rGyGNGrToWM/cauIEZcx16Uy1UfXhfm4OlxdDTzv5ifJJE174ZU
         uaam1jFbw6wQm77hkdPoLBscW29q6Zgl2ztLDUGV4ReBcQzLm8z+W2mD07f9Sz/QeYt/
         OA457uDmGlAXsAMZh6rHR/ix1WVoLWKqPe6rTpYs58Ydts2ZUFgoMSvGQXljFgfVewWI
         m11Bh9CgrUdSBziCnPCkmMcn3FOpWsbRFnPqbQ4F/BGAPa8BPOQnGYEZODz3kstWzcDq
         jYzqI15uIzn5vHqqctUdbjiwufpwNpisDS0h+fs3jwS15kqzTUKF0BOGOsGaECqhk+np
         WjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704993358; x=1705598158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xrDQaKaLoC6HAA7NXSJEUsah06CyH+NV6eUOiFE3MbA=;
        b=F9DB3v2PLkVz0fPQo/Im1Yx0krSdJdYaZuIZjUF+7haHYDdaI7kH1CyYJLy/zqH4Cj
         BApO2szzX8EJ4hVxT/jDurXQD0id47QWe+UKGgnUeTZ6A0ZMmK4tlpqrBrQagjhxSSTz
         q58XYl6B8CGEOo9NFAPPCIxn/2U5HiqbmL0S6soWxJgIp9grAjCc3k9RlgW06AkgDz/r
         BleYrpyNuqG3pOkGONfhJQhcu/8pP3O4AuZtb43D8OPNHekwvVGFdhT7Bhmi3ZAu9Eae
         8JANwndrbMZ8QMucJApFzJyrdRh/XbQmSvrbKG7PI8bBLG7khYvVK8d03Ovn62WcOujt
         I1Xg==
X-Gm-Message-State: AOJu0YyDpkrmWPDSYesTD8sPj+3jONJ/xfbok62ecK1laEzTmYwyYISs
	aUf+/6M9SBpOt7KpGm2I8ruk5YQXCI7AhQ==
X-Google-Smtp-Source: AGHT+IG1G2eG5lT3vSWQFdHowYh7/D72MCkWT7L1OuO3vpi6wr96lhndsffYKWW5ipDOq7gKt35mag==
X-Received: by 2002:a05:600c:1e17:b0:40d:5bbf:71f2 with SMTP id ay23-20020a05600c1e1700b0040d5bbf71f2mr95098wmb.5.1704993358642;
        Thu, 11 Jan 2024 09:15:58 -0800 (PST)
Received: from [127.0.1.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id fc19-20020a05600c525300b0040d839e7bb3sm6610653wmb.19.2024.01.11.09.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 09:15:58 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 11 Jan 2024 17:15:54 +0000
Subject: [PATCH v4 1/4] dt-bindings: i2c: qcom-cci: Document sc8280xp
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240111-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v4-1-cdd5c57ff1dc@linaro.org>
References: <20240111-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v4-0-cdd5c57ff1dc@linaro.org>
In-Reply-To: <20240111-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v4-0-cdd5c57ff1dc@linaro.org>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-4e032

Add sc8280xp compatible consistent with recent CAMSS CCI interfaces.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 8386cfe21532..369d72882874 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -26,6 +26,7 @@ properties:
       - items:
           - enum:
               - qcom,sc7280-cci
+              - qcom,sc8280xp-cci
               - qcom,sdm845-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
@@ -176,6 +177,24 @@ allOf:
             - const: cci
             - const: cci_src
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-cci
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: camnoc_axi
+            - const: slow_ahb_src
+            - const: cpas_ahb
+            - const: cci
+
 additionalProperties: false
 
 examples:

-- 
2.42.0


