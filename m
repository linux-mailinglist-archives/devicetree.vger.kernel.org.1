Return-Path: <devicetree+bounces-249989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6BECE558F
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 19:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B0A8300BEDB
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 18:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27112238C29;
	Sun, 28 Dec 2025 18:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L/1iyM1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412AE2367DC
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 18:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766946216; cv=none; b=S1eeuN0QjtRA02akJKEv4480fR23fBfgjSucXrMyT3YecHBYdu4ywWUTABZJegaeRcl3IQpNfAFJMp1HcKPIB1EBA4or2mjOdc61xhvqbkaJqtev7mqQ1tcpKlS0uC3oIT3M8vcRYMYzyQhVoWZ9KMKyfTxkXCE67Y8neYyztjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766946216; c=relaxed/simple;
	bh=qnxj1dC/cCFhtpEx9uTCMc00ugysyCX2y8hqP+/0TCU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S9Ztbv84jtdoyy5pujOpnNkVbz45Bax1WXp1RUNMhq2IYBmb5mb1GuQz8o8gATbYiueIEQ12QYBPsWskY9NsWG+T30h2TrRLjgnuchrtViqrwwCR8Eaf5wo7d2mP6aG2xIp6BJQcbNtnu+BmS8SFUgGxJBJ+38jNhiZc4QFkBSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L/1iyM1y; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so4206191b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 10:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766946212; x=1767551012; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8J9+R8OyR5jrsym1MdOdINO4Sn7+ZiEPmIquYIfwATk=;
        b=L/1iyM1y81rNzdiAaEPs7Mg4WIWE+zpcuSDOrRmUaFXnY94o1l3d0puLyIekqi7oyW
         +I+ClxYWRUJVPCaUJ5gn/Alle6j4uWx6yUN5TO8QxzSXXtlX8LJcQwVALkb+/zT61KN2
         pOTzYvU0o2Pvbhm/ZfImt9ld79k7O2qax4AYOfSMCoogDlsW5rmVGpi6XDYPMxkQNRgI
         mzznq3p5oXrLIcWQeNQQSNw0QYpwtttK+lyHiaMm+lC4iu3zRbnURHFcV7te5aiAKOe3
         RwR0NDqR1mP+nLNfcOjfcsvDf9jukrLFWUioJZfLl50WZVbCXOmLJ1eIcAyDeKkcwXYl
         X18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766946212; x=1767551012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8J9+R8OyR5jrsym1MdOdINO4Sn7+ZiEPmIquYIfwATk=;
        b=L7UEZs7M1qewghAXqVlm5yYUmgFkxmAs9fI+XMBQJS+OH2HK+V8T8xVKCO+fC4jk+o
         anXM3La8EGV0C45p5IZaMvFvyGjmjv1staRvQQIjO06VlL6yFzNXfxtGf/i0Wq8sSyto
         1PKoCgyrR0SqJwUhHXM7+cbhjpzI06sByNET26hJzhSg0NOwOniN2hIvt4qAp0mnnPCk
         t0GDq+BxVJ1AyZt7Vu7YI/Bc1qr9KjIEFdn9Spjp6H92JHNb2Kfcw/IGOX6g+TVZcIIp
         dgJE8Zb0eRFdDCO7HyfnBtTjKN/8jlcVmHECazB3C6OYWsSXsgh+1AcmTWeTkuuEFIuI
         ++Zw==
X-Gm-Message-State: AOJu0Ywv9neXuzVamENeM8NMMmbAtfDHa0WskRSmFWvF0yYuVhnZifom
	TBpuLNnlIdGebciRBBiv7ZHVry91uPoLA+KJKuHASaLVeFMGiliy3JOM
X-Gm-Gg: AY/fxX7K9oD/5hLWPNDBs+NpfO/Guyvu6R1MsArSr5Umm1+YbW7WxadM9pYlXcKoWdI
	fZQlKQtMdeevUDtlNU4CRsnrJ35wfr7ExNoe/vJth3fjWZJKILJA52f8mIrb6/w4n1HwlVvTIKs
	fcMALXChJYGlm5jEJr2KcQAXwq/ItSk7bHOqeGdYnmBc/OiyRrgGY+6nIsSjQ7rukavnfI2VlOw
	ypFnej8V+ySUTv3heiXSfaBJ3FWhDJTGSHkPXAzBVtshWgYbhw73nyfD+HVrP1YGGbJOziIAnfr
	DtLUAP0W9w9seUsJUxGGIpNZUwSCrDQ53yTFzoluOweOZZL51LpbO2cP8ZkB0hm5sTQOvUITV6r
	M3rDrD5g8UaMVQcvBRV+wwuWa8tBip3or7EULBFwS4nF0+l/FB8Y1ymP3222/Ycqqjy9fOl+gUW
	d+rVC/sbACudPmFBEMiG+5xI/y7c3eCysyKcdh8FAdn08=
