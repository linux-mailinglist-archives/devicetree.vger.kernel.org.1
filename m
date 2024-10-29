Return-Path: <devicetree+bounces-117078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941789B4EEB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 17:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 491252816E9
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 16:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67377198831;
	Tue, 29 Oct 2024 16:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CNN+rydR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA219194A59
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 16:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730218129; cv=none; b=URiMH6iA8uXrWl0Og38ysIOSlD4jhAI7NjVXzcpX+JmQ70oVfeEeYeEeftB1hMx6XDUBtn461+8hZkQS8ILBIV3tmjy88U8HC5xuJosMMulqpnnoL+nAWJVJxCPqWy594OWHFIPVJyBKaLlH92YVzZTbeMhELQyk63Qvjfg1pHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730218129; c=relaxed/simple;
	bh=PTWQL0xRocm+dCQ9BQmBy3im7r7Cu+cbGjU2rjEDK8w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WSx2Mzo47tpYZ3Wy5h+Us4YQnyBDQ6yHePU9rHv9T0dfWaWHHUP2RgH2g0RixbOsxnZSQo16MvvKrserAGYPyWRDrDxy9QitmZiso694wOw8TJNjTcQ9Cni1xpIh2Et8fvial9MRvp7dRyg1zFNM/6oQPlDZRHU8h1O3L8yQbJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CNN+rydR; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so3646916f8f.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 09:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730218124; x=1730822924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Wv3m+TETn/7J5g5ia3GTCHoXaN6AmkhRmnf2PhkQ2c=;
        b=CNN+rydRp632LKVHcyOc6kSs8TIT44t01XOq3U8ilOKOMis1pjaFJZyNxR3qEv4p52
         KqqSAgnSKLhGesa+rh/wopr4jpPcA24BP7ioLBphnNxfGiXIoXHqXMEjHf0k1KnUaqO8
         KLWFnwfGOCAJnjDqCY0YLrYkmkqBjvEPsw6WEIKDbWwQbUDiXAdk915uOzTu2GVSjx7s
         xUo+zRPkrDNR+s+zlqhbrW5tu6a7pkBISOLb3IBHw8f5E3yd3b4Vp34ItLUkmVZA2glL
         KJl7YxpQLeuAhLJgj2CZ3mJBjsxgpApEw8FPztDuc6HMCgEYla6Ql/u5jLeilBax6Q1e
         FOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730218124; x=1730822924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Wv3m+TETn/7J5g5ia3GTCHoXaN6AmkhRmnf2PhkQ2c=;
        b=kPoG8KFsEmNpjX4mLWvEDSbt9R0JGEDzS2aulCpPZ5VG/vYrQp+gafeVW6CrtT3L7G
         5ncIWWusWOgVyawYBbEBAsLef23w1N4YLEk/gDEfF4kPU0YbrLOwn3HM/sAMnKr8wUXv
         Vd6R2gpVONBdsp9jnqE8na3JnQV3KUcLHFTGur9cONq0YIBHHMVFXETfDQwBlSxfbQQQ
         jRrASaNPnpjA8hVL4pxYK0r0EuoRZZHr+9IUAj2I1EA0w/8kr23uUw2SHEqDY0TIyUly
         2/Ju2pRGgW0T6xwM4XHoE1rN/9LRxO/IHnVLKvWrZcrx3xUq9FP7fntoRCxDkEP3McBe
         oj9g==
X-Forwarded-Encrypted: i=1; AJvYcCV463flD/QSrF/VuWaBqtgh5TiCshjsQSbURNj/bR0ShCEQ2Z4L9pNTrT5RhkVxJDsdKUS9cgFUErbA@vger.kernel.org
X-Gm-Message-State: AOJu0YyToKt6OAZVnPfsb4E6sj2z7wNUQTql4HajKROnaYFDgj4V+asA
	AzAbAsGdtMSlQoa2/I1iwiKbdBuBO+aw+Mm9gzCjC/rwWOOqDLvC6EDqZsemZZc=
