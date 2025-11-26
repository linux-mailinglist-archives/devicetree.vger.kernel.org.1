Return-Path: <devicetree+bounces-242497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F87C8B203
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE0003B95B1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BD033F382;
	Wed, 26 Nov 2025 17:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i9Cobk35"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA283016F4
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764176675; cv=none; b=q29oAAjszR0rwhhFMhqJJHlBL902BAhwmyWVbbveBMQiJpnIMeCozcSKSCstEiMXLrKhScWwKCValeJ7SGmxrjht2oIm45yGgN21qsBcwnOhBp9jyTfK4b1YBbXPxiN9l3h0oBorL94OnI+nd+BVPKvLiDtp6F4STXnFPxuo0Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764176675; c=relaxed/simple;
	bh=SvHp0h8NsklocbzdYY7aO2MNGJqdaiMnGBPKE+inQoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bxwxlxz1Rfry1Xr00Ce8OpVKMKkQ5e5PkgHUVlYT6+hZUCXbY73Nf0yGBruNE6UcF4N+pfOiVX0O4YQ+wwzCq3dA1wiDMIGwXXSagKuEj2SZDberTkMGS8ET21pLk8M/OcwP3VClCg42ffbpgmLr8KVPO+mQP2JcQC6pQl8kjMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i9Cobk35; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso34773f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764176672; x=1764781472; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=i9Cobk35VSAQcQDUMnk0d3azjKECnEC+lQ5ydt+7avRAxWEwW9AQgfbGKE6GaMIFQu
         hSb7sbeNsel4TnKXALOCb1QnALEU+ZIiEmHqtzhFNIQIPe9AEzZNYVZDYU6/wUE2IIEr
         eJ1UL9t5jPR1T4MBWzxsa9xnaM9lNFAsbNb/OH3aQF1ps9prR8EbGd/Z3woSJHkT+M4L
         nhXRFT+qpHIp3xZbHVmvQesOe60T1hYm+PQgnqweFMvwJxeCd3lnDWUFDTzyWhcZnBQC
         OHQt/PbiFd/HARAPvsL+hZEpiEV0Lel9C6mtllA02DXi3zzfG9tsbWZErvB3NmqskkTw
         3TbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764176672; x=1764781472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z0OD6Tul6N7Ac9c9vQK1/GWaIUr26ez2juaXAYXKN8s=;
        b=WgfQEsA0qVN/IGA2gjgs/pkn3kfH17cizZNnq5mg1a+bzuFQPT+HNm3wNLt+R0VEoC
         iiIM1eXyqawzLTeVojNUgsEUPUYFIQbeI2bjkMOsoo+oPwc1OFJm2dTP22R/zOaNss1v
         f8Q3MWdokECTRvBzUdKgYwvwx0DySjOcQmzS+MtIVwG20khTvThqsj3zCd+40E+c2MYh
         FwRd/X6g0EYzUqdkBMOrKKbr2WpTaJwT/MNVTxveVhvQ/yXS7Ulie2jSJg6TSsVFII2v
         Y8IcIdUziaylFEXkmWbQEKDOvgqaJvC0fAn4/qDqtJoIiaDGUHuUNPtS60MIizG5OpHV
         beXA==
X-Forwarded-Encrypted: i=1; AJvYcCXvP22c1Ag1QOni8bDEBeM2ZepfVkxufE0pLEKO72pziUKV3CB8IMwYQTZyN87fX+SDyqWBcYUoUR/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxlXPdT38IO2vTjgLDKWJU/JZ/6ye60eRvnlbWYr6UfU72ZlfHL
	rgua0gSPT1txfCkwlQR10ZZeZafZp/FuIQx2wzG9lFRKhyBHbj9s1yCL
X-Gm-Gg: ASbGncsDG6g1tPl6p4lvZTb0jrm+ExgFiT6VsZXywo8DuikqBRqfZH2pV0gFPP4gnZz
	AIMtR8ASo6NQJhPcDMt5bhD6Ff2BFXtP94/G1y/8UMUejtkpW1K5OB+M/PW+L4TZTNGsts1G7ba
	1+Xlk+XCocLXRI+6C+IVh8xiePTNhycypcece8l1MEwMyXqPyGOKX5delxjjbGOQCBdEby6R2HC
	dSs/MgJwtv2rgBawqTvH4jjqsYkPMz6TzSisdXCcHIacezKJJNbFaRqrPpoyqgKNtG7J0Usn4Gy
	9Mrmeo9ndxT/fKWjtgzIozz1aaYsZ889u5MT52/P4cbt0u6tHYPqsoG/kgKKkOj5W5hOlI07bzN
	xvSz+jwNzkpv8JRxLlix/UbmWECKhnO3fvWLxRC1skmLXYJmNTJtZWZg0arGAqLQS+q25HjlN5+
	K+TiAprebn+d2cUyZyK1iNKHC+lzH5PrDpQgjBSrPfgGOhvmQzXxLE
X-Google-Smtp-Source: AGHT+IGuGmBOIwj1mx/KDvXaUjKyWYx4qrXMEWM/RRovenW6LKvpiCaIe8KXa+I1aqRc59MHCZfA+Q==
X-Received: by 2002:a5d:5888:0:b0:42b:3b55:8908 with SMTP id ffacd0b85a97d-42cc1d22c70mr20850453f8f.51.1764176671730;
        Wed, 26 Nov 2025 09:04:31 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([5.225.141.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f2e574sm41252799f8f.3.2025.11.26.09.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 09:04:31 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Wed, 26 Nov 2025 18:03:49 +0100
Subject: [PATCH v5 1/3] dt-bindings: display: sitronix,st7920: Add DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-st7920-v5-1-64eda5267d35@gmail.com>
References: <20251126-st7920-v5-0-64eda5267d35@gmail.com>
In-Reply-To: <20251126-st7920-v5-0-64eda5267d35@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Add binding for Sitronix ST7920 display.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 .../bindings/display/sitronix,st7920.yaml          | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7920.yaml b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c4f006fc41e1f472939725bd82b86a649f9b3f56
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sitronix,st7920.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sitronix,st7920.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sitronix ST7920 LCD Display Controllers
+
+maintainers:
+  - Iker Pedrosa <ikerpedrosam@gmail.com>
+
+description:
+  The Sitronix ST7920 is a controller for monochrome dot-matrix graphical LCDs,
+  most commonly used for 128x64 pixel displays.
+
+properties:
+  compatible:
+    const: sitronix,st7920
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Regulator that provides 5V Vdd power supply
+
+  reset-gpios:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 600000
+
+required:
+  - compatible
+  - reg
+  - spi-max-frequency
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "sitronix,st7920";
+            reg = <0>;
+            vdd-supply = <&reg_5v>;
+            reset-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
+            spi-max-frequency = <600000>;
+            spi-cs-high;
+        };
+    };

-- 
2.52.0


