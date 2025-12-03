Return-Path: <devicetree+bounces-243849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EDEC9DC65
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D4874E4C52
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84905280CE5;
	Wed,  3 Dec 2025 04:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DiAhjC6N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81DC277CA5
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764737802; cv=none; b=Bbqrc0e1eTwCS/zjghKC4StZG/0ZQNs7d5x0Q+znJZcoOhWv82XofusfgClFs+AXbn90Fr/0Kf1Z43y12H1c4R/8ealLNZZWvJBZlk8/Z8YbZB2CthOl2uD1n3EdBzii0Dh/rxbnI/yKia7YKPi3tueCrOc20mFBadGqc74Qwk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764737802; c=relaxed/simple;
	bh=VsKMfePN7JjgmEwgQW457cXjo1Jn7sfHu3mU8ne1Azc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ALbIfNrzPERY1zhC83oVwYQvgUwHIyUlLnoKriYYzhfXshnyXGv/QaQ/7woUFnFXGL1E07ZlTIUk4sK48cmpOTgSAJfBAp6v5+WyOsv7TleixaPCwduMgKZLGW4hVw+wrkjBcWfCDa527dYNz1zcDT1pONFJvMW8AfGaZbAyJHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DiAhjC6N; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93720298f86so3178738241.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764737800; x=1765342600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuTJZHMKnIcIArrJzXvUtr+o32DOHjdpg8jFv9iZGuU=;
        b=DiAhjC6Nx1jR3A0vsUy1gy/4gF0a9tz0t3NAvnF72vbXXpxwdZFYRMOApbtYWWiGNd
         j5dBlxD0PLNcrmrlzkO6jGG8kg34p8CO8b2Op6pkzt4Fm+SgaaVciklFpjlouoPW7Z1P
         JprcWVTpQeZikDC+P9AK3i9o/KwBW7VyrppxL3zDz/q3z/8HOQ5wgIeSRmDd8j85oWx9
         2b3aZL5+roaphzZNPpcsDErjI8OBpSN3XG9IKGsdXE/ptNb/U+b9OxT1GLQMCZmLceBr
         QYid6z2jesb6m55F30DZmnbqms06fOmReuz+1fc7qsmogrIN5GvWdifKSwrKZrlQDauF
         nEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764737800; x=1765342600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZuTJZHMKnIcIArrJzXvUtr+o32DOHjdpg8jFv9iZGuU=;
        b=B7L2UQs1ybSh/ShDobE4Ykz4zRth4qByyCTs7bILfi+9NgIZOTV4npXMXh0B2AfMWz
         lg+LdTd6rDEv5Ipj6HKw/tOAGjAuU6qj8Bj0dS4qk59egQFzIuWRtG8aYFLKjRgy4TLh
         ktWIsoXZn99bpX0gQiSMdop6niF6ELBr/iVXeUzB8ndxQdc9ChoSzdeUPHRNbMBjXCTv
         K1HcQ30DqraftoWDwpkQkvjb3VirP0cejql4SKw8ZFs5el0giMneERFuClsXx+N9jyx3
         UOFxHxI8Oap2t1JyaBF4z/4UGwy1nrqeYFk/gRjOjBJjpe/fEarePz64C4oXs4YMS2pF
         s/Sg==
X-Forwarded-Encrypted: i=1; AJvYcCWbJ3dbEn8RXhpTxclwn+A3xIVTxdZUf90ui71GWdcNeq0bfbOBc9z/u8x0yyLHZN28Ai7z9e20L9Eu@vger.kernel.org
X-Gm-Message-State: AOJu0YwbvW2I+vy484jPYJ22wkhPfQBG7wYpegQhdlB8AcMFG2i9Vvj8
	GOSiKo+4tTGvZ9ZhHv0fVS5+3+QADHoj4MkFg7zKQBsMdPo4S6jf1Gjv
X-Gm-Gg: ASbGncss76/gVgkGqibWfstg4r7tL0+MsdPhqwnEQmvD0/3lBdXTTGullO0PvlMOYBI
	LbHH8eav8wz54x8fsftXK9WTCd0Nmeb/SDBH6xrVCbZSQZ/EN2dSZWspgeumCH/cqAEVAmYxxaa
	4Ghvxe3fcoVHegiCkqOln65TBQu3vzWN1gUpF209Z/SttmFxb+Kq0dgNkpf4Q4OTy+1w4HssyOI
	IApqqRFBFN8/n5YaQ0YzdPtuFgp/MsO3vvPAnFshjZ6EjIqaTv0blImcRJGc1COg/apBB+wImC7
	zzpF19LIxvUkvRbBWTYf1rEdpIyypFa+ofLHrUaKI0gGzeb8qPMoC6WAor3VASIT3B5Ld4y+HZR
	Ly0rsQC51dio7elzvZBD201OsSEiyDtwFiBjzFhy4DZTgjuKqFwWUJKlPtzXI87HIlCa8xKpxRE
	VhdgP+q4fqhUybHrNjANsXZVc=
X-Google-Smtp-Source: AGHT+IFHxTjlVAgICj/yjx6oV5U1MRjndSC4TrrnPw7FeJW62AiXsQwgbwaG4pGl3j3qddD01qmQWw==
X-Received: by 2002:a05:6102:9d7:b0:5db:cfb2:e60e with SMTP id ada2fe7eead31-5e48e3d475amr247205137.44.1764737799713;
        Tue, 02 Dec 2025 20:56:39 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd6c6802asm7535496241.3.2025.12.02.20.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:56:39 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Date: Tue, 02 Dec 2025 23:56:18 -0500
Subject: [PATCH v4 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-ads1x18-v4-1-8c3580bc273f@gmail.com>
References: <20251202-ads1x18-v4-0-8c3580bc273f@gmail.com>
In-Reply-To: <20251202-ads1x18-v4-0-8c3580bc273f@gmail.com>
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
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJn6h5nFLtTkGeTtuLeuZapyUKdkdo8s5xnv5JaNHLZqs
 1oXrDrbUcrCIMbFICumyNKesOjbo6i8t34HQu/DzGFlAhnCwMUpABMJXcPIsNs01yNS9928Bsl1
 03bvyOOMEL9flJ4Wa6eqs6+Yzby+j+GfokBefpv9TYVHpzrTTUujZT6eO1brny3Cw9VuUNTj1cc
 AAA==
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


