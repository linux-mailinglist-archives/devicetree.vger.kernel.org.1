Return-Path: <devicetree+bounces-225100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7ABBCA8E1
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 20:21:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F8211893718
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 18:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AB8224E4C3;
	Thu,  9 Oct 2025 18:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XzYVrdBX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD69723717F
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 18:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760034060; cv=none; b=oO+IYp/Jpo16sqmIa85QNLRw3lSwyFcU6k9bdpJGP4Nq4iwHnpVFYaZH9IbFNfk5Ok/ff3wz5pL8AK8+C9IHvFm55CHGEdDwQVlX9giJl4XjgJW76O/+d9G9lWPeC4jFrSThVrPYQSpd73hZjIccIi5ijxuSj9IDNH6Yzizl+H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760034060; c=relaxed/simple;
	bh=RaxdPKFJScVIlq0FW+7wQ/PS+0yalUqYWUt6pK/TZCA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nnqlI7HFDsTr3W00dc42EZi1kFLCMg9ABpOHVLR1nJHjLotwUUlTP4SWLWLNrEXPov9xFFYmKZiH016yo0V6pfwBVB5LGUUgn9XyZF7om0jbNPifSc0Jnjh3Y3IJFKKfk1LQ+Haf9DFHBymKxglBCjD3msXYiFpkdQ48nMBtSEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XzYVrdBX; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2698d47e776so9734685ad.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 11:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760034055; x=1760638855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JuUupcMDqphrT/DjTBoB8xePk/ppKSD6sZYPkh1mKYM=;
        b=XzYVrdBXuorPXq/k+1cTlIXPzuSmhQkWShVY6B7TwqHepul+6B9KgaS4zA4fAX58lu
         Yk1rbGupcXFrMkWgrg8qz0QeKp9S6BLRDDVCvq/UVc6tbYHIcR5+JTH3hs/e9rEyb8BG
         yQg8P8oo+LA3q+N2epyLCo2T3AgjxV4OvQ2zyEOirtFf6ohJjLjMKDLpL/kFszVdUEPX
         mbF85TF0kvyjvOVrHsmoC7oRVYdRSI1Ou8wmmeLd8fWIUBUeZKkrzX8g4Y9OsA9dtjGI
         b9EpGhZwmanMlxgdrSJ198mdaYZ3Y5DgmFrfDecXxTMfElbgYHEizllzH4DIpvDmPMjp
         HWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760034055; x=1760638855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuUupcMDqphrT/DjTBoB8xePk/ppKSD6sZYPkh1mKYM=;
        b=vRT1XAz3+hhcq8dkwjJ9YBSYUe0ud1nNXqocZSegvKosJMRJKhN8awJjRpbnHKolfS
         SkPWE+OlhqiPsLiyHQMIuP1YC9GmlUDgyFnv1SdrAcX1jz0767vtroPiy02YnrJPKnGW
         N6wkLfjwbjiqKVy58basLynCgbYth7GJU27c3Wa9Y+DFijbaT/FEbpElEujEMDuHeQpB
         PBNJOm0bVzrq8oKnaQvLc/wyHFd7wTRJ/MxshHtNPFeUNzoF3a62wIn4obTfyzkrfzEr
         H1Dz0DTTDkLAvKNsWmJIKlJ5drZ0CY1qrW7djQ2H269lAbAeaDttdlZacfTYn9enmnPK
         WfDA==
X-Forwarded-Encrypted: i=1; AJvYcCU6OEDJA/Rq/siddBE2ET1toomG7BzHLEiW+cGgxJNSBQOfcm6wkeQJD/y5UYfrh4CWLqhQUrDfdA1H@vger.kernel.org
X-Gm-Message-State: AOJu0YxsiH8NghNUZ9E5JBorVSAKaqqYbsUeO7cW4RFhdpT3K6NS1EeF
	rjMCZ/K4A19VOI4+Uw4mA37LRfUtHhjNaatYYr0zOIqdjlZDBVM8UEcK
X-Gm-Gg: ASbGncsExMf/wUPHxA61XqYahozPrG9ba7aAVtxETojDz+Xo2gwVyEpyyU4JWSGHevY
	gM7ZrBUZnjAc3EeJYPrSPpDa+HNqSQ3aJtWg17vITbu0V1iCEAdGLWDUd4C83X9qYkIWaQ9biuR
	Vtd9Knyv2w5sr1C5Dmu7VCcy/rj432MDxQM238YubHH5f44CWXbnywR+ACouZJmR8ZuRukK/fjJ
	bLgL5b7sgKG8hubyxj7SolSWyBvA0n6qbH7rztrQF6cYQIRmj5dobWnu17MD31gtGOGDAgSFp5b
	VOcJqZqc9EvATm/eXiKNqswxJgwFTmndKBxwM8VWs0glW26cOSbEzn5rnpb1UKTo5DDnIYU66AH
	0gtHQG76pNJ+hPGYhPmZMXx8YUUcikQI04oVTvgPZdXPCCrzhnLw0Dy/hXpiG8bXJn8w/Kn1pSv
	D83hc=
