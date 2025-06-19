Return-Path: <devicetree+bounces-187563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4438AE07DE
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:53:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74A663BC716
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49F728B51F;
	Thu, 19 Jun 2025 13:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ShGiAx3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C9E27F01A
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341120; cv=none; b=X40ylfnUbJC9mpmY7t9vmVxlBnFGMLLO2OJ4xz83wwlpX/mzxrFpFbRMsWHN7JYbWHf3aZ1Itu3clJAGVEKmYIWpAdNyU0tOZHy88vT7IvPjq2HUTRXLTVNjhaK6MoOOWed3Kx49iWh4ofOsdEm9mGMaGnPO231aWYUup/dEFeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341120; c=relaxed/simple;
	bh=cAHhOLAHGIZflg/S4SymZ2z4viws5qDWxv85YpH2WPA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TOxggRph574QravXmtF5wXLTc557bugsAz04wsOT7BJdhaclbwEgKnDhRZu1H/n+AqUbIMl4raCWO2yxD5fpQ7rh2ScsWmXb4QYOBXHm5zLo58RtB7BdSD+bxLPAE6BxqpiszkG8c0zAnJCWGZgGzOCQMQgyfxGc4Wv1d/xxTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ShGiAx3Z; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3dddbe5f8aaso2482435ab.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750341116; x=1750945916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W9OZBf2ZEclqneULzr0nY5IJTm6h+hkq5rFp6zftd8k=;
        b=ShGiAx3ZCWh91myRrzNX4ENCkOaZtxWFMiaw+2T8eEPRNgtYJCtvXdaCyqngfHy/19
         4frg2J7LBSL8vSuD21BIwhU66wAnmG1s6W/YMmNqI3pBfIm59a/MtLRDpQ8waB4Yh/Ij
         TEXabsb9sFu/UzLwI2SXR0c+eHWk+1RMQY84yp8ZFYqAYLHKCxZp3Tsynwxnm+gXT8Sm
         RQPXrcpF6p5hmnMU/coCq9cr+pbbfa8Dz8Y++gQxbQ4gTp2UhCyGd0FzTcXNmRb5padE
         UO9W5zSUyMj5tcmjtMUUIYUOauJKLezbL12riZ1K/qx9MvnLlYbEZ2uL1fkwk+/mMaYU
         1+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750341116; x=1750945916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W9OZBf2ZEclqneULzr0nY5IJTm6h+hkq5rFp6zftd8k=;
        b=PjhaakqazN3a668tGvibcoh32A8+JfZ0/G40L6K36Lp/8z7pFvSyd2aP+bW9zo78B5
         Txaujf8vtGEkH7cwWtkrtQMh1Af3IgLU7aNDY/rKvxeBOKk1URsQUAcg9azgzkozzcSJ
         bk+7GeIKDL5UAKtzkVl5wPxdpvywFmQ1FLfbzeadAZQJgdN2Nvhja1tceKOPcsVCuNaM
         E8u93rMvmytD5Eps5qSoQ/mY8OX/472azLnzcfWE/btda9phj19aXPTK17z14NXogu3g
         VCR0f2tu4btMHcExqPVtUa8mNbFNGFC4/DysANh8R/xeHI7drkPTJjGk1OJTqg2OLbJQ
         2vug==
X-Forwarded-Encrypted: i=1; AJvYcCXLFXTqetkn7223QH4HgnYymZY/EAkalSz6MHzSUonHYvX9Hc+nAAC9piyzE+w5E56sxINlI6r4LhaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzGxoAzjALCfDg1imSA7SLRS/junIeo0EYmaMiYTWKydf1WH2/U
	2N4MGSpg1iXMU0Pb5/qoWZX5YzbyoqnoF5nheTqGKEN7Wa6Tj3TDcPC4TZV2kQsTZrQ=
X-Gm-Gg: ASbGncuFITgHaPnnWYqNx6ghrRPj9lFNz8bcbogwdsS6LhNeoaPlBZJAvtzwR9CpM4E
	wZJL5ItzHBV+x3NwNvwvd2NaTrREMPg2TicLpEBQVo3sYTkoY6LsnvROh+C/uWJ7ZtFG57Wbh56
	YIn91cU7ceKiy3vC9EKlcfTtLSvvNpNEu1y6exuT8uklcYn9AgfjkLcCsVmmojceTXUbFhKNzxo
	Lavij/31GbwkgLJA+pcj4bI4ejYT/9vYyVKyeqtP1E4FjCwYNjntYgVtKPNRWhRYeqgeAvX6CyU
	RVAax4jIFg3UIWCs90W+CYnF4CKT6ICqd6T7/V3ZwadotCj9SyaKBQi0JGk7lIKYnmnZHJwvhgt
	G7aNsS8puiRtb05mVtp5Bg3ynyLrDGOw=
X-Google-Smtp-Source: AGHT+IElaXHZ2UeHWaQiwWXotIWz/yHFM2kkgPfUkrNCPfPJv6aoAzGBdh75tg6zZAr4XQkckxbbkw==
X-Received: by 2002:a05:6e02:378f:b0:3d4:2ea4:6b87 with SMTP id e9e14a558f8ab-3de3029bcd5mr30770725ab.11.1750341116498;
        Thu, 19 Jun 2025 06:51:56 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de01a453b4sm38246015ab.47.2025.06.19.06.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:51:56 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com
Cc: wangruikang@iscas.ac.cn,
	dlan@gentoo.org,
	troymitchell988@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Thu, 19 Jun 2025 08:51:45 -0500
Message-ID: <20250619135151.3206258-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250619135151.3206258-1-elder@riscstar.com>
References: <20250619135151.3206258-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the SpacemiT P1, which is an I2C-controlled PMIC.  Initially
only the regulators will be supported.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - Spell SpacemiT correctly in the subject line

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


