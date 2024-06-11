Return-Path: <devicetree+bounces-74490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED5C9037B1
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 11:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9F97286CF3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 09:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5DD17837C;
	Tue, 11 Jun 2024 09:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbf3plzH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E80176ACD
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 09:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718097564; cv=none; b=LPFFtKB+RqX9iHUiT87Ew47L/FiGqrVGqfxc9msfLogEZz3a81bwb3i2EOHa/pIui8g692RNn0TwO+ayx2jHGyO4jeZMiBcuIUPYbKLQor0rw2YWlEp4ihxN4OpeAA3N8jb1bz+K+xY8YdLzTLYTL8gsKAEcwwaqU9A1Y8iP4DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718097564; c=relaxed/simple;
	bh=1cs5TGFPvTYKhtCHEa9TjM2PD54r5lUpqR+/FnQDjtQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=glPKTlRsIKOFI5Ose00DjZpNSeTAxATlYQVNwF5Wy/F0OUmIc03ezgWlXIMM6oesh5C5mhjE1DY4EVo4r9E9z1jL4Ald3KEOiK7qbofJJ/UsU5KxYOItVNwSt+Z6ob98O3+VY7fUd626qrKU5aT9PC7zJE0yhp5CnSuDWRasIDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbf3plzH; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-354f3f6c3b1so4347472f8f.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 02:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718097561; x=1718702361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qAotCT98J9DGPM0wloiNQgoKSF4/BliAqLtlTwFXIJM=;
        b=pbf3plzH3HztTDDCbMLmWIzCw3uuTpWnsmtzCKMAHMlVLUGQQgNYEMfDc6S3VzTBOc
         BwwIGxt+AT07S601iLShbqILyVq4qh1AoqbZ6O4dWiS8KXCKq6WwhiYSLwcMsXyPdNY5
         8j/r41zhe89cQSczIIfxauL412KorZUJe8xztwFLmbnmZv+Z2WD17Oh7JJh/skJJgXKF
         Dmnp24dsYf/1B6zS2wh+rxmPZTABMVo0dKJiHLNz0nY3jInOy9IHjKEM1jmSj1Cy59uO
         6R5Zm9EbykOX0BYCAzAsXec/AWKK9dqez6jTlnuI4j8v4Fke6WAiqLZI519BIE2y1WQ1
         GpeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718097561; x=1718702361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qAotCT98J9DGPM0wloiNQgoKSF4/BliAqLtlTwFXIJM=;
        b=mb7Y3wL5jzCz2yYWSwEPg7DbTaT50s/trPS+3FgM7Dns9+5mjhmUTXmsZAk4AMZ8HR
         R6FW3ng97MX+zppbN1y6hX36wt5Woq5hLSxYMXwqrR6Sbutd2MFmw+XlhxOkH4NV0LYm
         4Ky+AJCskK+/p/HcQEGV+emfTinweeqv6Fd+WSgnJOxw+nIq2mJVNBLmsvMW69f0ZWT+
         5ZVVbuLKSEx8nls5LqdWIZTF7gK+pOBNr3vnz+0Jm3csZGn7BVLxUhnCRaLIOu1Db8To
         3tEFnS9BNnrxn5xOVE0NP2YE3mv3NWDFQQNUBqLAPPsCL7tLchWerTP/oaWh306SbEuk
         ki2w==
X-Forwarded-Encrypted: i=1; AJvYcCXsnH7T7SykkTVdDv+hBDJC2DuTUeA/o3xX7MlGKDn/21Xs3YZNGSHQXSr43KSzTehgXrBhLpy32PKRcUJkJnOPq9H+VSW5AhsYxg==
X-Gm-Message-State: AOJu0YxtKx4Qgaq3Ut4ykfpXzA6sE18Dbb56xpI+Y8qlGXlC+DwQt+R4
	DC8i6pA7FICuU6xA1UASAbx//snPmHkekd2NhEP2fOpm2sMCfwT9mFvv0GfBIq2qz42kuLnHyjq
	At4A=
X-Google-Smtp-Source: AGHT+IEIFRba6q3D9B0hOwfS+XRDGy4lOjv38Bc2+qra3hHB40ylNIX1noo/SC++PN5cxundgQ9AXA==
X-Received: by 2002:a5d:4d4d:0:b0:35f:1e39:4079 with SMTP id ffacd0b85a97d-35f1e3940dcmr4248482f8f.0.1718097560722;
        Tue, 11 Jun 2024 02:19:20 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fc3197sm13334619f8f.101.2024.06.11.02.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 02:19:20 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 11 Jun 2024 11:19:17 +0200
Subject: [PATCH 1/2] ASoC: dt-bindings: convert everest,es7241.txt to
 dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240611-topic-amlogic-upstream-bindings-convert-everest-v1-1-a7f9b4c9005c@linaro.org>
