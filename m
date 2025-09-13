Return-Path: <devicetree+bounces-216748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A668B55FDF
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF8861C855EB
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6212C2EA49C;
	Sat, 13 Sep 2025 09:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZVx3MwVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732D82E2845
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755635; cv=none; b=T84T/ojEk0N4pQsl9PVqWuPXuxDj3yBBeHBJPY09nPQkP838riB1yV6ha2kfLRHSsZo/2vYtHdpJ5pUbMQCXyLa2G/JV00Ish+J7eoKE2ScoGD8s1k2WGTICSj6hyaQ5kZFlhraRMbTMUypgHS/MV45EFOamZqI+Pl6qGbvx0nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755635; c=relaxed/simple;
	bh=nRK6N+Ibsz+2z4xifM3I2UIZS0TgjnsJr0Q7E1AwGDs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HyVE8Md4AzYsJGtGy2q/2xWOweO2dXJ+cY7y4Rvv/8o6FsCD0CzH4qOtXcBxtTmBvQ3FpNJDu+bwaM6wneusYmLa8dIZP7SSdlWZ9DJ9f8rG8+fPohcHnPeDZOtWdL5EUNfgOaXM7rOw/JVl8HM43RZVSdfRD7ojorhTVyXojz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZVx3MwVe; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b00a9989633so500306666b.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757755632; x=1758360432; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGiYHcgbQQ/Nll0kzwHfCK66y6f3gzxV5kd/8fXvCFw=;
        b=ZVx3MwVe1XJrBaauErQwVuBgWNzleGGUGPUTIo9CVO59rlb026SK8KtZKPkGgL2PMu
         fjanVGxCoMteurzmySzPWJhHUXCi3mMTDcutXTKXlW8S1K8m5vwYXfGnq6cJDsGns/F6
         8Y+KGgt9DBvtz87xogrtXWFaAhYSJuYJYiVF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757755632; x=1758360432;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sGiYHcgbQQ/Nll0kzwHfCK66y6f3gzxV5kd/8fXvCFw=;
        b=k0YEebyspoHpfWxgQX+qJXemHfhUfGfuKcv373kHhiSHmbuCbAVmh0eQP+KVcmIV21
         CRGmOv/nnJrx1+pEnZ2dghdrGMw3mnwKjMhxRtcPytPJfiKUb1Z2EKVhmF8ID8IKBCq3
         plDSFbqXUibwzgXxcbU1TVI2/U0aZaQ7c4i5qMp/C1m1iP0HdcWZPg4+Sw0A+rT/OwxL
         HZ+NgcGwifLNmCHXWnrBoaBwdWQF7m8ZcKuWB1CJoWKv9JPGtNDEl0OgAJnSeQST0dwS
         C4CRUk7TTZRSkjWNLyuPb23+s3V1VFjnVaUpaUO304FuluNXPhOW9WC4mNLz60/hIKdy
         T/uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlOqCdsKWJy0V0gvqw7dEpOjY/7kbOyYUdKu0Jg5Or4pun5WJMHPUcBRRPQJcbrrTrB2m0INiwrOhA@vger.kernel.org
X-Gm-Message-State: AOJu0YxQdGEnStbUMc1Big68MlDM4WmEWknPdxEntbV2RU/543iVTmjf
	1l1PSbiLn/2vGAAx/YG/iNPL14pB880LSLSNFsyEOgv6f7eFQ21hhNgbEm7PYzLj85A=
