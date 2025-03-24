Return-Path: <devicetree+bounces-160181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3392AA6DC3D
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E8EE3AB12B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7965A25F965;
	Mon, 24 Mar 2025 13:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="X45dn8fR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB3225F789
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824634; cv=none; b=gN4J0pZiIAbpXCMNC0Upxl0IzQr/wzicPH54H/rhGS7ruEW7RkUlWwjWY/vKsrEdyzz2+ozEXFeUDX30SY4XGSJekewbbGDxteGtYpF+5lxyp+HHql0is84DViN/yPR2VM1G0icHk7Tlsc/RrCj6OYC1cZa7bpK0cK4IazTiIV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824634; c=relaxed/simple;
	bh=UW1lKUt524Tfb01HBDHez5x3MQRpakzQrr2jiWuM+Jg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IR4LD9GlLSWzEFdGLzdsl26/DZqu4KscEOagRP71+56mM1X0gi9OLcn5GZg2wSMAI7jANfAhTSjfb4XuOKjrLBYhxyEPr2UizrTGjoAQgGl/0MqhLOYp5nzeDT/s/93PM0xPMCC9/Nb4Nyl852+rXV4WAgpzCr679GmqU1O2UJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=X45dn8fR; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso27913765e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742824631; x=1743429431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UNHK0UkXslOXK9Cojg+TA3Q9iNaUiBxGFRZEPfafnE=;
        b=X45dn8fRB6ECLj0BXlN4ltnBL8HQypUXYfLB6rojFJqmB3nn9P0Uk6jtOYWXbHWCqN
         L0q+CsiCZKpKCg2KGaZIrvi9y5/8rzj9Htr/MSibd63hQO9fhfXcphtref+1gtKf7E6u
         8tQRvLeaDcn4rU0bK59gBD8bX04E1Qk9y+c2aNF+WLDs4Eo69kUjSwCDEElFlUadekgC
         0n867a7PVO4PyfzKHJ4OfWcx9E5IFsQb8LTQu7O6eatjg4CZck/1zgW/kRPo7opJzjVQ
         zRo1HmGOysdRDsQcLXhSq4eTfZ0ycADd+bBFlIB0I8bkNPNk5UkR61UobF21roxaEQEu
         rh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742824631; x=1743429431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7UNHK0UkXslOXK9Cojg+TA3Q9iNaUiBxGFRZEPfafnE=;
        b=Bj7BGZi83ycPH2OicYeSLAGd9BiS/OlVHS/jfQk1OxeT574nK/b1yULQyALcionDT7
         O+7lcUI/hK9G4xzlnjCUXfMfoLP3Wu2HDsci4jiPr9/W4lvgVCvIKkvNVab7Dz9y19Ov
         TTqJ+yfcZoxo43khxA8ovXi+uro8QvCfUV/vRtmnCD3Fmf99VNH3d93Svuel0UN6pxzh
         YwoyqrbcE+OKHXH9vVvAisLEzcsOXD2XCjb5O5HSKlMU7onijO7dadfYOk9j+Eg88Hr+
         8VaQO4AOxXqpO0+cz50HZRyAQWJHdQJdwkKUR10g7ZmF178X3yJR8c28BqgUyyvGldlM
         vJiw==
X-Forwarded-Encrypted: i=1; AJvYcCWK/eDxcpoKmRRP1Z06431kiNRdFYxASyeP4QsQT205P096psyjTBju14caJ2itE9xpwKfmvYSLiw6w@vger.kernel.org
X-Gm-Message-State: AOJu0YxHIBAOwT2FBtbYrmmhP/5JwxmUuZ5y3d01wshVva5zFDJleKij
	z6tvzZq9Iv2pMSYK5NMsho5jQ2JwHOmN0ZjjLNV6wOooFG4W1CB5vCWWptOpjjQ=
X-Gm-Gg: ASbGncul++Co6ecyXE2bV4KSzTs97VA6qmcN0y+3owJsmtJIxUV4Zem1gPgLDHFQifj
	t6nq3kBVTk3Xw15MlJP3dBH4EAAEcpQo8+9NOmpWLUwI3L0h5SsSRK45oiKuZoGMDFpKzt6p087
	mlKFnzvn8mYy/yOeM+LQNREOydUSeiRPxFcpm376dLqFadkyFa4bWdepj8ki9wIkPLkRUfz4x3G
	pUEqReChpUhFPVMNZpt4h6zpIkZ4NBb69jPx+BFF0TsZIXWV96T1rZyZushlaMQpnuz0EQ4CeF6
	PXXCSjltWhSJwhN2eqbc/Ma8xxc+jzarEzixQMNsBTuOrhMKwFPCd+7xdG7K5Vyvzywp1P9ktA=
	=
X-Google-Smtp-Source: AGHT+IF+aQ0FEvkhnRt3sxgn6g1Ze8bSrdmghjRhLESAenZp4cAyrmpvI0c8iq1nlVx+oM3A7YzpMg==
X-Received: by 2002:a05:600c:cc:b0:43b:c592:7e16 with SMTP id 5b1f17b1804b1-43d4915e6bemr141532175e9.3.1742824630850;
        Mon, 24 Mar 2025 06:57:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbcfaasm120146525e9.35.2025.03.24.06.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:57:10 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 1/4] dt-bindings: thermal: r9a08g045-tsu: Document the TSU unit
Date: Mon, 24 Mar 2025 15:56:58 +0200
Message-ID: <20250324135701.179827-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC includes a Thermal Sensor Unit (TSU) block designed
to measure the junction temperature. The temperature is measured using
the RZ/G3S ADC, with a dedicated ADC channel directly connected to the TSU.
Add documentation for it.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- collected tags

 .../thermal/renesas,r9a08g045-tsu.yaml        | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml

diff --git a/Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml b/Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml
new file mode 100644
index 000000000000..573e2b9d3752
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/renesas,r9a08g045-tsu.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/renesas,r9a08g045-tsu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G3S Thermal Sensor Unit
+
+description:
+  The thermal sensor unit (TSU) measures the temperature(Tj) inside
+  the LSI.
+
+maintainers:
+  - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
+
+$ref: thermal-sensor.yaml#
+
+properties:
+  compatible:
+    const: renesas,r9a08g045-tsu
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: TSU module clock
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    items:
+      - description: TSU module reset
+
+  io-channels:
+    items:
+      - description: ADC channel which reports the TSU temperature
+
+  io-channel-names:
+    items:
+      - const: tsu
+
+  "#thermal-sensor-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - resets
+  - io-channels
+  - io-channel-names
+  - '#thermal-sensor-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a08g045-cpg.h>
+
+    tsu: thermal@10059000 {
+        compatible = "renesas,r9a08g045-tsu";
+        reg = <0x10059000 0x1000>;
+        clocks = <&cpg CPG_MOD R9A08G045_TSU_PCLK>;
+        resets = <&cpg R9A08G045_TSU_PRESETN>;
+        power-domains = <&cpg>;
+        #thermal-sensor-cells = <0>;
+        io-channels = <&adc 8>;
+        io-channel-names = "tsu";
+    };
+
+    thermal-zones {
+        cpu-thermal {
+            polling-delay-passive = <250>;
+            polling-delay = <1000>;
+            thermal-sensors = <&tsu>;
+
+            trips {
+                sensor_crit: sensor-crit {
+                    temperature = <125000>;
+                    hysteresis = <1000>;
+                    type = "critical";
+                };
+                target: trip-point {
+                    temperature = <100000>;
+                    hysteresis = <1000>;
+                    type = "passive";
+                };
+            };
+        };
+    };
-- 
2.43.0


