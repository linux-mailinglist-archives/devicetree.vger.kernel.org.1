Return-Path: <devicetree+bounces-236891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF19C4906B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 620CB34B0F8
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FDA338918;
	Mon, 10 Nov 2025 19:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ms1jfwD7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70E43002A0
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802948; cv=none; b=fz/WK/8/keMrlXry/uDWjfOeV03qfZClZx6kxL7aHvKHnqisGYZGwjJKEBWnNm5qbuP7qYh3Hn+ikVIf01rlb6xNUNsHyKDJ/Hh68utqyAVjVVFqK6pKedEHqTGIzPR3Xkw87LleBhUjTfzR/Q5GUxA2WR1fwCIim/jISIHSryk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802948; c=relaxed/simple;
	bh=vA2Gdm7YJ1N52sMK85uo/763rmuFf8U0qzGCGGyZPX4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GEnnmr6gVzHRcA6MxnIYJc2iyC0vy8Fh2mQ9nygAErtwRkBxTVexX9cBZ6soUbJiGHkxu1ltEeTskOwE/Hx9E9BUs0CCX1qfctBVP3zGSJxWvY5slmrEFuOCImjfUolyMPWGFGOfqwGVsLENZAnMJCzhIhbxUBDrTnpawSchAuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ms1jfwD7; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b72e43405e2so17266566b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802943; x=1763407743; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6p9Nm6sl12z8+Vy95pO/T4AqLaimc3KDyy2JPTrj88U=;
        b=ms1jfwD7+L2vryKX055aXINMnOUX8Ko1EsBMt3PZIBQFDSRKtMGLlUjxf+7P4g1dad
         wZWt0R98ZGWOy5407N7v3LYotx4oEtbddWR/PMU2sK+IM6mxXjluVWChwjlp4R2MhCfT
         EoNg5hNTgBTEXwvBoh0os8F2uCbWUygKJ/a4xA01FqNAhMqAdNANOlMCtKbSoSinI/tM
         V18Fa/lWfDcGumsh6vqVqUxblBbSJb8KTbI75j7iK5E3U77DIpRxe/MJ97Z0ztRQAEYj
         7wgOa9SKD0whko1QJKD9Bd2DRDuALCRFE7r33bhfjhct8UWhfGGnzm+RDRG4BUoYmmY4
         9fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802943; x=1763407743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6p9Nm6sl12z8+Vy95pO/T4AqLaimc3KDyy2JPTrj88U=;
        b=SQ4ncHHYUO0YTPk0peOHnY+9gjf8pR61baTRnW8a2cYowaZywAbuVQslO8GMyxgG+A
         y2Yjd4XmnAKZYiWs3Zedfc8ZsqbmzDbPzn6XwM32pOVckSxeyqLhLyKOIAjQUfZ4SGPl
         evJnHH0cRu7LZqN6OnDyTudfUGIWT0PwWTtjYnED6kTnv0XrJlARBrc4cWOmoL9WI5ny
         omFu2Bpf5Ru4DDsgvdNOaM++HFXYvJ7agiHTW7y0t0PlkV//JQis6IPoSWfn/rz9g+CZ
         JCWKEh7h/JONZXF9a/K8gsHvdXvdXgJwAnVgOf5PsojnjOsHCDJyyhPf8692kwMTsyvV
         26Ow==
X-Forwarded-Encrypted: i=1; AJvYcCUtMtSq7kzN6iOWhtC6z9yqwATeeQ0QSEhA8AoO8H8kF/3JIQp4HK8p+JiMURoKYsxSe326jsXKKkyP@vger.kernel.org
X-Gm-Message-State: AOJu0YwmhnDkPP7Qu1q4XBcesp8ruKar8MY9OOP7bVlOLNMFOnP7e2HQ
	dAFIsmBC781Q/KE4xaSWklvWkeJoB3kIPZOI7KKP3EBS9qk3+hdEIzk27Ihm15kcCyo=
