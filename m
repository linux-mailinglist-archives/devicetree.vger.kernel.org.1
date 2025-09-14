Return-Path: <devicetree+bounces-217062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 071CCB56C30
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 22:38:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 256917A1CD3
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 20:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73012E62C6;
	Sun, 14 Sep 2025 20:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="iJRU5FOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81E42797AC
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 20:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882309; cv=none; b=ufWG7d0VYvCE/hN9KXYmdNZcRGX5mKg/qh5UJrgyFzN0cAXb2xI40yl5NN/uy2UTKHI8stFbmGWIPSeaHyF5FsOwAWH1cQNBjvY08R50NVwvAdzk4ealeSSxsXjHJRaYpSARImS3Aoi5Pj+eylH52zAr1je9+rRFnzaEZ83W5RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882309; c=relaxed/simple;
	bh=zJcIVyNpcaK/O4R23SruK64NmCPkL6otbqrKObR7bm0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VMtu18uj8c8DtRL75ZglaIcaFoMk6lmISDh3uU7o+VSrN5kfxFFhqhHeGAjI27UsiE/Bj8mRVToq2idN2qN818THdSFVJHn4Tb7ZqHkPYCqLJhpasuzISCSxI2FbD8rJxLyjz9V0bcczKA9E8oifFwXF0r9H3udKPiRw4/BqAH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=iJRU5FOg; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-62f0bf564e4so1678842a12.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757882306; x=1758487106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8H/L7y4Tyqg+sD/ZSblYNA7DyfUtToTD7oJptEqMJeg=;
        b=iJRU5FOgqgVdJEU0g9IfJ6uciyxfWQh81AuxPgacWRB5QKmAb05LXRopFSD4q6qRUL
         f9KDYInslOLPtreiToAEBXPi/bivaMeFUadS78drgQM8J4hegNk6SilXoAzTZ0kx3f3D
         IZMF1NJWlPeBfmNPLQZKrov845XrO1ysOsy8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757882306; x=1758487106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8H/L7y4Tyqg+sD/ZSblYNA7DyfUtToTD7oJptEqMJeg=;
        b=GDhb66J6S/2iC+GZwX5c04Y2UEjCDd09ZtvmZLySFh1LJo8GyibdXvPkSSb4Zyl5XB
         yrDYGIHIfJPgRvpfuXuXOWskNoGuMDuiSUzNfPiIjIxvkC0alXHRBo8Y+TPmNSXXsn3G
         0sPNF+1OxxOmFNMt6dvgupgV1FdMgJ8mGELj6JAKN5UiDpzLgAZaYS1cMfuXwobFVVSo
         6PdBfhfcYF5NsDE5xDSH9ZNsfExxQVLV7jEh6gRLVPni/+WVrwEUjfLyTrrssGQ5VABP
         /jU1lcGC22o7GMhcHgv0CmjG1Mc62ifEZecCGpMO5FAdKkYs9c95dRrNurCqNDXa8fIn
         ihBA==
X-Forwarded-Encrypted: i=1; AJvYcCVYtjepidPm7vu5Oo8z9/L9jn1izdylKk4QLNI/f3f+PR3EmZN8G6BT72j/e1RR29bapEVlfm3DOFo3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg2Ed2fnmfNbs46zPjnnx8tmVKqfZ5vuGyhxL48QQI5ePnFVFd
	XJttvhOarLlG+rmMVQ6yp+cSlbtKoK6NtQXX7q227uM/mZR9DZdxbMt8fNRa54xdgVg=
X-Gm-Gg: ASbGncv4ikrSse0Q0dL5czCWCmzPmvzKxZXRtkRZIZ9G/+WgVXEzkvvhPflOGWFRmVL
	ud0zQgwuu6hg3jPQvBpjjWfbMNimkQOYaz3motcXRYjJZBPgotDxCtGLc4aYirMh/L7hNroAw9i
	xxZd0Opi7PPnJENJG/B2qcRktsxITHPlQ4UIFqZMZf/JCt89rKBWLAMgP8r6m6ZPnHnWd1ZaMqG
	vE28zKX8Wn3CGBZT9wm5ZnG4bPCCI1RolSmIXZkwcMEtdMPV3K1Nr4hP3s2yJZIdFEWnjXC2EoI
	ir3HFsFG7gMKnd3teP5K6UeTPlnk+fqReqklEZY2co8pwG4RYIql4HO7cRLnU8deGtI3XdUGZxq
	w8xhpiBo5UwC3UtGXSOFJQzBVxAxzRKUzDIlKsVaMfQ9qlcrxz3iut+yP+ZIPOuWbQ0q/LVlhT7
	8GUjjf2KzGCj041lkFZ83qR50GkE+vuxBISqLkJWmByMxOAswGFnx+E/4QSqe8xiRk
X-Google-Smtp-Source: AGHT+IGqxe+OJJI94gs7+C7Lsm//rFgMgmSYPIkCUrGy6YYptJg8EP7vamMSG/Te2XdWUuc+XYsVvw==
X-Received: by 2002:a05:6402:42cc:b0:627:eaf6:88e0 with SMTP id 4fb4d7f45d1cf-62ed82c5a38mr10034225a12.18.1757882306053;
        Sun, 14 Sep 2025 13:38:26 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33ad242sm7803739a12.17.2025.09.14.13.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 13:38:25 -0700 (PDT)
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
Subject: [PATCH v3 2/5] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Sun, 14 Sep 2025 22:37:53 +0200
Message-ID: <20250914203812.1055696-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
References: <20250914203812.1055696-1-dario.binacchi@amarulasolutions.com>
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

base-commit: df86f912b45c20e236060321c85fe35437e9325d
branch: drop-touchscreen.txt

