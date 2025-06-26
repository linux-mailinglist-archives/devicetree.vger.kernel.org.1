Return-Path: <devicetree+bounces-189973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA0AAEA041
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:19:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF90F3BAFEE
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF042E5427;
	Thu, 26 Jun 2025 14:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MBBm/RZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C428428A413
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947517; cv=none; b=fripL9MdEnMpdf/Nk8K55uZvro6/R2fnJz4ntfEmKpBx1vV/qp5CnYbQqNpAhWrKu2cBis4KWNotOJkxLfLaJaKg4wQTlauHuwAug8XGfS9/M9Vde2vZg/GGTd+Lwns4eJ4BPtYnQ1Fq0SOfMlzDPIZBTdRTb3p6N49lYcAFgZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947517; c=relaxed/simple;
	bh=hMn6z2AZyzcbL/cGMK7HwRD4mhVABvJkOEyvUbzSheE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BCVxU7fh8BWPr0EI83TL+gJnlyIZ9T1lslkNNcdcC5YvMpI5yuRfBGTCdKguuzZehlRDTjoGcmr6SSRZu0WCOKHltzuOHDZIlRkf6w+VJ8u5Wdwv1huMQ9rjFEv5Ts767OFbdvgFzKC8bsCSmRkYY5k8UjGKCWTIEvYNeOd3jPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MBBm/RZq; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d2107eb668so171152985a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750947514; x=1751552314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=onUZmipuuggYzLIHkuYvhE+eJtHfnxxJxJfL7IX4aE0=;
        b=MBBm/RZqJxIrA3SUIbtxxRcOHu0DMtt+5ohk3Sq+KzLQFRGkR9N6+yydNLwzXonUI1
         UfG8+bdoDnqjLOZYoQiDt5mAWUVfD9mJVcKdjTRvuxgugq15mk9AXTXO0z71HSse3wa5
         DblQVZTtdn5P6cn6IgjKz6vJpyCgePFlEQdxn6IV6WlRrXPCu6HIzVAvvCI8iFplepir
         706U4KZ9oGAVaP7tYwRB5dpf9rPgdcbo+jA1nxgeMv0LrEsZogcpwog5njXsEBIi6UPW
         uz2n8JumuWyEd+O8HaICZCdIH2NQs4hRXOZvnACZWj3M6OgB4QkAyqTHIAfpZV69vMyC
         Kzow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947514; x=1751552314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=onUZmipuuggYzLIHkuYvhE+eJtHfnxxJxJfL7IX4aE0=;
        b=R7DtrQj25OwOnKfdADkhqltYo5ZWXPFOIE/Kx7QiO9wV6VkCi6N8hbPE7arXE9Fneb
         yeFviMm7sEb6x4a/gC/k2EC/ECwyydb/eQLSEYJLFmr6an4D7VDufQAyX9prPNwoP+eD
         BtQUJ/Qt123HeNJkYjw38YYXRtIdYs2pyWgCF2YQ6zkN5A5GLw8N3igG4EtEmSoefPCb
         B5mYkD+gsDF4eGZha98aAHIjCZ2x1mIEMLGLOZ4eGr+H3wxmIz4xCWisppvxs9B8yWAo
         2gBtkUPC2l0qXur35HIYGU3lheZRonG5+gj/IUQxZrE9Y9PV+IAh6rOzT/oOEnqP6gLb
         sUTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwa5BuRMpwnuSNuta64l/Xy03DZQzGB/mpBBDbiKIfctPOJq+An60jQ4IFZOguck6eg0edxfIXyXTd@vger.kernel.org
X-Gm-Message-State: AOJu0YzwgqlsGJIuAVdOy+scE26toPAMHotIabmB9tsa/zQpv3sNkzBW
	s/Iw4FaVAU0V49VBb418SZewTdjrmpZ9P/4bPgWTcXdepueYVDNGA56P1OdCOhnTwI0=
X-Gm-Gg: ASbGncv/hoF0pGrzeb2SS4DmLvgQ6K/o0IfckAOLYNL3aySMOm9CtMLxNaNYHu+cYin
	WLNps5fYriRdoUar74K+EiiU/RuJ6IyJ6vVNnH5ZWU1RYjB4dX+FbIuuAU4pO467OOCkxOiwyF9
	y0QPMDfQ6OzGo6eTYO4Lk5gRHfbMpOC8abhxU3SNhL3yy0d/FyJ9hKnIHqrx3POeWIYQDwpK6Op
	6OPMwrG8PlGOiFH8yhP5u8qUwlng/hvQu++621jlONL/nHfSIBTop+37mcktLKMva3GYTc3DSfH
	BCwQ3D/KxF9C7HF3P3aRLivRU8c8efk9KZv++hNzRJ4Jwq3H8jHosOxdq2E3b1pqDRjE0vGdkJN
	s2asdSJRI+gAEwHAFyw2P70dka6oWQcfYL3I=
X-Google-Smtp-Source: AGHT+IEWxkse5hTkmeklkGnlPmhHsuowNr5lQuTqRpNLHHlNF9sUuGIos4wTOLkkzfZbR39s8zymFw==
X-Received: by 2002:a05:622a:1914:b0:4a6:c5ea:6fc with SMTP id d75a77b69052e-4a7c0857cf0mr107432031cf.42.1750947513647;
        Thu, 26 Jun 2025 07:18:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a779d6df17sm70266101cf.30.2025.06.26.07.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 07:18:33 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/7] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Thu, 26 Jun 2025 09:18:20 -0500
Message-ID: <20250626141827.1140403-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250626141827.1140403-1-elder@riscstar.com>
References: <20250626141827.1140403-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the SpacemiT P1, which is an I2C-controlled PMIC.  Initially
only the RTC and regulators will be supported.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml  | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
new file mode 100644
index 0000000000000..5cc34d4934b54
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/spacemit,p1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT P1 Power Management Integrated Circuit
+
+maintainers:
+  - Troy Mitchell <troymitchell988@gmail.com>
+
+description:
+  P1 is an I2C-controlled PMIC produced by SpacemiT.  It implements six
+  constant-on-time buck converters and twelve low-dropout regulators.
+  It also contains a load switch, watchdog timer, real-time clock, eight
+  12-bit ADC channels, and six GPIOs.  Additional details are available
+  in the "Power Stone/P1" section at the following link.
+    https://developer.spacemit.com/documentation
+
+properties:
+  compatible:
+    const: spacemit,p1
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vin-supply:
+    description: Input supply phandle.
+
+  regulators:
+    type: object
+
+    patternProperties:
+      "^(buck[1-6]|aldo[1-4]|dldo[1-7])$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@41 {
+            compatible = "spacemit,p1";
+            reg = <0x41>;
+            interrupts = <64>;
+
+            regulators {
+                buck1 {
+                    regulator-name = "buck1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3450000>;
+                    regulator-ramp-delay = <5000>;
+                    regulator-always-on;
+                };
+
+                aldo1 {
+                    regulator-name = "aldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+
+                dldo1 {
+                    regulator-name = "dldo1";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3400000>;
+                    regulator-boot-on;
+                };
+            };
+        };
+    };
-- 
2.45.2


