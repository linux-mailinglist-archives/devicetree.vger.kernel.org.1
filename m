Return-Path: <devicetree+bounces-15221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 161587E919F
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 17:21:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC76C1F20F1C
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 16:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DFC1429E;
	Sun, 12 Nov 2023 16:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xy8wqJkW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9552714F86
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 16:21:08 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D750D10F;
	Sun, 12 Nov 2023 08:21:05 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9c41e95efcbso549071866b.3;
        Sun, 12 Nov 2023 08:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699806064; x=1700410864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1OrXFo0vPGL3hX7Hm59m5vH+8jZa+Ui82KckLq8z0Qk=;
        b=Xy8wqJkWpRyA/r+Uf4bkb3xr37101c5MZ/+c2Bc1ajGl+34fGGIO7Ed5v20sdAhFIr
         vaaphRwSxhHdlYFmbruAg8ahIDRtFfCDHEZa8AQdcTjF3I9Tqek7doSCbImRVuBrmviB
         2SuvkEbxL9QRbHDpSf1ArjiE/LIf4eZU93JzRVVOCsRDu07O+wFX0zO+OoEDXOYK3AKg
         64oWjarKAQh9VPtjtV4wFrG1CSPk5JcCLsKpqmxUt8PIOQ+I/01vq9jSJpofswEdBIOI
         CThPSscDgROH/XwTaQiNM9Ig2C2EZOQvDG9XbebJPp9j2A2DwqkEGc2jqZ8/AyR84GX+
         3Sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699806064; x=1700410864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1OrXFo0vPGL3hX7Hm59m5vH+8jZa+Ui82KckLq8z0Qk=;
        b=QUeygmj8NsEN1eWaIR+/viVvtWXfXX3kj6GWolJG5jEyB3dS+0jn2lXjJ/GcFm68LD
         P3MAodSd2veOj3iCYM0wPY1wmGIzkDlAoIz3ei3H3GV9bWjwV4LaniDfC5KS7cEX2qau
         lI0zVqpuhL4uVd3zfS6k26odf6mczghpQiniLAb+jUDRTYpcV7svFGG6ivQbMhvHmZdI
         GPLXBnKIQjhEi+OsesoIZ/4PFNsYbdmGDX4zKNTpXru8dWs97GK8jz578gOlb++HlwyI
         ELN/5zBOSLXZxJ72sIrHT3dKVtYyGUZ++/fn6OcQExTHwrYsL2U8UvMlMhaugXlCFBoH
         5uvg==
X-Gm-Message-State: AOJu0Yw7o+uNpqDp+deR5MgGgd2ZHVB6caJ2EeKgXtZdB3J5DX2DZiDp
	fJtImEkuTGT1gi7eAf4h/LY=
X-Google-Smtp-Source: AGHT+IFWP1pZm7xQalD2dDe1I+aO4QjZCS/JCYouj88INnSLsVsC7z3DjkwWXEIXM1x1umSEi7tJwg==
X-Received: by 2002:a17:906:5fc7:b0:9b2:aa2f:ab69 with SMTP id k7-20020a1709065fc700b009b2aa2fab69mr2712176ejv.30.1699806063828;
        Sun, 12 Nov 2023 08:21:03 -0800 (PST)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:c3d6:f005:2a2d:87db])
        by smtp.gmail.com with ESMTPSA id a5-20020a1709062b0500b009ae69c303aasm2731662ejg.137.2023.11.12.08.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 08:21:03 -0800 (PST)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	afaerber@suse.de
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: realtek,rtd1295-watchdog: convert txt to yaml
Date: Sun, 12 Nov 2023 17:20:49 +0100
Message-Id: <20231112162049.12633-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Convert txt file to yaml. Add maintainers from git blame.

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---
 .../bindings/watchdog/realtek,rtd119x.txt     | 17 ---------
 .../watchdog/realtek,rtd1295-watchdog.yaml    | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/realtek,rtd1295-watchdog.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt b/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt
deleted file mode 100644
index 05653054bd5b..000000000000
--- a/Documentation/devicetree/bindings/watchdog/realtek,rtd119x.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Realtek RTD1295 Watchdog
-========================
-
-Required properties:
-
-- compatible :  Should be "realtek,rtd1295-watchdog"
-- reg        :  Specifies the physical base address and size of registers
-- clocks     :  Specifies one clock input
-
-
-Example:
-
-	watchdog@98007680 {
-		compatible = "realtek,rtd1295-watchdog";
-		reg = <0x98007680 0x100>;
-		clocks = <&osc27M>;
-	};
diff --git a/Documentation/devicetree/bindings/watchdog/realtek,rtd1295-watchdog.yaml b/Documentation/devicetree/bindings/watchdog/realtek,rtd1295-watchdog.yaml
new file mode 100644
index 000000000000..2a0ea1696317
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/realtek,rtd1295-watchdog.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/realtek,rtd1295-watchdog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek RTD1295 Watchdog
+
+maintainers:
+  - Andreas Färber <afaerber@suse.de>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: realtek,rtd1295-watchdog
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@98007680 {
+        compatible = "realtek,rtd1295-watchdog";
+        reg = <0x98007680 0x100>;
+        clocks = <&osc27M>;
+    };
-- 
2.34.1