X-Gm-Gg: ASbGncssnTfgZmgdIudb5u+uSZWR6fViR8z8mGYSNnnZTdS7/69Y817gOPhOxDZMITa
	9+enCHdBm7zpf2bKa8Nzm+k9d06PNtE18xu124Ji7xnUj/gZm0sLuDOWQ94pq24sLtxk+s9MrJ2
	AQx8WrlgUhlnclRtUFwxIyLRbaQmf4mtOfjX4GagZJSWPMs2AAKuJaOuLYWJ5+bS/dr6k+h2yTj
	orBjydM01t+2LvXYFxZnEVShdm+XAXXsbkR7eH02LpgVHRlc+lfsdbirJqXFFEdj3xVksnHTc0W
	J4qVvY28odg5FjZ1hQhr8ugXZea8N4OJz1MOKOzMeG18kWpDktKvCZR2GAN8SGvwkYQzdnojMVc
	Q6bgRdc+JSc4ByvqJNTwYsq27KjdWGR7zOfu33qFzabo57kSxNBM1ZB/VZ18+pzPWpjImp+pfOT
	cRtFLF+UwYGDq53ALZAsCWoPRvRMucRkSXnLI+Q0v4mEqI6fR+qfRl8Qb8Xu+K
X-Google-Smtp-Source: AGHT+IEFnMd3Fb98EKBtO0Ewwd4iprmghYyLPzY9g3ZjE02anvmr6mJAUsdol+Fi0Pe+NsXFPJJNXA==
X-Received: by 2002:a17:907:9405:b0:b73:158a:b4b7 with SMTP id a640c23a62f3a-b731d1c00bemr63920566b.10.1762802943068;
        Mon, 10 Nov 2025 11:29:03 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:28:50 +0000
Subject: [PATCH v4 07/20] dt-bindings: firmware: google,gs101-acpm-ipc: add
 S2MPG11 secondary PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-7-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
as a sub-PMIC.

The interface for both is the ACPM firmware protocol, so update the
binding to allow the relevant node and update the example here to
describe the connection for both PMICs.

Since we have two PMICs here, but can not use the 'reg' property (as
the addressing is based on software, i.e. the ACPM firmware), the node
names reflect that with their respective suffix. The existing 'pmic'
therefore becomes deprecated in favour of 'pmic-1'.

While at it, update the example.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v4:
- Krzysztof:
  - update commit message / subject
  - pmic -> pmic-1, pmic2 -> pmic-2
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 50 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb..e68f9c3ca5e2619bacc0c8d843ec4984c0947fd8 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -37,6 +37,7 @@ properties:
     maxItems: 1
 
   pmic:
+    deprecated: true
     description: Child node describing the main PMIC.
     type: object
     additionalProperties: true
@@ -45,6 +46,24 @@ properties:
       compatible:
         const: samsung,s2mpg10-pmic
 
+  pmic-1:
+    description: Child node describing the main PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg10-pmic
+
+  pmic-2:
+    description: Child node describing the sub PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg11-pmic
+
   shmem:
     description:
       List of phandle pointing to the shared memory (SHM) area. The memory
@@ -62,7 +81,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     power-management {
         compatible = "google,gs101-acpm-ipc";
@@ -70,10 +91,12 @@ examples:
         mboxes = <&ap2apm_mailbox>;
         shmem = <&apm_sram>;
 
-        pmic {
+        pmic-1 {
             compatible = "samsung,s2mpg10-pmic";
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
+            vinl3m-supply = <&buck8m>;
+
             regulators {
                 ldo1m {
                     regulator-name = "vdd_ldo1";
@@ -82,7 +105,13 @@ examples:
                     regulator-always-on;
                 };
 
-                // ...
+                ldo20m {
+                    regulator-name = "vdd_dmics";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1300000>;
+                    regulator-always-on;
+                    samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN2>;
+                };
 
                 buck8m {
                     regulator-name = "vdd_mif";
@@ -93,4 +122,21 @@ examples:
                 };
             };
         };
+
+        pmic-2 {
+            compatible = "samsung,s2mpg11-pmic";
+            interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+
+            vinl1s-supply = <&buck8m>;
+            vinl2s-supply = <&buck6s>;
+
+            regulators {
+                buckd {
+                    regulator-name = "vcc_ufs";
+                    regulator-ramp-delay = <6250>;
+                    enable-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+                    samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+                };
+            };
+        };
     };

-- 
2.51.2.1041.gc1ab5b90ca-goog


