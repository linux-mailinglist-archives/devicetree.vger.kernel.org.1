Return-Path: <devicetree+bounces-80708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D00B491A3DF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CF7C1F23A13
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96BAD1442FE;
	Thu, 27 Jun 2024 10:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MeSh5FfR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DDB143876
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719484365; cv=none; b=oUFlqCCYzN2n+asG0/VeqPhcUe7RSVdy5V53SZtZWGKs3+7XrFyGAz05RFDxUcevM38/VXXiN9QEEAhIlYyOHifrpfLKvowK6aT6SO+vuyyZG9OuJsI4RHgRYJOXs/9QSqXPFvXOKyURSePAXg6ReGM+ZzGH/lPRsHYsaRgHp/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719484365; c=relaxed/simple;
	bh=UtbVZYDkzkryXQABqoTO7fSXMXAyEAw/L2jsCfy/SN8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=opkDfniw/qkIX2P1r7qnKWEGxPBtQuj5sEm1zbimKJ8sOgzY6xNduTIjU7B3l+KMk0kEtTnhhLqcEJJmjM7RgWzu9VSnwqVPeGqyt/s2A/eQnKTxC6TKPecv273UbAmjncATGOb21mQJBa1GOAEplwv+rOfyf9kkPLaDeauheEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MeSh5FfR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-424ad991cbbso15301865e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719484362; x=1720089162; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/72dXFog72t1SdKELuSTolYPlqsqPYanROz8CyzAPAs=;
        b=MeSh5FfR9kM14rDPm/MgLyDXkSRvjaN7rYde9TAq6vQl7vOLlNaAh/csDaz4e5LLpt
         kLihjNrzFqcMPZyj5IQt/iAlNufasqtSLFXS6x+KT1sx+TCne0K7lQejUNlgVT5cilEE
         A/FVUwdNJq4MQa8/LHQt1mHalC9EJJPdOv2bk35m5KlDr8qNrwa0Jm5AFLjw/rT0EbTy
         UaoGGpB/h7ZeGaIkX7zY1z1YnAF6Zd+pGJ+LW0D6CG7WP6aUJkCKGYWPmoTe5Cd6HNnf
         mb2x8oRluSdxBNAVEK4XBkokRxm0JjzMao4MtWySPt5ZmR1V+OCruwmstAmNY5Lg0/2m
         7oFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719484362; x=1720089162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/72dXFog72t1SdKELuSTolYPlqsqPYanROz8CyzAPAs=;
        b=E767sOfKwdpC2I25N/IzttNVnvraMrkRd+rZpmEcVjvRGMS+jBZ6qP4Auvho8FF0At
         F8OvndndM2UbQxB235rP/O4u1Uwx4KQU8Ufi1Ide63DDqyW+y3xIchOreCqQHjbzP5FN
         29HwEhsCThv3ptCmOUj+YzDn+tCmM8W9hMz6py7sPlJcMbT4buWHljfyT77qLX5jW4hJ
         JpTnLHMteKOWba1tDcPK/DuYBmhcdZFrLKKMzt+OV0U0KQjW8bGmCYqbB22zGx09Y00s
         RUO83pGCUFQTfJJ0xkALgNFv0GaQUTDmGGlye/yc9EL+KLfMGYi+fpQ5orsHgDTwygIj
         5N6w==
X-Forwarded-Encrypted: i=1; AJvYcCURKJSWXyWPzZV5fdCHUGfYfzXXj9dYEu6NoyYAz4/26EPT0b/kQbmqx2vWmAWi2dGa5kNA9oqjKAXaNT+MEFBb6LLc1yyjU2UPvg==
X-Gm-Message-State: AOJu0YwsHz1P+K9jflsC9di7yf82ac4zFKaM31yjzkeuARqmBfO5omeu
	hIYo9WpnvJyN0fQu9cG7LftJ+mqtrIRU2bv3a8zCYTQxnp8WzlHj/8KK3skyEjo=
X-Google-Smtp-Source: AGHT+IH/kzOIaLiKteMbLy0cBtwbkcTKMmn/pR09hom4+eGaNN6ZSj4lhnuKK1SwTp4TkCxMefFcUg==
X-Received: by 2002:a05:600c:44d2:b0:425:5f60:b818 with SMTP id 5b1f17b1804b1-4255f60b971mr27977775e9.27.1719484362203;
        Thu, 27 Jun 2024 03:32:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367435852afsm1384352f8f.53.2024.06.27.03.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 03:32:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 27 Jun 2024 12:32:19 +0200
