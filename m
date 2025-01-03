Return-Path: <devicetree+bounces-135377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDEFA00C38
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB7B63A40A4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8281FC115;
	Fri,  3 Jan 2025 16:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="N2+qqblB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9523F1FC107
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 16:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922317; cv=none; b=B2++pSPQT1ydaTppqvrCQrmdnBxmBtVjqVR1DqcZWJCw3fQZd1sY16UPmKFwSMqMOQAce/9rSa2trT8+Sx/1onBaZiKPtpuqlo1lF4inBg0aYIaKOHGThs1t/tfoKEL5Wk3slD5F63lVI7pr9AU7CzBdJJnCMGNrAKsgzDrzma8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922317; c=relaxed/simple;
	bh=by0/KQXncjgvS4hPgMtbUixzVUWVB8vOz9ZHoJHsfvc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FRPLY/l6U/H5t5+DS5Xj7tG4f62G06wONsWGs23qAMS1cib6wTspIYHpK+mxu/dgv1rHK9AS4dFiDAGBELDnmTbZ7/3MAw0VZNWw58egQfoNi8FRIOuTjYxiOwJlmY8vNJjYqlKuYO8HNZJk2LJyk0B+yd9uj4I7MdEyQk6TkCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=N2+qqblB; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaf60d85238so512077966b.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 08:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735922314; x=1736527114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=evyYwVG9jAAn2LfhNe4V0lOQ6hGXTx/eRi/lhEE4KRI=;
        b=N2+qqblBJABy/HiJ39CiJSTr/k9VsvnKY93fbC1hgknuHymghaGPTQr0RaGu+kry5g
         Es8S6jaR4nOgQXBjMFm11ZR302yKOFcCS18Jq+myD/g+NwIottNepYn7x0ZD7xCHOgap
         9rn/LuWiYxtmrFQ3GiMadGW1R+Jrbt9D75JyV3mQKWv4FbbZMgUl4tVkrQ4ykxerMwcq
         TkXqq/GpcVAesymgPtK1q/U0EtHUZbYspfx0Eys6ki5PvJZ83xjbb5ezfU0A9q/k0a3T
         wdMq7ilwNd481GuvlPOgXM+wmMAlqIZe0/GkdPM2tk0KjLkuSsCzrat00siwnucI78Np
         qFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735922314; x=1736527114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=evyYwVG9jAAn2LfhNe4V0lOQ6hGXTx/eRi/lhEE4KRI=;
        b=VcOhrxmfOCgqhbgMrfOGXfkk6otjNAFGSPJaFz9nA4cVH9+SiVSVUFr933rUoEafuW
         zEaip48wA2I9YM61TXlr3Srq8ibOi/4wCIF1yPltGwCdad4zy76+1ath5AEw2+RMsCaW
         npkK25NWYznUp/cQ5M6k+C+MZJ3Z4OMBDjonmUXjluubxXI4k/dgu7zESFIqjWRm2wHA
         JEPqjdKweAYwphas2ikWn+7YdT3R5bz73TPGfRyeyIC51c2pHUOt5tx7TMpqmU9Wx5wo
         UkrfQ/hUqFm2ALwFuem31l9DtyWyOQCXYMETeOZi5VLte+I+oVBDo+57E1CDYKRWEhek
         6VYg==
X-Forwarded-Encrypted: i=1; AJvYcCW71oAoII7e2S3w13Rz8+YWNdRFBmHtEdtLrvvOc5UnbZADEZiHo6aWp4+1FCiAStq0yrHVWGdmXFRS@vger.kernel.org
X-Gm-Message-State: AOJu0YwnEsNZUhRBTEbvOr88iz4nlVISGi5mPKXMKG5fwyOZjvxSBtqC
	gVy5+MLMCzexsuiR/1NB3V9q+8aoR7q/iGdzJko6Mdt27chvrkqnOFlbzeLa88k=
X-Gm-Gg: ASbGncuBz/W7S8l8lK3Fco8kJ1QyZ+RPYdKKuEfF4sxJkv8rgzsEylPYlZGeFwLYfOJ
	1DlMdyVfMmr061XLW0zy5SiZFO3Kv0EKSyQ8BnbAtqeW2kb87K3GDXQTQ2gwFwdLEa23CEnUjXw
	NNm7aAdaD7QUmoRb135Ld5b1lb3+uSPAga9G4r7IJoGHp0l2CVQVqpmiORAHNC4LrrLc/3Mg0Z4
	oxPyUohKOj1o5dJP1K5UleY5oNgwx0w6br1szQRgcxP9Qi2h67asujK1O5YDTZGJmPSbOJYMM0o
	QnIkuLmsO0g=
X-Google-Smtp-Source: AGHT+IGZziQN526Qz2cC4SM+sDiCIJGAjK04HVz8g4TFUK5HQL4oXUkqdbEpUHeE3KBwEfQsCEVxQA==
X-Received: by 2002:a17:907:1c85:b0:aa6:29dc:11b with SMTP id a640c23a62f3a-aac3342c7f4mr4934010766b.16.1735922313975;
        Fri, 03 Jan 2025 08:38:33 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8953b6sm1932984066b.65.2025.01.03.08.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 08:38:33 -0800 (PST)
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	ulf.hansson@linaro.org
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 3/6] dt-bindings: thermal: r9a08g045-tsu: Document the TSU unit
Date: Fri,  3 Jan 2025 18:38:02 +0200
Message-ID: <20250103163805.1775705-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


