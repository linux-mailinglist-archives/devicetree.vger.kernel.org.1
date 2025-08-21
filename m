Return-Path: <devicetree+bounces-207207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50791B2EE3E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E54C5E6BFE
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED3782D641C;
	Thu, 21 Aug 2025 06:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZyhWTWUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB2D25392D
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755757730; cv=none; b=WqJcOi5Utak3ErXFaqc3P3JMF5tV6FsGHwJKChCFHeurpGYyOUHhcb+ckJ3UqujuLI+SK5BLq7n0W900w1ktnk3x0jSWxquLMYTbYgHZ7PGOoW7vyPJzs629dCsv0ffjhw62CLJldrrmo59YxrNKvyfHuulr7NxR1VyCAYwd5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755757730; c=relaxed/simple;
	bh=BuRfAnFnaOP1D4CJsQUvuku8RSgN8ChGH2kSyQKMXpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f9oTRXDYiODuSCd/fdYktcCEJons5aUvxjg31H24P2DO2ALtLZHvuPpA6l+fovKu03kZJY9JVp0fzSZjFKmxV62MaaxxLzHYzqvzvQI3uM1jWhUJgK7HKj5UjCxa65EepFBnwx/XuBP2RVrMHMCWMRErW09D8+LhmvGRLPOlZnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZyhWTWUR; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afdf4bb0e5cso10846566b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 23:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755757727; x=1756362527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RdUVASp7YNyKaUR2qHcgjrjThqHqtigmKhoUTntMczo=;
        b=ZyhWTWURZskJ9e0jDD3ml+L7FXv7Nzub13qamMxRzoXwFRMHZ6J+Hbgn16DjAVlLhB
         WV2R+0+rSjmElhQaF50fWu0ZDYGBhQVrLHCTWbsjwBsJW9jA1Q1A8Rl16acQvBeLEFx0
         y7mA/+JM4imyQaAY8uH7sJovQ8Y8BYkqzGb3QaMGqByIoUgwIKjJtON2RTl/+/NsRfWj
         rEn6XddwmSADV2Ym8VhUr5OIfaVBzX01ab4BLyTTuV1m+MG1lia8jSzAtcjsGLa0w41a
         JjfPvDp3yida6kp1d4LPNMdIfaj0yTw2SGp/9sc3CCMZo/s4lAD5p2hrso1GRDZk02w2
         vHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755757727; x=1756362527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RdUVASp7YNyKaUR2qHcgjrjThqHqtigmKhoUTntMczo=;
        b=B33Yzkmpsj3JIaLpxRKqptULnvlWo8bGwPVWkQfOv1jqeZ9XdAjSThgXQ3OGiFg2MH
         CCME3yVIsXQ05c2y7Sk866xVM79ddQvETPgk32QMTUQRGpqg6eS9zG5zt7POEe+kasma
         1qZe2faNt5825eJoNXi5cV0yY4ypgMUwfCSU5Uzh1xsOhq9pNpuuaFpaI27RVsLhyQBg
         uBcFr9oPci06Ub0axyyPmH7zdVNcN53GJCtdPUX6YrVU4RSS9H4lEIJNQVlLk55Lkegl
         sAaE+UAAu6A+CPXdT53EWtGFtqko96u6bh5eClKtQu8Zgtxe9s3i+d2jUk2MxbRrlvlt
         fvqA==
X-Forwarded-Encrypted: i=1; AJvYcCVwWTu8o/xcNLXafw01VZlPLzxrQz5uMhpOJb85N30SjeL7AexmgZW7WAFSlK4H1m38TeqFZIF0HQu5@vger.kernel.org
X-Gm-Message-State: AOJu0YwlEPUE8hGv1j/3+Aa2jNZGA1TjOus2U7Lf2R03rTzMaNIWKo82
	1HA2ByO1LvjpJldwBAEM6LFOAjRLhfBbrXSz+BSc8ZuhSjoKEDgBV+kz8wqBy9YIyYQ=
