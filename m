Return-Path: <devicetree+bounces-237936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FA6C55E07
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 07:01:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DF7A3AEEBE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 06:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376972D73A3;
	Thu, 13 Nov 2025 06:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="wmJp/7/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779211A9FB5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763013667; cv=none; b=gg2M4qnCqx9A61sVZ8REs2rJR9avIZWSvdUUbmiBvLRs1A7VZ5YtYhkTs8Q9dpGBhVlILbIjGROQqvE/nytEbmSVee84poBzKIHGMVu+XcQ2J4sar/6Icg94pGgMOJFYmkyUQTLm0GMtTOZtPP0vEoKKd7dOZYBlXIgB2Go8zRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763013667; c=relaxed/simple;
	bh=kuOeGZFQT/f/0FhAGgtzbuu2gA5P5O9d1iMM6mlyYsk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QeP5Te1rby34D7jp3mCBVj15Ns1U8B0yMxJSLE3qIoKP8MKgafYMvr3GpnbQbNwEpQ3zPVGf7JyhsS2LyCCUTtEHRdhpVvAS4WDBJoQ4hCS2hdg4FHz+QevXwSezDX46DWyfMDjX3Ddk+c62wjyx11ipwybVr2zfkgbeo+cxc5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=wmJp/7/k; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-298287a26c3so4955455ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 22:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1763013665; x=1763618465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5oIGmmDI+hfaRP8t7dZerzB5+6Ar0oCioTjqpXWebhk=;
        b=wmJp/7/kVpElnTuNsEFi3sZoRtU103QSL8HIo2G5mmGzstU2w+bb9Y7Xi8CPi/xe2A
         LWIwqvzKUsaCaYmws+c6HtoVAp67EfZEDBVEDn60FYC0bmM50h3h+PAaBhotrf6MygyH
         SCW2kpgePSwn//9nCaQmToaWrAA8elS7Mq7jxJ00tl9AN26s5LwM5ETIqya/o9l3F0sv
         4IS7A+FaOjxtVgBbDQhWlvZCbbkSed4QaTLrbd//F5XRQucpL3J2zcRhA1nKJW/+OA9v
         vbzKWA7+zXFVc1AzPSwVmLUcIysSJNBQni+kwvu6nfm0lRXUFxwgL/BBp9uYypJ8Hhr8
         VbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763013665; x=1763618465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5oIGmmDI+hfaRP8t7dZerzB5+6Ar0oCioTjqpXWebhk=;
        b=EtYOxPT3/W34LoTGFQEpQKkVonRNss6zns+Yvj+ya9pdleV8oQqRwliWri3nTh//N5
         AeH4+//gdajP60u8bD8f43CoBaLovp6uEmmivsxM636Ll0Jlp6ifO9u8qmjMKlQ4+mIS
         41dYUPcmc+GgL0oX4htDEY3VTkKGPqhxqdjdgX71ELhmOFAxonPpsS7fDygOOQyS7A7G
         woWOxbKjvTgWXMyrTY4tZ+4mGPiadWGmSD6Mc/h/x5zSrGLC2rnGgGd+OMKVcUucjIsp
         2oUzyXvbmHnKa/NA4ZlUgsEw591n5XWdjddaPBLcD6HHGUbq9lU3OUkW3qZpW9xo8WkG
         8LYw==
X-Forwarded-Encrypted: i=1; AJvYcCV2ZT+I2B0jqJ78lwtHpO1lyKjd4nuu9hgNzuRDm5laDtgJQPjr8twFjqsl8cqmC5zNlGqGFnwKUKOq@vger.kernel.org
X-Gm-Message-State: AOJu0YwFX9I/swvAFHC+eUH3Gnnuh+Upw19GLK1+lUOPs5c+pTX3/LBd
	ymqayJdP6tfSJ+eWCjYkZD43jjQo8YhCc3gxxRH2DxCWb7NhwQ27WMvDLBmsf7mbww==
