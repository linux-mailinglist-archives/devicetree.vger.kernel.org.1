Return-Path: <devicetree+bounces-244437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D28CA4DFD
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E0FE30F0BAE
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F07636BCC4;
	Thu,  4 Dec 2025 18:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="miP+N1fJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6D836B05A
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 18:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764871302; cv=none; b=Cu6c6xcHLm0hoG+/jeMWyyurejf9rTiI+kFKrIKv2itu+XnuPZrb4qRdZTLORyKtjOliXeqeG2h9CP/nM8ZhllF+BuPZuNokxb8jcNB6UrRYGB3ZkuqlTDxEhGcO4DUkNK8bGfrDUmZ8TMTJOle2hi1JkTyFwcy/xhjN1HfCtnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764871302; c=relaxed/simple;
	bh=VsKMfePN7JjgmEwgQW457cXjo1Jn7sfHu3mU8ne1Azc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aVsufIleowMfonTlXZtLBAAI2gRVJNZZsxt4WZ3x8chk50Us8gudo0hLKeHEvBNxDfKN8A023b6r/7hzTqmFcNyxUD0Ff2ygQd+/VTtvnB/Y8Mj2YumS5haR/9exx/bvhIyQOcMZFHqirxoiY7zZWWD7jnZaFoRLONSOntJ+wbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=miP+N1fJ; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-787d5555274so12265967b3.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 10:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764871298; x=1765476098; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuTJZHMKnIcIArrJzXvUtr+o32DOHjdpg8jFv9iZGuU=;
        b=miP+N1fJXwUkeWVAM4NCMqCTXvwwyXZZr9B7xcX74GcWVp7tYkOPogbKbUzBaaQli+
         CC8EPwhBpYuFaz5RVDoWndC4jrEWxEYBcth5fJofV0WVuSHppSdOjTgJVI0B/RcxqIbQ
         bN+wKC6txdMrDsV7qTZgkpSZ9QNvCdyfSEgDlgLWJzsOrTZhOrO0KiIMsecXIUxEpN4L
         0HQevOT4BCKV4L2IjXVWG43LdHNel/gvQPXOQ8K6i/Xea5gmwi9nCvUCkkCUguqWroZF
         aXTr7ev4Nqf8sq0+s/lz6UxzXmyaclMyLOm37+l+0bm0RG3JOIrkFaXMR+99y1zpSZKq
         yoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764871298; x=1765476098;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZuTJZHMKnIcIArrJzXvUtr+o32DOHjdpg8jFv9iZGuU=;
        b=qi7pWVl8IUidZRccyssJGvqLDM3+wDeUIZg/mbj6PlqUTxc6NQu59y9adkc5QFQAF2
         cxh/gxVsA2LcQbXxTK8RxjAUQXFnD2nDPZaFuZsb5VrmE2CjKJ+rG5yWkf/sK6uJ3Y6K
         jI8cUXLLWpNNc76Olob/s4jmOtTkvpjPDkUXXlwR+SNLZmyhHvSvFjmeOSNWthjPSzyc
         tvGbxLmzDfaf3hmBQWQArMDAMGBcdGwUkpVNcA9pkQqFbkRhrJi1Rc7lIPdayvLQw6Yu
         w+gqz6bRouA6p42t+9/k8jCrNIUaXKc1/sD6Z9hN6y5qQH/2paOJxT1fM9siOaS/XFZM
         FOyA==
X-Forwarded-Encrypted: i=1; AJvYcCUmbFBjcqRCV4XjOoal5e1kTTniVzs5D17JNmWfCyrdiLwemSO9rJBMNv5IO9UTLZofG72SPHWpTidy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/kTnm+HhEZKHnbP0LqG49nV7AXCSNJSRZJidHtxs4hnjbfExp
	k+hIYRtd5qrIsNIuyfKVv0YNExW8/lVxnc7pqo1OCCZRtspnMexLHcgx
X-Gm-Gg: ASbGnctXsuUx4TsO+A1dU1bLgFEl1n6cqneBqRV+QuZtj9xdIqu3qU2ocW5LkWsth7A
	d7ns6lvn5aTUJV7/3NIGVfwyG9nYwmxromCS6fL3MHYtjdVC6y8f/mGknIkBNuet0BdHoReeM/G
	R0uqaCu6TdvAbeiyoWxRJEd4HYRHNwJnbJCZ4ufLOYj7LSIifHIczPJWPUVcC77Y2MQbgIMgWtF
	xyZD0sYklhslPrjKVz54/8NgM7BumXdkXB1h41bM+kzXO0/FmGVxpo5j89obNGnjdC1sMZ3lk1a
	MUxBQn/LDJqnafxFSO5Nl2aHcaFv1X1W68TE8qb4GKrzQ4kyEj6tr09QQHDxsX1OkGFGdG8VzRy
	rYnNigap+XYJuLfNMpM2FlGLcZiiHKvGGh0fsZCw5t+KDTdy1OxkSX7XOseAGj1TI868EYh0IvL
	uA/fo3Q38aYiIJjlw=
X-Google-Smtp-Source: AGHT+IFm5FVFFlpljB9a8R7V6ivQDxehmMjZAXg0OhksFr5SQgc3PgRzZ9s4Sbc184thuM27au1C0A==
X-Received: by 2002:a05:690c:3501:b0:787:e015:8561 with SMTP id 00721157ae682-78c188321demr31079687b3.20.1764871297449;
        Thu, 04 Dec 2025 10:01:37 -0800 (PST)
Received: from [192.168.100.61] ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78c1b78e63bsm7704417b3.42.2025.12.04.10.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 10:01:37 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Date: Thu, 04 Dec 2025 13:01:27 -0500
Subject: [PATCH v6 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-ads1x18-v6-1-2ae4a2f8e90c@gmail.com>
References: <20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com>
In-Reply-To: <20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3280; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=VsKMfePN7JjgmEwgQW457cXjo1Jn7sfHu3mU8ne1Azc=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJmGZ2oF5ief/dlvX+QRUhnUWJE0r+IA23urussyYjzmL
 L8c99R0lLIwiHExyIopsrQnLPr2KCrvrd+B0Pswc1iZQIYwcHEKwES2+zP8050/w3HWxIPzprzU
 eKUnzyR+4LJAW0gkZ7Prkalp9/dJ+TH8M7GxWJOmsHb/3Wk3D/oEie6sZv+ozKj1s3R97EbmNwv
 ZmQA=
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Add documentation for Texas Instruments ADS1018 and ADS1118
analog-to-digital converters.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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


