Return-Path: <devicetree+bounces-67493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C32678C86A7
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3A601C22129
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 12:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1684F8BD;
	Fri, 17 May 2024 12:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iy2Q7w75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83254F8A3
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 12:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715950306; cv=none; b=dhp+fVXfWkITG1yc6XpjyAZwd4ZlXyfAEDK9RjSBRZrgmhdUECU4lS5TlxdeeH43FC3FaTS3oD1x5AsnUQu2QflPgIA2H4Gog0GXgfp1YntXOf9hOf2Qn3G6UYUFjnvc9+pXBabH7++NWz/vxysn482JvwAsz6udO0Nge2sDJKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715950306; c=relaxed/simple;
	bh=Vq4/ozJIACZOKOlrKWjGJ/ITZ67a1Onaw8acoBVl86E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SePH4cOEYwLADNRn3pCHxawoew1qLwdYw2cL0dyusWO8H/SQMi28GMLXhWXv8l6Erh+PwEvSSnDbcmYkmgDJF+PS7s3ylwpZfW/6Z3Ama7pQ0BoJTGyU+PbS7RJL7afS3nneaMy/NwEFYIUznLqWzFQUyRGQD0dHS3zNBG2xjw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iy2Q7w75; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so4734627a12.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 05:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715950303; x=1716555103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uBDeP9nwT+3vg7rh6Kfq9TwLIodJdwZEaPm8bRsiuNE=;
        b=Iy2Q7w75h/Zfv9p7KvFkCQVwK/J6wzRch4+kdxQJ1Ht/vZusif1zQ6jBYF2EFbvdGb
         krpTB0oSkXxDBFvEAwR1FZspXwdoKlBDOcHuFj3OWdmnPS2u/9+pcbwmz+M6TNeHFe+m
         GAHrlPOyATwOCDJ1Zlt0YJbI1pjizqRxcVXgBd1uUuyU8hxTVchRxV4J1gMKdpXBFhxS
         BD0gl8MNOema4TwFKZB9UNWBuT+obIxTviPLl/sJDgoh0Nu4QKirjmmSaX4KDwZHP9nm
         n63lNazZmn9HrHNyL79cfinCYGiZ+ef1+GQwtsei8uZMN1M7I8RfWy+Vv5tx9ZC/BoSR
         ypYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715950303; x=1716555103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uBDeP9nwT+3vg7rh6Kfq9TwLIodJdwZEaPm8bRsiuNE=;
        b=ixntMw85VREFyBZKj2+gbuDybFE8393rQvGD3V+/DWWhOB/ptua16QmfIXR+Zl3Cmp
         hb27+U4jnQQkippa3qKhNX2+dMvzVaawC1WJqdaxRQkqyUHOAoEUJqfqCDUr3xj792Vj
         bFIR4b6eUoR0jYbG/nD+T4b12HUok8+7X8I35CtmdY9e2ZQHVda332ZysmNR57GELUbH
         o2gN1Fj6Yyp6wmPNnm7HlC/+uJQK8/1PhWmQVeY/RZbwtpaXiGc+d+UlgYh6NPsUoR8X
         nOMRM0SoHyHW0WDO02UVo+zh92eVAPx1c8+Pk/Dj92Iw/9blt7OIOBMI+afRrKXD1uJk
         i9kw==
X-Forwarded-Encrypted: i=1; AJvYcCVDPw3wvI6ExacRFUq/78m2+Z4a2g1ruuvrN2Q9TAul+WpWtYR2b52wcvDGSi8QYxB9tHEG6bAF5ujujf0kRYK71I0AMmYzTMxn9w==
X-Gm-Message-State: AOJu0Yy8M8pFpdg9mN+/yd2OW5abUugTd2Kfb5Bmh2VIFg2EQyvsDvrL
	HhCW/Lnrg7ZvOxCQwczATClVgf1iF2XLh8Egg5ZhOevWuIOma33jXiI1P3L+q/M=
X-Google-Smtp-Source: AGHT+IH2rlo+iZOPkGsHzGODAy1kMGiRTqA99W8UoQQqxB5KaE7eFk+2sx7TdMoVT9m8zu7m5sMMHQ==
X-Received: by 2002:a50:cd41:0:b0:574:eca8:631c with SMTP id 4fb4d7f45d1cf-574eca865a6mr8447514a12.1.1715950302929;
        Fri, 17 May 2024 05:51:42 -0700 (PDT)
Received: from krzk-bin.. ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5735a2490casm10540527a12.32.2024.05.17.05.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 05:51:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: soc: bcm: document brcm,bcm2711-avs-monitor
Date: Fri, 17 May 2024 14:51:38 +0200
Message-ID: <20240517125138.53441-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document alreasdy used binding for Syscon / AVS monitor:
brcm,bcm2711-avs-monitor to fix dt_binding_check and dtbs_check warnings
like:

  brcm,avs-ro-thermal.example.dtb: /example-0/avs-monitor@7d5d2000: failed to match any schema with compatible: ['brcm,bcm2711-avs-monitor', 'syscon', 'simple-mfd']

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../soc/bcm/brcm,bcm2711-avs-monitor.yaml     | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2711-avs-monitor.yaml

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2711-avs-monitor.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2711-avs-monitor.yaml
new file mode 100644
index 000000000000..e02d9d7e7d9a
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2711-avs-monitor.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/bcm/brcm,bcm2711-avs-monitor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom AVS Monitor
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+
+properties:
+  compatible:
+    items:
+      - const: brcm,bcm2711-avs-monitor
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  thermal:
+    $ref: /schemas/thermal/brcm,avs-ro-thermal.yaml
+    description: Broadcom AVS ring oscillator thermal
+
+required:
+  - compatible
+  - reg
+  - thermal
+
+additionalProperties: false
+
+examples:
+  - |
+    avs-monitor@7d5d2000 {
+        compatible = "brcm,bcm2711-avs-monitor", "syscon", "simple-mfd";
+        reg = <0x7d5d2000 0xf00>;
+
+        thermal: thermal {
+            compatible = "brcm,bcm2711-thermal";
+            #thermal-sensor-cells = <0>;
+        };
+    };
+...
-- 
2.43.0