X-Gm-Gg: ASbGncu0SvYnFevLATXXkQUqgEgwoRX9+KqVFRPHlfcCwNCJDvy7jSkHk7hKYCeM9nK
	+oqDc8zBOqhAe6qIh9T3n0sLHxERG8Uvdns/fXpfSKyZRV0WZ5KukxtUSYhowr9bYv/gidmqbxw
	JeJfU1/ydbOJLFQ7CQ4qD+TKvtUz6ixFnF3BT2eke0P+x+qpH/JfY9pifIIyl1U3fIavzJSbQrf
	iSxrALiLTigKhfkQ0wILCYGbgzI3l2w4uOqCYp10wInK21uwZ0ykd0SWvPRJpzPjGt166beacHA
	mZLlXebRbXLx6uStNLChJGmDj1cnfqSg80LOQm18+wQadmGV4YT6bFZHaQMxtk6HBA2d7XEDV22
	oLdGDj11A55QtBDcKydxfQ8VRtEmn34GyasyJAeQwlkxo9/bnEbGArTHSdjUX26Uazha71OZ3mL
	EmJUC9hQSXTaehS6UJGXcJdwXUhrvyfe0Nupt6mJmdvd2ir8YEYq9XQ4VeXwz45puZEyVwDXfHv
	Ec=
X-Google-Smtp-Source: AGHT+IH05Rn/x9o/hdxCiRVMMVQ9w4BOGhkCvWvTVCa/SXrO6Fxr8UGUrSZ9/1YOcY66AtOtIhmc9g==
X-Received: by 2002:a17:907:7e8f:b0:b07:ce0a:9e83 with SMTP id a640c23a62f3a-b07ce0acb88mr418283466b.19.1757755631742;
        Sat, 13 Sep 2025 02:27:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b33478besm551705766b.99.2025.09.13.02.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 02:27:11 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v2 2/5] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Sat, 13 Sep 2025 11:26:52 +0200
Message-ID: <20250913092707.1005616-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
References: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert EETI touchscreen controller device tree binding to json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v2:
- Added in v2

 .../bindings/input/touchscreen/eeti.txt       | 30 ---------
 .../bindings/input/touchscreen/eeti.yaml      | 62 +++++++++++++++++++
 2 files changed, 62 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/eeti.txt
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/eeti.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt b/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
deleted file mode 100644
index 32b3712c916e..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Bindings for EETI touchscreen controller
-
-Required properties:
-- compatible:	should be "eeti,exc3000-i2c"
-- reg:		I2C address of the chip. Should be set to <0xa>
-- interrupts:	interrupt to which the chip is connected
-
-Optional properties:
-- attn-gpios:	A handle to a GPIO to check whether interrupt is still
-		latched. This is necessary for platforms that lack
-		support for level-triggered IRQs.
-
-The following optional properties described in touchscreen.txt are
-also supported:
-
-- touchscreen-inverted-x
-- touchscreen-inverted-y
-- touchscreen-swapped-x-y
-
-Example:
-
-i2c-master {
-	touchscreen@a {
-		compatible = "eeti,exc3000-i2c";
-		reg = <0xa>;
-		interrupt-parent = <&gpio>;
-		interrupts = <123 IRQ_TYPE_EDGE_RISING>;
-		attn-gpios = <&gpio 123 GPIO_ACTIVE_HIGH>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti.yaml b/Documentation/devicetree/bindings/input/touchscreen/eeti.yaml
new file mode 100644
index 000000000000..97027914d6a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/eeti.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/eeti.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: EETI touchscreen controller
+
+description:
+  EETI I2C driven touchscreen controller.
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - eeti,exc3000-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  attn-gpios:
+    maxItems: 1
+    description: Phandle to a GPIO to check whether interrupt is still
+                 latched. This is necessary for platforms that lack
+                 support for level-triggered IRQs.
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@a {
+            compatible = "eeti,exc3000-i2c";
+            reg = <0xa>;
+
+            interrupt-parent = <&gpio>;
+            interrupts = <123 IRQ_TYPE_EDGE_RISING>;
+            attn-gpios = <&gpio 123 GPIO_ACTIVE_HIGH>;
+        };
+    };
-- 
2.43.0

base-commit: 22f20375f5b71f30c0d6896583b93b6e4bba7279
branch: drop-touchscreen.txt