X-Google-Smtp-Source: AGHT+IFxu1X07rvxROoKTd47BW6KRbd9zLwIEqGQ6nrGR/rCPRoC8FEYxber7zuWsEXxprD0hpJ0EA==
X-Received: by 2002:a05:6a21:328c:b0:342:fa5:8b20 with SMTP id adf61e73a8af0-3769f9332a1mr27553338637.30.1766946212430;
        Sun, 28 Dec 2025 10:23:32 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f3d7sm27399695b3a.51.2025.12.28.10.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 10:23:32 -0800 (PST)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [RFC PATCH 2/2] dt-bindings: leds: common: Add led-instance property
Date: Mon, 29 Dec 2025 07:22:45 +1300
Message-ID: <20251228182252.1550173-3-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251228182252.1550173-1-professorjonny98@gmail.com>
References: <20251228182252.1550173-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Document the optional "led-instance" property for providing deterministic
LED naming when multiple LEDs share the same function and color.

Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../devicetree/bindings/leds/common.yaml      | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index f4e44b33f56d..0e9611662850 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -51,6 +51,33 @@ properties:
       needed, differing only with an ordinal number.
     $ref: /schemas/types.yaml#/definitions/uint32

+  led-instance:
+    description:
+      Optional instance identifier for deterministic LED naming when multiple
+      LEDs share the same function and color. Without this property, the LED
+      core appends numerical suffixes (_1, _2) based on registration order,
+      which is non-deterministic and breaks userspace automation.
+
+      The instance identifier becomes the third component in the LED name
+      using the format "function:color:instance" (or "color:function-N:instance"
+      when function-enumerator is present).
+
+      This property is only used with the modern function and color based naming
+      scheme. It is ignored when the deprecated "label" property is present, as
+      "label" already provides full control over the LED name.
+
+      Common use cases include multi-port network devices ("port0", "port1"),
+      multi-domain power indicators ("battery", "ac", "usb"), and system state
+      LEDs ("boot", "upgrade", "panic").
+
+      The identifier should be semantic (describes purpose), deterministic
+      (fixed in hardware description), and concise (under 32 characters).
+      Only alphanumeric characters, dashes, and underscores are allowed, and
+      the identifier must start with an alphanumeric character.
+    $ref: /schemas/types.yaml#/definitions/string
+    maxLength: 31
+    pattern: "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"
+
   label:
     description:
       The label for this LED. If omitted, the label is taken from the node name
@@ -320,4 +347,70 @@ examples:
         };
     };

+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/leds/common.h>
+
+    /* Example: 48-port network switch with deterministic port LEDs */
+    ethernet-leds {
+        compatible = "gpio-leds";
+
+        led-port0 {
+            function = LED_FUNCTION_LAN;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "port0";
+            gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:lan:port0 */
+        };
+
+        led-port1 {
+            function = LED_FUNCTION_LAN;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "port1";
+            gpios = <&gpio0 1 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:lan:port1 */
+        };
+
+        led-port47 {
+            function = LED_FUNCTION_LAN;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "port47";
+            gpios = <&gpio0 47 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:lan:port47 */
+        };
+    };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/leds/common.h>
+
+    /* Example: Multiple power domain LEDs */
+    power-leds {
+        compatible = "gpio-leds";
+
+        led-ac-power {
+            function = LED_FUNCTION_POWER;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "ac";
+            gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:power:ac */
+        };
+
+        led-battery-power {
+            function = LED_FUNCTION_POWER;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "battery";
+            gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:power:battery */
+        };
+
+        led-usbc-power {
+            function = LED_FUNCTION_POWER;
+            color = <LED_COLOR_ID_GREEN>;
+            led-instance = "usbc";
+            gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+            /* Result: /sys/class/leds/green:power:usbc */
+        };
+    };
+
 ...
--
2.43.0

