Return-Path: <devicetree+bounces-107600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7799498F2CD
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:42:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDE76B21D86
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3751A1A725E;
	Thu,  3 Oct 2024 15:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtNkFb+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB2A1A7050
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 15:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970095; cv=none; b=eWllqYk9oOkK7VnpzkPKjNh3MjwDULQaApdluSf/LRFzD1Qr6CXlnqgk1nbUkRcsW4HEqiGSq7ZGvrv052Q0N1sp0asBhz4icEQ4yIeNFAsF2rAT8r/YDQc1k4fCRhECrJ8SWQGxVA3uJD2JHvuW7fPlzW+AyWM+saZpEzIM3ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970095; c=relaxed/simple;
	bh=bzeCmxDx7NWJWX7oxacm8M3PZ0u/9BLqrzsvyG3nSA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QsBy0ssTLrixAeSfBGrsee/lPpREsqfr7ze5HyKkPHNqzI89BLnno0BxRqIPpYCnXb7CUuMyXTg42Ffq+VYsLvukT/WQzwI2ehmEQ30xIGHm+M6QzQ1yZrKy4t6AaoBrhIjZ2WezMq3UqPP1HxyFw2H0cOD8YrApgdJbPKaObXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtNkFb+5; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a7a843bef98so151823666b.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 08:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727970089; x=1728574889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oOZon6OrgT7duIdBUXx53HU9gMYMCiOUtzyZ8ujBt3U=;
        b=JtNkFb+5TKyZI4lSAe2uhmjCY5y/Ubyplxkh4290PNt2+7Dy7RyEGJ0pQSj1jTeKI0
         LKPMY2omkHb+LpYONF7Pv76BNvSssjd1yTvlg2DK/5FmZFq6x3lERUO8nOwma+8aPWv/
         iMYZFVfHOy7VhyHqX82hdAz1uJEYMl9qvNvYwo05bpld3l3J8SnJwNTGUSC9menMhRWI
         fF37kIyHrm/kdC38lvbj5+F3mADOJEv5idmfQnf22SLNrZD7IyGZP5VCWtCtLVyrOm0g
         KWpAAxv24RSg6hAz+J/cpSj/s7gO4pUxTVTOqh0Yw6bnyFfa+vB271lXh1eM0z/1Nw0K
         CVSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727970089; x=1728574889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oOZon6OrgT7duIdBUXx53HU9gMYMCiOUtzyZ8ujBt3U=;
        b=o6oaVrAljNIQ0MFBZXTda7rBXyCoYhHYvtQa7K2X62SL6GXPVaw0/qKSKc7Gy1V8Vx
         mptkugmcjS06i8+tfKrrwKhcUcqZlAggD8z8XsB9arHoO493LNNYabCdXuRkJDnqD4/k
         p6yOC2A9/4DpWsVFdwpthUm1dRlQheSEIh/K+Q+WzYwkH/YuvcfyINorQgGQkqFkv2iq
         s2eOEm25l+KoAu79DJ+PpEh7+9csMG5Y4J19dxS6mmpPpWVvDlnGcFsrYxH9eGWgzoIG
         u1UtHFbyi0XJVBczl8zcAfmcnCj67kyGUGULBCUvNNcfJHqIDSRtY3owEG4SNb3qLlVu
         BLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6/GNf4hstaYxKTVr7u/GtRaBjMCxAYfEpoR/fk7NpHcs2cIrtHUQhw5EelJLD+QUFiCLvrI5jA9HW@vger.kernel.org
X-Gm-Message-State: AOJu0YxZmYKoaEGagFi/AO4vTzVfIRryY09s2JybvE/1Ixw4Z27yco/w
	LdNXHNR2MFXaq16JsOjDdgsRa19h+S7LX6tr7mIi5RIBbSjazdLcGNHEsP86eY4=
X-Google-Smtp-Source: AGHT+IFrM7i4jihcE8DZyWXYS9D1iG80OIDMskQyAlCkfr2SUYoxlsmJpL6QfGPexH60boPW54akJQ==
X-Received: by 2002:a17:907:86a6:b0:a8d:2ab2:c9a0 with SMTP id a640c23a62f3a-a98f83f814dmr678950766b.53.1727970089596;
        Thu, 03 Oct 2024 08:41:29 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99104c4f3fsm98492866b.200.2024.10.03.08.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 08:41:29 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Oct 2024 16:41:26 +0100
Subject: [PATCH v4 2/4] media: dt-bindings: Add OmniVision OV08X40
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-b4-master-24-11-25-ov08x40-v4-2-7ee2c45fdc8c@linaro.org>
References: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
In-Reply-To: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Add bindings for the already upstream OV08X40 to enable usage of this
sensor on DTS based systems.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/i2c/ovti,ov08x40.yaml           | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..51f29033e1d94b1822fcfd90a6eee4bacd677c18
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov08x40.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2024 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov08x40.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV08X40 CMOS Sensor
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  The Omnivision OV08X40 is a 9.2 megapixel, CMOS image sensor which supports:
+  - Automatic black level calibration (ABLC)
+  - Programmable controls for frame rate, mirror and flip, binning, cropping
+    and windowing
+  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
+  - 4-lane MIPI D-PHY TX @ 1 Gbps per lane
+  - 2-lane MPIP D-PHY TX @ 2 Gbps per lane
+  - Dynamic defect pixel cancellation
+  - Standard SCCB command interface
+
+properties:
+  compatible:
+    const: ovti,ov08x40
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analogue circuit voltage supply.
+
+  dovdd-supply:
+    description: I/O circuit voltage supply.
+
+  dvdd-supply:
+    description: Digital circuit voltage supply.
+
+  reset-gpios:
+    description: Active low GPIO connected to XSHUTDOWN pad of the sensor.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            oneOf:
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+        required:
+          - data-lanes
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ov08x40: camera@36 {
+            compatible = "ovti,ov08x40";
+            reg = <0x36>;
+
+            reset-gpios = <&tlmm 111 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_rgb_defaultt>;
+
+            clocks = <&ov08x40_clk>;
+
+            assigned-clocks = <&ov08x40_clk>;
+            assigned-clock-parents = <&ov08x40_clk_parent>;
+            assigned-clock-rates = <19200000>;
+
+            avdd-supply = <&vreg_l7b_2p8>;
+            dvdd-supply = <&vreg_l7b_1p8>;
+            dovdd-supply = <&vreg_l3m_1p8>;
+
+            port {
+                ov08x40_ep: endpoint {
+                    remote-endpoint = <&csiphy4_ep>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <400000000>;
+                };
+            };
+        };
+    };
+...

-- 
2.46.2


