Return-Path: <devicetree+bounces-251980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96460CF92A4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 56240301955B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B873D242D95;
	Tue,  6 Jan 2026 15:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Tb2Jicvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083EC23EABF
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714314; cv=none; b=rTcB8Uvt8ben0qQMldXmA2IQWgQWL4RuqhsRY7Ok/PZ6VPJ+J7UVqxOp0XI6e2aVm7h9G9SSA43an3aXdumwbAC0bjwK1Q+Tg+OW/RnmbQpgYEPrDx7bQDIZahhIErwomVBtPaOpk3nTtVMjxJw8qqRc0qvf1Qs2qDLAmrHUzpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714314; c=relaxed/simple;
	bh=7yjUW234xE85Kc0mvJGivXeVPnY9Wkx2sefWSY439L8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M2w4UdREJKeKBG4+h2YLuJI33u0Gn1jWrHlUjCEn4JTpchhfZ3Y98N1LggEaCpShv1Bi0L60jEd3B28vIkTCOCk9YVnZFrbo0hrF5RbVb2nW32LIzixsNVLFLImMUKFco+RKUnKt933XAOZHcO1H38cADFQftFFOqUwHs6/2Z4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Tb2Jicvw; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b7ce5d6627dso235060866b.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1767714307; x=1768319107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUqd8zwvUyTysDgnHLfVeULZAfl79gEI4Fn/LX5yuDs=;
        b=Tb2JicvwOuf+PGsckxsE5u8vmTphqM7cHdbkWLM7iPCZ1AVp62geWkvS9xh5VIdc7f
         9dSP/vQeVYQVfurOtWhmFx5UnRNxcwRp3l/c1SYKour6hY5uDFO+yW12Kuv99Tf5dVzg
         nE1F9NJR1PEC8q79zXD5FBDEB9cnJ8hpIoTmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714307; x=1768319107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SUqd8zwvUyTysDgnHLfVeULZAfl79gEI4Fn/LX5yuDs=;
        b=mDmHAw46qOW2DY2r7Z2kbsR5I44e8czTP3NiL3o8i+5SL/7Xi12yaSw9bInPzow+nn
         sz1u2Ufo9Ga0xnyXmw1h3zkpiof3IW+Kf+fTv2XyeF6uf0B+6pA3SuWf6Sn1lIF6SULS
         bPgSw7BuTXx2YQ7eJMFOAlpC08iLSOepecj+nhZW0gN19HdEqNHWzdY376RCqAAZ+aCq
         t3EsRkjZwp0TcLtXZ708d/CbuGw3OrDIZofTPDkShPqQi9bSE4MNUWbQn63hMQ3BWIeV
         NHCPl50lrdSNViB15zsT3Wgc9JlcRtGDasAvNl/GPL/Huc5tXwvtyp84RFvc+qOnPPZ9
         eAsg==
X-Forwarded-Encrypted: i=1; AJvYcCWqcJsn5SCo59lTWtOcBAUzNOs22cZOiz8z+mT7Gn93ypphE6/QFVxicYUmXm6tynuMP7iYN9EuN32C@vger.kernel.org
X-Gm-Message-State: AOJu0YyEjzij+EwDke7KzzrYvt3XyCFY1La4TMOtTtT16G65RMWwjBil
	jdne9v701efu3znk7KqPc6TufeOzAHouGmeTIQt+yjZ+9Zs1lcf/voCOpk0eyVNpbx0=
X-Gm-Gg: AY/fxX50sTKMH+OT6yBtb51+bJ8fuywkpOOuKIX+vOI5isXj6XqxX9QPgDGa2IPsnHG
	NcTsX6sjiNgbADjHOb0vYRwSWSZigXdYl9NPc6KWCaSgJpg4ozNSvffKJmyVrL5E0+9CEdyQJtP
	aZLppzckHijIvlFYxtOVvdcg8NHehBwaTux1yN80+Zjh+QDPMMC6zHxydrjUr3/WfyE0A7SYKwz
	ybBu27mqLZq/O9UC/q2IyJ44hKTn//HYr3XTvsS6C12D4lz+ZFmt13FJb7Bgwaif6UMbNCbIMTJ
	aVb9vMR4TfwCRL/123Q9qYny+WzwgGpwuWu1cjqRKmLPoP21H1ZTPWe6JYzudHd6oqLgUoS3Yg2
	o7ffuBOMXOtAggR9g74z1icuiYe0ddVs9IOceL0UFeJFleEU49rXXKmaipOn+bNhYvYCyviX1F2
	9vR/+uzE5ies4mIVp9AJGPpl87kP9208rvR5v0M/T70RJ1arHU/JpWtgkCt8ey9zbJMEXUaJ4ol
	nDVqM9uWKxZYXR3kAMCrKlqWF8ir5IndBH/CXlnQlAl/2xA/AHseWYihDP5AtVasO8WcSYWkwL8
	ViNvF9BBweI=
X-Google-Smtp-Source: AGHT+IGrVItVM6BcSqra8HjonvfKxfn/bFxw+ItzUUs2ixDuM6Fu7oEkOvvelQp+Xzgp9Nlh1+6vzQ==
X-Received: by 2002:a17:907:a03:b0:b83:95d7:9d50 with SMTP id a640c23a62f3a-b8426bb9409mr308850266b.38.1767714306604;
        Tue, 06 Jan 2026 07:45:06 -0800 (PST)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-95-248-31-95.retail.telecomitalia.it. [95.248.31.95])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be64efasm2349767a12.21.2026.01.06.07.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:45:06 -0800 (PST)
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
Subject: [PATCH 2/3] dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
Date: Tue,  6 Jan 2026 16:43:15 +0100
Message-ID: <20260106154446.2735701-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106154446.2735701-1-dario.binacchi@amarulasolutions.com>
References: <20260106154446.2735701-1-dario.binacchi@amarulasolutions.com>
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

 .../display/panel/ilitek,ili9806e.yaml        | 43 +++++++++++++++++--
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
index f80307579485..61d035419126 100644
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
@@ -29,12 +30,29 @@ properties:
 required:
   - compatible
   - reg
-  - vdd-supply
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
+
+  properties:
+    spi-max-frequency: true
+
+  required:
+    - spi-max-frequency
+else:
+  required:
+    - vdd-supply
+    - vccio-supply
+
 unevaluatedProperties: false
 
 examples:
@@ -60,5 +78,24 @@ examples:
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


