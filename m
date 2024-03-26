Return-Path: <devicetree+bounces-53619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D20288CDA9
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B43792E445C
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 19:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D61A13D27B;
	Tue, 26 Mar 2024 19:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="BkupN6Yl"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC92913D26F
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 19:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483102; cv=none; b=dLnduL5I41WSMMWRgzXAll3qwnzMVm1DKhemcCYVqwImzsXq1psadzxDFmgxKWhuIQwm1u2cq5eR/sweZ7UqxV46PbQF4ukxN/IYjV9Zqopcv6T98/FTEXnfnqSMIPJXNfvpoJDQ68Ck/RczQToGkS5RBCsXo4wXrY0Q3lH5STg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483102; c=relaxed/simple;
	bh=M+sikU8CAkfAMgQyqfdEXCWhXnwwdaIfoiiwHGy9YSU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EzNC+lfGOd5HgAhXJyRzEd6UmHAWaDA+AJfqyLRO7eQ1G5shSbBJJSfwNbYMG57y6UfrrHNxbcPT/KxgzJcPFgYAVxbwse5GbS/oiu8kBTYe7hNppRBOD4Zr1Ux9XpEeYg9NvEH3FCoPDK93fm7OGM//B3CKAWk28mtMjdsM/c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=BkupN6Yl; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6E072E0C;
	Tue, 26 Mar 2024 20:57:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711483067;
	bh=M+sikU8CAkfAMgQyqfdEXCWhXnwwdaIfoiiwHGy9YSU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BkupN6YlJbApaOayA61ci01X95b6nNUw7bEmtYjIfrx8UFv23Q/6FyCR/VtccMb1x
	 qbQgTk4ofx28PKXSemGKPcJrI5Cs4uWYLou/AhMjmB5r1EowHcoB51mVlo3YPipHIw
	 DKKlsL4dfdmHhKU+67EZ3ASdj6OUoH9MduYF1/TI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2 1/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add gpio child node
Date: Tue, 26 Mar 2024 21:58:05 +0200
Message-ID: <20240326195807.15163-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike the other child nodes of the raspberrypi,bcm2835-firmware device,
the gpio child is documented in a legacy text-based binding in
gpio/raspberrypi,firmware-gpio.txt. This causes DT validation failures:

arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dtb: 'gpio' does not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#

Convert the binding to YAML and move it to
raspberrypi,bcm2835-firmware.yaml.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v1:

- Add minItems for gpio-line-names
---
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 30 +++++++++++++++++++
 .../gpio/raspberrypi,firmware-gpio.txt        | 30 -------------------
 2 files changed, 30 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 39e3c248f5b7..1f84407a73e4 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -46,6 +46,30 @@ properties:
       - compatible
       - "#clock-cells"
 
+  gpio:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-gpio
+
+      gpio-controller: true
+
+      "#gpio-cells":
+        const: 2
+        description:
+          The first cell is the pin number, and the second cell is used to
+          specify the gpio polarity (GPIO_ACTIVE_HIGH or GPIO_ACTIVE_LOW).
+
+      gpio-line-names:
+        minItems: 8
+
+    required:
+      - compatible
+      - gpio-controller
+      - "#gpio-cells"
+
   reset:
     type: object
     additionalProperties: false
@@ -96,6 +120,12 @@ examples:
             #clock-cells = <1>;
         };
 
+        expgpio: gpio {
+            compatible = "raspberrypi,firmware-gpio";
+            gpio-controller;
+            #gpio-cells = <2>;
+        };
+
         reset: reset {
             compatible = "raspberrypi,firmware-reset";
             #reset-cells = <1>;
diff --git a/Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt b/Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt
deleted file mode 100644
index ce97265e23ba..000000000000
--- a/Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Raspberry Pi GPIO expander
-
-The Raspberry Pi 3 GPIO expander is controlled by the VC4 firmware. The
-firmware exposes a mailbox interface that allows the ARM core to control the
-GPIO lines on the expander.
-
-The Raspberry Pi GPIO expander node must be a child node of the Raspberry Pi
-firmware node.
-
-Required properties:
-
-- compatible : Should be "raspberrypi,firmware-gpio"
-- gpio-controller : Marks the device node as a gpio controller
-- #gpio-cells : Should be two.  The first cell is the pin number, and
-  the second cell is used to specify the gpio polarity:
-  0 = active high
-  1 = active low
-
-Example:
-
-firmware: firmware-rpi {
-	compatible = "raspberrypi,bcm2835-firmware";
-	mboxes = <&mailbox>;
-
-	expgpio: gpio {
-		 compatible = "raspberrypi,firmware-gpio";
-		 gpio-controller;
-		 #gpio-cells = <2>;
-	 };
-};
-- 
Regards,

Laurent Pinchart


