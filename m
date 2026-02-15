Return-Path: <devicetree+bounces-265623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKFQO/f1kWl4ogEAu9opvQ
	(envelope-from <devicetree+bounces-265623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 17:36:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1F813F1A4
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 17:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D3862300292C
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 16:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF322EB5BA;
	Sun, 15 Feb 2026 16:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OOfBZVXA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F549257854
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 16:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771173362; cv=none; b=iHshhr4mVz7xRnfxtOxpvX/rBOuBo46e/i5VA8Z3KNDEtoIWZPV6Zh/53KJjUcjtw+sMUxuO5r7D8OHhN7I0JxTC+RtL+w+aozGxkKglw70jB9GM993qmjtT+BoNDdbWPY8q8H2AIJiMOyJKdtlOb9vC6dYXsSZDj9z76DbZKSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771173362; c=relaxed/simple;
	bh=63mkXh8wdgGy/5WBuOlGOaPWGf204xoM9SEF76Pp984=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Y7NB3bDxHn3Ty1wOn3dP7kHdRkdK/dhFxmF7/opCwZT5v+F23aVX3KOVZbLEiYqX2m/zaG53GlRn3JCPMEBPv1/CV/Wos/tVc9r2M7z6pQS3i5P5B510aOktm/AvAkXtSA6BrZ1WU5xVVvTxVUee6BfUCEwZZ1o90ESIY1z/lTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OOfBZVXA; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4359a302794so1622135f8f.1
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 08:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771173358; x=1771778158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rkgk08i2VDNmIlHOtwetmTzX3cu5OCSN90qqnNHKmCo=;
        b=OOfBZVXASsGoHvaHR1FjwJ2lvJOHoyotTVS4SwRmEeVtroWVmHJyQg3vTkN0O9Oy6S
         o0CjPH+DmpD55brSureqvtcmVlSR1oTNNKYsB1VqTpdKrYldrpvwtFzGDmHnvxOHMXer
         qlZP1FuKZlH4mku5wKPFuQDRzaGU5tBeIbY4p5ADSK3xp/1ZCGIsdOtqp7t4ZoBZDxB9
         pliAENpZsFkw0wiPeAiI8OyzY78J6VjVdAObgkyN7F5+woCJ+eT1+hbSwt7x50Qn/rN6
         bhl2jxmOdEsxqTHdOSPpVmJJXH3m2cl0qC8CvtmOLfM4ZF/gVbFWPDKOQFKkriMYKg4u
         DIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771173358; x=1771778158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rkgk08i2VDNmIlHOtwetmTzX3cu5OCSN90qqnNHKmCo=;
        b=sYfm0NAyEIZF/EuIQgthAyqtFTCVay8JuvsgF01n1YVkXUOUZamieMlGkLM3vli3wL
         B/8Glxc/fBrfyb36UtoUdUMfrgv4a/A9p3Yn6Q5rd2yLN2XIC1QCbKTlSdmcFFg3pf/B
         KIza570a7higebd4m6Lq6Q6PwC2oLViAjX9rVTYUwWUBrJxJiSBIynMpDeGDeGPDokSt
         iTUt/9oNvI4Li1PXSngua5FYqylT6FUiqUH/ygAnqHAX9mEG0k5nDJ03asCZq+cpvOS/
         nKJIW3YS4QVZBjhwOxWMV8cy30dA58B7HoOWNv5jVbd5SoLRUc2DgzJS0H4ltHP4riYh
         hkow==
X-Forwarded-Encrypted: i=1; AJvYcCWUZfR0JOLksTx1grcPTxwUIAXwq4PyHuho59CLMPjAD4T2qi6ja0FwrCa7zN3YfSU7B/KTYEWJHQnz@vger.kernel.org
X-Gm-Message-State: AOJu0YzKeRZSd6NxLxMi2YBooKXMEkEGA3PcM6QhkDN2aqT61LhAZ3pN
	+HQh6ctpRG+u5Oos0xdWPkK9VdRAsUkj0FwfMMDAVBbJj50EsHX8b20n
X-Gm-Gg: AZuq6aIFDSPGsR+nrsoqGEpg2Z6tlrFlwttG9fTsj7AvWH0ugymJ4VMnwzIT+yyH6I2
	DItwhnFyBN9G/zakwhFL12L0I8NPAo3BjbnlWr7NbqeiAMirt1niFL+991hDnuUhrZwFi6QN3sK
	qoqXAQuIWUb0XsK2WCITL+1ZyYFI48lWajqGAsXXV0qTmPRe7jsDC19x8c8Ifgt3VGbdyXXw3g3
	4EDum4hIx2N41U0YlSLxkOkw3TvbcGv10mcm+vc/TbtnyBFVc+kORL4NhcnX8dFa1Wal5OInxzN
	pItIAYoVnbheupJ0BHwi0QlM3pwrl0AS8Qj23o/wT1aeT5eDzfXOlEqdjINqqs5AcKAENgmXa0g
	f7fEb/QBp8CLYF98CHwPjKl06HM0rF4WNQdv0zMFdCB8urYEjOVIJg4H/mGWuodBQNbQgeLhqDG
	nb72asmgRn3tl+9osQHWpL86EAOE4pdKTapA==
X-Received: by 2002:a05:6000:2901:b0:435:7154:2a7 with SMTP id ffacd0b85a97d-4379db3411emr7986116f8f.6.1771173357710;
        Sun, 15 Feb 2026 08:35:57 -0800 (PST)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8209sm22085970f8f.30.2026.02.15.08.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 08:35:57 -0800 (PST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tali.perry1@gmail.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	openbmc@lists.ozlabs.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tomer Maimon <tmaimon77@gmail.com>
Subject: [PATCH v2] dt-bindings: hwmon: convert npcm750-pwm-fan to DT schema
Date: Sun, 15 Feb 2026 18:35:53 +0200
Message-Id: <20260215163553.1334475-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,roeck-us.net,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[google.com,lists.ozlabs.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265623-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.1.146.88:email,0.0.0.1:email,0.0.0.0:email,devicetree.org:url]
X-Rspamd-Queue-Id: 1B1F813F1A4
X-Rspamd-Action: no action

Convert the Nuvoton HWMON PWM and FAN controllers binding to schema
format.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---=0D
Addressed comments from:=0D
 - Rob Herring : https://www.spinics.net/lists/kernel/msg6047623.html=0D
=0D
Changes since version 1:=0D
 - Modify yaml file.=0D
 - Remove unnecessary symbols.=0D
 - Add items.=0D

 .../bindings/hwmon/npcm750-pwm-fan.txt        |  88 -----------
 .../hwmon/nuvoton,npcm750-pwm-fan.yaml        | 139 ++++++++++++++++++
 2 files changed, 139 insertions(+), 88 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan=
.txt
 create mode 100644 Documentation/devicetree/bindings/hwmon/nuvoton,npcm750=
-pwm-fan.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt b/=
Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt
deleted file mode 100644
index 18095ba87a5a..000000000000
--- a/Documentation/devicetree/bindings/hwmon/npcm750-pwm-fan.txt
+++ /dev/null
@@ -1,88 +0,0 @@
-Nuvoton NPCM PWM and Fan Tacho controller device
-
-The Nuvoton BMC NPCM7XX supports 8 Pulse-width modulation (PWM)
-controller outputs and 16 Fan tachometer controller inputs.
-
-The Nuvoton BMC NPCM8XX supports 12 Pulse-width modulation (PWM)
-controller outputs and 16 Fan tachometer controller inputs.
-
-Required properties for pwm-fan node
-- #address-cells : should be 1.
-- #size-cells	: should be 0.
-- compatible	: "nuvoton,npcm750-pwm-fan" for Poleg NPCM7XX.
-				: "nuvoton,npcm845-pwm-fan" for Arbel NPCM8XX.
-- reg			: specifies physical base address and size of the registers.
-- reg-names	: must contain:
-					* "pwm" for the PWM registers.
-					* "fan" for the Fan registers.
-- clocks		: phandle of reference clocks.
-- clock-names	: must contain
-					* "pwm" for PWM controller operating clock.
-					* "fan" for Fan controller operating clock.
-- interrupts	: contain the Fan interrupts with flags for falling edge.
-- pinctrl-names	: a pinctrl state named "default" must be defined.
-- pinctrl-0	: phandle referencing pin configuration of the PWM and Fan
-					controller ports.
-
-fan subnode format:
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-Under fan subnode can be upto 8 child nodes, each child node representing =
a fan.
-Each fan subnode must have one PWM channel and at least one Fan tach chann=
el.
-
-For PWM channel can be configured cooling-levels to create cooling device.
-Cooling device could be bound to a thermal zone for the thermal control.
-
-Required properties for each child node:
-- reg : specify the PWM output channel.
-	integer value in the range 0 through 7, that represent
-	the PWM channel number that used.
-
-- fan-tach-ch : specify the Fan tach input channel.
-		integer value in the range 0 through 15, that represent
-		the fan tach channel number that used.
-
-		At least one Fan tach input channel is required
-
-Optional property for each child node:
-- cooling-levels: PWM duty cycle values in a range from 0 to 255
-                  which correspond to thermal cooling states.
-
-Examples:
-
-pwm_fan:pwm-fan-controller@103000 {
-	#address-cells =3D <1>;
-	#size-cells =3D <0>;
-	compatible =3D "nuvoton,npcm750-pwm-fan";
-	reg =3D <0x103000 0x2000>,
-		<0x180000 0x8000>;
-	reg-names =3D "pwm", "fan";
-	clocks =3D <&clk NPCM7XX_CLK_APB3>,
-		<&clk NPCM7XX_CLK_APB4>;
-	clock-names =3D "pwm","fan";
-	interrupts =3D <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
-	pinctrl-names =3D "default";
-	pinctrl-0 =3D <&pwm0_pins &pwm1_pins &pwm2_pins
-			&fanin0_pins &fanin1_pins &fanin2_pins
-			&fanin3_pins &fanin4_pins>;
-	fan@0 {
-		reg =3D <0x00>;
-		fan-tach-ch =3D /bits/ 8 <0x00 0x01>;
-		cooling-levels =3D <127 255>;
-	};
-	fan@1 {
-		reg =3D <0x01>;
-		fan-tach-ch =3D /bits/ 8 <0x02 0x03>;
-	};
-	fan@2 {
-		reg =3D <0x02>;
-		fan-tach-ch =3D /bits/ 8 <0x04>;
-	};
-
-};
diff --git a/Documentation/devicetree/bindings/hwmon/nuvoton,npcm750-pwm-fa=
n.yaml b/Documentation/devicetree/bindings/hwmon/nuvoton,npcm750-pwm-fan.ya=
ml
new file mode 100644
index 000000000000..73464af3078e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/nuvoton,npcm750-pwm-fan.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/nuvoton,npcm750-pwm-fan.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton NPCM7xx/NPCM8xx PWM and Fan Tach Controller
+
+maintainers:
+  - Tomer Maimon <tmaimon77@gmail.com>
+
+description:
+  The NPCM7xx/NPCM8xx family includes a PWM and Fan Tachometer controller.
+  The controller provides up to 8 (NPCM7xx) or 12 (NPCM8xx) PWM channels a=
nd up
+  to 16 tachometer inputs. It is used for fan speed control and monitoring.
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,npcm750-pwm-fan
+      - nuvoton,npcm845-pwm-fan
+
+  reg:
+    maxItems: 2
+    description: Register addresses for PWM and Fan Tach units.
+
+  reg-names:
+    items:
+      - const: pwm
+      - const: fan
+
+  clocks:
+    maxItems: 2
+    description: Clocks for the PWM and Fan Tach modules.
+
+  clock-names:
+    items:
+      - const: pwm
+      - const: fan
+
+  interrupts:
+    description:
+      Contains the Fan interrupts with flags for falling edge.
+      For NPCM7XX, 8 interrupt lines are expected (one per PWM channel).
+      For NPCM8XX, 12 interrupt lines are expected (one per PWM channel).
+
+    minItems: 8
+    maxItems: 12
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^fan@[0-9a-f]+$":
+    type: object
+    $ref: fan-common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          Specify the PWM output channel. Integer value in the range 0-7 f=
or
+          NPCM7XX or 0-11 for NPCM8XX, representing the PWM channel number.
+
+        maximum: 11
+
+      fan-tach-ch:
+        $ref: /schemas/types.yaml#/definitions/uint8-array
+        description:
+          The tach channel(s) used for the fan.
+          Integer values in the range 0-15.
+
+        items:
+          maximum: 15
+
+      cooling-levels:
+        description:
+          PWM duty cycle values in a range from 0 to 255 which
+          correspond to thermal cooling states. This property enables
+          thermal zone integration for automatic fan speed control
+          based on temperature.
+
+        items:
+          maximum: 255
+
+    required:
+      - reg
+      - fan-tach-ch
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    pwm_fan: pwm-fan@103000 {
+        compatible =3D "nuvoton,npcm750-pwm-fan";
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        reg =3D <0x103000 0x2000>, <0x180000 0x8000>;
+        reg-names =3D "pwm", "fan";
+
+        clocks =3D <&clk NPCM7XX_CLK_APB3>, <&clk NPCM7XX_CLK_APB4>;
+        clock-names =3D "pwm", "fan";
+
+        interrupts =3D <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+        pinctrl-names =3D "default";
+        pinctrl-0 =3D <&pwm0_pins &fanin0_pins>;
+
+        fan@0 {
+            reg =3D <0>;
+            fan-tach-ch =3D <0 1>;
+            cooling-levels =3D <64 128 192 255>;
+        };
+
+        fan@1 {
+            reg =3D <1>;
+            fan-tach-ch =3D <2>;
+        };
+    };
--=20
2.34.1


