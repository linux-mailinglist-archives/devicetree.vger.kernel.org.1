Return-Path: <devicetree+bounces-11656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A47D64D9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:22:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF7D41C20E18
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CF41CA8E;
	Wed, 25 Oct 2023 08:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bQN8KB/W"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFA61CF99
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:22:05 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD87E111;
	Wed, 25 Oct 2023 01:22:03 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6b1ef786b7fso5152661b3a.3;
        Wed, 25 Oct 2023 01:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698222123; x=1698826923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioMhJx8s3LhJKYNx5Y+4mlxc8ilXquXKWeYGAZDzE94=;
        b=bQN8KB/WialTQJpBO5Omw6XQ4GK++0Mkf5xeZo54sUMlwpcoFwH9zhFtCJGIH8ogMQ
         pU0PP/rsPR20sgFBsxQnRIdZrZAwPqoMR1OZ3g+lbIGzPUXdDJ4b7f7Z2Dr8JCWT+RTF
         BlW8nlrPrOJV2rA1LppX9OaIRbTUm3tUqmY+4S4BRjxT1GBd9mwsOBtSr7/6rblueFiS
         6tfi9Lw4s7lJ0SF5E7va1VBZyoh2vnX3a5IqSdHlzbgAITqFyH+sr6cgOJEa8uAYbhC+
         7nhHALSlzcHGqZXt8UV5XnWRt75xBZwj0q5sxVZN1XwUgpeXCVA26OZGzsnSTeaoM/5+
         SIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222123; x=1698826923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioMhJx8s3LhJKYNx5Y+4mlxc8ilXquXKWeYGAZDzE94=;
        b=G2NXib1OszxEsxkR56exMvurxs56J/zfTcxsS7tIVKH8fhRUjo1DUQVvkLpCpg2UMH
         sHkeaVBh8cNwGRTcO0VXqZtQaOnDkUbVjzgroj8+ADRtIzWdkOOQ5nQMygbiuvE+cJFc
         2YkkJC7XsJv0T8h6CSq29wFUqCXL+K2UTOu5sL7kiwHv92qkSa1/R2gyDHWysdA6d6WB
         wHXdjj821ZkCTEhhWOf35LQCwCtu7GYxuz27EIRhC6jezhiI1hzPxcq9Sfa0Q69N1Bvx
         rm9OsSHLIKb29P4f8ELkJb/K9rNr3SklN/eti7TAoAKZ30lXlaxa5Oruz0Z/0qFLNEug
         EBqA==
X-Gm-Message-State: AOJu0YymfVZquxJ/FIT7RCIlohDiDusLjVvRTNi3Bk9CqV4yY5iESVt3
	XpjbyVVkseV1u0o3HeDJ1g3OXe1pWZpk1Uuy
X-Google-Smtp-Source: AGHT+IHqvwTr9yn3yLB3l+4upD2aw8EsCt3OSQ3tHNsO9BENxzL4bUN6s17f422bUThoW3aP7R0qJg==
X-Received: by 2002:a05:6a21:120a:b0:17d:ec93:6a86 with SMTP id oe10-20020a056a21120a00b0017dec936a86mr4223436pzb.19.1698222123264;
        Wed, 25 Oct 2023 01:22:03 -0700 (PDT)
Received: from localhost.localdomain (2001-b400-e38c-defd-6dc9-16c9-6f6d-2997.emome-ip6.hinet.net. [2001:b400:e38c:defd:6dc9:16c9:6f6d:2997])
        by smtp.gmail.com with ESMTPSA id y66-20020a62ce45000000b00690ca4356f1sm9255860pfg.198.2023.10.25.01.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:22:02 -0700 (PDT)
From: Wei-Shih Lin <frank101417@gmail.com>
X-Google-Original-From: Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
To: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: touchscreen: Add Novatek NT519XX series bindings
Date: Wed, 25 Oct 2023 16:20:53 +0800
Message-ID: <20231025082054.1190-2-Weishih_Lin@novatek.com.tw>
X-Mailer: git-send-email 2.42.0.windows.2
In-Reply-To: <20231025082054.1190-1-Weishih_Lin@novatek.com.tw>
References: <20231025082054.1190-1-Weishih_Lin@novatek.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds device tree bindings for Novatek NT519XX series
touchscreen devices.

Signed-off-by: Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
---
 .../input/touchscreen/novatek,nt519xx.yaml    | 60 +++++++++++++++++++
 MAINTAINERS                                   |  9 +++
 2 files changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
new file mode 100644
index 000000000000..00912e265197
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/novatek,nt519xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Novatek nt519xx touchscreen controller bindings
+
+maintainers:
+  - Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
+  - Leo LS Chang <Leo_LS_Chang@novatek.com.tw>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - novatek,NVT-ts
+
+  reg:
+    maxItems: 1
+
+  novatek,irq-gpio:
+    maxItems: 1
+
+  novatek,reset-gpio:
+    maxItems: 1
+
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+
+required:
+  - compatible
+  - reg
+  - novatek,irq-gpio
+  - novatek,reset-gpio
+  - touchscreen-size-x
+  - touchscreen-size-y
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      novatek@62 {
+        compatible = "novatek,NVT-ts";
+        reg = <0x62>;
+
+        novatek,irq-gpio = <&gpio5 GPIO_C3 IRQ_TYPE_EDGE_RISING>;
+        novatek,reset-gpio = <&gpio7 GPIO_B1 GPIO_ACTIVE_LOW>;
+
+        touchscreen-size-x = <1920>;
+        touchscreen-size-y = <1080>;
+      };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 4cc6bf79fdd8..25c88bf7333e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15009,6 +15009,15 @@ L:	linux-input@vger.kernel.org
 S:	Maintained
 F:	drivers/input/touchscreen/novatek-nvt-ts.c
 
+NOVATEK NT519XX I2C TOUCHSCREEN DRIVER
+M:	Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
+L:	linux-input@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
+F:	drivers/input/touchscreen/nt519xx.c
+F:	drivers/input/touchscreen/nt519xx.h
+F:	drivers/input/touchscreen/nt519xx_mem_map.h
+
 NSDEPS
 M:	Matthias Maennich <maennich@google.com>
 S:	Maintained
-- 
2.26.1


