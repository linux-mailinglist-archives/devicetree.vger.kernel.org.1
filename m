Return-Path: <devicetree+bounces-67645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A488C9240
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:39:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 423C8281ED0
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D7E960DEE;
	Sat, 18 May 2024 20:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6pwTSCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677B947F7F
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716064769; cv=none; b=kgDahjOCWiKBGx/4BvVwzA19IqumzkomdF+m7cbuhRcPSpot6jK2M0wj1+SXk+bW96iPHa7P51Gamj4Vwgj+rylz+oefipc3B97QqEbd9/QX4rwrQPtfLo2VYtwv9TltHajv4IhP4CIjb0u78fdNvx5JJjTI/WlwR5MSq5RMiuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716064769; c=relaxed/simple;
	bh=XcMhQfN7Am8zKPX5i+5RIQbwFF3FyxQ9Q8yVI5QcFss=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZfwWEhGtpHwKREBgfMh/HWh/zXuASUxfCqWvokDJeE9mBo8uGDHeu+Lf5ggccAri7eLj82ok3iRBR/GRcv2umjgsidgwesDr25SygPcxdpG9C95RjxAXgAq8StzIqDrtnTn7ltoKEPi03HgvB2DuPplDC9mQuxUR7oinsnN6Rdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t6pwTSCt; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-572669fd9f9so6321480a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716064766; x=1716669566; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vra2zeL7tZNPCyev4soGTccFuRymfpD1WOFRkTQfoJU=;
        b=t6pwTSCtICbiMwkg5XYPWMehI6XWlTAYlhbyr0xpHrwu+2r7AnObyIbt7gakYLV8iA
         MB4iQm6piRr8aLPdhE06d0r8VMTTAdhlXio1zhv5tJ0Fgze6JjBEbua/jEmKboXQpbiB
         dSiyMEttujX/epfiG4rUi3lf39n1qLKs9I6HSD1Yw9oGH2RRpd70yMUFeDhe3SQx8Khv
         Q/CQCgHBG3okELIULj9AYYJrQjd57ktZhNh//yjs0osSUGRTNc0pFOTaaz70H6X3SjjY
         2iuht0xrVOqNvH7apbRm8+EU98GbthvJRCtwLuFfjkwyJoxbr+KPndrUsmf18uOuTF6c
         tC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716064766; x=1716669566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vra2zeL7tZNPCyev4soGTccFuRymfpD1WOFRkTQfoJU=;
        b=FIDeNqInX2khif7eH7hYtm+n6AaqswDRpoN7HyaSvqFtXxL9EBtPpDohD3jqF3S2WP
         WeN9nEdVvS1CwILrMclltzj7hpfYd34jni5OhgfJoJzB33lFk1m9ndwYpLjWGV1LqbMW
         KVhpZq4TXOxQ2wL82hYN3Rbzz+2FKNSEOIBET7L7tG/l9iD9znN8B8EDtmWQe6U5Kdnr
         sblwBd4RyVtaSQLL9pDhqrrMOckjpgZe+H0NsViOzC0QdRFojS2WsNHP0qDS5rRfpnqR
         YVbF0bQDLMayNnzyk0SL1+3rhBWe3YNhohQlBy/TV0oCBqo/eBJZI231uxzsexc2H48Q
         IJHg==
X-Forwarded-Encrypted: i=1; AJvYcCW2t2REX9r3dyg68FRPF9nOyM1k/jBWTjOvr5ZuX1/stlsidZsytwYqfrgxYrA+DG+M+vaZCXVzeDvgn7LzRNKWbRYC5qLQQX8qLQ==
X-Gm-Message-State: AOJu0YyFsIg1DRK6Fkb1zqg180BknJm9Y4XBdMntnRZWb3hPCCkj983Z
	yYhzB8WqcbALtUegcznYm9UF0XRI78W1v9LqjrT4XbRoYxQ+IrRek+O2pmPFkTI=
X-Google-Smtp-Source: AGHT+IHwxt3y3qbfk5PrbEW7Ji1FqvmX1SLB2RJGTBIAQusDHgQ50K6ImMA2W5PaqD7Uk3W7mRaD3A==
X-Received: by 2002:a17:906:3154:b0:a5c:d694:bb33 with SMTP id a640c23a62f3a-a5cd694c6a6mr707249666b.45.1716064765707;
        Sat, 18 May 2024 13:39:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a90d0e919sm529625866b.85.2024.05.18.13.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:39:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 1/2] dt-bindings: arm: arm,juno-fpga-apb-regs: document FPGA syscon
Date: Sat, 18 May 2024 22:39:02 +0200
Message-ID: <20240518203903.119608-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated bindings for the FPGA syscon registers on ARM Juno board,
to fully document the block and also fix dtbs_check warning:

  juno.dtb: apbregs@10000: compatible: ['syscon', 'simple-mfd'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 .../bindings/arm/arm,juno-fpga-apb-regs.yaml  | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,juno-fpga-apb-regs.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,juno-fpga-apb-regs.yaml b/Documentation/devicetree/bindings/arm/arm,juno-fpga-apb-regs.yaml
new file mode 100644
index 000000000000..97a7a6281d62
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,juno-fpga-apb-regs.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,juno-fpga-apb-regs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Juno FPGA APB Registers
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    items:
+      - const: arm,juno-fpga-apb-regs
+      - const: syscon
+      - const: simple-mfd
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
+  "^led@[0-9a-f]+,[0-9a-f]$":
+    $ref: /schemas/leds/register-bit-led.yaml#
+
+required:
+  - compatible
+  - reg
+  - ranges
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@10000 {
+        compatible = "arm,juno-fpga-apb-regs", "syscon", "simple-mfd";
+        reg = <0x010000 0x1000>;
+        ranges = <0x0 0x10000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        led@8,0 {
+            compatible = "register-bit-led";
+            reg = <0x08 0x04>;
+            offset = <0x08>;
+            mask = <0x01>;
+            label = "vexpress:0";
+            linux,default-trigger = "heartbeat";
+            default-state = "on";
+        };
+    };
-- 
2.43.0


