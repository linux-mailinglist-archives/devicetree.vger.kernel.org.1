Return-Path: <devicetree+bounces-243077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E078AC9376C
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 04:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 371FD4E1E28
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 03:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7106B22B5A3;
	Sat, 29 Nov 2025 03:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dkBCTEHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5486019EED3
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 03:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764388062; cv=none; b=CIoIOZM4tUwFVNhByBNmm2c8o8mnN01F0/00JQJKL60qB+xRl7DW1KlWqJk/jmNPMoHNOR5zGU0T4Qx595OwFqGy9pByeuxdiLvrUlK90PXzp8M/ybnASMxTVtK61YDOo7aCZ9UZnlBQD+0H3DsdwRBEcJRzMmlEbWG+Tfv0EX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764388062; c=relaxed/simple;
	bh=rQHq0sGiu2mdFEBt0fl6MdifmUNZYpOHittrIbd/nKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FoCcoUZlfyxBb8zw0sDPDkYFPaQMWnGCrkws26kTh+EHorKJljA+w6fKGOUhVPq63zkfhguKs6E7V8EiRm0JLht9Is6BmD+qN1KyCvPOGxSiqegVTIAC1lR7zKo3MGWgVDFVTg/GKg23KVc66+tz9lb65xZdmgk2pXKpEnnPx4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dkBCTEHc; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5e19e72c2a7so670491137.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 19:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764388058; x=1764992858; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+9UjSoBnDQ20j4ZGp694sj4o1gSVNbN0KxtroIiBUBY=;
        b=dkBCTEHcCr8OpjRsXPxWCqEPTb1N+J93mamzr72yWbfRLALJO6sH1NXg94PaBH6PQH
         TrK10Lt81Agoe86qrwFqvSpN/c7n5H08zuwLQe2oZgV7nyLzsiIOk+BHu9YsMOUJ9yWt
         n4uQUQ8pXMNuUSoisTlhs0PZNMWeC5DveoN7kfpc6PGmfbEqDrkbKqXwHG4TchRPGoIO
         4f8NTpr06RlD0fAokzupzKyKwOuNMyAQrDActZ+OWDbd6aFNAzeXqogUMzZt9BeqhaKz
         Q8BBB+bSwQAs28dHeC8mF2dfRfBdxgYq7EYOjseqi4ndycBVfFzKVX2ShGdTBlI0mKSg
         qEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764388058; x=1764992858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+9UjSoBnDQ20j4ZGp694sj4o1gSVNbN0KxtroIiBUBY=;
        b=r3wjiPbglvZcGeO0TXeb0R4bbVplgZzc2CT7PpK4PoBVgnb9pZGypFW6RjwJG7lXzL
         wOM9nP/fNAN6cCQvMrOjxtj3f0RVqMRR05SJzzcP0sqNzhT7d3UbN/OQv2dvWP/CGF/Q
         63gcflpjgNTpu+N1rbzz3TminPUpuywgHxRDZ+ltzQPQPoDLl/ZGlbaOGu9Circi8/Nu
         Zr9mpsE1Kd7HkwBQmy3EAmHNbgRd7h8ed8vjI4AzEYf9Usq606iyu0jQj7dHeOMB73MJ
         wmtEK6n48SstGDmMqxkXRr7Wy5d/m02bNZuOyetEtkfut6RX5NxU2MO3JKRElkPpLzFU
         NbUA==
X-Forwarded-Encrypted: i=1; AJvYcCVDnqoaCDucqdGIgRm8AJAltFT0S49aeOjqVHep7E4bdcLGKhtUz4FSkTIKxnmuCs2ABk4H8P13vcD3@vger.kernel.org
X-Gm-Message-State: AOJu0YxjdaFsv33QSnwQoi8qIfO9hBbbca7nbXfzbBdBp/o8xux4/Hrq
	ydSCJ6uCXDI4g3UvtiVE6oF90F6nIiBH+lqKxmM6uzSsH+KcxVgZgMk0
