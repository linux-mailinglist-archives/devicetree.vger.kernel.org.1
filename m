Return-Path: <devicetree+bounces-228256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8031ABEAE57
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:53:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ECBA15A44EE
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE732D0C7D;
	Fri, 17 Oct 2025 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bIdrEGkz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1E42C0F92
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760719373; cv=none; b=aZi+vLhsi74iBGe0prBh84fZRFHkCss8YoAZ5A6GcdYwkpMQ2ye/mzCa/L++3Tkwj+PLz3gYgLJOFcBTje2ugky4+IPoYESosWRnCVH/BG7ChD4BIakvT7Qf6n6L81ako/OH8UrZkcgKh4EV5rh8ReJOWfP/SpoPlWaewgVmsuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760719373; c=relaxed/simple;
	bh=OhAPqaXLXCmsNIfo7/tILARHNy+GrLJldAAVbkxmaW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FfWJDax3inNjiAh/kpx5EGzC26r3og9wCaBJ5q6gThCVD1h+mH37z8JxDQl3uggrOR0sTRm543nuz9I6UNlQXpcTAY0o4Lb0nS3eFG0whlhCazHFs/QpTMdW8/+hIgbuyagTRNdo64kep+4ytftRbw3EHrtqefod/nT9HWhrP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bIdrEGkz; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42706c3b7cfso396506f8f.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760719369; x=1761324169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=bIdrEGkzJ9zLWurrd84XDZ/h4zlLfEtPO39/QayrOAaQaLE7MN2tE6FWIAAa0ULX+n
         PttfE+zkF+I9FEDFgIlYx63QwoKaKFHF5G864DANPuEvtDSkoj4GlSrEE+wNBfuwzeBu
         pGE/XszQCtVO4thFI8uqOH0u5ghzsKNiZJaBK9ntzfKglApjgE+se5YSYiaN32prbO3a
         Z24yv7sC17cLRuokIelltdG0OCl5WGPTMoW8O0agu7DBqx7AOoNFwBTZ+g28gfseOhU9
         783iZadVe19aUL4OQ3nVfAZdP75/MNNRWXY8tIXebezU28ZhYoBZktOC9L5e05kv2liX
         0OCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760719369; x=1761324169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tZahglen05z3CRdzByKKHS/uCh35Ibd/55Vn0qmvXT0=;
        b=HD5ZeDE6RE9XcGY+CEitX+8kkfP/3ef7VLBMKO/yIi2ITKFui5KYc1qvXCnOAT82GJ
         b8BZ3mGiKCpOQzKwl7i8knWAFMKsqffdgIHWRpPtsd9b0iusLrymSIhGChheE3AGIx9H
         JBS7CYuz+XbjxzP9t7t6iN/GOHII82B6h9VzqO1/pO9JHdufs2G3k03zfAEwPBILDe6v
         0WpRBFfGfMK2fkifcZ0oCq3AYt4jNBeCfhb9vH6AC3RTp7VGbWPNgOw+KcOZytVZFjOa
         GG1nw/TSp44crsEi5IyaiBzBENEsjxao/E/vZWcDGvfcgFVtKDZm8nLXYs33igd2XDr9
         Gerg==
X-Forwarded-Encrypted: i=1; AJvYcCXGlGGAzjUZbP5jp4etWT1ufmuFldryhn4UnofeHCZi4gWSRCDS+RfhWoH/R0hoGLM6vVJwfxwPQWeG@vger.kernel.org
X-Gm-Message-State: AOJu0YwwRuE1kEY+OiWXOc2QdcdbyP4sinTPe92ED0P9X+ObCir3PlbI
	0pYHQSGYh7gLkraVVFgYIqRsQpXTcAZLdscKKsFbzet+bJ95szU4ifIZwhjw94RZEug=
X-Gm-Gg: ASbGncuIN3qOpZ8jZ20nt3uQ8rQLXqXniLlirGyEcoTwFvJILOGo9V87z/Y9ilCUdOo
	H8dNRYPkpBD4FSZvzGHtflggrb8O3Skevj0TC2Y906jRgN+pROcXb8gWwiY/YGFjUinxOsx6YlU
	HplvlFhuHw7wdoVI+j/negdZa28awE/KAHbaMl+PyZshT7Gts4EHRwHpcNeyh0AMKWMBRrVsU/U
	PfJyG4EI4SwMEqckUhhuxkRhdY/sfCzQe1OLsT+zl5lM9eFAwJ36/jtTTQzC7JncblDS6bKLU3S
	yM8PUhL+mmorI47qywiMBRql+Y7Q9xwK+i87OgGCWVpi5zc2MfhbVE+18C8LXwNc0RehLqmWkna
	l4pJBM6+9Vt7E+bPfTjOMZdDudNxuGmuA/ITnohF9V9jSLVuyuIJ0kO28rz8YPO+V8xBtR6TgSR
	aV2cjxsmMmKLwk0VG4g0XY+kwzZe8HO8s=
X-Google-Smtp-Source: AGHT+IE+QF8NRHxVF3WbV0r6vQC/Zqzlbkc5AhwK4SZWbzOeytdjjtaSiGHMWgQlotCjTVuwThRDPw==
X-Received: by 2002:a05:6000:26d1:b0:425:7f10:d477 with SMTP id ffacd0b85a97d-42704d51136mr2976147f8f.2.1760719368973;
        Fri, 17 Oct 2025 09:42:48 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:f253:278f:af81:a956])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4715257d972sm3392125e9.1.2025.10.17.09.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:42:48 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org,
	s32@nxp.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com
Subject: [PATCH v5 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for s32g2/3 platforms
Date: Fri, 17 Oct 2025 18:42:37 +0200
Message-ID: <20251017164238.1908585-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017164238.1908585-1-daniel.lezcano@linaro.org>
References: <20251017164238.1908585-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g2 and s32g3 NXP platforms have two instances of a Successive
Approximation Register ADC. It supports the raw, trigger and scan
modes which involves the DMA. Add their descriptions.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/adc/nxp,s32g2-sar-adc.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
new file mode 100644
index 000000000000..ec258f224df8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/nxp,s32g2-sar-adc.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/nxp,s32g2-sar-adc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Successive Approximation ADC
+
+description:
+  The NXP SAR ADC provides fast and accurate analog-to-digital
+  conversion using the Successive Approximation Register (SAR) method.
+  It has 12-bit resolution with 8 input channels. Conversions can be
+  launched in software or using hardware triggers. It supports
+  continuous and one-shot modes with separate registers.
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-sar-adc
+      - items:
+          - const: nxp,s32g3-sar-adc
+          - const: nxp,s32g2-sar-adc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    adc@401f8000 {
+        compatible = "nxp,s32g2-sar-adc";
+        reg = <0x401f8000 0x1000>;
+        interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x41>;
+        dmas = <&edma0 0 32>;
+        dma-names = "rx";
+    };
-- 
2.43.0


