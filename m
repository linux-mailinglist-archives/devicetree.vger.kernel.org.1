Return-Path: <devicetree+bounces-236387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1851C43FC4
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D8D73A7399
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E5B2FD67A;
	Sun,  9 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hzz72E1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E11B2FC87E
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697513; cv=none; b=gyVi5CsQ2+smA6TnyNNXvvC1TgDe5bKVbAn1yJsAN9a2F1CcI3aSto6nBqxxkcSJpzUYvUmZdxLlmrodfzSNdtpgyH9kPxsxcYm5OaSV1Y263McuezQ/8F/D13H4f1Ox9QCpic2yOGHc5J7+nsDbqDj78aigAMQT/PdNACQKF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697513; c=relaxed/simple;
	bh=+fic16iQPf5IXFa0CPyVFOBhEV2n3/FkGBoy9etOEpk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sW7RWG/lTdK3po4R+eM3oKrABvCHl1+0zuq0QmLqHm+A/J2TcbL2cKy0j5RWVyKg8Jy4figCt6SYsa9780pID2GgLhtItyrWdRsvveGNznPckHgPoaGa8PL6htJtndYipZknQCQa7RJDVCrDjBAFSxil/0TqseyEP1RrXVynrbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hzz72E1t; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-ba488b064cbso1449825a12.1
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762697511; x=1763302311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hj8+LM2AOEboP9AwSvnFLwUXfAZUirFnsMuKwJ0eWyA=;
        b=Hzz72E1t+9/OFxPZexDQB4POv6fEo6g7l53KwiFSkCdRi7vCuyjwPQLaX67dCO36YZ
         WWJvA3F2Uupc6xaqdxBVwGXcu7ySiQjWwmtVJiR3hFUO5s6e4BcffG0OsJx5MtBkvh73
         3a+afXCnzX2JbWwwpuqB4tS4CCIgQkX5Ht+Rh4Be/n2OfPCjjM+l84X/9gn0bJMriqDg
         EYRgBImsbt+aU6AdLtmB7aa7OMVbMzgYghyI8peurOd62YUiRTXRc+TCNxIvHABlGzlI
         AaYXQ1F6BToO8cvMJoOdRtVewN3XhalYfY1uwtIhJ0AjgjEbPR2nND8nCGkUsaWMZ/8r
         mWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762697511; x=1763302311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Hj8+LM2AOEboP9AwSvnFLwUXfAZUirFnsMuKwJ0eWyA=;
        b=rBlqkayvZyFNPEf6VVkRgV1TFEcDV7plBjxcAKK73T1alZFqGWd6oEHgdXJ+uFGL0B
         +KQApkyH6pSvuJcOgT1B6QPAlCM0Ui0pNyEUfadMCy6Vsy9svIdU7xyvZv7GAQZzTrjD
         ErQNdFc7NQ5ZvOglEf0pYA8iy5atunCsnGF2/TAv61yD6jkihWSHhLGug09cJxX4MKKF
         Gkkq0Qf2cIktQZTkIMX5ZPZrL8I4N2FIvsgh6GUR2ad+j9WMvhxHzTIyg/zXO75728SW
         yH56c/28GQNW4lzi3woKLiVBQUWHOkvO0swVrq7hihSID2F4Y/SDt3xQ8xfIPvwpcevO
         Q5xg==
X-Forwarded-Encrypted: i=1; AJvYcCUzDn3nA/g28KzDEXafcNPLSNyCJSRBFLGEJIio8lqwqjVRZalMhx/eyz9Lhgs5U44XsuThlNtX4Yuc@vger.kernel.org
X-Gm-Message-State: AOJu0YytflMMhBC1S/iQFLnZ+GjE2xglGEDmOA0JfgRrReuNXzqY9rCc
	zN/mQArTYAMpmHRZDvdqtCq/bDYjwYVUZrInAJaGn1CR9b6ILxGhF/ZL