Subject: [PATCH v4 3/7] dt-bindings: soc: intel: lgm-syscon: Move to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240627-dt-bindings-mfd-syscon-split-v4-3-dc6699a9f3e4@linaro.org>
References: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
In-Reply-To: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rahul Tanwar <rahul.tanwar@linux.intel.com>, 
 Amireddy Mallikarjuna reddy <mallikarjunax.reddy@intel.com>, 
 "Zhu, Yi Xin" <Yixin.zhu@intel.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3048;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=UtbVZYDkzkryXQABqoTO7fSXMXAyEAw/L2jsCfy/SN8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmfT+8Vs4KySkM/ISHPM/mllt44fo8lqKyxHXmU
 2d3Cv6UqxWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZn0/vAAKCRDBN2bmhouD
 1y6XD/4z7Yy9cF49133e6MlToxL2tOnL28Qw24UdqrqQypVdhDuvNCe6ajObx+40WkuhuiFbKxu
 UkGNNeaC+cqKg3eG+uPLEuU5TotMNOsHBeyIBjYXVuFMhh5U58OaFes/xEaGk0phhwpfMXnrZC3
 MK3AOI9j3+Z44/6tYGWODKrVQ2SmI7tmCvMNteG1ZZzo1rImQUhAN8fVJIAKmqAwZ4mBLAd4S9Q
 0qSpDl5q9AlUPXvax0kerX9rNKB2ivtODdzeNUKCK9YuaiGOHDFpXy7mQfDh3iKIWSE7CkcERf4
 wikiN4ItXnv1IdlNYeeWcOGMqWfa7HIODhIgibDHEb3JpTPScuhZ0YqcsWxqptxqYWng7JHmsL+
 5R1kovA92+EV+JvYkuJnrP8K1j5sX96dqH6hMzEJgaDuGt5yBL7m7LIMjIpMVCEAM8Zp0CZmuGl
 uFbLwuF/24O3HRyQaIRekk6WrPesH8tSm6x+6jEWHqQ3cTddVe7PBCMiDisEJV0AghtO5+P1/7B
 d6P3KNw/aZ8fezv4lE0xkMFNudo/OlTJ+Binwaq+YYLey/apPvZK0CKZZzyXgbEvxHwEmG8ABc1
 hp7mzxr5poffPo9wh8NiQyZRKec3GUDuUvSkYZ9n6nuyWXiGxq6EvkSDZikdzOJsHIql35TtADc
 nDby8bfT1SG/7qQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

intel,lgm-syscon is not a simple syscon device - it has children - thus
it should be fully documented in its own binding.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.

We need to cleanup intel's emails. Does this bounce?
Cc: Rahul Tanwar <rahul.tanwar@linux.intel.com>
Cc: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@intel.com>
Cc: "Zhu, Yi Xin" <Yixin.zhu@intel.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../bindings/soc/intel/intel,lgm-syscon.yaml       | 57 ++++++++++++++++++++++
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index cc1e9fec5cc7..0e19eb0772f1 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -77,7 +77,6 @@ properties:
               - hisilicon,pcie-sas-subctrl
               - hisilicon,peri-subctrl
               - hpe,gxp-sysreg
-              - intel,lgm-syscon
               - loongson,ls1b-syscon
               - loongson,ls1c-syscon
               - lsi,axxia-syscon
diff --git a/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
new file mode 100644
index 000000000000..6951d55356d5
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/intel/intel,lgm-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel Lightning Mountain(LGM) Syscon
+
+maintainers:
+  - Chuanhua Lei <lchuanhua@maxlinear.com>
+  - Rahul Tanwar <rtanwar@maxlinear.com>
+
+properties:
+  compatible:
+    items:
+      - const: intel,lgm-syscon
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^emmc-phy@[0-9a-f]+$":
+    $ref: /schemas/phy/intel,lgm-emmc-phy.yaml#
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    chiptop@e0200000 {
+        compatible = "intel,lgm-syscon", "syscon";
+        reg = <0xe0200000 0x100>;
+        ranges = <0x0 0xe0200000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        emmc-phy@a8 {
+            compatible = "intel,lgm-emmc-phy";
+            reg = <0x00a8 0x10>;
+            clocks = <&emmc>;
+            #phy-cells = <0>;
+        };
+    };

-- 
2.43.0