X-Gm-Gg: ASbGncv5NR1TltNLtfqyNunRA4DhpPyEbLX5oQe/ptzAM+mJEAE265AOYi5QQsBWjL2
	6N1I1fcgbfU4PqaN1gmZWRx0+Ev37uY/+HAFlJWRROrx9UxePh3EG5mZaHpOwHsG3tlO1siWQfD
	2pRD6MQ5ifmYXKqYAU2mPFYD94oUG/i/8bMaXgm1wcYyOxz3UUbhcE1i6593pOE7pb4A2eEvZlH
	mTQoiBQfaUngdt8DO8H80FuKlaGF9Aef02fTCBwWWdst+DSpbi6K7yqc+gWDX2MJa6co4/BkuEe
	shwMz3DjTScU2RstB0dgoLfTDRntj1ol/uyUzs1OeJK1BhGgFtW6UIq8aFvxTCSASIDNJCWcU7A
	CE8hdCpgjOChg16PtIS+6kPPxjElM/BduIA==
X-Google-Smtp-Source: AGHT+IGboT0zZyC1O+5BE8fpnBfnc957GqC4iwpI3neSB8Xxwq58FC9qag7/uLD5PdUhRv7MO8IczQ==
X-Received: by 2002:a17:907:3f9e:b0:ae0:c276:d90e with SMTP id a640c23a62f3a-afe07a0e6a4mr67859966b.4.1755757727090;
        Wed, 20 Aug 2025 23:28:47 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded479868sm327334966b.58.2025.08.20.23.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 23:28:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tim Harvey <tharvey@gateworks.com>,
	Michael Walle <mwalle@kernel.org>,
	Lee Jones <lee@kernel.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Mathew McBride <matt@traverse.com.au>
Subject: [PATCH] dt-bindings: mfd: Move embedded controllers to own directory
Date: Thu, 21 Aug 2025 08:28:41 +0200
Message-ID: <20250821062840.9383-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4904; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=BuRfAnFnaOP1D4CJsQUvuku8RSgN8ChGH2kSyQKMXpM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopryYe55RPyEPBDxuIysytsjwZXrGU13RiseVq
 9CsfRiTjXWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKa8mAAKCRDBN2bmhouD
 15kmD/9Q7Zpp5+h7XrEAaw2XkPWouR762eRSFXtOsWf0fAEy0/nEkVTJM3X2bgoCA+kzBspaOkd
 dDx+wDCAPeTEeUJhdTrlcEI9SvNrSomyNURwQr0/vbp/w4LdM9HvnYnFpZw3tFsL2/L1q8h0jsn
 l6W+JjPxHg+NyNnHfkeUQz6HgoJODDhqP5tLws5Juk8mI/nD0fJlBQQxDyAKJqBo0T+easLhKB2
 7JiwCewCrMd6u0+KkV/kghHGYsJBmR2ybifDuaxKVxHVhj6L2s+rkyqsQnxjYQZLvoWINzuuAJD
 XxB8ezzBjQqg/2IdHSRcgOHXO93e9i2dKAv/u/fw8jCX7xAj4NQG5033XopBVMNcKXTx3fn/FAC
 zjWrqCfJzmzumt22xdo2a/UmCVBpt4o6uQJF9HTn7Hjr7v8BFVanWBOooPXfYRCWYpG2duzsmqK
 X3AHv9mSmAk6EmkrtKlzTWJ4yVOXRLKDD3+l0sceBPMUnt8VgqpiYR1gcIIeURyhosfRqDfiOfz
 OdpQVZj0D9NccW7xfL+2MML2AcHZURXtiZXPQcjIHCSN0tRQL1o1Lm6689Y4j9G86VpQyWxG2oG
 etWm76IKRB20J3rj6NISaC/Nwu0etBNyVK5TYVSKoDDN+jR2oj4pqPV9fsPYdQ+gsRAsE1Cmj2H F0m0JXCBqrSIryA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Move ChromeOS Embedded Controller, Gateworks System Controller and
Kontron sl28cpld Board Management Controller to new subdirectory
"embedded-controller" matching their purpose.  MFD is coming from Linux
and does not really fit the actual purpose of this hardware.

