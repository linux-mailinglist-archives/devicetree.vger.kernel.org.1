Return-Path: <devicetree+bounces-104109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0304197D49D
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 13:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55D50B22036
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 11:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFA513C80C;
	Fri, 20 Sep 2024 11:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ryeqEOxB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE6913D524
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 11:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726830921; cv=none; b=AlwwbF3gQLPMSfYWdiZ+kiCazW5h1qYpU+S8lkgDz9/+nAC0VlqI+GZuh6jZC2OCbhdOZLyaZbzs7IUKnyWwpZP853VIJm9Q9SbSG6wiTwmN24qxHX5QZpAIaQuXRawdjmAAV20drtruVjVpmj5KUb9/89gqS2lqQsR8Whnor8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726830921; c=relaxed/simple;
	bh=3EzdKFwNjJiOtkQLdUrsZHq1Dar03EPpfASw0h0NtLA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MWbAlP8sDsFaX2GvfeFRpwWn62PyecjrD6VojouuV9Pw+D1gpe1nEX0DCN/Fwm3DBbGdeSB6ioboT9FS1Wj0oqdiX01Ox/WVcQutPLkrw5nMmaQ3uwNqLwLnRbukbuTnxJATIPEENbE7cb/Ts97HWSX6Y/6tqEcJ7l5iX601bsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ryeqEOxB; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5356bb5522bso2381401e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 04:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726830917; x=1727435717; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IqkRbX7cvnqn3NxpF9ZaXzLw5MpKO313tJC374Y70as=;
        b=ryeqEOxB4ZwklWD2iwx6CFtT+ly11luekzHNykYIheMDx8BSWxDkJbgqhXvHzTTIUl
         Ql5uUE8ClhdrAq4PfR7+D3x5XBZM8qINVNfR2J7OTc8CIB14dYFdfc03kHWwa56Y8cxo
         lH8KE8F4/OOmEjZOdcPqST78Ii40mtrE/5CF+wInXzRlMpvG0aeWG4GxE6f4CbTc6PL1
         I46QJy9SwtA3MAa2r2cgfhtpC/IKuzZO3TGgJZZrAuKU2YsBFEzOgm4ieUGAy1mEZn/C
         fUBVPQsMh6N1f757vEfSBQe+j3FKr4Z1WH9S4RoyzrQvGLnpq2qhx8nVrU27E3Pko45W
         vXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726830917; x=1727435717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IqkRbX7cvnqn3NxpF9ZaXzLw5MpKO313tJC374Y70as=;
        b=R8vUP1T47WVrNAYcOnG8igkujQBAi9lk7i9yxQmHY65fTi83yBs5rXblX0fuqGWBiy
         F5f2+npqsYx7eq2lLhiuWdqp1c67AGMyUBrH6M0awHG2QRthC7gyeU2pKWSKT92ZukcH
         0llJmxgGc/B1T+qmSUePe4JKfuPGnUyUKaOAm+QJL1FotbWJ5eujeZ2c5fSyMtj5lGVs
         Ka7r09oDi/RQAcGjSl2SCgj7bwlhcnnUuS2YU8/07qFkFZ+2nOQyBBnPDOYtTffW52Cm
         /cNnoYckVEvykjBmj9WBz9ODJFbVJ8hOdRlUU0YQxGWCFIaxl7Jt86ccZWwVgWwRQIOd
         yMEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZwTgoHU7bUqDRe1Cw3FvV4HaEhQyVL9cFsUeDYVkfz5312YtEK5lNQ2+5ymKAhFXo3f/4DUiwNq0e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2AKHFthldstjYklAgeH/83D5Vsxa0NfS49mkSCm52mXZQDjAu
	3ce/LDYFTOq9p6IvY87qx8E5Gt6o9xu+6nIbCWaCJxljViWrVu/iJnbDAqu8sMA=
X-Google-Smtp-Source: AGHT+IEeYpo8PQHRLHcz+C5f+4ycbwcLk1+m5tXAcsiG5bPi6YAeNtkNq5R30PtO1zoYrVGQDM/Dvw==
X-Received: by 2002:a05:6512:1191:b0:534:3cdc:dbfe with SMTP id 2adb3069b0e04-536ac2f509emr1546809e87.28.1726830916661;
        Fri, 20 Sep 2024 04:15:16 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f452csm838261266b.89.2024.09.20.04.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 04:15:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Sep 2024 13:15:12 +0200
Subject: [PATCH 1/2] dt-bindings: leds: bcmbca: Add bindings for BRCMBCA
 LEDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-bcmbca-leds-v1-1-5f70e692c6ff@linaro.org>
References: <20240920-bcmbca-leds-v1-0-5f70e692c6ff@linaro.org>
In-Reply-To: <20240920-bcmbca-leds-v1-0-5f70e692c6ff@linaro.org>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The Broadcom BCA (Broadband Access) SoCs contain a unique
LED block. Add bindings for it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/leds/brcm,bcmbca-leds.yaml | 88 ++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/brcm,bcmbca-leds.yaml b/Documentation/devicetree/bindings/leds/brcm,bcmbca-leds.yaml
new file mode 100644
index 000000000000..7fe2222c0c58
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/brcm,bcmbca-leds.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/brcm,bcmbca-leds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCMBCA LEDs
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Broadcom BCA (Broadband Access) SoCs have a LED control
+  block that can support either parallel (directly connected)
+  LEDs or serial (connected to 1-4 shift registers) LEDs.
+  The LEDs can optionally be hardware-triggered by ethernet port
+  traffic.
+
+properties:
+  compatible:
+    const: brcm,bcmbca-leds
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  brcm,serial-shifters:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This describes the number of 8-bit serial shifters
+      connected to the LED controller block. If this property
+      is definied, it is implicit that the driver is using
+      serial LED control, if it is missing, parallel LED
+      control is assumed.
+
+patternProperties:
+  "^led@[0-9a-f]+$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        led-controller@800 {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "brcm,bcmbca-leds";
+            reg = <0x800 0xc8>;
+
+            led@0 {
+                reg = <0>;
+                active-low;
+                function = "ext";
+                color = <LED_COLOR_ID_GREEN>;
+            };
+
+            led@1 {
+                reg = <1>;
+                active-low;
+                function = "ext";
+                color = <LED_COLOR_ID_AMBER>;
+            };
+        };
+    };

-- 
2.46.0