X-Gm-Gg: ASbGncvrbZcXWe4mdwwHN3iDstpY0pp764wbmNO3C+2ptLDdpOQTXwwJ1KsekXzh93I
	LzTpMCR2KwzWdJWfEGzgFe3dKe7XK4dSt8v5NCypSqkyYkN5Nq8vZNWNqiBtUbNMYzHztE9u4fA
	bBQyEm6a3Hlq7ykNq6ARwJCOG1LQt45wCr+C3dFViOhjmFxHqpVvp8SBRNV654YtNIsLMgI6QMZ
	y7JpsElKNQX89UyY9isBUfrrnW/3vfeoiDAtYtQK4IYfNW21bH4N102EZfVB8QSkorUbk2FYuA8
	QmavVKM3Q3IGUg1277wmaRKDlwhtSfcWdMMC/BIpihf1QhMOybfEjFLdBLico7lOqUrtjz+JNEg
	eboCq7r7hEEvkdPc9+nEkllAaavAvaqMr3ouC8MnnvWQKPtmKrYT7KtRnHEmsh85cyf7TJvr7WH
	7tfeiweLwSQHSZ
X-Google-Smtp-Source: AGHT+IFzpvnK4d2KpXG/45kSjdrugjb/jXZfBqQTOWS4SXk7wOPD2ST2pbr0ENcRDjfl9RHrINVE9g==
X-Received: by 2002:a05:6102:3e96:b0:5df:b3ed:2c8b with SMTP id ada2fe7eead31-5e22442a01cmr6608852137.38.1764388058183;
        Fri, 28 Nov 2025 19:47:38 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d917860sm2562662137.2.2025.11.28.19.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 19:47:37 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Date: Fri, 28 Nov 2025 22:47:12 -0500
Subject: [PATCH v3 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-ads1x18-v3-1-a6ebab815b2d@gmail.com>
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
In-Reply-To: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3207; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=rQHq0sGiu2mdFEBt0fl6MdifmUNZYpOHittrIbd/nKY=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJlaOddMu3Zdu6e7plxHZMVam/ULnFl77CXrfzTJK7Ub7
 21/vPtpRykLgxgXg6yYIkt7wqJvj6Ly3vodCL0PM4eVCWQIAxenAEykeRvDP/MzgsKVsa/OScbP
 YxH1EJmjU9CTxTnBQUDi7aXwy0fXzWVkmC4eeNqY6eXzV0d4vRyvJNYxbN2S9+5nzaKofYJi3oV
 cjAA=
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Add documentation for Texas Instruments ADS1018 and ADS1118
analog-to-digital converters.

Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    | 82 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 ++
 2 files changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
new file mode 100644
index 000000000000..93c9b2921a54
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/ti,ads1018.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI ADS1018/ADS1118 SPI analog to digital converter
+
+maintainers:
+  - Kurt Borja <kuurtb@gmail.com>
+
+description: |
+  The ADS1018/ADS1118 is a precision, low-power, 12-bit or 16-bit, noise-free,
+  analog-to-digital converter (ADC). It integrates a programmable gain amplifier
+  (PGA), voltage reference, oscillator and high-accuracy temperature sensor.
+
+  Datasheets:
+    - ADS1018: https://www.ti.com/lit/ds/symlink/ads1018.pdf
+    - ADS1118: https://www.ti.com/lit/ds/symlink/ads1118.pdf
+
+properties:
+  compatible:
+    enum:
+      - ti,ads1018
+      - ti,ads1118
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cpha: true
+
+  interrupts:
+    description: DOUT/DRDY (Data Out/Data Ready) line.
+    maxItems: 1
+
+  drdy-gpios:
+    description:
+      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). This allows
+      distinguishing between interrupts triggered by the data-ready signal and
+      interrupts triggered by an SPI transfer.
+    maxItems: 1
+
+  '#io-channel-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "ti,ads1118";
+            reg = <0>;
+
+            spi-max-frequency = <4000000>;
+            spi-cpha;
+
+            vdd-supply = <&vdd_3v3_reg>;
+
+            interrupts-extended = <&gpio 14 IRQ_TYPE_EDGE_FALLING>;
+            drdy-gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 31d98efb1ad1..3d5295b5d6eb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25646,6 +25646,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/adc/ti,ads1119.yaml
 F:	drivers/iio/adc/ti-ads1119.c
 
+TI ADS1018 ADC DRIVER
+M:	Kurt Borja <kuurtb@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
+
 TI ADS7924 ADC DRIVER
 M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
 L:	linux-iio@vger.kernel.org

-- 
2.52.0


