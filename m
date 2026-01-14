Return-Path: <devicetree+bounces-255151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F6D202A3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64A6530C6CE5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80D33A35D2;
	Wed, 14 Jan 2026 16:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BYOYY43n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D67A3A35A8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 16:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768407418; cv=none; b=F5lWn5K+Rcn9hXdG0wDYI9/X14uWrnWJ9aNIs0VTERLe7l7UxQjmpFzj/IZzodoIKkIHUxl2TG+encMgIe/p93NF5+AJbTnKXd/4S/hlMmfo0ojY+AOf4GIeA37q1ZQ/SnyvRKf+9/Ym6TWmxqK/l65i5WK9BLppcNFGdlbY5SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768407418; c=relaxed/simple;
	bh=/7ruZ18bk4ILc7L15msfTGNZdLRH8VjAH7g9n11/vYk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=srhvFhFo6Sur2MOv2crQv2LVx0MI8orQCWPskO3XfPlDDuqVgeYwYQ0Pxu2QLyiDu8bwm5zV7+dDpyt9KMwKjIzqWYKMYNH3fI62q7lCwouKMJSijb0h9GbV5kEOGHnC/RaGdr31Xw3vBwZgiN45QHjQ3oY6hc+lvd8eSCr6kD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BYOYY43n; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b870732cce2so1503566b.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1768407405; x=1769012205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmBTNol25uWSbstgc/N/yY8zm994n6PPZLmjRz9SloM=;
        b=BYOYY43neM2TpfBoAyPpm9sRswmvpX9ww/P+stS9ZCaoS8iCKOVnFKikImkVlDgSrz
         STFoD3x94orPbzCwA7IDH7GaWGpsaw5d0MFPOQlVcHfZhVMlgvKnGEe4emNpbJ/9IFyf
         JWdF1pt2r0jsXgnzncoAiV6ixyV+W8QjYkFes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768407405; x=1769012205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HmBTNol25uWSbstgc/N/yY8zm994n6PPZLmjRz9SloM=;
        b=YkJBEfyiYwGQFAaBI62H/NuakYVGO1X/UvzVwSwep0CEhmVaakhOWaMrQlDxDzl//v
         bjF6bbU9g7vlAX1f/8/OxssqzRfA7VZaoITPaYklqMqSvJmAhpkobwNuUeoB4bodG3Xa
         yY25yHz+QEfj1BF6YhoIANjuGgaaPwI7YJJbKGENUBMJADf52D2AXRUr3ENMV50eixcU
         yY2SRlZX0sKxYIY0C6LqLjnfqRFgxeOiAdtCplhtUnIT6T/YZ46eyDZm/dZqM+erswWv
         +3CwiYPRTI0rzgJr0v+GexOk7F2TkbAofG9x+e9h0Ge8xbHC10riTd2YJk38n/IcHHQR
         2T4w==
X-Forwarded-Encrypted: i=1; AJvYcCVDrBrOQ6TXvpQVtyhJmolhX1mdbYXLONldGvZcCyUYjjwwgnS6WKa9E05RCBfhMtKsW0ZGsmKDfCqG@vger.kernel.org
X-Gm-Message-State: AOJu0YwiW4QsXHtsaSxNxx0EUmTUM9SfdAsjFEi2zh3OLf7Joq8wVhPo
	p1MlGmCharnV3FxjSkagDpC9hMMVn9JR1FAXwkBx5Yj1RV9wWPZ782W7mVB8/S47S3g=
X-Gm-Gg: AY/fxX7zvh2cJTIaaC70mJjhzUvbbEAJJqxbaEjeDkHFXqTXuig8Aw7hUqmdRKhx6DV
	hfJUb9zTFOlU2zGKqpFMk6MobeCf0Eq0kYdjABe5vpSTxr7wyoUTa8mcSjmOR0hScnK/KNFmhHt
	y+WSwv2/790dXs/KtGkTyAp7APWpDU+o6MVR/20fqI72u4E4VmLC2sFj6s/bDoGgmANBYl3P+tw
	CZtDdMbj0LwyU+kkkpnR7TVHHgDi8QeQuf1vIHpinVhtWBvHPskaUI72rx9RIZVEmp+mH29+EcS
	DSyaI8JuPQAcZPWdHDpQragIifKy+NCh9dDjh8XH4qcurXOsHsjHEO4lJuFp35RnVO9f4YrpKX5
	gnVn7Puq9ZLIc6OolYQLaZdMC3pAtHM1lNOdl97KHl8Gh29b/1dnKtah7qujLRoAKaw5drMIqEg
	PPrdgzKQrF3eFqROS3+ylZw9xrR4umfSZGG1wr4vJ3AJ0KkkvsEDvj1OUr02zeVcKVA8nzlv1dd
	+b4HSnCvbcy9miepC3i3hFrJBLXo9qXDpR1cJVJ1Ri0D/H7NDa0RiKADLq4YIcOKmUKLg==
X-Received: by 2002:a17:907:72d1:b0:b6d:73f8:3168 with SMTP id a640c23a62f3a-b8760fcbe55mr263759866b.3.1768407405292;
        Wed, 14 Jan 2026 08:16:45 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com (93-47-52-235.ip111.fastwebnet.it. [93.47.52.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b876dd0e9ffsm152281566b.37.2026.01.14.08.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 08:16:44 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/4] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Wed, 14 Jan 2026 17:16:18 +0100
Message-ID: <20260114161636.1076706-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260114161636.1076706-1-dario.binacchi@amarulasolutions.com>
References: <20260114161636.1076706-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the Rocktech 5" 480x854 panel based on the Ilitek ILI9806E
controller.

This panel uses SPI for control and an RGB interface for display
data, so adjust the binding requirements accordingly.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v2:
- Restore vdd-supply as required for both DSI and SPI types
- Dop useless settings in case of rocktech,rk050hr345-ct106a

 .../display/panel/ilitek,ili9806e.yaml        | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
index f80307579485..2080d9e0ffac 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/display/panel/ilitek,ili9806e.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Ilitek ILI9806E based MIPI-DSI panels
+title: Ilitek ILI9806E based panels
 
 maintainers:
   - Michael Walle <mwalle@kernel.org>
@@ -18,6 +18,7 @@ properties:
       - enum:
           - densitron,dmt028vghmcmi-1d
           - ortustech,com35h3p70ulc
+          - rocktech,rk050hr345-ct106a
       - const: ilitek,ili9806e
 
   reg:
@@ -30,11 +31,24 @@ required:
   - compatible
   - reg
   - vdd-supply
-  - vccio-supply
   - reset-gpios
   - backlight
   - port
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rocktech,rk050hr345-ct106a
+then:
+  $ref: /schemas/spi/spi-peripheral-props.yaml#
+  required:
+    - spi-max-frequency
+else:
+  required:
+    - vccio-supply
+
 unevaluatedProperties: false
 
 examples:
@@ -60,5 +74,25 @@ examples:
             };
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
+        panel@0 {
+            compatible = "rocktech,rk050hr345-ct106a", "ilitek,ili9806e";
+            reg = <0>;
+            vdd-supply = <&reg_vdd_panel>;
+            spi-max-frequency = <10000000>;
+            reset-gpios = <&gpiob 6 GPIO_ACTIVE_LOW>;
+            backlight = <&backlight>;
+            port {
+                panel_in_rgb: endpoint {
+                    remote-endpoint = <&ltdc_out_rgb>;
+                };
+            };
+        };
+    };
 ...
-- 
2.43.0


