Return-Path: <devicetree+bounces-77807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED18910088
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:40:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB3CB282D76
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2601A8C0C;
	Thu, 20 Jun 2024 09:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KE13Pvu3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41481A4F26
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876407; cv=none; b=fnQwPoihPCBmSLIXjd1n2ZZ9Xf4wahcAXqse2rp4Pkv6sWTTCXVqxQIiu8R6kBHADBoNHBUgOuqZGg8TPaifuUm7kOmqk5sblmJ/4NcKSVXUQoJ8ZruZMvvdOoc9wkvZTismC8gE1zjsWsqNE6XBztf4XIuKR28QOWMb8RAyFxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876407; c=relaxed/simple;
	bh=Dt9pPhUPKxY49NTj7PYxkDDnTHGBCFbjM6B6CNFCAiM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Epvhjo8aYLuqH8EN1t4FmIlEqyGVd/iF5odXZPsibSLcV5AwvgvF3yMGCljx0klkXSgPWJY1juAhPYo9+Y9JS+JbIrOH4yPo4w8v3Hw1axKj/w26FjRfC4pA0QA3b05IEeuXOSGdHLnoO5+XgaL5Nzo4oqxdPP5fxBK4+PRCiak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KE13Pvu3; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4218008c613so6889005e9.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 02:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718876403; x=1719481203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1eoyKMeKwORnjXrfh8fRmcKanMlp49yxm/SsNRMKvko=;
        b=KE13Pvu3l12aL4gwxqzsoza+yc1PRJ9V4u39u52bWmSwZZctg4r1PFU92MLTF1zkNh
         dhxuI4f+haTwVRmQpTyxxiXZHTnu1T52xuQzqGBGqljZ8GEtcaAS6ug31DIRcq5JKf1a
         J/mvPnQwakF2H2X1X8Ys9PyanZd7fd7ogMUKoWLe1zFGG7dUc6ndpXbUcNMdsEqCn/T5
         kSy0mc74tGKPUM8ZlgYPmO0PrypgG7tqU3V0GaKFNSt5zgIKa2H582yM24CP+RP6jWGn
         lI6Lom0sP0ojNYG/q+V7nrZ/qv4DW7aDBtNBslGDY9jCWGWfi3f4cp5eqduUtxzvrXU9
         Jmiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718876403; x=1719481203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1eoyKMeKwORnjXrfh8fRmcKanMlp49yxm/SsNRMKvko=;
        b=lH3J0+9DRNGcG1ZGgw3VPtAstqlfMJIsIlcgtGIljL4bZQhR0P2mE6k2dTjCvdOqHJ
         ClONzbtP64pXyqQjRk7Zq/nDMbsr9sIncumNcA87c5fW514CBrZ2YIoI0i/NZBlPK8g1
         +6JR+HH2eoTBcV1/J+NTX5dJyb1VDg2FLcrf6OegsaYoO5tjXnoWAqdb7peCoGBx3Hai
         mpW5uhnlGryxFcdT6P7F919j7qQNCrTAh7ksNRy4+qf3g1hllNih8nD3ueDr0T/8BsRW
         t1aB2jM6a/0e/KiANptr40l3Qy57EWG9799+fX03az3d/dRQ0MdTB4AvxR3qz/CY6WGj
         Z6rA==
X-Forwarded-Encrypted: i=1; AJvYcCWCDXixDZGkd/JdK8952k0QHKMBHoX4j7S8+I88Hna8pMSHexi2FGK0n/7LiPT85eMSU/1wpnmhvwx8hS4OTnJo+5y2qdz6gV09HA==
X-Gm-Message-State: AOJu0YxB7TOt/JdwmAM9jd0EskZjH8hqTQHPyneVoOjkwSctMNRuxbZ4
	+pVDKSrcf066rhgMdPiw3GBp57JkZfXkEWzP67ys78F68bVIZ8neXQx3IFk8hhU=
X-Google-Smtp-Source: AGHT+IFDJlM479D2ow1xuBjPiaCS8XgHSUUVM8IEoVkLP3TsnYi7kngOy9GAbZDMsF3Dc3VZbJbjvw==
X-Received: by 2002:a05:600c:4999:b0:422:4fcd:d4b9 with SMTP id 5b1f17b1804b1-42475297a99mr34223535e9.29.1718876403164;
        Thu, 20 Jun 2024 02:40:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d211ae0sm19366095e9.41.2024.06.20.02.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 02:40:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 20 Jun 2024 11:39:58 +0200
