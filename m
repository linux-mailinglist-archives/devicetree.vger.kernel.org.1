Return-Path: <devicetree+bounces-5414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A57B646A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:38:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BEED2281393
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639B8D53B;
	Tue,  3 Oct 2023 08:38:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D8746A8
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:38:45 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF43B3
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 01:38:42 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4064867903cso6591765e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 01:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696322321; x=1696927121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31dDSPmTEwAk2xBEYscYsgGP3NvqtS1pbeFP7C1NdB4=;
        b=f3yuXBdyejrumooxuR/RXoXV0X+LNzkmOrwlQ0bNpvmy7Z+RQ7CDR7AgPzZiKNUo7t
         aqv4jdalYibWscobXgAbei1Y773Bjfc9vabeSO79qSxLQF+La9/AJ1MWHEcjWxbkFQyB
         j+FpkgS8Pqxlkbi7pJuqBcTrWjxgLxFfG5ueabw7BqOGisms4qjXvycVjMnN4l+H+H/v
         3Xt/J/jJ1J+jiRSktZl3qymQHM6M4rr477sJDcFkKHvjYcUiyPZEeExDAUAT+ACJadR+
         1tbQA3NVAZNcnXuN8v+tTfPDtptFb4TvbZpDrxnD6J2SaYkawsPeNxPyx0jooCKke9y0
         QokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696322321; x=1696927121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31dDSPmTEwAk2xBEYscYsgGP3NvqtS1pbeFP7C1NdB4=;
        b=D1syn0cBf4HsltJ0/dHdkpbcFcskJPwuLryM2/JRO3ZDGku15twNdWcV151PEFod3k
         eMSQiXcKxGJmuoqw0+I/9/fK2zWnF67Pte19uLoVdn0wGeUobutU7cQChqKpltlw6arQ
         rrM3HUr6iIxFR2sYuLdZVtSvzIMhxEy57etxT8uyG4cNctoYBm7q5ZxWygIR7fJlhSS5
         iq5lKYs0B6425iU8HKag72IqmJ+vl7YpKwlkpnKjw5d1SifCCs6AL+H2BUrz9u0C77QH
         SgCGrCzVanr8pHvA8D70R7uMHFkcIIRxd0b9F1nXKLBIYCdd9V1nxLMyhojcBMKiOOJs
         vnfg==
X-Gm-Message-State: AOJu0YyO8YLYK4be4mQlMYlMfs6d1qZ92iVJayzth9ZzIDWYoFIK1yqD
	+MecnklfhitOORyI7/FzMDeH2g==
X-Google-Smtp-Source: AGHT+IHg4ahBhkTIX2VsE+1cHo4aEzX/wBavf/zQZYq11OzhLipWdBxppPedJzsq/+jowzzlWiIxwg==
X-Received: by 2002:a7b:c419:0:b0:405:3a65:1b4c with SMTP id k25-20020a7bc419000000b004053a651b4cmr13424453wmi.6.1696322321042;
        Tue, 03 Oct 2023 01:38:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m23-20020a7bca57000000b00405323d47fdsm733597wml.21.2023.10.03.01.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 01:38:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 03 Oct 2023 10:38:33 +0200
Subject: [PATCH v8 1/4] dt-bindings: input: document Goodix Berlin
 Touchscreen IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-topic-goodix-berlin-upstream-initial-v8-1-171606102ed6@linaro.org>
References: <20231003-topic-goodix-berlin-upstream-initial-v8-0-171606102ed6@linaro.org>
In-Reply-To: <20231003-topic-goodix-berlin-upstream-initial-v8-0-171606102ed6@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bastien Nocera <hadess@hadess.net>, 
 Hans de Goede <hdegoede@redhat.com>, Henrik Rydberg <rydberg@bitmath.org>, 
 Jeff LaBundy <jeff@labundy.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3093;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=sfk9uxvNPIwk9f8d5iBn9m2N4nTZgMQFpRmAil1gnVU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlG9MNEafnCQ9IV1cKD5hb0M1JIZQ/KdOOQNLnJP3S
 I6gWdAqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRvTDQAKCRB33NvayMhJ0VF5EA
 CdQZfBj9lE5l/QOADsWzj3wmfLfb9Kc/ZFpiPkw4LGsJXL65QfZtRzF8oW/Vbg7UjSHBSWg5tt/MCA
 D081op4elI1n5oOvir00e3HhTJUjdGkwWUYBBWFOeJvlYMeUd+1GFQev0mwNqZnqDfy4wLSH5moqT8
 OoiA5bSYv+shwo3VrEe7vSvmylgFZ9vylQLBl1JVeRBYjMQ+oCYc8t1VUQv//plr3m55O5j5UR4VqJ
 1xZd0mTJiRn+HQHRljkbDaGIO1Rl58miKIifaaEKiznqnt+cuger0hgeTsNY1J3EfelfcTSwm3dIQT
 NNDcDYQ5YFjmybuIkYvMa25uWLG0FkWwbziV4nW1NN7HefPtdSCVVWZh1RXoW4/XQoCoBUB/w1qP3Z
 +A3zgfB2wpYSg6F1svXXAWExH0mno+ADSn6qESquDMzcLADxN2y9MxAsux4HmzZT8So/UQtKfn5+l2
 MeOfk6gjwY2IZvFx0nHwXm4Tu6rQxkFZ78zaCN5G3lJucXPE17kwsZS0SqA2ZdxNcZ4ibEcFNUs9Vv
 WDCW4E3aTgavmxYIVM3jNtLSFqEvg7998jOg5GeRKO7zrIII+5ushIYjNnPgz6o30iJ591E+TBMrKT
 k+FgwsiBMPGcheZaMHoiJ0RmZUd0379f7DkIgvNEqOPwQI+9MdP/L8ebuPsg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document the Goodix GT9916 wich is part of the "Berlin" serie
of Touchscreen controllers IC from Goodix.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/input/touchscreen/goodix,gt9916.yaml  | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml
new file mode 100644
index 000000000000..d90f045ac06c
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/goodix,gt9916.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/goodix,gt9916.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Goodix Berlin series touchscreen controller
+
+description: The Goodix Berlin series of touchscreen controllers
+  be connected to either I2C or SPI buses.
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: touchscreen.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - goodix,gt9916
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply regulator on AVDD pin
+
+  vddio-supply:
+    description: power supply regulator on VDDIO pin
+
+  spi-max-frequency: true
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - touchscreen-size-x
+  - touchscreen-size-y
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      touchscreen@5d {
+        compatible = "goodix,gt9916";
+        reg = <0x5d>;
+        interrupt-parent = <&gpio>;
+        interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+        avdd-supply = <&ts_avdd>;
+        touchscreen-size-x = <1024>;
+        touchscreen-size-y = <768>;
+      };
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      num-cs = <1>;
+      cs-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+      touchscreen@0 {
+        compatible = "goodix,gt9916";
+        reg = <0>;
+        interrupt-parent = <&gpio>;
+        interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+        reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+        avdd-supply = <&ts_avdd>;
+        spi-max-frequency = <1000000>;
+        touchscreen-size-x = <1024>;
+        touchscreen-size-y = <768>;
+      };
+    };
+
+...

-- 
2.34.1


