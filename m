Return-Path: <devicetree+bounces-199873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0A7B12A94
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC94A54363B
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E77A246BC4;
	Sat, 26 Jul 2025 13:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MEalPpci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87624245020
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535413; cv=none; b=OYroTfaflzbrstwvvmWHjWYubScmQu8IdXypHJjNnsBWTUwD9lDeHWxlvKZyBolVxV2lr3N9PIUK+TSQdpwTAbAPKdeMKU/BY9mhfm+taxcHABISahu4E86fe13QdKXXmUpqOM4D+gsk+yj146Kkx9vAbw2sJSfmGlHLHXCX3sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535413; c=relaxed/simple;
	bh=f3e7VDZ5RpctNbfj+dyIcOXKfTplNtROBxfFMgGp3q0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EPN1/zbtUOynvFb3ceQqrXf69h2VdKnT3DNmJSrFVi4Y/e/ah2qi1Xs8oXG1FW6TX0s7F00+HOLHGrcW+nrW+Y1VRyixWdfwZHLkfFGuIzz2CnAPQRwAHtLnPzazAhZ4QyyKGFTrQMvWqOTCCQpxWnoURmWlQ2lghb2F3+BqXYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MEalPpci; arc=none smtp.client-ip=209.85.166.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-87c070b2dfbso114511339f.3
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535411; x=1754140211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ek2s2DUqL/jgDZvOvv6Rjx1Dp3m/erc1mrYIyBeINSk=;
        b=MEalPpciqofsTD23ypHVjOoZg3mhGgZTUzOcbhXJTTdTJEva7ETDHaxzFQzd+NzOdQ
         qAa9IffOjDq56G2SQk00cTgfbzW6PVVKLr3ebteErRFswMxoFOzqWrjIZnED2xm8egmC
         ykQXraZf/d/XWxS5mU7+GnsmMADwkKK456CO2HR+xzCNW4wlaHahXkGLfykABkJLJSoQ
         rJugMYJPbEFd4hC+ti36Pud7Nahtd3oMCmVbtX/MdpEywWPlKIm590sXN9TOvTRA8FPF
         Kur9IME8CCWZwYiOibua8U4YZb7pkOjd7eO+l5KBufTupbpmrIFlEADxuBGow7dbGHof
         hndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535411; x=1754140211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ek2s2DUqL/jgDZvOvv6Rjx1Dp3m/erc1mrYIyBeINSk=;
        b=FTOUZ18OvWvdtvANWxC984+Xw2mNswwUMSNZnbTKhn1VBHg8+Pa7m+U8j7yL7ugZwd
         7nZZbxKnEFlieJgYoaLvKEQdAjSQUeVPWbLOoOU5beTa7qa6VkD6Hu1mMkJ11VpftfkU
         2RbPG38PpVEj5JP9TK09wJc+LKMolbdJGoOiqox5ccqy3LWV7qalj+hhzGnuRjkVgMzW
         iNt3/VhRpK1cYCcsR+3hzbpvNC1MwXH+RKur3hF/nPO65aFbfkAj1TlkP2YXS915BonJ
         AsjqdpJAP8Mk3tJjlhRqB/dbjQvU/xVh3B5U9uo8WwWAugMd25GVmvB1P/j7ErEvVtPj
         XlKw==
X-Forwarded-Encrypted: i=1; AJvYcCV20lAHYueARkDOCpnazMy7RkxCU35GOZAgyoFVc0XVzKboMOKdrgLpBZNViMR97pEdzLRZKRQEJ12L@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0KfWtd+NxfX5oqZnhCx6zSw1MtUkcXpLeNywf71jOB9kWjjdo
	ntyB4V0nsvegV6RIPlWl5GfyNkRP7+cVd3iFsPTTOx6+70iCpwlHxi6eGvrHqyEmxPw=
X-Gm-Gg: ASbGncs5laTn3+lRt09mDYTY+eLjlQlIds4PoyTaHtTdlbycT0sRMvQS5PsfH1soheF
	t1IguQqWt+TAS4Q64IPRXpasbwRVH+r87Tuo0cJb7aZO2jFHPKJCf4dhyo7KWMI/YvyMjkTi5CO
	f6yQZ+4i+ytXJJtCV9BIf1XRcTUq871rCZYBXTGnQ6inmkdR8t01UH6Qn+I2vW0R2AnszE81oPS
	axqv6t4rASQqZU4Yx5xHMiV/7TxcLXz9boVmKrPKFLnBYdNGxkKFIxX2TBfkoesjYGAYZyfBxaq
	IVnIj9AVv1AApGzhGUI28zmVfiutVuQ+YsqUE7E44io46BDpARG4H97L5DEgax22rGBjBD0g5zJ
	QycZJKMK6rlRkqYR7Bppb5Hl4y9VwxDcTSvcnujBquoGRPLcZQUGSycu3lc//70KtLTEASLcFFQ
	CI
X-Google-Smtp-Source: AGHT+IHyyfkAGrv7e9QP0fqrvp0iqIuBvwoIPIrl5BUPHk4N3KVmqmw/7gL1AW8CJAs0LQjqCf81DA==
X-Received: by 2002:a05:6602:29d2:b0:85b:476e:ede2 with SMTP id ca18e2360f4ac-8802293bd79mr912922239f.13.1753535410568;
        Sat, 26 Jul 2025 06:10:10 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:09 -0700 (PDT)
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
Subject: [PATCH v10 1/8] dt-bindings: mfd: add support the SpacemiT P1 PMIC
Date: Sat, 26 Jul 2025 08:09:55 -0500
Message-ID: <20250726131003.3137282-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250726131003.3137282-1-elder@riscstar.com>
References: <20250726131003.3137282-1-elder@riscstar.com>
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


