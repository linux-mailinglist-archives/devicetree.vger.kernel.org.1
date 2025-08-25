Return-Path: <devicetree+bounces-209095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FEFB3487C
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 19:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B3817AF2AC
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 17:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6A6302741;
	Mon, 25 Aug 2025 17:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="VuCApZpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5869C30102E
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 17:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142467; cv=none; b=b9hjCJlAX0FjI2M6m7l8ywl9czy1hFqZsETZC26PX9ks4gZvxho/rJ+y2ykak1+ew6TPlck6nLgz5D09nsSe27a5ahTcz7RL2/I67w5kUWzohGVGdkcGi9T+Nq2S4dmGTkdIxDpSegj1VqlTZxSTnOvRJy4AIndch42tUahoFm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142467; c=relaxed/simple;
	bh=aevVzKjUd0a80xeiBDUHuCUKYX/2tnRSDd9e11O0KpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tilGFMprxY1Z0K1lUNQfGnjzdzw5k+ng0mreJBK49U/1zzpUNsGNryJzfvKgBboM804Gx3U8fcFd6I3jbpFUJnFk0zrKh/PLpiNcrMOrDgO9VLtpSlIh7wX2j5GIilsHPA0782NWtlhaUqa1WrFJylaobUMpYaJ+ZIu6twwScmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=VuCApZpS; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-88432e6700dso73775339f.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 10:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1756142464; x=1756747264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dYY6dLm3K5+01OXDQO8emoD1CldXvYvk8MiFXHZCE9A=;
        b=VuCApZpS9KHe3c1/XYHvZ5V89HUpS9vSXiEiCpMAmOfQcaKvyMQ8xQIGF07IQthPto
         KyRqiLFALr4HoCwz+KpZoCGpPsXYKb1vBXl3GeNlzycUYdH/9B5KGlRjGp8bMbM4huqv
         3XllBsTJB22GjesGHGcCGiEOGFBu5STw6myyOXySdzl+qc580SBJTMUMOA4z8z6nSLeB
         h2q7eym4hnkRDEXCmKS4uKc+GYhcminoGlVCVZNqI0TVPP/BcQfwW2uljC33W/JPmv7r
         ytdG2GuF5LyXxowEOSRIyp2FxUq9/WDZQz9xaLiTxtNal8i2O6lpjmWsxDzk6x0hdlza
         gNUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756142464; x=1756747264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dYY6dLm3K5+01OXDQO8emoD1CldXvYvk8MiFXHZCE9A=;
        b=TIvyVZbuEllVsSXze2tjZeAjJTKOPe84VBb3vG8RQAWibbURHd4S1iMMf0oHQwOiRf
         Ln4X5hTKehKjlHeNirMXgBarpcYvOl++a3W9CuKUf2+ZdyAeu19jaOZxe56/p++OfmoJ
         iOmbFrhzDW7Qw/dFLmNh2iDj1IRDV8BXbjAuStR0Ui3CCVSkv3+/ujqHg7HoJPmzcSrZ
         PGLzv8jFgu32EEdKKI+xeBwKku/xamD8pJCrw79eipkhu1DmuY37uJ3ivskVfBmcWvCo
         7XNzK6Uhdx+ONfvgzlixaZvLRJJs0degDyoAGJpVGx+WViBvJZdYLjTkqC6m+QPnNnig
         MQZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDX+gRORJxv4QL9rqZEPOPCKieIdHaGScozVzTjc+meIOF8MqFVs4o6+z5uigVEB/3xRnW0vIOwHEu@vger.kernel.org
X-Gm-Message-State: AOJu0YxqUcw4B/Ime/8aaLutsqf64fSq9o2m/XSCzI/l67rR7smZrBJH
	kb2Vsqqlqj3QDNxd2C5mxEbiseYJIXBZyNXBm08+oQHIpTORqEkJZapx36PyxTKuOFw=
X-Gm-Gg: ASbGnctT8phZjCsDcmONPg3xEf7Kptppf3lQJtSOHP6cVYp7jrm9oBT7SqALdsCzAT7
	iHh80HVI/xOiHA8p9zEi0nrXyH7r+us/QXj2C0jgaBRvxxXb15yQFe28zoen0UPuR98rcc3/VpW
	nHHMHstdVtiZrys30ohoJynH5y1jm7McnLRD2EJ5ZKLQ6zi+gz+q4R53pmR9zfugJ6HBmnKsA+s
	oKOMFh+U8nKgEQ/0spBHeOHLzlTcqFO+HZOZF+rCRfowms+IR5zPRDJHAFiq6TbAqZAXr0fq1FS
	Yplj6y28cDFQwKi+QfSYU8oejb0kcp88TttT/o5VgiR6gNo0VzCZ4EMLs1CG/ABbLn7cR2mZNKu
	PtSMosVN+CyU4dZu7L10ALcvxX01vSgu1A8/+Qm+OTvSMZTfvn/1conqdDxyAkHFlNxJDvZFvgU
	Xq
X-Google-Smtp-Source: AGHT+IGBXlU1oq7Hq3Hx+zyfwUPdCk2dB9M48YVwvfYPzgOuu9eQp5VooSY0xSGbyY2yI7LdGuyEug==
X-Received: by 2002:a05:6602:29c7:b0:886:c53c:9171 with SMTP id ca18e2360f4ac-886c53c9338mr1220679439f.17.1756142464463;
        Mon, 25 Aug 2025 10:21:04 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-886e60c4737sm76275439f.26.2025.08.25.10.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:21:04 -0700 (PDT)
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
Subject: [PATCH v13 1/7] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Mon, 25 Aug 2025 12:20:50 -0500
Message-ID: <20250825172057.163883-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250825172057.163883-1-elder@riscstar.com>
References: <20250825172057.163883-1-elder@riscstar.com>
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
Acked-by: Troy Mitchell <troymitchell988@gmail.com>
---
v13: - Update Troy Mitchell's e-mail address in "spacemit,p1.yaml"
     - Add Troy Mitchell's Acked-by

 .../devicetree/bindings/mfd/spacemit,p1.yaml  | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
new file mode 100644
index 0000000000000..c6593ac6ef6ad
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
+  - Troy Mitchell <troy.mitchell@linux.spacemit.com>
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


