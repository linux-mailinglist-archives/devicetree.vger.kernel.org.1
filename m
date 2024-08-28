Return-Path: <devicetree+bounces-97575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C354962B13
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 17:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15F981F25A16
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5257B1A2C04;
	Wed, 28 Aug 2024 15:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o5Io4BL1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CD21A00F4
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 15:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724857470; cv=none; b=d8ll6yvIpVBoIM1RRzmjMHV9fMX/+82lnd1FO6wQPQh87MiIugRYa6TIpFYrWPIM5eot3k/FooRZ5Q5zNubvi8f0YqIQoVmmSb3SHf4WiKzo1y97UKc0gSAf98MUDg6xEgbiQTHeZPYsZ+xFe9Gli6oyBh4alWXktAwHkXMwC84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724857470; c=relaxed/simple;
	bh=Zo7rD7LhsqXVWI1DlfMsF/Q1UaOY4RkLnQpyLGe4S4Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cff4Na+THdHI0K1D5aWqlXKaHGOEREDi/PVHyIVGPJTkgJHaA0T9NoybwLg2/3XikZMUhC/GFATSnRpEUsxBwqz0sPd52juo8p6aQhGVHhF/2/pCk5gzEkNNys30T+CvgzRbh88xFY9x03yeu1f13kx8tRKV61D5kDdEf6GRY6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o5Io4BL1; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5334c018913so6596794e87.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 08:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724857466; x=1725462266; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfpPLPQgSBuRiuoslnQqHCmedaNEg3K6zxnI4WC0qco=;
        b=o5Io4BL12WB0rXhmMJSuDHQaWpyY3XjvxBA5GnetiSfDuehM3ohCEoe3WpPqm8SeZu
         DwxbjWFHeSg/45Ml7TsASl9iYu+uObxX0mJ6w53zmknwahupusy38BKpZYG+/zM2qs6h
         3G45GRLKrucyR5l/zTyGZl3ATvbqB4V4er334gISu7Y5lESfLAQteV2wCCZNx0rHnm/F
         GnY5o3h4zMuq9yTb/Krgb7WUdUvlF4ArwQ3ZwNuJy9VJIPxovWYhHGxzT94n7+Ex+11O
         boPneL+FYJcns5V9LkKOuzi4BnjihQl8pPOwYLlWjE/mjvGt4KePta6phwtKQH7SOgYG
         +9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724857466; x=1725462266;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfpPLPQgSBuRiuoslnQqHCmedaNEg3K6zxnI4WC0qco=;
        b=h0QkYVbxAHDb0oUtp6JlccFeHssIa2WNCcKLWRa+CN6EByoOiwr0lGVSTsqrHEKblR
         d2YGlXXrNr0+uvewB9y4ZM/ojeP5XZ40BJ4h+yvy+Xrov+AlZHLXwJHlAgI2SPleI8fO
         uHZfRPPdRuNm/CIMJpnThVDLQQqE85nPOWiaIFoppB+B1wEYM/ZPYmDXdQV7oYKJuJsy
         jnHb/bJ67XEcWBlGmq9qFO3X1e37YZIrV/KJ9h/RaZUybKHFRoPhXJO3BhdMIafYRRiC
         YhRqCRfQgzwJh+CTr7w+p9Qokr3s7jC9wC2XazA5r+EfS+3IDrUjMchTmjLtmOZdIpDN
         zpmA==
X-Forwarded-Encrypted: i=1; AJvYcCW1FO9NLGCiitBslTmqNhWbkttHS6NZIoDqQk09Dd6BG354GXcC05hEeezZuKCnqZgcUEDmLYbHJ4Hi@vger.kernel.org
X-Gm-Message-State: AOJu0YwmUG6Ffs9VC/eg+8kS06kQRbp6aC7XA/bWk8X06+mfldftNZJn
	dBaa09dZfbr4fpwwKwSDChzaR9uY6AU4MRVkFHl8bF9jEAO7+Bweo13osslOopw=
X-Google-Smtp-Source: AGHT+IGbPKvefAd/rmqqZn5znOWggMmO35KcR8F3WxLf5Haqx1urGA+XGWsekKFxEP5y+38P4N/XBQ==
X-Received: by 2002:a05:6512:39ca:b0:530:aeea:27e1 with SMTP id 2adb3069b0e04-5343886c181mr13320083e87.50.1724857465546;
        Wed, 28 Aug 2024 08:04:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba63acd66sm24079315e9.23.2024.08.28.08.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 08:04:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Aug 2024 17:04:19 +0200
Subject: [PATCH v3 1/2] dt-bindings: display: panel: document BOE
 TV101WUM-LL2 DSI Display Panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-1-b792f93e1d6b@linaro.org>
References: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-0-b792f93e1d6b@linaro.org>
In-Reply-To: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-0-b792f93e1d6b@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Doug Anderson <dianders@chromium.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2015;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Zo7rD7LhsqXVWI1DlfMsF/Q1UaOY4RkLnQpyLGe4S4Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzzx2e+rGJcY9aA20YsXF2siW6akjbc73Kqn1Tmhi
 Kmp1SoeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs88dgAKCRB33NvayMhJ0aaBD/
 4iXjIOlveRa6jF3JZdEq5okV2hJqVKi93AU82I45MdmKsZ/MDVAy/SGO7sTfYOqWy/LauFfr3dyklo
 ioA7eKXwxf56enMTbyPftTAw7y/jB5wXHouMaxy8EDxm6StkGtgryC8donIUtYwM+ObgtLZgj7+1mf
 uJTtbrOeNYRVhmEFLjkCWkyFrX3MXlnZQtFrxu+Ky1gAyrYc6XAz8wpiQYL+2XKFm994BVq4Iz8k54
 a7t1bXvN3IF2fW3HDFRz8ToBZE40/1YLW+1v797Fpn7HPUGZuVVWMrReYhh6iDyGVn6G3yKZh8DarN
 WKi6x8hP1t4/X2qlmjgcPcN2zswdqksCWf6GV8DQMekWO45fYHxHxt8nw9mDqMTFXmfCsNqFv6RbGb
 4nw9M8iOouhMtZsMxG5M2pNZqy1fIt3+jrp2Dv17huEk8CNQrCna7ToLOWrLzyLtlOjq6bnM20lIRa
 tnDWFZfBUcc3BQbhyIOq2wa6INvyjbH7ERC1Qw4WxF0UIYLOpPsugJQnDU58Af7L4JJJNI4S3ZUTnN
 W5z6Mm3ywQuQqNN6JAvQx6C1ATiXPpy/OjnZoGC0WPv6EbVJ3cISWFKobVw2FXo9MOP4xS6e4q1tNj
 sYc8FSjB5sFYr90whLpg/aOJqUUvREmiLjY7DWQKsV41oCxaq8szbY+SGWxQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the 1200x1920 BOE TV101WUM-LL2 DSI Display Panel found
in the Lenovo Smart Tab M10 tablet. The controller is unknown.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/panel/boe,tv101wum-ll2.yaml   | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml
new file mode 100644
index 000000000000..dced98e1c69a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/boe,tv101wum-ll2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BOE TV101WUM-LL2 DSI Display Panel
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: boe,tv101wum-ll2
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  backlight: true
+  reset-gpios: true
+  vsp-supply: true
+  vsn-supply: true
+  port: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vsp-supply
+  - vsn-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "boe,tv101wum-ll2";
+            reg = <0>;
+
+            vsn-supply = <&vsn_lcd>;
+            vsp-supply = <&vsp_lcd>;
+
+            reset-gpios = <&pio 45 GPIO_ACTIVE_LOW>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...

-- 
2.34.1


