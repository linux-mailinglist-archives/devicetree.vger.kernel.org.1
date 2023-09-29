Return-Path: <devicetree+bounces-4576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7597B32DC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C5CB61C20A5C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A421865F;
	Fri, 29 Sep 2023 12:54:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A101865E
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:54:30 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72A371AB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:54:29 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c1c66876aso1899207966b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695992068; x=1696596868; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJRnOC1uVFTy9wWN09XVjV1SBIhNc3zqk8m17zK48I4=;
        b=F4sBYtB1oSwbAKHlJnQLXPKL3K4e7K+nL0RoqQFKEpjac+QKZit7pxky39ieaXJl7h
         0TdNDETt3ejzLQM2DoySQA82aIZQSOt6ljjUWesVP9/VRKZM+3Mm8Xd5YUz2NO+pnYTG
         GLrhVDHWK+bctHBmymZiXmqOOEHrGcluc/cO2462CkgTJdBtGu5R9k5zssDgZQZLl/dr
         fO6bx/fYcT7deY+s5h+MZ2lV/ywJyifvm6LpNK8jW7i9AxY0CdAcGVxMER4vwwAWoZZe
         A/lg0n3ocojcQEGjb/bPW7nSitROviCcJyyziEwgGv9WOla/lW2Hlj37wajAiR0kangW
         FYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695992068; x=1696596868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJRnOC1uVFTy9wWN09XVjV1SBIhNc3zqk8m17zK48I4=;
        b=I5BnEwwyE2Xx8MPZnn5ksrPxKao91htp4Ij6TyEEr8swCIY877xtFiRJdry5mVRUjc
         wzLAUcstswZF0leqIsDHPDbIWDm72dpqb01DAiPaMhv6qVSVvUMlMxDocAuGFvuquBUr
         m3jrYMgkU/bm7aUO9+jWZqbGg/0dKR7jh2ltFzpJhTGQ/oT7glRnuw+lW9iP4kLCP89a
         GWzrSRX/9E35f9+Sn6+eIviWvRnmyvbhn6LmYPVwPxKtqXgcLnoBoYVmW2A6TNNA6COh
         kb+ues+unoVzpDvdyESJq6NhQm5uJww9hKpj35FYomuyXpwxpjLvjTwCVg32+a//zLE+
         hw9A==
X-Gm-Message-State: AOJu0Yy4Zw6zJ2svKxtvxlYtT8oOdbAuTYdi82sLBAvPhy4DhbRoZ/+J
	QG6wLeRj9+xHBlT9lk41cHhDUQ==
X-Google-Smtp-Source: AGHT+IHlfDyfdppYdfWPSEvGU1WK5j1KreCcUFNSlRJmHZyBRqXcnqIwdbLcwU6AMeSWtGRaTxH+Zw==
X-Received: by 2002:a17:907:7786:b0:9ae:695a:fed0 with SMTP id ky6-20020a170907778600b009ae695afed0mr3976275ejc.11.1695992067908;
        Fri, 29 Sep 2023 05:54:27 -0700 (PDT)
Received: from [10.167.154.1] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id j26-20020a170906831a00b0099bc8bd9066sm12380376ejx.150.2023.09.29.05.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 05:54:27 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 29 Sep 2023 14:54:20 +0200
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Raydium RM692E5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-topic-fp5_disp-v2-1-7b5e1d1662a6@linaro.org>
References: <20230927-topic-fp5_disp-v2-0-7b5e1d1662a6@linaro.org>
In-Reply-To: <20230927-topic-fp5_disp-v2-0-7b5e1d1662a6@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695992063; l=2259;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9potHV92k4LaUbwEIxQbafFOD7jGDkkwV6NtioaJszc=;
 b=Osq3muYbMdMz9+o2MgDamp+nm0liT3RTNziSm/EWgr4xMlCD22SMwj3pcDFiziAW1l0rYKbd3
 FCtyY1Sr4a4AkSN2HKnGAxDCZ+FZEBGkO/CWX73soG+oq9Kraejc3hP
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Raydium RM692E5 is a display driver IC used to drive AMOLED DSI panels.
Describe it.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/display/panel/raydium,rm692e5.yaml    | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml
new file mode 100644
index 000000000000..f436ba6738ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/raydium,rm692e5.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/raydium,rm692e5.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raydium RM692E5 based DSI display panels
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description:
+  The Raydium RM692E5 is a generic DSI Panel IC used to control
+  AMOLED panels.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: fairphone,fp5-rm692e5-boe
+      - const: raydium,rm692e5
+
+  dvdd-supply:
+    description: Digital voltage rail
+
+  vci-supply:
+    description: Analog voltage rail
+
+  vddio-supply:
+    description: I/O voltage rail
+
+  reg: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - dvdd-supply
+  - vci-supply
+  - vddio-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "fairphone,fp5-rm692e5-boe", "raydium,rm692e5";
+            reg = <0>;
+
+            reset-gpios = <&tlmm 44 GPIO_ACTIVE_LOW>;
+            dvdd-supply = <&vreg_oled_vci>;
+            vci-supply = <&vreg_l12c>;
+            vddio-supply = <&vreg_oled_dvdd>;
+
+            port {
+                panel_in_0: endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+
+...

-- 
2.42.0


