Return-Path: <devicetree+bounces-71673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBDD8D781A
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:33:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F27B11C20FAE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2654677105;
	Sun,  2 Jun 2024 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qDc5BDlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5427B74E2E
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717360403; cv=none; b=EQMk/PGsUy1xLLijvY33BxfmQeQpbkFqPmRV9N/9SA9Hyrv7Lnu5O80QLGT01c1Ap3KNW+gv/t6rdUtvnY1+RGs8vGvh4oUVJTk5jIQSggmb481uHeb92F2x1p5ye7Yb/t+qbbvlsd0dihPVt/P7bi3lcfw5JRIw8K8vl3pPPgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717360403; c=relaxed/simple;
	bh=AJY+BR3y3uJfboLS+O4e/nFB5hwWdtjUr/yWsGwxn5c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r6sgfVNGPm+mXMjYgC2R1N24/TUoPigWdDNOn2lKHuxfUUO/LQ12X5dwhEmU5JBq+I2eOKt1iGwhLmmDvAzNL0qlhWL4Cr+OqtgYubP5Og5GdOYPwTrBnG2sCnvJXeukOxChU4QBh/iRytBRVY0j93FqHJV5nVsMQtxwqQZ8gOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qDc5BDlj; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b78ef397bso3594255e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 13:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717360399; x=1717965199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UpwqBMlO4FySRBywvnVuNDNuc1Eg8bRggYj7Y2E/ST4=;
        b=qDc5BDljWOjeALq0+g6aPTS4dqOJiwK/5G8pQIBHPsnBfkTr70hGoRrEgqnLSyfsKr
         H/sp0i8V+gjFGlXDKMBLTYVt/mAojfUZUf0E2nJW8Gal4SoSEGRgzduzg0BPIBzxmO4k
         1rx3zl7SZ8EGhqHL2PO5s88xZP65Zfu+C9c5ZrlG2NmWypxLF6U5cYoPQzUBRBv5YMSD
         pUX0KBmZPPe8jyNRSJLXq8YvNxFp9QmY0AuyLiIlIPs5OpIDmeAphFFIl9dXUEAO+UM8
         hgBr4ch269NyXLVU93EOs2pTe19750GLgJhPb05OOJdss6tCkdWpoQFb3RemYP4K/HEb
         kXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717360399; x=1717965199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpwqBMlO4FySRBywvnVuNDNuc1Eg8bRggYj7Y2E/ST4=;
        b=PJnYpDYh/Zs8hXv53SkjcJSFQmAaBMRGfROPh8VDxkx5UQfUr5w/VazIDUnPJiJEk5
         RW2F9wnFAYf+y7VTbgkD47ZNBD6rg7zFWqt7PIHjUTSzc7BJaCyHxNBaDE2XyAjFISrX
         05rwiMU4uY8IaI3gRVtigre4IFjnsjBvB3GToovbQuFgLVX549JGaln9Ut9Dj+xJ7zf4
         0Qpcwt+8juj3LtgGKJnowDyter828/cot26hV0GIXODweGW8UmPbHsCNqhCJvy/CLgyI
         xdz5tyrJVIMXqEhpYG3VjIZvAOBOgn4XEyIx9IxtbTphlQfES4J8FU7eQqeNra+9yhUp
         sgfg==
X-Forwarded-Encrypted: i=1; AJvYcCUkHcP0hGj8QxcscnnHDvZAmb2w9QxT9rL0ekLXcJUAcKm4iyYcCBF12wLCRCKUcTkCAGVe8miFIk//++EBD/diGWlJ+vl5pdCMsw==
X-Gm-Message-State: AOJu0Yz4VJvdRzK2GWSpH23O1vYe5TYdPwSrQ2bFKXH6oBc+02xNZDif
	QgNTloofj1ed2N4aqgD/9Dsls9I9HXJItIld13e2NAUnZhw16/tOuJxYFJEd69s=
X-Google-Smtp-Source: AGHT+IGzjuSqjHNbdpZ24MffpSele6RCSxP28g5Ru/jKQLa8hKVxOtgYysuJX279to71vpgwbZHS4g==
X-Received: by 2002:a05:6512:2f9:b0:52b:905e:1500 with SMTP id 2adb3069b0e04-52b905e166fmr1142904e87.22.1717360399240;
        Sun, 02 Jun 2024 13:33:19 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b98845508sm245859e87.288.2024.06.02.13.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 13:33:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 02 Jun 2024 22:33:08 +0200
Subject: [PATCH v6 1/2] dt-bindings: pwm: Add pwm-gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-pwm-gpio-v6-1-e8f6ec9cc783@linaro.org>
References: <20240602-pwm-gpio-v6-0-e8f6ec9cc783@linaro.org>
In-Reply-To: <20240602-pwm-gpio-v6-0-e8f6ec9cc783@linaro.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, andy.shevchenko@gmail.com, 
 Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, 
 Chris Morgan <macromorgan@hotmail.com>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 devicetree@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Nicola Di Lieto <nicola.dilieto@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dhruva Gole <d-gole@ti.com>
X-Mailer: b4 0.13.0

From: Nicola Di Lieto <nicola.dilieto@gmail.com>

Add bindings for PWM modulated by GPIO.

Signed-off-by: Nicola Di Lieto <nicola.dilieto@gmail.com>
Co-developed-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/pwm/pwm-gpio.yaml          | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml b/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
new file mode 100644
index 000000000000..1a1281e0fbd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/pwm-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic software PWM for modulating GPIOs
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: pwm-gpio
+
+  "#pwm-cells":
+    const: 3
+
+  gpios:
+    description:
+      GPIO to be modulated
+    maxItems: 1
+
+required:
+  - compatible
+  - "#pwm-cells"
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    pwm {
+        #pwm-cells = <3>;
+        compatible = "pwm-gpio";
+        gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+    };

-- 
2.45.1


