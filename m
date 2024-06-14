Return-Path: <devicetree+bounces-75652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF2F90845F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 316E5284BCB
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9206158D87;
	Fri, 14 Jun 2024 07:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZBMFP19c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79663148850
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349597; cv=none; b=aZRaEi6XqeWEBVINOcj8SplskkPYvyNZVcbvCFacIA0MUAj4ClqS2DOEUzpouH3v7+5E87sWfx1B5NAPkaKQttaL6+gyUvjUN+fvh6My7PbJStE0Pg0QwmscSZODEvQhdXxyzV0nJucT0XQ/kKx27OI/CSbcGDwQPsxfUMx6NnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349597; c=relaxed/simple;
	bh=UnHpqAE/7JWYsoHAOLhzOrWhsGpE0EkoI5ta7RitTbs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jXpBhfEiQ4azsqWvmGnHIzXbkd+oZ0JoQYaZlVovMLshUTkHYAMW+W01fefeikmfAfDh/Rke5i9UZSZkAp9RxPlQFntfO1/zx10v5KYGNmYlkJQDDqBlFGeQTw97G2uS+KO/oxRfPdLO0vboha7ZUydIxB9pdv0wf/r3R+ihNX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZBMFP19c; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42172ab4b60so18335625e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718349593; x=1718954393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0QxVauz5TNvVTL0OezLmGuAsp2A+orwd7NL8d9jK5so=;
        b=ZBMFP19cYL6u/r0z90ResCKJBrD935QzKDt97RXIk7ksAphHUW3mhwbsB7ie8IXExW
         89gxMvn+Td/017Cd3ZnJfVxJhc8Lf3czzUEEYrHzaswMjBZkVh85TF5QhOcG0CvkJ9Dg
         HPB51h0sUHu7HtCj8NZ6S3CvSrFtlGOV9gchym9B5/q8fg162TVeJgjSvxIeG+IybXFU
         SZSxbCeeIdzTHlCniKCCzW671oRi7m/GyGUkGd51N2TZpBKV6yI5htVhrdRAIe8v1lcE
         OHbOSvcGWBU7G8vbhhHP2TXDqJfg0Qjjcw7+oC27xCgBR1jdXpgh5mXfv3RWgFul9/83
         xDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349593; x=1718954393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0QxVauz5TNvVTL0OezLmGuAsp2A+orwd7NL8d9jK5so=;
        b=vxqVw/Iie16h3bZSeZOhM3TmCuAM0Xn0EIuz7Wy7MlvvlQ9hh2i4NL0nTa25NahIZl
         j9jYJM6nkaTLZhvNzc0HpvcAQR42xZVjblVXpULoulSL7DuMHCNrTr9jOnIG7ah0QkvX
         MJpw00+Vnv5R6GF/Gb+8jellREB7UVxNj5CE/dmbgDHuyn8JrNWHbfIq9Oesc6NoIEQc
         t8gOP25KJiNFaAVkUnJkr1W20JytaQbk9J+qSgG5tDWB7EdOXm4e13hMLYiZVDNMi3nA
         S6WrgofMBeQIafRbltfcfHdn96iHwaOGwXXbQwH6gqVQ8S917sKjXXdgd7lvcUzKtjS1
         MVBg==
X-Forwarded-Encrypted: i=1; AJvYcCWU+HFISaTcYY8wU4h1wl5Ys+qaB66OQZI9433Kk/uojUo0E1rGZ/XlGrwSIqrm6TY4hCQr4EFeuIlV/5jAWoqPamjha78HsSd9Dg==
X-Gm-Message-State: AOJu0Yy3TWAm//WfIPyfYeIyVNqxvogEhK7XFElXcR1IIqvb16k7YNAg
	q4hi8fAy9FEOXEUraGWYrCJLewke03iMptC7GdA6bx4+RsLrALJtRsC7hM5whZ0=
X-Google-Smtp-Source: AGHT+IHfNR5m5jzi7MF01qpnq6BgN03DUzSf3nrX7ojdPohOqwLKv2aANGZR0DxpHv7c1Ds1ipc1mw==
X-Received: by 2002:a05:600c:3587:b0:422:5c5d:1b92 with SMTP id 5b1f17b1804b1-4230482272fmr17219395e9.3.1718349592694;
        Fri, 14 Jun 2024 00:19:52 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm87272555e9.9.2024.06.14.00.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:19:52 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 02/12] dt-bindings: clock: renesas,rzg3s-vbattb-clk: Document the VBATTB clock driver
Date: Fri, 14 Jun 2024 10:19:22 +0300
Message-Id: <20240614071932.1014067-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The VBATTB IP of the Renesas RZ/G3S SoC controls the clock that feeds
the RTC and the tamper detector. Add documentation for the VBATTB clock
driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 .../clock/renesas,rzg3s-vbattb-clk.yaml       | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml b/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
new file mode 100644
index 000000000000..ef52a0c0f874
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/renesas,rzg3s-vbattb-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas VBATTB clock
+
+maintainers:
+  - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
+
+description:
+  Renesas VBATTB module is an always on powered module (backed by battery) which
+  generates a clock (VBATTCLK). This clocks feeds the RTC and the tamper detector
+  modules.
+
+properties:
+  compatible:
+    const: renesas,rzg3s-vbattb-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: VBATTB module clock
+      - description: VBATTB input xtal
+
+  clock-names:
+    items:
+      - const: bclk
+      - const: vbattb_xtal
+
+  '#clock-cells':
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+  renesas,vbattb-load-nanofarads:
+    description: load capacitance of the on board xtal
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 4000, 7000, 9000, 12500 ]
+
+  renesas,vbattb-osc-bypass:
+    description: set when external clock is connected to RTXOUT pin
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - '#clock-cells'
+  - renesas,vbattb-load-nanofarads
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a08g045-cpg.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vbattb: vbattb@1005c000 {
+        compatible = "renesas,rzg3s-vbattb", "syscon", "simple-mfd";
+        reg = <0x1005c000 0x1000>;
+        ranges = <0 0 0x1005c000 0 0x1000>;
+        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "tampdi";
+        clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>;
+        clock-names = "bclk";
+        power-domains = <&cpg>;
+        resets = <&cpg R9A08G045_VBAT_BRESETN>;
+        #address-cells = <2>;
+        #size-cells = <2>;
+        status = "disabled";
+
+        vbattclk: clock-controller@1c {
+            compatible = "renesas,rzg3s-vbattb-clk";
+            reg = <0 0x1c 0 0x10>;
+            clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb_xtal>;
+            clock-names = "bclk", "vbattb_xtal";
+            #clock-cells = <0>;
+            power-domains = <&cpg>;
+            status = "disabled";
+        };
+    };
+
+...
-- 
2.39.2