Subject: [PATCH v2 2/2] ASoC: dt-bindings: convert everest,es7134.txt to
 dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-2-660985615522@linaro.org>
References: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-0-660985615522@linaro.org>
In-Reply-To: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-0-660985615522@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2687;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Dt9pPhUPKxY49NTj7PYxkDDnTHGBCFbjM6B6CNFCAiM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmc/juS/ZiY6C79JWMKeEjMvnvKqkxo+frglHe7jEy
 BNabhHOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZnP47gAKCRB33NvayMhJ0XkPD/
 9rBxrmrn4vIR3SwOwviZZesq/gdjryZkvsSTmtlO1OqgBgn3dG7HT2soideZLUMeW/6cybHrS9QdI8
 p3xyBrlQn8Wmuw5j6Ez0k7TCrVsKalJABR0Uls36chUlM6fa4YozeKZ4U6heu8U4zEjk0pXeIuca5E
 JAgeTdfVhPtPTSR6PUPmViDzpRbhbpTzHbuEfVGuBMTkmGLIERk6JYgFk5bzWMqDGD84HHlNdZp4kQ
 bbt/o6u04i19PXeKCVAjWgVFGsbkgCFLbevzK4TnPFUNNuHfUh0qYJ3fZ8WJfOn4blmB/s5VEyeQ74
 oos6ShGSMWpDBraiOtAuhvrI0mr7xV4UpwfOW94FKbNqx4hYYZ4C0JTL1iM2+wHFBRP7Anm0lvHXvu
 uBFzemAD9wVw+wswOgPQaRJBOrMyP8Rgc5Z4dgxyZ/PqNafCI0IAc1MOdfzjRPFNQZ5kkM/Kh0CZX9
 xCMDbD6oLoiACwubxgYXCZWngQ3HYI4ny38HGuEMvvPjZZ6Yg2aYmvkKU40fIx2JT9pyu4+8o+T4Gh
 3U/Weg23DYh2tNHjHI+qBaMTALwa5kQC4uT2yD0tJEEUNaH5oi3Cpim5dikWXCoCGBvaO8hn6+9ZOR
 n100tO79w5h3WF4i52DTRIvqFR1/dA+gAXaWJOM9BTOhe6bKtZWmR3OzZ6gg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text bindings of the Everest ES7134/7144/7154 2 channels
I2S analog to digital converter to dt-schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/sound/everest,es7134.txt   | 15 ------
 .../devicetree/bindings/sound/everest,es71x4.yaml  | 62 ++++++++++++++++++++++
 2 files changed, 62 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/everest,es7134.txt b/Documentation/devicetree/bindings/sound/everest,es7134.txt
deleted file mode 100644
index 091666069bde..000000000000
--- a/Documentation/devicetree/bindings/sound/everest,es7134.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-ES7134 i2s DA converter
-
-Required properties:
-- compatible : "everest,es7134" or
-               "everest,es7144" or
-	       "everest,es7154"
-- VDD-supply : regulator phandle for the VDD supply
-- PVDD-supply: regulator phandle for the PVDD supply for the es7154
-
-Example:
-
-i2s_codec: external-codec {
-	compatible = "everest,es7134";
-	VDD-supply = <&vcc_5v>;
-};
diff --git a/Documentation/devicetree/bindings/sound/everest,es71x4.yaml b/Documentation/devicetree/bindings/sound/everest,es71x4.yaml
new file mode 100644
index 000000000000..fd1b32812228
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es71x4.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es71x4.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES7134/7144/7154 2 channels I2S analog to digital converter
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - everest,es7134
+      - everest,es7144
+      - everest,es7154
+
+  VDD-supply: true
+  PVDD-supply: true
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - VDD-supply
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - everest,es7134
+              - everest,es7144
+    then:
+      properties:
+        PVDD-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - everest,es7154
+    then:
+      required:
+        - PVDD-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+   codec {
+       compatible = "everest,es7134";
+       #sound-dai-cells = <0>;
+       VDD-supply = <&vdd_supply>;
+   };
+
+...

-- 
2.34.1