Rename Gateworks GSC filename to match compatible, as preferred for
bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Mathew McBride <matt@traverse.com.au>

Lee,
Can you take it via MFD?
---
 .../bindings/{mfd => embedded-controller}/google,cros-ec.yaml | 2 +-
 .../gateworks-gsc.yaml => embedded-controller/gw,gsc.yaml}    | 2 +-
 .../{mfd => embedded-controller}/kontron,sl28cpld.yaml        | 2 +-
 MAINTAINERS                                                   | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)
 rename Documentation/devicetree/bindings/{mfd => embedded-controller}/google,cros-ec.yaml (99%)
 rename Documentation/devicetree/bindings/{mfd/gateworks-gsc.yaml => embedded-controller/gw,gsc.yaml} (98%)
 rename Documentation/devicetree/bindings/{mfd => embedded-controller}/kontron,sl28cpld.yaml (97%)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/google,cros-ec.yaml
similarity index 99%
rename from Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
rename to Documentation/devicetree/bindings/embedded-controller/google,cros-ec.yaml
index 50f457090066..3ab5737c9a8f 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/embedded-controller/google,cros-ec.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/mfd/google,cros-ec.yaml#
+$id: http://devicetree.org/schemas/embedded-controller/google,cros-ec.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: ChromeOS Embedded Controller
diff --git a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml b/Documentation/devicetree/bindings/embedded-controller/gw,gsc.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
rename to Documentation/devicetree/bindings/embedded-controller/gw,gsc.yaml
index dc379f3ebf24..82d4b2dadbae 100644
--- a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
+++ b/Documentation/devicetree/bindings/embedded-controller/gw,gsc.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/mfd/gateworks-gsc.yaml#
+$id: http://devicetree.org/schemas/embedded-controller/gw,gsc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Gateworks System Controller
diff --git a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml b/Documentation/devicetree/bindings/embedded-controller/kontron,sl28cpld.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
rename to Documentation/devicetree/bindings/embedded-controller/kontron,sl28cpld.yaml
index 37207a97e06c..0b752f3baaa9 100644
--- a/Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
+++ b/Documentation/devicetree/bindings/embedded-controller/kontron,sl28cpld.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/mfd/kontron,sl28cpld.yaml#
+$id: http://devicetree.org/schemas/embedded-controller/kontron,sl28cpld.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Kontron's sl28cpld board management controller
diff --git a/MAINTAINERS b/MAINTAINERS
index 7969d09dff17..f3e4c1aa656e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10129,7 +10129,7 @@ F:	drivers/media/i2c/gc2145.c
 GATEWORKS SYSTEM CONTROLLER (GSC) DRIVER
 M:	Tim Harvey <tharvey@gateworks.com>
 S:	Maintained
-F:	Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
+F:	Documentation/devicetree/bindings/embedded-controller/gw,gsc.yaml
 F:	Documentation/hwmon/gsc-hwmon.rst
 F:	drivers/hwmon/gsc-hwmon.c
 F:	drivers/mfd/gateworks-gsc.c
@@ -23177,10 +23177,10 @@ F:	drivers/usb/misc/sisusbvga/
 SL28 CPLD MFD DRIVER
 M:	Michael Walle <mwalle@kernel.org>
 S:	Maintained
+F:	Documentation/devicetree/bindings/embedded-controller/kontron,sl28cpld.yaml
 F:	Documentation/devicetree/bindings/gpio/kontron,sl28cpld-gpio.yaml
 F:	Documentation/devicetree/bindings/hwmon/kontron,sl28cpld-hwmon.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml
-F:	Documentation/devicetree/bindings/mfd/kontron,sl28cpld.yaml
 F:	Documentation/devicetree/bindings/pwm/kontron,sl28cpld-pwm.yaml
 F:	Documentation/devicetree/bindings/watchdog/kontron,sl28cpld-wdt.yaml
 F:	drivers/gpio/gpio-sl28cpld.c
-- 
2.48.1


