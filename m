Return-Path: <devicetree+bounces-11191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDC57D4B85
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:07:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A55F2817DA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2494A2137F;
	Tue, 24 Oct 2023 09:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hbvBXnK8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688C014017
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:07:05 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B3A0120;
	Tue, 24 Oct 2023 02:07:03 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c434c33ec0so26979715ad.3;
        Tue, 24 Oct 2023 02:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698138423; x=1698743223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=palBtRjhdsNKVFR4Z7sz7xV1QIa2igJzdiqlgzEfdQo=;
        b=hbvBXnK8Th70hF4StuO9mzT71pgJOq6qLrJli4xJLuAI2m31ttXoJxZR3qAsX6df6I
         rFG8fmjlwYsQDIcoHibX3s7Uqxd+vNcJniez7DwNehFEkbNg/uuRSznfwZWfdt/dT6HS
         A40g1U9NOBdrWLiTF573tqZWDH95zgt+Y0xiB2MQeJJcyRhl7YfCE/8URTvk9FKOEaOG
         0SfAMhr7cOv5pebG0Y4b3xcBJHJoQFUZYIL26h0M/C6bR/soDf6mEHk3UmbmYlYsBX/C
         xNN20IkaetmgGlVN6y8uC729tvwxkIGyAo2O19lFMZm5lLyvC+whO4kxLyGPRbtyqJhS
         piyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698138423; x=1698743223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=palBtRjhdsNKVFR4Z7sz7xV1QIa2igJzdiqlgzEfdQo=;
        b=JGyTQgoVNmWtuSsQ61YwhYplZ197eyuwMdCaQfZ3iukLNmNCKitTMYuSRo+Z8ClAU6
         l6MhS/Sa1LiKo5aNUJcll7VE711M0RYmx7OboYnBno6CMywFRrYwCX82UxM5Gztbavqo
         yNEQzxxUvSenDYkYcKUBCPnhjfmWkULeAV45wY8XDo3WsV+0N/asjWKnJsLOAyM971gX
         jAIi6jaiPipghYzMvG3qKoKVJmFFOmLU0DgSa/IBdVY1AWJoM1xH2//fWhg301i43EKp
         MbUUsgas165YbfaqaWMWuGVslYofUDX9YDrbbXFPHUdhv8V30WFl3dzramUDWMsLqX1M
         HPWg==
X-Gm-Message-State: AOJu0YzoxU3U8yYdrSoq4zgb+LdyTGBe5oLm3+YO+RVzVgEtW42i5kJR
	Ub6ooUvmxAMxdLoyykfuZcTY/gAx61w=
X-Google-Smtp-Source: AGHT+IFMziS3HBLi9OJgEgkfNJsIqawPXjSb6QqV0/hxIOzzXcDksvrVKwZFXLi5IPFJ4/3Vx4THHg==
X-Received: by 2002:a17:903:1c8:b0:1c9:d6f8:1902 with SMTP id e8-20020a17090301c800b001c9d6f81902mr9932828plh.15.1698138422955;
        Tue, 24 Oct 2023 02:07:02 -0700 (PDT)
Received: from cs20-buildserver.lan ([1.200.144.223])
        by smtp.gmail.com with ESMTPSA id c24-20020a170902d91800b001c9ab91d3d7sm7055324plz.37.2023.10.24.02.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 02:07:02 -0700 (PDT)
From: Jim Liu <jim.t90615@gmail.com>
To: jim.t90615@gmail.com,
	JJLIU0@nuvoton.com,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	brgl@bgdev.pl
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Subject: [PATCH v6 1/3] dt-bindings: gpio: add NPCM sgpio driver bindings
Date: Tue, 24 Oct 2023 17:06:29 +0800
Message-Id: <20231024090631.3359592-2-jim.t90615@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231024090631.3359592-1-jim.t90615@gmail.com>
References: <20231024090631.3359592-1-jim.t90615@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-bindings document for the Nuvoton NPCM7xx sgpio driver

Signed-off-by: Jim Liu <jim.t90615@gmail.com>
---
Changes for v6:
   - Drop quotes for $ref
   - Add and drop '|' for description
   - Add space after 'exposed.'
   - remove status
Changes for v5:
   - remove bus bus-frequency
   - modify in/out description
Changes for v4:
   - modify in/out property
   - modify bus-frequency property
Changes for v3:
   - modify description
   - modify in/out property name
Changes for v2:
   - modify description
---
 .../bindings/gpio/nuvoton,sgpio.yaml          | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml b/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
new file mode 100644
index 000000000000..ddf01a77b8f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/nuvoton,sgpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton SGPIO controller
+
+maintainers:
+  - Jim LIU <JJLIU0@nuvoton.com>
+
+description: |
+  This SGPIO controller is for NUVOTON NPCM7xx and NPCM8xx SoC.
+  Nuvoton NPCM7xx SGPIO module is combine serial to parallel IC (HC595)
+  and parallel to serial IC (HC165), and use APB3 clock to control it.
+  This interface has 4 pins  (D_out , D_in, S_CLK, LDSH).
+  NPCM7xx/NPCM8xx have two sgpio module each module can support up
+  to 64 output pins,and up to 64 input pin, the pin is only for gpi or gpo.
+  GPIO pins have sequential, First half is gpo and second half is gpi.
+  GPIO pins can be programmed to support the following options
+  - Support interrupt option for each input port and various interrupt
+    sensitivity option (level-high, level-low, edge-high, edge-low)
+  - ngpios is number of nuvoton,input-ngpios GPIO lines and nuvoton,output-ngpios GPIO lines.
+    nuvoton,input-ngpios GPIO lines is only for gpi.
+    nuvoton,output-ngpios GPIO lines is only for gpo.
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,npcm750-sgpio
+      - nuvoton,npcm845-sgpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  nuvoton,input-ngpios:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The numbers of GPIO's exposed. GPIO lines is only for gpi.
+    minimum: 0
+    maximum: 64
+
+  nuvoton,output-ngpios:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The numbers of GPIO's exposed. GPIO lines is only for gpo.
+    minimum: 0
+    maximum: 64
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - '#gpio-cells'
+  - interrupts
+  - nuvoton,input-ngpios
+  - nuvoton,output-ngpios
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    gpio8: gpio@101000 {
+        compatible = "nuvoton,npcm750-sgpio";
+        reg = <0x101000 0x200>;
+        clocks = <&clk NPCM7XX_CLK_APB3>;
+        interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        nuvoton,input-ngpios = <64>;
+        nuvoton,output-ngpios = <64>;
+    };
-- 
2.25.1


