Return-Path: <devicetree+bounces-218934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7D4B85B1F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EC9F620F6D
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8748E312801;
	Thu, 18 Sep 2025 15:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XDfXmjVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9CD30FC16
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209798; cv=none; b=iVbtBviXpcfHaqwnNboWoBv5A7keYKr6K3XRch1nZgjueHPzEsycck4wUAn2BZGeFwRXzGxplrkDStO5iYBicyr9c4zbb/OjddyeA5rbIWAwnpuOxjde1bkF5Wlq0uqhJw809UQ1+TM+/KnA3+onMkdfxn7tMVS2Sgx/6ZYIGDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209798; c=relaxed/simple;
	bh=yJbw+gSxRuXDmWufyAOowWGK2y93o+NpPc1oFEaM3c0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rnhCxBgr+4AJqGVzbhe83dFaJ7cOlOHHHYPIIrMdHNQBSYf6fnKPOvFC/mcRQpGxhQV9l29tg9RZZaasp1Yp/X7dggEwyex5vkrjmCJLG3N7JZUnz59tCbGJ3xsKSO+Na8pqgA3Tmw9uoD4nQ2mB9vAacG5gLJcuGgU2N8evxFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XDfXmjVc; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b079c13240eso194833366b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758209795; x=1758814595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClzalLpVry0Z3N5zOF7y4pLh21VJainWEs72sUomkbg=;
        b=XDfXmjVcwTir/COUw1XBMPcEr9jDm6d2WoWNMaYTgWlZzHqv6xwnKs0YiM+yydHpwC
         dztCK402edWN6xtSlXYe5XHj2ZoP/uNOyhFXF9CtvdEAma5Lb96zF6DU+77FOfyf4mJv
         CHEpplOz83c03qz9jSluy636aiymqTliu8YZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209795; x=1758814595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ClzalLpVry0Z3N5zOF7y4pLh21VJainWEs72sUomkbg=;
        b=dQnm4iVtmGko3Hsv7/p0ToSfoZc1mX8b2Sy9vBh2sc56psJHlOCHlf0yOupmh0kK1F
         zNAQtY0JRt+582vsRem4OOxp9uHCKl+jJ66+Ik7iAG7DDxt/iyqpLCUPl3piTHA/4eGD
         RnEpVbm6mCu0kg6cu+msAwG+o8i4jKUPH9+QiQZ+Z5ufjC3izj6s8t/cNtUgBRKTWw1P
         QBr+Tiberbv3zx/dtnZSxJzBBjtdTZcsWfw46fLt3AWVQrGJs5hy1Q3VEcCndmUiTkVe
         vty25J9PSCnY0SyK81cE08jjPVnBccFLWaZfkbDozD0eYuieuMNO0p3pVdl9XHHv0lCw
         TRDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDnxPgrI8hRk9b9z1ZViUZwAzOeDq+7mDg4LDLSl7xLUQqYn8eAHk6DOPk69KCOShsKIG4fBBYPtG2@vger.kernel.org
X-Gm-Message-State: AOJu0YyfBvz10+b34M4Tc4vw11az84mNovg8W+8qX+1PThqajUgtSL46
	PATRLCDne2rLzfqo8IyCiM/ek8N29674pRFrNx/BA5Y4du5iINOLrJsPVz6+CnUd4wdKZPKPI7g
	BzCjH
X-Gm-Gg: ASbGnctJBCBG5Y2AZRI4nt3qdjW6lDKtd855otfpvVk1Geo48VONxDLydSUFv6NcMao
	yAg76gtRE1moCCZrczoQ46STFFVKwoP07Hhse7cgTN/PvRqvyJn4CzBqHNqF1L6/LSBLamnRSfL
	RKhCiNxsxHPGASfOPmz79WGDZGLVX6oxDFcu9ATT/iWxWMSHpp5nyueUhZnOcmbuaAvPs2Mh7WF
	QwCrrd7q9IK3Sp5QN2Ypu3kntK651o2zirTa1DUmCKcsFDL3faYIcZwVC0UE+kMz0FeGaCyK9QA
	UVOEB8Edp4b2L1FU/IxMmKJY/TH3pW8davpY10yIOD5BwS1tYxqtw+SnG0RCRyOKRmqyPPW4uVr
	Ac9QdCEL2Ib55Dhr5y5zY4wp7pekT4r0F5WJXxKDOGfPg2uAt4x6jjrwrUPfDE6tc+Ru2P9XrUV
	5KfrsjNTgHECDXp9RS3TKH0Qjpz55JTNiTAIzvn4M+zn4n96IDf1ro/piIPaal63h4piSRHDadm
	jmzYE1Xfu8=
X-Google-Smtp-Source: AGHT+IHIWguhdTTcSEPHpA68B5M9ZRFqGwOkLHhqYJ7bIM1IdIIL45yanJ52h9csCvpQHzoT21dlGA==
X-Received: by 2002:a17:906:f592:b0:b07:8893:83da with SMTP id a640c23a62f3a-b1bb9b218ddmr625079866b.64.1758209794779;
        Thu, 18 Sep 2025 08:36:34 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fd272026csm212430766b.102.2025.09.18.08.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:36:34 -0700 (PDT)
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
Subject: [PATCH v4 2/5] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Thu, 18 Sep 2025 17:36:07 +0200
Message-ID: <20250918153630.2535208-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
References: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v2)

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

base-commit: 8b789f2b7602a818e7c7488c74414fae21392b63
branch: drop-touchscreen.txt

