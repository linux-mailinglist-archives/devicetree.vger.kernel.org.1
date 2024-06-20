Return-Path: <devicetree+bounces-77808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BD1910089
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:40:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D5071C21713
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24BF1A8C13;
	Thu, 20 Jun 2024 09:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J/2s1gle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE3D1A4F21
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876407; cv=none; b=nvB1Uxr02t9e8wg/a+P/Njb/dk8QlARj6pFxOxvt3/u8YwJj1nXN6PyTdNB+MjdP3Bso+xVAkYz/QdAcfaJn+0VnaAXSGapbaOcQpQgZEkS0Ou+K8SCmSe+P1Igb7ztx7Mc6SZWg/g9H9vQa9wED2EkCFFqrYSxr0VB3tdxiF9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876407; c=relaxed/simple;
	bh=GJvGByFweMn6ANCK82VI0BF3EUijh1V8GrpcePPL6ME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MbS8aAMxRCrwoeDb4hc9UZFdww5rfhpPz2KDeHfNJmU4WfqoM6ObUKtVA7HUgIg77RdTrY0k0heCVZT4R2tgckHVf8qlAWOQqRnOr8P+hwATZwU4lFb9OIVecup6r5Hx0pGI3372stnlCzb2uLrcVdx8ozN+xcIkjFpVQrHxKvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J/2s1gle; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52bc3130ae6so635570e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 02:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718876403; x=1719481203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7HJwxsRCYoMZOjaOIFvY1FIfBvzDW/kPGWODQDPht3Y=;
        b=J/2s1gle2xGMQaSIG0ytIB4Zkhn6Xq2ZoOd8pVC5vI6adx8tJhgp/ioU7dn9/3OzdN
         9ATphxXHByrCIR55Eqq9u31y9Ywax7+eoz60GUEJNgFUrtHgOTs4PkQ2x6ZMNMhozv/9
         gtsaweYIy7L6EPlhd4XicsabDS+YxPZNe29yieGHTnM5+qblGoqAYBc6+DlVYAHcKPzj
         8WoywBS9EcQp9VRlcBRPdeS2h9Lof4D3zLU+N4axg4Kaaf9goFxcMvXRivl21q6/EiD+
         puyu+O1FNMds+LtA/JjLRYz5rqSI3b1P1is0lcGINV1LFfK+TO86HlRFI0PGPBKtqeDM
         2E9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718876403; x=1719481203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7HJwxsRCYoMZOjaOIFvY1FIfBvzDW/kPGWODQDPht3Y=;
        b=AJ7BzCRahzNiL1tL8NSnmxFICjqVqYuHBuMtlWBrD1bSb2iYCAog484oIIKMAM5nSW
         cJEfGqDZqZnkH8qOolr+CJI/4tHIRi14jtZp9meEeG9XQo40cjwIRtQ8alGet5d436/A
         aVCq8gBQCwQToqYtXuG/xe6JpPtC1mXNxetxEcuV3A6TCZo69vLFTBWzgo40/u9kK6k/
         GjzLCadnTTo66iSZ/jbkmW9E+Us9fW7o7nJisih8pU7qYHx6Mnt8WbCrY5/mqm2U+LPM
         jBHiiCu9+OahdNuXzAdikNnlgNJudVNGE6qm5FRk6AGPlZT6OH5b1/oUX0EJQAxAvfDx
         WekQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKlzgj/1y2gSX6j5HeXZrOdPsa1LRffbBF4MjKB37HEzLXfozu3MOUFMM9PHNSQBcFd/9Z63ewII4fWTpCHMKWbDMObUDndBbz8Q==
X-Gm-Message-State: AOJu0Yw4Uhy1kTHOP3jdaxglgYr7siML1Hoy+Rcx6gL1/J3CKrh9ryaH
	PLfINK0db32HjlgTQyZ3krB+rSE35ObOlJp2nTi6nMxBVRc6LSA0wEVhPtOG2J4=
X-Google-Smtp-Source: AGHT+IFRa4i+z0934yR1VEwkd1C7tDAhQ4obmhaD0SnJXv3mZ2tMQyMMzQyUVPUKDqtEki3srh0UVA==
X-Received: by 2002:ac2:4e06:0:b0:52c:80fa:2967 with SMTP id 2adb3069b0e04-52ccaa2d61amr3397971e87.12.1718876400350;
        Thu, 20 Jun 2024 02:40:00 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d211ae0sm19366095e9.41.2024.06.20.02.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 02:40:00 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 20 Jun 2024 11:39:57 +0200
Subject: [PATCH v2 1/2] ASoC: dt-bindings: convert everest,es7241.txt to
 dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-1-660985615522@linaro.org>
References: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-0-660985615522@linaro.org>
In-Reply-To: <20240620-topic-amlogic-upstream-bindings-convert-everest-v2-0-660985615522@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3535;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=GJvGByFweMn6ANCK82VI0BF3EUijh1V8GrpcePPL6ME=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmc/jtK0uLIKlE8w4RMi8aGN6Fo/cWKnqaDz0D/x2v
 JT1u4MeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZnP47QAKCRB33NvayMhJ0WMjD/
 49r3HCPEUsq0i6d9q2LUtmIy/+E6B6Y7VaDi54wNk9ppe6zcWnuBeyFih+VrZ8fBOFPbj2kL+3ZJgD
 0nqGc/nym91NekCs+o1caDDzeY9gUbhlcNh0mtpwuh9dTzhvv+v1ba+tLLaSNztymAtfKg+HcaoWir
 uZ2n2lQWt7I+AOL1yQvzjNJyYvUH/xWtP7W31B4EXeuOEzzu6jATCbLpLT06HjduNt8KamDuOb1k69
 n6pOn5MOEVoucK1iLoyI/QIOo7Bshy1fst80iCXOyYJkOaC+a23POT/YNcImIRz4M7Zy5oFqQdAf2F
 BGK0FgScawkDk5Dk/WFpA1J0PgHvVcWYKPGmoDc/hXQJx0Plh0xQCtyuZpKPijl/7G8iDr2rpdhWgG
 P1DQxnR65D0ohSSNUsDzDBsS3uBOh+p278P+uhSfM5EV2O6WE0egLL3xkmqQROGrVK01/uF3GXD8Q0
 hAr53wZgVngofCV1FppPpgn6m+EVLg5Du469s7MFi7qu5eDH4c1/eN3+Ut/UwRNbHOJ0NvPlSKJoVF
 0RNzssJR1XPaXlQNB/piEebdZkjU5MtnDm+pWaoU/eezUHKUzt8RB80KDzohH0zt/4Rv2xcdtkhi09
 OysW8DWg402QLmEN2FcYhRXU7b1IO+s8ndBl9tuAviFn7tP2b/zS2gIF8IbA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text biddings for the Everest ES7241 2 channels I2S analog
to digital converter to dt-schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/sound/everest,es7241.txt   | 28 ---------
 .../devicetree/bindings/sound/everest,es7241.yaml  | 67 ++++++++++++++++++++++
 2 files changed, 67 insertions(+), 28 deletions(-)

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
index 000000000000..f179af758730
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es7241.yaml
@@ -0,0 +1,67 @@
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
+   #include <dt-bindings/gpio/gpio.h>
+   codec {
+       compatible = "everest,es7241";
+       #sound-dai-cells = <0>;
+       reset-gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
+       VDDP-supply = <&vddp_supply>;
+       VDDA-supply = <&vdda_supply>;
+       VDDD-supply = <&vddd_supply>;
+   };
+
+...

-- 
2.34.1


