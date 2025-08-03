Return-Path: <devicetree+bounces-201467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 829C9B19194
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 04:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED3F8188B25B
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 02:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC96B17A2FA;
	Sun,  3 Aug 2025 02:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AFCCAYIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D568915DBC1
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 02:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189900; cv=none; b=D0Zb2qjt/Yh3DWNoZIzUC++qvd6aPP8D4/TAsCyg0NcfONC/xlEBggqOreq7yko+tCYJF/551NSkgWe8F4jkdiPUKkZOYxvQpmSieGlWtVGTptLtxIvAjQ8sZ3tlhcu0eAvBNpkRIIcY0XwH9tFQbRjXOWvwJ9EmYrC7cVETWJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189900; c=relaxed/simple;
	bh=f3e7VDZ5RpctNbfj+dyIcOXKfTplNtROBxfFMgGp3q0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XI7LtIgfdRfCsxTWwDRxUA2JUGPAHgxtDbFq85eaPeP/BXOepii4kEZJG5jeLHITqbKCDlIy1seWAymy5gyMYtjVb8Qa9S1zs0NgDNhfF+Y9Ww+InW0gWYG6AtCaaQSoY1uhlR0OIpXQvEiu9PDYyqO0ZhjmGAshj3ej+VIT0Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AFCCAYIE; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3e3faafe30fso24983575ab.0
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 19:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754189898; x=1754794698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ek2s2DUqL/jgDZvOvv6Rjx1Dp3m/erc1mrYIyBeINSk=;
        b=AFCCAYIEp/AW/hyrmC9wCGgH4ayQm8hS9iGGTVrkoLg9svXnhJcCb2esBkWnYTdvd4
         hLB4rWiHGU4AVuJMm/v8pq6QXo27WlTJYZeGOc3RhUJnFcCigEBx/wBu8D5k2UYtORb0
         KEiAD2FbjbyvOau5tCZRI5cWHOyK7PemzitfeO5C2xI2Vwu01BTL17PygEvLmHkn4ew0
         mGTwL48nI/Wc77mkguc1qHczaW70CEF+huQGz+pKych/WGyP41KpPJWRP4K55HkO5xSN
         ZqXaMVOwdtyAt+CMRfDpu5P9vViJAEX544abp2CdtjRuJeyBU+Nt61t2RXLwLjqAvEve
         Sllw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754189898; x=1754794698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ek2s2DUqL/jgDZvOvv6Rjx1Dp3m/erc1mrYIyBeINSk=;
        b=BXLM+45FXt0mIQlnDX0L44DMtZUzdwWr9wRmsONU3ZVwlYXaYKwI+Xgadr3AGcufSr
         uNVoQhYBrJmSj0iTag3xZXcJAx/1Y8DP/+HxyDBPp1ZryzUDo0OlwUQzx1Cmv+q5BV5e
         w9oNDyRnmTfx6cktFO6lMRStvqowpIOIEvoflInSOpsHwdnj5AWZUzvgnJOLyYVP0+Ae
         1Cta3D5hfKsEVW24miSHYrs6QxM3+cZ5TCySouQN+ph3pSedxzZWoSYgbZHczSxJ7mRn
         w+1itY2XkqbQY5+UKxFNaQRxQ71vMFMYpHziu43gwyqE0durjPPMJNY6vw4Dbav34xi4
         VM2w==
X-Forwarded-Encrypted: i=1; AJvYcCXxWhdih35dd7nmu+Cg4KGRnTTOxS4XQzMkiufvpx67/0wwcB92eg1OEr9oltiOE+ziQjfjWpDQdvXv@vger.kernel.org
X-Gm-Message-State: AOJu0YwO2m+NXbI97ES5M32epVKFb+OC+D48s/AuMgEydv+Uw2a1DKDX
	r6JXK76csF0LeHFFsEWSiubL70X/hYSrqEL/Pxyeewtnx497JQSAf8Uy/BfgnsCKP3Y=
X-Gm-Gg: ASbGncu4ApAlKLnKizAxGn6d7GWAxrP01H+mTaDswNh3/DZMHW1gBtMFgn8qZKDexQc
	PXSryK4+Mmu8wPaeLvO8R34UfPnvhK8H5EBV/WoKc75dFFh0hAr/uxLT8AEJZb3g+uzzuv1m91y
	0P4UOqF1Z7/s+mriPYQwYnfUICx6IesAILhtCA+O2My7TFC2NwLdHTM/TEeWNefdUPWIjKhaP9g
	v8pnqeccqhdJhRmLCQIPHx/WrnH8KHI5hgBtVv59wMT+EN8G0383RLWAGnWbw2oFNjusthhRPwo
	je3DiTpYNAE4ETS02y00k0PuLgOPpm1gxBj3ecCI7UyYYYtXswE0QB2r+7nYW21pK4ajdNqvNIi
	GzwPZEQQSTq1Ob7IWcSiytywnedQvzYYHV/o4COZoqTQBBCFXJO8PHCIRUYlZdaDr5A==
X-Google-Smtp-Source: AGHT+IE1EI0ik3qR8R9p6oS+/rMP5rmrF5tbzg4vFpoKSdksN0WY5toRor+4wX4VhlAJ+LsTRTCKSg==
X-Received: by 2002:a05:6e02:1485:b0:3e3:c6a6:2799 with SMTP id e9e14a558f8ab-3e4161e006dmr100052085ab.21.1754189897967;
        Sat, 02 Aug 2025 19:58:17 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55b1ac2esm2251906173.1.2025.08.02.19.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 19:58:17 -0700 (PDT)
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
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v11 1/7] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Sat,  2 Aug 2025 21:58:05 -0500
Message-ID: <20250803025812.373029-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803025812.373029-1-elder@riscstar.com>
References: <20250803025812.373029-1-elder@riscstar.com>
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
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
2.48.1