References: <20240611-topic-amlogic-upstream-bindings-convert-everest-v1-0-a7f9b4c9005c@linaro.org>
In-Reply-To: <20240611-topic-amlogic-upstream-bindings-convert-everest-v1-0-a7f9b4c9005c@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3415;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1cs5TGFPvTYKhtCHEa9TjM2PD54r5lUpqR+/FnQDjtQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmaBaWMs4BdnUrsNhbin/f8ULd8qsrytgAW1Y1t6GU
 MQDH0X6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmgWlgAKCRB33NvayMhJ0RjYD/
 9+UEEq/VMc1zkdDhx7JiEKEJa+539lj6I5Iv/XLR321W3gp/yjra37phZ7VM3HpFDh/2+hVvREn1+Z
 fPMH9NEcQdYnwqVUtKARPsp0eT257lY9U9F9MI6ybH3t1caWf08m+XfMm0EleCiZ5785oEuwGSIEPH
 85kOpGBIjtNtzSU/B7PphRq8CeWFvn//API1rvYwVIP5OwAgq4wyDXr3UNGgqPWgWAbVk85gZ1vhMh
 Rlu/zo4RlS8dGUnjmKFXoXtHGt7mClhQiBeUSJYNhqqMVpDWFjEghWbBMydtEZ64MzFcUgzPq2b3PD
 YYhI/N+z8SmNOEyASTVWXjmGSxbtvMH1lbZS6tl3RZ5RKRS8/7G/yF0woXNNa3xmIK2APNhnfH0Tr3
 ZAyvsN2IrQUWBlkyUTYOfHmS33SSesMLSshecmDSBmr5kH35zaE82kIAqItupUrrY8orY4djuSnMQ+
 KJJiNJYaQiJyzfiiZK2UNp6II/cAebDzBHimndkCzHqwO187VaesVjghoAM6ZqB2hyZuP24Pm+nnQk
 oP9GoI6a3pWK5UokUVccjV0RLPPdytkqniVudWiU3lg9bzG8I2kG4marmHuWnN+ihVEFwK0Wc7t95p
 b779uYePLNPSm76xUaXmSUcF2dl8FebSKKRlR/HScA6pTW4VknsWFU7PLsZQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text biddings for the Everest ES7241 2 channels I2S analog
to digital converter to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/sound/everest,es7241.txt   | 28 ---------
 .../devicetree/bindings/sound/everest,es7241.yaml  | 66 ++++++++++++++++++++++
 2 files changed, 66 insertions(+), 28 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/everest,es7241.txt b/Documentation/devicetree/bindings/sound/everest,es7241.txt
deleted file mode 100644
index 28f82cf4959f..000000000000
--- a/Documentation/devicetree/bindings/sound/everest,es7241.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-ES7241 i2s AD converter
-
-Required properties:
-- compatible : "everest,es7241"
-- VDDP-supply: regulator phandle for the VDDA supply
-- VDDA-supply: regulator phandle for the VDDP supply
-- VDDD-supply: regulator phandle for the VDDD supply
-
-Optional properties:
-- reset-gpios: gpio connected to the reset pin
-- m0-gpios   : gpio connected to the m0 pin
-- m1-gpios   : gpio connected to the m1 pin
-- everest,sdout-pull-down:
-   Format used by the serial interface is controlled by pulling
-   the sdout. If the sdout is pulled down, leftj format is used.
-   If this property is not provided, sdout is assumed to pulled
-   up and i2s format is used
-
-Example:
-
-linein: audio-codec@2 {
-	#sound-dai-cells = <0>;
-	compatible = "everest,es7241";
-	VDDA-supply = <&vcc_3v3>;
-	VDDP-supply = <&vcc_3v3>;
-	VDDD-supply = <&vcc_3v3>;
-	reset-gpios = <&gpio GPIOH_42>;
-};
diff --git a/Documentation/devicetree/bindings/sound/everest,es7241.yaml b/Documentation/devicetree/bindings/sound/everest,es7241.yaml
new file mode 100644
index 000000000000..57ab429b320f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es7241.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es7241.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES7241 2 channels I2S analog to digital converter
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - everest,es7241
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to the reset pin
+
+  m0-gpios:
+    maxItems: 1
+    description: GPIO connected to the m0 pin
+
+  m1-gpios:
+    maxItems: 1
+    description: GPIO connected to the m0 pin
+
+  everest,sdout-pull-down:
+    type: boolean
+    description:
+      Format used by the serial interface is controlled by pulling
+      the sdout. If the sdout is pulled down, leftj format is used.
+      If this property is not provided, sdout is assumed to pulled
+      up and i2s format is used
+
+  VDDP-supply: true
+  VDDA-supply: true
+  VDDD-supply: true
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - VDDP-supply
+  - VDDA-supply
+  - VDDD-supply
+
+allOf:
+  - $ref: dai-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+   codec-0 {
+       compatible = "everest,es7241";
+       #sound-dai-cells = <0>;
+       reset-gpios = <&gpio1 15 0>;
+       VDDP-supply = <&vddp_supply>;
+       VDDA-supply = <&vdda_supply>;
+       VDDD-supply = <&vddd_supply>;
+   };
+
+...

-- 
2.34.1


