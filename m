Return-Path: <devicetree+bounces-160440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EEDA6EB83
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACD521696D3
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BB8254843;
	Tue, 25 Mar 2025 08:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G6scjL9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6298D19E992
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891231; cv=none; b=i9BY3wSukC9gSWsEARbUd7NfM5g9vWbCWtpDW7bJ1NtKqEExEvfX++ClhlODBxv1D36tnyYMO7tVrNnPQsZsoqexp+SdKn32Y8ijkGCKS6QDigGQmRGRS/ot3/1i0Vs66J6sWK8L0CIgt5TXoN2DALdbHJv8il9RnDTQFuFRMas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891231; c=relaxed/simple;
	bh=08g+dfR3FV6Y6Q1D84qQqREWDz+FcRKr/yg3IyPY/+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SYexP8LDtzpFLI6PhE1gWNTo7m+kEIsFtoI4cHhXjNp/YyRQtvJnhO+WR/QLobU9N0ZJ116PrUmbefbZqO8QEFTrFj3tdAmTEdtb2GL7Q6gsL+zQjenQAobUwI0rU6e3f6QXSG5kml5Pjm7ghiHoM68uRGQO+Y7VDTKMr2PLLzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G6scjL9D; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so9738072a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742891227; x=1743496027; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6SEwl1TCy2+vIo8t3ZzKiS9UVWKw2bXaNUc9+NWEYzs=;
        b=G6scjL9DNmE9GB1Dz/XAmVfBhitUGsomcwc2XIJd9YMuEd8E+9bLZkYFrzqucrBjXC
         hcdMQckwsLHw0ioxKx8yBbrElCVMD3o1aTb4UTYXkCBYuvWJp49lefycQQW3eCk4V2Bp
         m6J44fn3topVeBztYrJl0invvyvSOZtzJgVJeCCerJR3M/0OhrzI6RLBbC+FEoozB8nA
         v0ZwDMMOnGt2K9qmHhyEO3/YlITiDsmlGgGCAZ15epUaGyIlzFglozWrKJTlHlYt8leg
         tHHa/kh2JJ2VvtsWsntOj4vvFhmvWzSq0XhFgsxK9K6jlAYE6/5fX2VVWA484TwSQEF6
         fmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742891227; x=1743496027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SEwl1TCy2+vIo8t3ZzKiS9UVWKw2bXaNUc9+NWEYzs=;
        b=L2zWNsGynBbP42OR0h4GG3GL+6fSWWqSHU9vIxgtZG1V9ArZhQylzK1mQD/a0ysFyA
         pG+hN71HDsEfH5eGnJkBk0GjqKJtipwdnYS+/udgMVTW4KirJuHEAkt/hsP43iZAVmd/
         Yd5ZFAfh8bePR7h+pGtyfMnTxwgPNK09yFTJxyxtm6TFnRBD9tNIdzFwqE9Nbmwfe9HS
         74kJc9Hv8XbSQdU3+CKwpzm/3ECgL48u6OJE4DsYoTyhEEz+fZ0FUhfIWPpaFQ1jxIyG
         /EAC3bqmcSa8nyPDuCd4yvmIBhg8jW0pF5RGThP5sdMJojJtYKDVZzJ0bAlXAeS5nL6V
         8D0g==
X-Forwarded-Encrypted: i=1; AJvYcCVVkV7s4dhKCxrTthLCsBxn/6/iD2L479z+ctPgleSFYIswjQOHVI4JTilRobn7yJKiOiNjKG7ogDIf@vger.kernel.org
X-Gm-Message-State: AOJu0YzLf60pNMzePQgsmrF7EwEfYwiezegPeKvvyR+Wc7Rwxenvr9uw
	jNJ2tNxSxqOQSjJp6lLJ0P4G1Fw0KEfgRMHkbfHkOEDdVJR0rVke1bKQRO1EkS4=
X-Gm-Gg: ASbGncsXc35uviG/pbutBtYVkuj7pMTJrJe1PQY9IJmU2hs1WGW846h8UWGZHUXxETv
	vNQIdGHByGiynESTHR/vP1zh9YsfPgckEZCqoWGmGihjA8dUW1P+caDsBlR5K9w2bN21xglnoYE
	9bGyZdy0/NH9C36zzEX344tRMM0p/v34UMTq+I3Tio9FgGe68jq0UiveHNa/omiB6vhEL3vyjnG
	lZ6Mxi2mQXZ2Fsdb2TkHz7Ie7jAp406W2tb1M9r+OcCVxHdci/Uh4XAQ40b2GeNlX9Rl3tVe0nQ
	8H/u1WU3JZEKcgGvgCdfbGJDWn0fg54feHExU3pAnw3v4Kpbn1GSm4OyStQufmOLA8pxoHIM/bz
	wFl0FfHkvybV1NQML6L5otsq3+66H
X-Google-Smtp-Source: AGHT+IFGom1pvP26uA9aKjTrkI6D6p34D8OfrDEsjpJgJY0txiyido0Z3dDxMIp3H950t0uf76P28A==
X-Received: by 2002:a05:6402:2816:b0:5e5:49af:411d with SMTP id 4fb4d7f45d1cf-5ebcd476285mr15315373a12.17.1742891226502;
        Tue, 25 Mar 2025 01:27:06 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcce36d66sm7377366a12.0.2025.03.25.01.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:27:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 25 Mar 2025 08:27:02 +0000
Subject: [PATCH v6 1/6] dt-bindings: gpio: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-max77759-mfd-v6-1-c0870ca662ba@linaro.org>
References: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
In-Reply-To: <20250325-max77759-mfd-v6-0-c0870ca662ba@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes its GPIO module.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* drop 'interrupts' property and sort properties alphabetically
---
 .../bindings/gpio/maxim,max77759-gpio.yaml         | 44 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 +++
 2 files changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..55734190d5ebdbc351e1f91675dddd8a9db80cd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/maxim,max77759-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 GPIO
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This module is part of the MAX77759 PMIC. For additional information, see
+  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
+
+  The MAX77759 is a PMIC integrating, amongst others, a GPIO controller
+  including interrupt support for 2 GPIO lines.
+
+properties:
+  compatible:
+    const: maxim,max77759-gpio
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-controller: true
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 2
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupt-controller: true
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+  - "#interrupt-cells"
+  - interrupt-controller
+
+additionalProperties: false
diff --git a/MAINTAINERS b/MAINTAINERS
index cc6536141bb3a06fa6bc411ac69053b8be17e0b0..0abd85ff6fdee93424ee3634c56fbcbcea1a7855 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14568,6 +14568,12 @@ F:	Documentation/devicetree/bindings/mfd/maxim,max77714.yaml
 F:	drivers/mfd/max77714.c
 F:	include/linux/mfd/max77714.h
 
+MAXIM MAX77759 PMIC MFD DRIVER
+M:	André Draszik <andre.draszik@linaro.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/maxim,max77759*.yaml
+
 MAXIM MAX77802 PMIC REGULATOR DEVICE DRIVER
 M:	Javier Martinez Canillas <javier@dowhile0.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.49.0.395.g12beb8f557-goog


