Return-Path: <devicetree+bounces-29882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A4A82554B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 15:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F9641F24263
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30F731A71;
	Fri,  5 Jan 2024 14:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zON5z75+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6C72E82E
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 14:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-556c3f0d6c5so2005958a12.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 06:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704464962; x=1705069762; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gwwLXzrNZmjdF/D81WsC3dKKL+3yys6UXvKoANltjZw=;
        b=zON5z75+efj/6rlkahpjmfMhD6XkUh5D0SLZfA+qU8CgMt32AIaYzpeB+VAhgMBkGU
         mk+8q2jC26Lk/fvLDdtvSowk+jmcDWkWdyNiOqm95gts6Xrqa7GbcCL2T+4+KLr+wGm4
         dBgMUABPsvkK34z8oFgpdg1Wd1bZH6rc0GA4ZWvnyAAX+P4Nipm9hVy3uKZbI4VMeETa
         /EyVjjiAkoYK3JDV5Pd217X53EBYlSrvTXpQcPtrbXazPqj/SCYiJu/Mybw/KHd8aAPS
         uNOsPu0ycZ3IrQ+n6A3SSbhUHxL+My/cBPJlEfvq6m2C+5gQUmYSaaDyB7mX/oxN8EKr
         JfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704464962; x=1705069762;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gwwLXzrNZmjdF/D81WsC3dKKL+3yys6UXvKoANltjZw=;
        b=N6IUd3SVEXqhYT3qtJVN5k1MQ9FL2M8QcmOheUYuydJACO57wijWe+b83dWtuHnGFA
         LedVaB35MUgBO/2glz27rCpQvhAwPoSKMhgxwxJl1wMh9VlrYsOECJcRrKH/0T6WEAmV
         BAtbIKN1CMZ2UfMkrc4JrjZM87UEGSS25WpNWz8lKVVqJSGCDUA1vmQFlheO0vv8F36m
         ycYWVMEifMRyM8FpGE1gTGDPbN2rsxZ8+vG8IuBwS78TmLeQF/d8EaNy4lqHQPkCfWkI
         GB2fNL6gJKSUSjQgEQT+SUltH+XsmursjYUT2X4XxLmDgrhN0FEhil2F5hDh+TSLqgQ5
         DQww==
X-Gm-Message-State: AOJu0YxNwNlewDNNPfALHcNaZFYxouwS7tMe7uChCl6Vy+jaR3JW3VFK
	UjBqVW6U8Ng5cq1uGRftMBHf3p4FFB+Au2AHoYMc2J4DTaOKL2Aw
X-Google-Smtp-Source: AGHT+IF6LEHSC+BNS1qSMu0hu5MCEzCXahNkFna7P6c4dqYpMqVyE2mE2qiqtGe673b+qnnk5M4/2w==
X-Received: by 2002:a17:906:2418:b0:a26:f301:6b52 with SMTP id z24-20020a170906241800b00a26f3016b52mr783285eja.49.1704464961874;
        Fri, 05 Jan 2024 06:29:21 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id u7-20020a1709067d0700b00a26b057df46sm927006ejo.126.2024.01.05.06.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 06:29:20 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jan 2024 15:29:12 +0100
Subject: [PATCH 1/3] dt-bindings: display: panel: Add Himax HX83112A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240105-fp4-panel-v1-1-1afbabc55276@fairphone.com>
References: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
In-Reply-To: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Himax HX83112A is a display driver IC used to drive LCD DSI panels.
Describe it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/display/panel/himax,hx83112a.yaml     | 75 ++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
new file mode 100644
index 000000000000..22f58f1da9fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx83112a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX83112A-based DSI display panels
+
+maintainers:
+  - Luca Weiss <luca.weiss@fairphone.com>
+
+description:
+  The Himax HX83112A is a generic DSI Panel IC used to control
+  LCD panels.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: fairphone,fp4-hx83112a-djn
+      - const: himax,hx83112a
+
+  vdd1-supply:
+    description: Digital voltage rail
+
+  vsn-supply:
+    description: Positive source voltage rail
+
+  vsp-supply:
+    description: Negative source voltage rail
+
+  reg: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd1-supply
+  - vsn-supply
+  - vsp-supply
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
+            compatible = "fairphone,fp4-hx83112a-djn", "himax,hx83112a";
+            reg = <0>;
+
+            backlight = <&pm6150l_wled>;
+            reset-gpios = <&pm6150l_gpios 9 GPIO_ACTIVE_LOW>;
+
+            vdd1-supply = <&vreg_l1e>;
+            vsn-supply = <&pm6150l_lcdb_ncp>;
+            vsp-supply = <&pm6150l_lcdb_ldo>;
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
2.43.0


