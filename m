Return-Path: <devicetree+bounces-18138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC557F5501
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 00:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B8DCB20D36
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D51219E8;
	Wed, 22 Nov 2023 23:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE14CBC;
	Wed, 22 Nov 2023 15:51:08 -0800 (PST)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1f0f94a08a0so231210fac.2;
        Wed, 22 Nov 2023 15:51:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700697068; x=1701301868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=179e1B/Zb3hI4d1H9Ax8rZxN3KlOKuiYLE5iNc21E6U=;
        b=J5unaip9C0BlM9q00fnx1e5GsLB5+nL4qG4nAXgX3A/GMSCAYMt8oTG2SNMgJtfs/i
         7F4InRQGcyWS7esSx6TCVZorwETpn5fS/Q/FrWPT5fUMVJGNQ3a5oNrgNvYZbKq5tkuI
         F/tZ8DfLrA9lcV4EcWxztKxGbEoiS1KTeh2rkvxa+LvUubefhpw08hSBezVo4g2h+abv
         9cADseNuzDwZaSSNOgWGeg5IDuO9uSif5go045sghhzfb0cTw/s+NO4AmBk0GJvRRJBL
         bJAPloSFz7V7gnitFWo29VUwVKj1yjR9XRdtc6owyh6vfG9d3IG7KGvDXFiEcumlM6hj
         Bwew==
X-Gm-Message-State: AOJu0YwhvX88Gmg40PB2BLZUV4saVC7do4hxWNKgCJVwsMlqr62H8Fxq
	19UcquBgMTfNmcl4c1XaG1OexTB1qg==
X-Google-Smtp-Source: AGHT+IEMv4Ssm2JKI9mmM/ybs57fN08UMMEEnxP6TfoJ9G6hApc198K+ymuzKhTb6QH2s+hPOEpdNQ==
X-Received: by 2002:a05:6871:79a:b0:1f9:9128:9a94 with SMTP id o26-20020a056871079a00b001f991289a94mr3533802oap.2.1700697068210;
        Wed, 22 Nov 2023 15:51:08 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id dk39-20020a0566384be700b004645692438dsm1109jab.91.2023.11.22.15.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 15:51:07 -0800 (PST)
Received: (nullmailer pid 2966730 invoked by uid 1000);
	Wed, 22 Nov 2023 23:51:05 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH] dt-bindings: hisilicon: Merge hi3620-clock into hisilicon,sysctrl binding
Date: Wed, 22 Nov 2023 16:50:58 -0700
Message-ID: <20231122235059.2966532-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The hi3620-clock binding is simple and always a child of the
"hisilicon,sysctrl" node, so just add it into the hisilicon,sysctrl
binding and drop the old txt binding.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../arm/hisilicon/controller/sysctrl.yaml     | 17 ++++++++++++++++
 .../bindings/clock/hi3620-clock.txt           | 20 -------------------
 2 files changed, 17 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/hi3620-clock.txt

diff --git a/Documentation/devicetree/bindings/arm/hisilicon/controller/sysctrl.yaml b/Documentation/devicetree/bindings/arm/hisilicon/controller/sysctrl.yaml
index 5a53d433b6f0..7a221e1c09df 100644
--- a/Documentation/devicetree/bindings/arm/hisilicon/controller/sysctrl.yaml
+++ b/Documentation/devicetree/bindings/arm/hisilicon/controller/sysctrl.yaml
@@ -82,6 +82,23 @@ properties:
 
   ranges: true
 
+patternProperties:
+  '^clock@':
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        enum:
+          - hisilicon,hi3620-clock
+          - hisilicon,hi3620-mmc-clock
+
+      reg:
+        maxItems: 1
+
+      '#clock-cells':
+        const: 1
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/clock/hi3620-clock.txt b/Documentation/devicetree/bindings/clock/hi3620-clock.txt
deleted file mode 100644
index dad6269f52c5..000000000000
--- a/Documentation/devicetree/bindings/clock/hi3620-clock.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Hisilicon Hi3620 Clock Controller
-
-The Hi3620 clock controller generates and supplies clock to various
-controllers within the Hi3620 SoC.
-
-Required Properties:
-
-- compatible: should be one of the following.
-  - "hisilicon,hi3620-clock" - controller compatible with Hi3620 SoC.
-  - "hisilicon,hi3620-mmc-clock" - controller specific for Hi3620 mmc.
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifier could be found in <dt-bindings/clock/hi3620-clock.h>.
-- 
2.42.0