X-Google-Smtp-Source: AGHT+IEaM4j2oeBvy+l+NTVqZUSamWXr98GOwIIsWUYa5OzAny2/JSsIdspRhCk8pftDCdYULrxjUA==
X-Received: by 2002:a5d:4602:0:b0:374:baeb:2ec with SMTP id ffacd0b85a97d-381b7076530mr132189f8f.19.1730218124092;
        Tue, 29 Oct 2024 09:08:44 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c7b9sm12940422f8f.32.2024.10.29.09.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 09:08:43 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: pwm: marvell,berlin-pwm: Convert from txt to yaml
Date: Tue, 29 Oct 2024 17:08:36 +0100
Message-ID: <20241029160837.590199-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2779; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=PTWQL0xRocm+dCQ9BQmBy3im7r7Cu+cbGjU2rjEDK8w=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnIQiFLEZcQ1YBLULPYDcwrBkzMCExVFazz5Cm4 neZa1k4TfGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZyEIhQAKCRCPgPtYfRL+ TuRvB/0Rm90ZqwV1D9Y6spE/DpOm0L/gQd6T163cLFnaaU2hng+mFqqiAsWQd/lvUOeL7Ded7f9 nsFjmZFupHfujzEBm3l2qHCRVb/lG/B5MHCIel0ZjIsCdv8yQaoDhKT3YUIRlk99xF2Hi5svrE3 F0QfjNRXzqepHX0HlypxXE0OvhDN8CSGc/D8qWVktnnUcQYc759GB6v9EJdMDwHIPYMyHzKIecb dBPElYk/mcjHRP0Q7ZwoInG43L/ONpzLxwCrwQ4tlAy98XQ5nqI/A3GBYk85/pCyFgC6z+KGL6o VOqVFpSkZgf+RjJ5oWO5yyZHYSLE5DLezkeaiSyZE/XFB91l
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Formalize the binding for marvell,berlin-pwm devices and make them
automatically checkable. No change to the binding intended.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
Hello,

the only addition is the list of maintainers. I optimistically added
Jisheng Zhang and Sebastian Hesselbarth as they are the maintainers for
the platform containing this type of device. Please speak up if you
don't want to be listed.

Best regards
Uwe

 .../bindings/pwm/marvell,berlin-pwm.yaml      | 44 +++++++++++++++++++
 .../devicetree/bindings/pwm/pwm-berlin.txt    | 17 -------
 2 files changed, 44 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pwm/marvell,berlin-pwm.yaml
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-berlin.txt

diff --git a/Documentation/devicetree/bindings/pwm/marvell,berlin-pwm.yaml b/Documentation/devicetree/bindings/pwm/marvell,berlin-pwm.yaml
new file mode 100644
index 000000000000..091fec03df13
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/marvell,berlin-pwm.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/marvell,berlin-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Berlin PWM controller
+
+maintainers:
+  - Jisheng Zhang <jszhang@kernel.org>
+  - Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+
+properties:
+  compatible:
+    const: marvell,berlin-pwm
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 3
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+allOf:
+  - $ref: pwm.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pwm@f7f20000 {
+        compatible = "marvell,berlin-pwm";
+        reg = <0xf7f20000 0x40>;
+        clocks = <&chip_clk 12>;
+        #pwm-cells = <3>;
+    };
+
diff --git a/Documentation/devicetree/bindings/pwm/pwm-berlin.txt b/Documentation/devicetree/bindings/pwm/pwm-berlin.txt
deleted file mode 100644
index f01e993a498a..000000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-berlin.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Berlin PWM controller
-
-Required properties:
-- compatible: should be "marvell,berlin-pwm"
-- reg: physical base address and length of the controller's registers
-- clocks: phandle to the input clock
-- #pwm-cells: should be 3. See pwm.yaml in this directory for a description of
-  the cells format.
-
-Example:
-
-pwm: pwm@f7f20000 {
-	compatible = "marvell,berlin-pwm";
-	reg = <0xf7f20000 0x40>;
-	clocks = <&chip_clk CLKID_CFG>;
-	#pwm-cells = <3>;
-}

base-commit: 6fb2fa9805c501d9ade047fc511961f3273cdcb5
-- 
2.45.2