X-Gm-Gg: ASbGnct9SYWMA/tjvk3E1LieN4ZGh80qmJG2YJuGrEQMF5wcOnfdUqkOLP3RoI9639s
	k0VkX5BiirL8KsntL61bTbisA2OgUq1Cz/gnYhxSQ/aSSIDsblhE32b/dh0q2KUJ5mEGMNU77UI
	HSEiPwpHUvxje08yiu4uwB9Ffr+qOFrev8XBmIv6m1xCK6V5kX/M7qs3YIw0PCkK49MoCFWL6Jb
	sHv/S+JIY/fL+Nhp3aSly2Qfy3AhwJ/ZZwmQAAksx5f7qr9ObGF0GlD9NYNEi+hjLzBy0651F8e
	CtDl5w+eDWB3N8GTom5cnq/a+5Jvl2DNC4v8CtxpDr5PzL6IP7XbHr0GWkNv1TQpjK6PyQ14Ckp
	/Ve6px6kpZZMdamaJZk4UZqA1y8WX/BbUtrdi1n8m/hkqbsJBSJOr/xwsBBSm4jf0uxEYRSPtYT
	I7ks/8+0F/OM6uaptJC/i7e3tLw9RSdh0JdmWrR7f8eJip8bhjgjaafgOyp+n5IEda/JvMOWQ5o
	120V6GbE2J5fRSJ8UDxVJkU7jVwhPArHxY/MFY2lzYhE/4XVr38mDqbrCU=
X-Google-Smtp-Source: AGHT+IHl4CMHgMPnqQlqlMpLyBS3V9JYYqv6sC4byrdMlvvBtXLGwvPWMRRpG158Vi+Psllo/1LnVQ==
X-Received: by 2002:a17:903:2f88:b0:298:250b:a547 with SMTP id d9443c01a7336-2984ee2c611mr75838625ad.56.1763013664692;
        Wed, 12 Nov 2025 22:01:04 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-f289-5b0e-1295-0dbd.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:f289:5b0e:1295:dbd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2bf158sm11387535ad.91.2025.11.12.22.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 22:01:04 -0800 (PST)
From: daniel_peng@pegatron.corp-partner.google.com
X-Google-Original-From: Daniel_Peng@pegatron.corp-partner.google.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-input@vger.kernel.org
Cc: LKML <linux-kernel@vger.kernel.org>,
	Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech FT8112
Date: Thu, 13 Nov 2025 14:00:55 +0800
Message-Id: <20251113140004.v4.1.I894dde5015f4acad94cb5bada61e5811c5142395@changeid>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

The FocalTech FT8112 touch screen chip same as Ilitek ili2901 controller
has a reset gpio. The difference is that they have different
post_gpio_reset_on_delay_ms.
FocalTech FT8112 also uses 3.3V power supply.

Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
---

Changes in v4:
- Move change log of v3 under "---" correctly as below 4 items.

- Modified the subject description.
- Modified maintainers to myself of this binding file.
- Fixed the extra '>' on section of "interrupts = <15 IRQ_TYPE_LEVEL_LOW>;" and confirm command 'make dt_binding_check' correctly.
- Restored MAINTAINERS file.

 .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8112.yaml

diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
new file mode 100644
index 000000000000..197f30b14d45
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/focaltech,ft8112.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: FocalTech FT8112 touchscreen controller
+
+maintainers:
+  - Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
+
+description:
+  Supports the FocalTech FT8112 touchscreen controller.
+  This touchscreen controller uses the i2c-hid protocol with a reset GPIO.
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - focaltech,ft8112
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  panel: true
+
+  reset-gpios:
+    maxItems: 1
+
+  vcc33-supply: true
+
+  vccio-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - vcc33-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen@38 {
+        compatible = "focaltech,ft8112";
+        reg = <0x38>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+      };
+    };
-- 
2.34.1


