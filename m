Return-Path: <devicetree+bounces-162828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0DAA79EDB
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 819B2173E58
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECF1242931;
	Thu,  3 Apr 2025 08:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cY0Nnwp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F125241CAF
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670743; cv=none; b=ZMwhrYnTzUMZyHncJnbIlsxnKObF25TT/yqCWmaGrhYWTCKocdXTKLxWxga4OA/HSptSN9vh9o3na8o27yvs6LTv3j9EgpFbBIQzv87bqjbd8NEJIughhPpHm2LO2IEpVpO0Et7L2dXcncq99drFa7UrkaSBbfSYOVPN5nuvVQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670743; c=relaxed/simple;
	bh=eBSaOtqyWe991gSlYJyL39sE3ZfA8WvCAtDmKcJjlV8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BK8LyI1gwrykD6hm9wx8Hinkyqziu5UJsNScIj22WlVOSLbQkXWMGdNXDSY++5wZbhviQoLitktWUOj8HgX+NUGnWD18Q4YbLWvaxUVUIE515agpqQdDDS+WHH9yiOlXQkG9pISDd8ZwA1d/RmncdTngr7jr6Dc7xxcyuglKt7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cY0Nnwp5; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e5c9662131so1124772a12.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670739; x=1744275539; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a+M3GihTjnRn1Hrg1CuNjUwnXLbiE9TQN/WleV7zPWg=;
        b=cY0Nnwp5I/MG2UQCN5wjD7QuohUOEvoiHhMIN+hzvjQrqXl9zZhLAbYNUIlmW21ntU
         h8ZvVGIK02i8d+P7rKJDrlheKXoWqwT9pzHlpSgGQf4lBhunUQYp8t5wwGuB1jJ+y4/y
         DtDj7LuX+wqqqBNY07Tlp3U6yaSwSdKbD3Ing/VvZk+LJdL08Zlw0kygLvmoAarhmIDw
         0DNhjyeV2wIu/2KqAoJL2MtbHONyihBtERWNemLxoEz2jJgNBX5cFAArbGDl8GySrQR0
         jtL7T+Mcqlj2SmIJPWm3hrrYLNEC0PLrhuJ4C3KxVMhe4/j0VuViNtZv2YX8hnWO+GNY
         z8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670739; x=1744275539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+M3GihTjnRn1Hrg1CuNjUwnXLbiE9TQN/WleV7zPWg=;
        b=LHvt8wPea24ueRhzGaYIpaTQDzWtiI/cpL8IuYMHl+cfLVsC/1VOTrR0U3Y24SlQQ8
         tx4JCsGeMOcQktzYYlPw3hekw5uUbeCTXMutUfg3KUfOjP+1/wMA90xYsk9nh4Qu2hMR
         h66lb0QkrZtNK3WHuSuTp/1JA4aEANcHsRKQzpZUOGZ51ulWO/Ef+iVbxdIa28xKsGmd
         H/JLVoO+9rOtH0Oh9TeX7UX6E4YUm/X/qIjIWEg4xkuZ2V0WHl1jTExQUSlROWtGEc1v
         5ZqwYO3D4jHRRW/RlVYeS++jV0FYqNW3GnUuACjIdHGnb8I+4fyC+nsJN1uWW/CUYOdY
         PqcA==
X-Forwarded-Encrypted: i=1; AJvYcCVslAlLZMrhJv0h/pEXmUpwlpVTm6uXpne8PGBevtU4CDRA+No+gtjrBbIloExO3z3gLuQBhrIZiB+5@vger.kernel.org
X-Gm-Message-State: AOJu0YxNZRQrYi7QozlVJRTIDT7/qiVL3yF94FDpDolelomcZVXH6G2V
	ucXDSaSU6/zuHXwTDg+S0RfsGz8T8zQA4DZnAliPSj8MwTH1o/wyQ7Iq0eyLBj4=