X-Google-Smtp-Source: AGHT+IGgNcD3ah2CRxFtlH8pUkDXkJqsJ/GB2E4Pz3mzzYygMfG9jZNJcBRETytQS/K9dWx7qxbemA==
X-Received: by 2002:a17:903:2305:b0:24f:8286:9e5d with SMTP id d9443c01a7336-290272cf65dmr109458155ad.26.1760034054549;
        Thu, 09 Oct 2025 11:20:54 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:4c64:860f:cf8e:9902:97e:45e2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f08998sm34794875ad.80.2025.10.09.11.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 11:20:54 -0700 (PDT)
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	davidm@egauge.net
Cc: ~lkcamp/patches@lists.sr.ht,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: add yaml file for maxim,max3421
Date: Thu,  9 Oct 2025 15:15:42 -0300
Message-ID: <20251009182046.185520-1-rodrigo.gobbi.7@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert maxim,max3421.txt to yaml format with a few extra properties like
maxim,vbus-en-pin, maxim,gpx-pin, reset pin and supplies. Also add a
maxim,max3421e compatible with a fallback, since the actually PN is with
the 'e' suffix.

Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
---
I've converted the txt into yaml with a few extra things as mentioned
in the commit msg. All of them were extracted from the datasheet and also
looking at the current state of the driver.

About the maintainer ref inside yaml, I'll quote the driver author:

Dear @David Mosberger, the binding file for this driver was not converted
to YAML format. This patch address this. I've noticed you were the original
driver author, so I`m "quoting" you at the maintainer ref inside yaml.
I would appreciate your comment or suggestion over this topic.

Tks and regards to all.
---
 .../devicetree/bindings/usb/maxim,3421.yaml   | 88 +++++++++++++++++++
 .../devicetree/bindings/usb/maxim,max3421.txt | 23 -----
 2 files changed, 88 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/maxim,3421.yaml
 delete mode 100644 Documentation/devicetree/bindings/usb/maxim,max3421.txt

diff --git a/Documentation/devicetree/bindings/usb/maxim,3421.yaml b/Documentation/devicetree/bindings/usb/maxim,3421.yaml
new file mode 100644
index 000000000000..bccb22be74ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/maxim,3421.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/maxim,3421.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MAXIM MAX3421e USB Peripheral/Host Controller
+
+maintainers:
+  - David Mosberger <davidm@egauge.net>
+
+description: |
+  The controller provides USB2.0 compliant with Full Speed or Low Speed when in
+  the host mode. At peripheral, it operates at Full Speed. At both cases, it
+  uses a SPI interface.
+  Datasheet at:
+    https://www.analog.com/media/en/technical-documentation/data-sheets/max3421e.pdf
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - maxim,max3421e
+          - const: maxim,max3421
+      - const: maxim,max3421
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  spi-max-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 26000000
+    description:
+      SPI interface that operates up to 26MHz in Hz.
+
+  maxim,vbus-en-pin:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      One of eight GPOUT pins to control external VBUS power and the polarity
+      of the active level. It's an array of GPIO number and the active level of it.
+    minItems: 2
+    maxItems: 2
+
+  maxim,gpx-pin:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: A property to define the behavior of the GPX pin, which is an
+      output that may be selected in a 4-way multiplexer between OPERATE(0),
+      VBUS_DETECT(1), BUSACT/INIRQ(2) and SOF(3) signals.
+    enum: [0, 1, 2, 3]
+    default: 0
+
+  reset-gpios:
+    description: Active low to clear all of the internal registers except for
+                 PINCTL (R17), USBCTL (R15), and SPI logic.
+
+  vdd-supply: true
+
+  vlogic-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - maxim,vbus-en-pin
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb@0 {
+          compatible = "maxim,max3421";
+          reg = <0>;
+          maxim,vbus-en-pin = <3 1>;
+          spi-max-frequency = <26000000>;
+          interrupt-parent = <&gpio>;
+          interrupts = <42>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/usb/maxim,max3421.txt b/Documentation/devicetree/bindings/usb/maxim,max3421.txt
deleted file mode 100644
index 90495b1aeec2..000000000000
--- a/Documentation/devicetree/bindings/usb/maxim,max3421.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Maxim Integrated SPI-based USB 2.0 host controller MAX3421E
-
-Required properties:
- - compatible: Should be "maxim,max3421"
- - spi-max-frequency: maximum frequency for this device must not exceed 26 MHz.
- - reg: chip select number to which this device is connected.
- - maxim,vbus-en-pin: <GPOUTx ACTIVE_LEVEL>
-   GPOUTx is the number (1-8) of the GPOUT pin of MAX3421E to drive Vbus.
-   ACTIVE_LEVEL is 0 or 1.
- - interrupts: the interrupt line description for the interrupt controller.
-   The driver configures MAX3421E for active low level triggered interrupts,
-   configure your interrupt line accordingly.
-
-Example:
-
-	usb@0 {
-		compatible = "maxim,max3421";
-		reg = <0>;
-		maxim,vbus-en-pin = <3 1>;
-		spi-max-frequency = <26000000>;
-		interrupt-parent = <&PIC>;
-		interrupts = <42>;
-	};
-- 
2.48.1