X-Gm-Gg: ASbGnctElp63s8SVGDzVmyGuHSbLqGNuh93RfQzlmHEaQGh9tS+V+pxWoH1Z1CalDxw
	Y4Mqc4HAyXLvTfL1Nrqt0sIJZiWVuNPxQhfo382x1SRGJu5eNYqhKHH/LDOja9Nfyldfi27I+U0
	UE7Wb8TB2ZU6G/uO/ac/jnKUS3+c8C9yWeanQ+ypw+hJfE38BWL2NNK9VZd6O7S3/LM4fJGzIAf
	X3Vtb81wCW3kkLj8Mbnu1CBc0Pf7XOzIKKYQnyd7+YB5q7Tvo/Qz/3MTbu5nEuqAJPCmynm42Xn
	FGjGBRxCcl34MLntGz+ZHYe5i9gNySqLLoR+EG4DjVFu+QKzuQUOKu1hPvlwX8QLj2RiWQWgt4s
	ABOrX7M0pqEwbrrOqWSi3SveH0zfhRKAuX5jdyrpaEd3rgwwiged6MgehGQnjvsQDJCpSYTYWzr
	+KKm4WXs92UaZ/k/Wy3fX/6KYF0i1CqyNKi6EakFXJIqUtueLl0wrqkN07MIjLis6yVqHYzegN7
	1dTS0vc4p/Mz6x3JVwfteDGnrz5pIeG1cAF0ngqRC1tXBm6mZP+BsbW
X-Google-Smtp-Source: AGHT+IHab7rmnGWSiWiRgQDArZKg+m7zQrcjSf9Klf/NvCij/kXr7+GZLKxeBhuepJLTOU3ZgCxT9w==
X-Received: by 2002:a17:902:ef52:b0:293:e5f:85b7 with SMTP id d9443c01a7336-297e5409da8mr63387115ad.11.1762697511527;
        Sun, 09 Nov 2025 06:11:51 -0800 (PST)
Received: from ajianan-Latitude-5591.. ([2402:e280:21d3:2:5455:eccf:e73:de96])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bad33c801d1sm6582780a12.7.2025.11.09.06.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:11:51 -0800 (PST)
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
To: jic23@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ajith Anandhan <ajithanandhan0406@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: Add TI ADS1120 binding
Date: Sun,  9 Nov 2025 19:41:18 +0530
Message-Id: <20251109141119.561756-2-ajithanandhan0406@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding documentation for the Texas Instruments
ADS1120.

The binding defines required properties like compatible, reg, and
SPI configuration parameters.

Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
---
 .../bindings/iio/adc/ti,ads1120.yaml          | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
new file mode 100644
index 000000000..2449094af
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/ti,ads1120.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments ADS1120 4-channel, 16-bit, 2kSPS ADC
+
+maintainers:
+  - Ajith Anandhan <ajithanandhan0406@gmail.com>
+
+description: |
+  The ADS1120 is a precision, 16-bit, analog-to-digital converter (ADC)
+  that features two differential or four single-ended inputs through a
+  flexible input multiplexer.
+
+  Datasheet: https://www.ti.com/lit/gpn/ads1120
+
+properties:
+  compatible:
+    const: ti,ads1120
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    description: |
+      Interrupts for the DRDY (data ready) pin(s). The device can output
+      DRDY on a dedicated pin or multiplex it with DOUT. If both pins are
+      wired, both interrupts can be specified.
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - drdy
+        - dout
+
+  avdd-supply:
+    description: |
+      Analog power supply, typically 2.3V to 5.5V.
+
+  vref-supply:
+    description: |
+      Optional external voltage reference. Can be connected to either
+      REFP0/REFN0 or REFP1/REFN1 pins. If not supplied, the internal
+      2.048V reference is used.
+
+  ti,avdd-is-ref:
+    type: boolean
+    description: |
+      If present, indicates that the AVDD supply voltage is of sufficient
+      quality and stability to be used as the voltage reference instead of
+      the internal reference. This allows the driver to select AVDD as the
+      reference source for potentially better performance.
+
+  clocks:
+    maxItems: 1
+    description: |
+      Optional external clock input. If not specified, the internal
+      oscillator is used.
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cpha: true
+
+  "#io-channel-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "ti,ads1120";
+            reg = <0>;
+            spi-max-frequency = <4000000>;
+            spi-cpha;
+
+            interrupts-extended = <&gpio1 25 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "drdy";
+
+            avdd-supply = <&reg_3v3>;
+            vref-supply = <&reg_vref_2v5>;
+
+            clocks = <&clk_4mhz>;
+
+            ti,avdd-is-ref;
+
+            #io-channel-cells = <1>;
+        };
+    };
+...
-- 
2.34.1