X-Gm-Gg: ASbGncsCwtthFZ3CwlpTW858y/CWycY+V1pRu658cICvdhDayCRbjOTi3k34BSf7uod
	PnZiEcIYDR4uiutomdrg2kxBIS1pu+ejVvnPPa76p8O7dfjTMVRIGdQkoK6HQ9SZnjdb5lEfn7S
	1EUDdbmELSshzVV12i/y5BgbSF1cfV0f3+Z1CSIoiP7m3XCKZRtmA/YM4NYAfNR2TUoBGlu476c
	99x6NToeQXoxg5c6FdVVPrBS87qd/TuBk0R33bEyj4lAvu7aLkr1jz+8Q9Nc0wtI7fN0GP4ViHs
	i5bklMFrcqUwboGXarYkc7b2jm0UWNbH+GlNtKt+/AoXxKciLLMI4T5oPt4mud2G4meiRzLaKh2
	Qys4r7bsjAEaBK8iIE0VOHFMC1Nx6YrqvURNHWhM=
X-Google-Smtp-Source: AGHT+IEO1QurBQVznveFvWun3Jg1GT4794QiV4XVF3U5z9BB/kH5NvSDatCmfwTx4VFKQZlezuZZbw==
X-Received: by 2002:a05:6402:3513:b0:5e5:e396:3f9a with SMTP id 4fb4d7f45d1cf-5edfdf1ce8emr15075770a12.31.1743670739159;
        Thu, 03 Apr 2025 01:58:59 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:58:58 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:58:53 +0100
Subject: [PATCH v3 01/32] dt-bindings: mfd: samsung,s2mps11: add s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-1-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 PMIC is similar to the existing PMICs supported by
this binding.

It is a Power Management IC for mobile applications with buck
converters, various LDOs, power meters, RTC, clock outputs, and
additional GPIOs interfaces.

Unlike other Samsung PMICs, communication is not via I2C, but via the
Samsung ACPM firmware, it therefore doesn't need a 'reg' property but
needs to be a child of the ACPM firmware node instead.

S2MPG10 can also act as a system power controller allowing
implementation of a true cold-reset of the system.

Support for the other components like regulators and power meters will
be added in subsequent future patches.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* keep 'regulators' subnode required even for s2mpg10 (Krzysztof)

v2:
* drop ACPM phandle 'exynos,acpm-ipc', and expect this to be a child
  node of ACPM directly instead
* allow, but still don't enforce, regulators subnode, to ease adding it
  in the future
* deny 'reg' property, it's incorrect to optionally have it for S2MPG10
* enforce 'interrupts' or 'interrupts-extended' property. S2MPG10 can
  not work without. Note this is done as-is using the oneOf, because
  dtschema's fixups.py doesn't handle this nesting itself
---
 .../devicetree/bindings/mfd/samsung,s2mps11.yaml   | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
index ac5d0c149796b6a4034b5d4245bfa8be0433cfab..d6b9e29147965b6d8eef786b0fb5b5f198ab69ab 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
@@ -20,6 +20,7 @@ description: |
 properties:
   compatible:
     enum:
+      - samsung,s2mpg10-pmic
       - samsung,s2mps11-pmic
       - samsung,s2mps13-pmic
       - samsung,s2mps14-pmic
@@ -58,16 +59,39 @@ properties:
       reset (setting buck voltages to default values).
     type: boolean
 
+  system-power-controller: true
+
   wakeup-source: true
 
 required:
   - compatible
-  - reg
   - regulators
 
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,s2mpg10-pmic
+    then:
+      properties:
+        reg: false
+        samsung,s2mps11-acokb-ground: false
+        samsung,s2mps11-wrstbi-ground: false
+
+      oneOf:
+        - required: [interrupts]
+        - required: [interrupts-extended]
+
+    else:
+      properties:
+        system-power-controller: false
+
+      required:
+        - reg
+
   - if:
       properties:
         compatible:

-- 
2.49.0.472.ge94155a9ec-goog


