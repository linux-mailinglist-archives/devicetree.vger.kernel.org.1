Return-Path: <devicetree+bounces-246955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 466EDCC1DDD
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45CF830216BB
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0483370F7;
	Tue, 16 Dec 2025 09:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6D5Uga7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845C8327BE4
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765878733; cv=none; b=aiO3z6qFQ8l6CZBRkpKRJGkYEf9FnKgfJjwD9whPrJ4OzlWGBjKi8AUsfMa2MjPa324yGyHlnUpBCc24SKLQKXY1uxxEBVGQeWTbdIFCYO4DYMRG+SXj9IqK1yMXaycKzh/PBQJ7iZdLEfC1qSRESpKBZfPkBYKU1IGkMBf+bkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765878733; c=relaxed/simple;
	bh=PTMIEJ3TsCivucCpSwsmBaneV0eVRQrFbJTB/XLkeG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qYO2lVBGGR1XKS3rYS4gTBn9ySmERlVhE6QGapwnyCNxVB4XSKRNjRMc6EOMfu0vz239QioZ4wSCBQHHFCcrkQFShvB4MfBCg2MtFPaFuVZSOsnvEdGp/lsAvY4cRxYQX8pfNMrhwIawDXbDmT4mN+2KCJfaFzrM4o16iW/Op3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6D5Uga7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3900C4CEF1;
	Tue, 16 Dec 2025 09:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765878733;
	bh=PTMIEJ3TsCivucCpSwsmBaneV0eVRQrFbJTB/XLkeG0=;
	h=From:Date:Subject:To:Cc:From;
	b=D6D5Uga76J4k6w1u3ag0t+jxaWyePSsHsKXhRrQD9ix2a02mkFNjqQGQvZYNApaW+
	 gNXbmurX0i9MJQ922+PSuGSDkGrzXf/0du81i83m/nF0X1fc0ed6imr1xNDQsQs/cM
	 vjRwzpCPH0ReROfngVyXi0qAoYD8K9opm3YV48XqQynlft6CtF5lg1youT0rs3wgle
	 F+qQbJjLvpVn0yus7HVuMSqg5ix9dqEUmSV98xdg/cHwRXcZUHq5WIYtL9QHGVINyp
	 zjqMatjW6i9RdX+xg7wZll4owjjVlhAO4+w3EUgwPhH1soPMor0WkSCbk1ZaboeRP8
	 qB0bHRZZ5ODKQ==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 16 Dec 2025 10:52:10 +0100
Subject: [PATCH] dt-bindings: Updates Linus Walleij's mail address
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251216-maintainers-dt-v1-1-0b5ab102c9bb@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI0Mz3dzEzLwSIE4tKtZNKdE1TEkyMDME4uQkEyWgpoKi1LTMCrCB0bG
 1tQAwMiQlYAAAAA==
X-Change-ID: 20251216-maintainers-dt-1db061b06cb4
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3

My name is stamped into maintainership for a big slew of DT
bindings. Now that it is changing, switch it over to my
kernel.org mail address, which will hopefully be stable for the
rest of my life.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
DT maintainers: please funnel this as a fix through the DT
binding tree.
---
 Documentation/devicetree/bindings/arm/arm,integrator.yaml               | 2 +-
 Documentation/devicetree/bindings/arm/arm,realview.yaml                 | 2 +-
 Documentation/devicetree/bindings/arm/arm,scu.yaml                      | 2 +-
 Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml         | 2 +-
 Documentation/devicetree/bindings/arm/arm,versatile.yaml                | 2 +-
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml            | 2 +-
 Documentation/devicetree/bindings/arm/gemini.yaml                       | 2 +-
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml                 | 2 +-
 Documentation/devicetree/bindings/arm/ux500.yaml                        | 2 +-
 Documentation/devicetree/bindings/ata/ata-generic.yaml                  | 2 +-
 Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml   | 2 +-
 Documentation/devicetree/bindings/ata/faraday,ftide010.yaml             | 2 +-
 Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml   | 2 +-
 Documentation/devicetree/bindings/ata/pata-common.yaml                  | 2 +-
 Documentation/devicetree/bindings/ata/sata-common.yaml                  | 2 +-
 Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml     | 2 +-
 Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml      | 2 +-
 Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml       | 2 +-
 Documentation/devicetree/bindings/display/dsi-controller.yaml           | 2 +-
 Documentation/devicetree/bindings/display/faraday,tve200.yaml           | 2 +-
 Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml   | 2 +-
 .../devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml      | 2 +-
 Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml     | 2 +-
 Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml    | 2 +-
 Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml | 2 +-
 Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml | 2 +-
 Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml    | 2 +-
 Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml     | 2 +-
 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml          | 2 +-
 Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml         | 2 +-
 Documentation/devicetree/bindings/display/ste,mcde.yaml                 | 2 +-
 Documentation/devicetree/bindings/dma/stericsson,dma40.yaml             | 2 +-
 Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml                | 2 +-
 .../bindings/firmware/intel,ixp4xx-network-processing-engine.yaml       | 2 +-
 Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml                | 2 +-
 Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml           | 2 +-
 Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml        | 2 +-
 Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml                 | 2 +-
 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml                   | 2 +-
 Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml           | 2 +-
 Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml                   | 2 +-
 Documentation/devicetree/bindings/gpio/pl061-gpio.yaml                  | 2 +-
 Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml             | 2 +-
 Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml               | 2 +-
 Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml             | 2 +-
 Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml            | 2 +-
 Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml            | 2 +-
 Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml               | 2 +-
 Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml           | 2 +-
 Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml          | 2 +-
 Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml | 2 +-
 Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml         | 2 +-
 Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml         | 2 +-
 .../devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml        | 2 +-
 Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml   | 2 +-
 Documentation/devicetree/bindings/iio/st,st-sensors.yaml                | 2 +-
 Documentation/devicetree/bindings/input/atmel,maxtouch.yaml             | 2 +-
 .../devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml       | 2 +-
 .../devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml       | 2 +-
 Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml  | 2 +-
 Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml  | 2 +-
 .../bindings/interrupt-controller/arm,versatile-fpga-irq.yaml           | 2 +-
 .../devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml     | 2 +-
 .../bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml           | 2 +-
 Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml    | 2 +-
 Documentation/devicetree/bindings/leds/register-bit-led.yaml            | 2 +-
 Documentation/devicetree/bindings/leds/regulator-led.yaml               | 2 +-
 Documentation/devicetree/bindings/leds/richtek,rt8515.yaml              | 2 +-
 .../memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml       | 2 +-
 .../memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml     | 2 +-
 Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml     | 2 +-
 Documentation/devicetree/bindings/mfd/st,stmpe.yaml                     | 2 +-
 Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml            | 2 +-
 Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml      | 2 +-
 .../devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml        | 2 +-
 Documentation/devicetree/bindings/mmc/arm,pl18x.yaml                    | 2 +-
 .../devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml      | 2 +-
 Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml       | 2 +-
 Documentation/devicetree/bindings/mtd/partitions/seama.yaml             | 2 +-
 Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml     | 2 +-
 Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml      | 2 +-
 Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml            | 2 +-
 Documentation/devicetree/bindings/net/dsa/realtek.yaml                  | 2 +-
 Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml          | 2 +-
 Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml       | 2 +-
 Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml        | 2 +-
 Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml             | 2 +-
 Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml             | 2 +-
 Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml             | 2 +-
 Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml               | 2 +-
 Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml              | 2 +-
 Documentation/devicetree/bindings/pinctrl/pinctrl.yaml                  | 2 +-
 Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml              | 2 +-
 Documentation/devicetree/bindings/power/supply/samsung,battery.yaml     | 2 +-
 Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml             | 2 +-
 Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml             | 2 +-
 Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml   | 2 +-
 Documentation/devicetree/bindings/spi/spi-pl022.yaml                    | 2 +-
 Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml           | 2 +-
 Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml         | 2 +-
 Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml             | 2 +-
 Documentation/devicetree/bindings/usb/faraday,fotg210.yaml              | 2 +-
 Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml             | 2 +-
 Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml        | 2 +-
 Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml           | 2 +-
 105 files changed, 105 insertions(+), 105 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,integrator.yaml b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
index 1bdbd1b7ee38..8fe22185a337 100644
--- a/Documentation/devicetree/bindings/arm/arm,integrator.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Integrator Boards
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |+
   These were the first ARM platforms officially supported by ARM Ltd.
diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
index 3c5f1688dbd7..0b3133ecddac 100644
--- a/Documentation/devicetree/bindings/arm/arm,realview.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM RealView Boards
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |+
   The ARM RealView series of reference designs were built to explore the Arm11,
diff --git a/Documentation/devicetree/bindings/arm/arm,scu.yaml b/Documentation/devicetree/bindings/arm/arm,scu.yaml
index dae2aa27e641..f735b7fb8e1c 100644
--- a/Documentation/devicetree/bindings/arm/arm,scu.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,scu.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Snoop Control Unit (SCU)
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   As part of the MPCore complex, Cortex-A5 and Cortex-A9 are provided
diff --git a/Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml b/Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml
index 3b060c36b90c..e72dc45c1afa 100644
--- a/Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Arm Versatile system registers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   This is a system control registers block, providing multiple low level
diff --git a/Documentation/devicetree/bindings/arm/arm,versatile.yaml b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
index 7a3caf6af200..c777e455d038 100644
--- a/Documentation/devicetree/bindings/arm/arm,versatile.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,versatile.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Versatile Boards
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |+
   The ARM Versatile boards are two variants of ARM926EJ-S evaluation boards
diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 4cdca5320544..6430218ba1ce 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -8,7 +8,7 @@ title: ARM Versatile Express and Juno Boards
 
 maintainers:
   - Sudeep Holla <sudeep.holla@arm.com>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |+
   ARM's Versatile Express platform were built as reference designs for exploring
diff --git a/Documentation/devicetree/bindings/arm/gemini.yaml b/Documentation/devicetree/bindings/arm/gemini.yaml
index f6a0b675830f..fc092962ab56 100644
--- a/Documentation/devicetree/bindings/arm/gemini.yaml
+++ b/Documentation/devicetree/bindings/arm/gemini.yaml
@@ -20,7 +20,7 @@ description: |
   Many of the IP blocks used in the SoC comes from Faraday Technology.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   $nodename:
diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index b7b430896596..0f1bf634a98a 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   $nodename:
diff --git a/Documentation/devicetree/bindings/arm/ux500.yaml b/Documentation/devicetree/bindings/arm/ux500.yaml
index b42d20fa4359..3a8611e5786e 100644
--- a/Documentation/devicetree/bindings/arm/ux500.yaml
+++ b/Documentation/devicetree/bindings/arm/ux500.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Ux500 platforms
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   $nodename:
diff --git a/Documentation/devicetree/bindings/ata/ata-generic.yaml b/Documentation/devicetree/bindings/ata/ata-generic.yaml
index 0697927f3d7e..9da341ea091e 100644
--- a/Documentation/devicetree/bindings/ata/ata-generic.yaml
+++ b/Documentation/devicetree/bindings/ata/ata-generic.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Generic Parallel ATA Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   Generic Parallel ATA controllers supporting PIO modes only.
diff --git a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
index 529093666508..66de6d4769c1 100644
--- a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
+++ b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cortina Systems Gemini SATA Bridge
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
     The Gemini SATA bridge in a SoC-internal PATA to SATA bridge that
diff --git a/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml b/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml
index fa16f3767c6a..32e11d8a0a3b 100644
--- a/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml
+++ b/Documentation/devicetree/bindings/ata/faraday,ftide010.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTIDE010 PATA controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This controller is the first Faraday IDE interface block, used in the
diff --git a/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml b/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml
index 378692010c56..894a8b9eb910 100644
--- a/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml
+++ b/Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx CompactFlash Card Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The IXP4xx network processors have a CompactFlash interface that presents
diff --git a/Documentation/devicetree/bindings/ata/pata-common.yaml b/Documentation/devicetree/bindings/ata/pata-common.yaml
index 4e867dd4d402..cee4bb7eb0b9 100644
--- a/Documentation/devicetree/bindings/ata/pata-common.yaml
+++ b/Documentation/devicetree/bindings/ata/pata-common.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Common Properties for Parallel AT attachment (PATA) controllers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This document defines device tree properties common to most Parallel
diff --git a/Documentation/devicetree/bindings/ata/sata-common.yaml b/Documentation/devicetree/bindings/ata/sata-common.yaml
index 58c9342b9925..667f48c33195 100644
--- a/Documentation/devicetree/bindings/ata/sata-common.yaml
+++ b/Documentation/devicetree/bindings/ata/sata-common.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Common Properties for Serial AT attachment (SATA) controllers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This document defines device tree properties common to most Serial
diff --git a/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml b/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
index 439f7b811a94..51d68a778b5c 100644
--- a/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Versatile Character LCD
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Rob Herring <robh@kernel.org>
 
 description:
diff --git a/Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml b/Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml
index 2150307219a0..4ebfa5a8d524 100644
--- a/Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml
+++ b/Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml
@@ -8,7 +8,7 @@ title: ST-Ericsson DB8500 (U8500) clocks
 
 maintainers:
   - Ulf Hansson <ulf.hansson@linaro.org>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: While named "U8500 clocks" these clocks are inside the
   DB8500 digital baseband system-on-chip and its siblings such as
diff --git a/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
index a4006237aa89..fd20b8197207 100644
--- a/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx cryptographic engine
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Intel IXP4xx cryptographic engine makes use of the IXP4xx NPE
diff --git a/Documentation/devicetree/bindings/display/dsi-controller.yaml b/Documentation/devicetree/bindings/display/dsi-controller.yaml
index bb4d6e9e7d0c..850b86fe03cc 100644
--- a/Documentation/devicetree/bindings/display/dsi-controller.yaml
+++ b/Documentation/devicetree/bindings/display/dsi-controller.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Common Properties for DSI Display Panels
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This document defines device tree properties common to DSI, Display
diff --git a/Documentation/devicetree/bindings/display/faraday,tve200.yaml b/Documentation/devicetree/bindings/display/faraday,tve200.yaml
index e2ee77767321..b09628b69177 100644
--- a/Documentation/devicetree/bindings/display/faraday,tve200.yaml
+++ b/Documentation/devicetree/bindings/display/faraday,tve200.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday TV Encoder TVE200
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml b/Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml
index 4ad484f09ba3..fc04558fcc8d 100644
--- a/Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml
+++ b/Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Arm RTSM Virtual Platforms Display
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml b/Documentation/devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml
index c9958f824d9a..b6c18e7283cd 100644
--- a/Documentation/devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml
+++ b/Documentation/devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Versatile TFT Panels
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   These panels are connected to the daughterboards found on the
diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
index 44423465f6e3..4bdc33d12306 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Ilitek ILI9322 TFT panel driver with SPI control bus
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This is a driver for 320x240 TFT panels, accepting a variety of input
diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index bb50fd5506c3..b39fd0c5a48a 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Novatek NT35510-based display panels
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
index 7ce8540551f9..74c2a617c2ff 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
@@ -11,7 +11,7 @@ description: The LMS380KF01 is a 480x800 DPI display panel from Samsung Mobile
   used with internal or external backlight control.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
index 9363032883de..4cecf502a150 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
@@ -10,7 +10,7 @@ description: The datasheet claims this is based around a display controller
   named DB7430 with a separate backlight controller.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml
index 2af5bc47323f..0872476a8ac9 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Samsung S6D16D0 4" 864x480 AMOLED panel
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
index fd778a20f760..64fa086730b0 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
@@ -12,7 +12,7 @@ description: The Sony ACX424AKP and ACX424AKM are panels built around
   AKP.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
index 5c5a3b519e31..fc722f706ad7 100644
--- a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Texas Instruments NSPIRE Display Panels
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: panel-common.yaml#
diff --git a/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml b/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
index 99db268eb9b3..e5f3108cde5a 100644
--- a/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
+++ b/Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: TPO TPG110 Panel
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Thierry Reding <thierry.reding@gmail.com>
 
 description: |+
diff --git a/Documentation/devicetree/bindings/display/ste,mcde.yaml b/Documentation/devicetree/bindings/display/ste,mcde.yaml
index 564ea845c82e..7a12d0b817e6 100644
--- a/Documentation/devicetree/bindings/display/ste,mcde.yaml
+++ b/Documentation/devicetree/bindings/display/ste,mcde.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ST-Ericsson Multi Channel Display Engine MCDE
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml b/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
index 8b42d9880400..607da11e7baa 100644
--- a/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
+++ b/Documentation/devicetree/bindings/dma/stericsson,dma40.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ST-Ericsson DMA40 DMA Engine
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: dma-controller.yaml#
diff --git a/Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml b/Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml
index ef6a246a1337..bff3fd5f7f4e 100644
--- a/Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml
+++ b/Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Fairchild Semiconductor FSA880, FSA9480 and compatibles
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The FSA880 and FSA9480 are USB port accessory detectors and switches.
diff --git a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
index 50f1f08744a1..4d66ef483522 100644
--- a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
+++ b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx Network Processing Engine
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   On the IXP4xx SoCs, the Network Processing Engine (NPE) is a small
diff --git a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
index 089166089498..c34b86bb7f6f 100644
--- a/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
+++ b/Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml
@@ -8,7 +8,7 @@ title: Broadcom BCM4751 family GNSS Receiver
 
 maintainers:
   - Johan Hovold <johan@kernel.org>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   Broadcom GPS chips can be used over the UART or I2C bus. The UART
diff --git a/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml b/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
index 640da5b9b0cc..3a6a47f12982 100644
--- a/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
+++ b/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTGPIO010 GPIO Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml b/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
index 40d0be31e200..fa0148758b4b 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
@@ -8,7 +8,7 @@ title: Common GPIO lines
 
 maintainers:
   - Bartosz Golaszewski <brgl@bgdev.pl>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   Pay attention to using proper GPIO flag (e.g. GPIO_ACTIVE_LOW) for the GPIOs
diff --git a/Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml b/Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml
index 3a1079d6ee20..ebdb7ee5b790 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: EP93xx GPIO controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Bartosz Golaszewski <brgl@bgdev.pl>
   - Nikita Shubin <nikita.shubin@maquefel.me>
 
diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index b4d55bf6a285..ee5d5d25ae82 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Generic MMIO GPIO
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Bartosz Golaszewski <brgl@bgdev.pl>
 
 description:
diff --git a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
index bfcb1f364c3a..2a980c0ed86f 100644
--- a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
@@ -22,7 +22,7 @@ description: |
   and this can be enabled by a special flag.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml b/Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml
index 65155bb701a9..7f420b9c0480 100644
--- a/Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Marvell PXA GPIO controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Bartosz Golaszewski <bgolaszewski@baylibre.com>
   - Rob Herring <robh@kernel.org>
 
diff --git a/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml b/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml
index c51e10680c0a..4d970e55104b 100644
--- a/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/pl061-gpio.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM PL061 GPIO controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Rob Herring <robh@kernel.org>
 
 # We need a select here so we don't match all nodes with 'arm,primecell'
diff --git a/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml b/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
index b3e8951959b5..40b4a7551449 100644
--- a/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
@@ -12,7 +12,7 @@ description:
   with pinctrl-nomadik.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   $nodename:
diff --git a/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml b/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
index 4555f1644a4d..66dd602e797d 100644
--- a/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml
@@ -14,7 +14,7 @@ description:
   GPIO portions of these expanders.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml b/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
index dc8bc4c6df34..efd10bcfb082 100644
--- a/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
@@ -6,7 +6,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NTC thermistor temperature sensors
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   Thermistors with negative temperature coefficient (NTC) are resistors that
diff --git a/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml b/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml
index 6971ecb314eb..d97b0e698477 100644
--- a/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml
+++ b/Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Winbond W83781 and compatible hardware monitor IC
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml b/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
index e58465d1b0c8..26026dfd788a 100644
--- a/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
+++ b/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: I2C Controller on ARM Ltd development platforms
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: /schemas/i2c/i2c-controller.yaml#
diff --git a/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
index 012402debfeb..63a459c63f6a 100644
--- a/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
@@ -12,7 +12,7 @@ description: The Nomadik I2C host controller began its life in the ST
   DB8500 after the merge of these two companies wireless divisions.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 # Need a custom select here or 'arm,primecell' will match on lots of nodes
 select:
diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
index 85c9537f1f02..c1387e02eb82 100644
--- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Bosch BMA255 and Similar Accelerometers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Stephan Gerhold <stephan@gerhold.net>
 
 description:
diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
index 58ea1ca4a5ee..c978c3a3e31a 100644
--- a/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm's PM8xxx voltage XOADC
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Qualcomm PM8xxx PMICs contain a HK/XO ADC (Housekeeping/Crystal
diff --git a/Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml b/Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml
index f3242dc0e7e6..3a307ac50aa7 100644
--- a/Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml
+++ b/Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Invensense MPU-3050 Gyroscope
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml b/Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml
index c63b79c3351b..01376c386a03 100644
--- a/Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml
+++ b/Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml
@@ -8,7 +8,7 @@ title:
   Capella Microsystems CM3605 Ambient Light and Short Distance Proximity Sensor
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Kevin Tsai <ktsai@capellamicro.com>
 
 description: |
diff --git a/Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml b/Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml
index f8a932be0d10..99bddf31cbed 100644
--- a/Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml
+++ b/Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Sharp GP2AP002A00F and GP2AP002S00F proximity and ambient light sensors
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   Proximity and ambient light sensor with IR LED for the proximity
diff --git a/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml b/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml
index cefb70def188..f6b4d9874190 100644
--- a/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml
+++ b/Documentation/devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Asahi Kasei AK8974 magnetometer sensor
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml b/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml
index 877226e9219b..5cbf60f3b08b 100644
--- a/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml
+++ b/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Yamaha YAS530 family of magnetometer sensors
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The Yamaha YAS530 magnetometers is a line of 3-axis magnetometers
diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
index e955eb8e8797..a1a958215cdb 100644
--- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
+++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
@@ -14,7 +14,7 @@ description: The STMicroelectronics sensor devices are pretty straight-forward
 
 maintainers:
   - Denis Ciocca <denis.ciocca@st.com>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
index d79b254f1cde..9bf07acea599 100644
--- a/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
+++ b/Documentation/devicetree/bindings/input/atmel,maxtouch.yaml
@@ -8,7 +8,7 @@ title: Atmel maXTouch touchscreen/touchpad
 
 maintainers:
   - Nick Dyer <nick@shmanahar.org>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   Atmel maXTouch touchscreen or touchpads such as the mXT244
diff --git a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
index 86a6d18f952a..afeab49a9544 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cypress CY8CTMA140 series touchscreen controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: touchscreen.yaml#
diff --git a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
index 4dfbb93678b5..a0b8c12977a1 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
@@ -12,7 +12,7 @@ description: The Cypress CY8CTMA340 series (also known as "CYTTSP" after
 
 maintainers:
   - Javier Martinez Canillas <javier@dowhile0.org>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: touchscreen.yaml#
diff --git a/Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml b/Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml
index 90ebd4f8354c..a8a93f755458 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Melfas MMS114 family touchscreen controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: touchscreen.yaml#
diff --git a/Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml b/Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml
index 3f663ce3e44e..f1ce837b16df 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml
@@ -12,7 +12,7 @@ description: The Zinitix BT4xx and BT5xx series of touchscreen controllers
 
 maintainers:
   - Michael Srba <Michael.Srba@seznam.cz>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: touchscreen.yaml#
diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,versatile-fpga-irq.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,versatile-fpga-irq.yaml
index 8d581b3aac3a..42ab873665e1 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,versatile-fpga-irq.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,versatile-fpga-irq.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Versatile FPGA IRQ Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   One or more FPGA IRQ controllers can be synthesized in an ARM reference board
diff --git a/Documentation/devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml b/Documentation/devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml
index 980e5c45f25b..e6495acea038 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml
@@ -6,7 +6,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTINTC010 interrupt controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   This interrupt controller is a stock IP block from Faraday Technology found
diff --git a/Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml b/Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml
index a02a6b5af205..c375e08ba410 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx XScale Networking Processors Interrupt Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This interrupt controller is found in the Intel IXP4xx processors.
diff --git a/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
index 73fa59e62181..e7207eb26584 100644
--- a/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
+++ b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Kinetic Technologies KTD253 and KTD259 one-wire backlight
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Kinetic Technologies KTD253 and KTD259 are white LED backlights
diff --git a/Documentation/devicetree/bindings/leds/register-bit-led.yaml b/Documentation/devicetree/bindings/leds/register-bit-led.yaml
index 20930d327ae9..a6bafc96bd0c 100644
--- a/Documentation/devicetree/bindings/leds/register-bit-led.yaml
+++ b/Documentation/devicetree/bindings/leds/register-bit-led.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Register Bit LEDs
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |+
   Register bit leds are used with syscon multifunctional devices where single
diff --git a/Documentation/devicetree/bindings/leds/regulator-led.yaml b/Documentation/devicetree/bindings/leds/regulator-led.yaml
index 4ef7b96e9a08..75ee87d4a786 100644
--- a/Documentation/devicetree/bindings/leds/regulator-led.yaml
+++ b/Documentation/devicetree/bindings/leds/regulator-led.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Regulator LEDs
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   Regulator LEDs are powered by a single regulator such that they can
diff --git a/Documentation/devicetree/bindings/leds/richtek,rt8515.yaml b/Documentation/devicetree/bindings/leds/richtek,rt8515.yaml
index 68c328eec03b..0356371a6b01 100644
--- a/Documentation/devicetree/bindings/leds/richtek,rt8515.yaml
+++ b/Documentation/devicetree/bindings/leds/richtek,rt8515.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Richtek RT8515 1.5A dual channel LED driver
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Richtek RT8515 is a dual channel (two mode) LED driver that
diff --git a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml
index 3049d6bb0b1f..2a4bf905a369 100644
--- a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml
@@ -12,7 +12,7 @@ description: |
   including IXP42x, IXP43x, IXP45x and IXP46x.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   $nodename:
diff --git a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
index d1479a7b9c8d..020fa49c3454 100644
--- a/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml
@@ -12,7 +12,7 @@ description:
   including IXP42x, IXP43x, IXP45x and IXP46x.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   intel,ixp4xx-eb-t1:
diff --git a/Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml b/Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml
index 46b164ae0831..7f3b1b77293c 100644
--- a/Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Arm Ltd Developer Platforms System Controllers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The Arm Ltd Integrator, Realview, and Versatile families of developer
diff --git a/Documentation/devicetree/bindings/mfd/st,stmpe.yaml b/Documentation/devicetree/bindings/mfd/st,stmpe.yaml
index b77cc3f3075d..df43878fbe18 100644
--- a/Documentation/devicetree/bindings/mfd/st,stmpe.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stmpe.yaml
@@ -12,7 +12,7 @@ description: STMicroelectronics Port Expander (STMPE) is a series of slow
   peripherals connected to SPI or I2C.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
diff --git a/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml b/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
index ce5e845ab5c5..0fdfbfdfe88a 100644
--- a/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
+++ b/Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ST-Ericsson Analog Baseband AB8500 and AB8505
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   the AB8500 "Analog Baseband" is the mixed-signals integrated circuit
diff --git a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
index d6c13779d44e..4edd4a3bab88 100644
--- a/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
+++ b/Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ST-Ericsson DB8500 PRCMU - Power Reset and Control Management Unit
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The DB8500 Power Reset and Control Management Unit is an XP70 8-bit
diff --git a/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml b/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
index aab89946b04f..1198d87d0ab6 100644
--- a/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
+++ b/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx AHB Queue Manager
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The IXP4xx AHB Queue Manager maintains queues as circular buffers in
diff --git a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
index 8f62e2c7fa64..f90fd73904a2 100644
--- a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
+++ b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM PrimeCell MultiMedia Card Interface (MMCI) PL180 and PL181
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Ulf Hansson <ulf.hansson@linaro.org>
 
 description:
diff --git a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml
index 97618847ee35..e9b1a6869910 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM Firmware Suite (AFS) Partitions
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 select: false
 
diff --git a/Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml b/Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml
index ba7445cd69e8..e3978d2bc056 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml
@@ -14,7 +14,7 @@ description: The FLASH Image System (FIS) directory is a flash description
     32 KB in size.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 select: false
 
diff --git a/Documentation/devicetree/bindings/mtd/partitions/seama.yaml b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
index 4c1cbf43e81a..4af185204b4b 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
@@ -18,7 +18,7 @@ allOf:
   - $ref: partition.yaml#
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
index 3c410cadff23..95501e858e6f 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Broadcom Bluetooth Chips
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   This binding describes Broadcom UART-attached bluetooth chips.
diff --git a/Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml b/Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml
index a930358f6a66..f0b5bea2458d 100644
--- a/Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml
+++ b/Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Cortina Systems Gemini Ethernet Controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This ethernet controller is found in the Gemini SoC family:
diff --git a/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml b/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml
index 854808ff5ad5..e9ce36067033 100644
--- a/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Micrel KS8995 Family DSA Switches
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The Micrel KS8995 DSA Switches are 100 Mbit switches that were produced in
diff --git a/Documentation/devicetree/bindings/net/dsa/realtek.yaml b/Documentation/devicetree/bindings/net/dsa/realtek.yaml
index f348e66fb515..473facd87a62 100644
--- a/Documentation/devicetree/bindings/net/dsa/realtek.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/realtek.yaml
@@ -10,7 +10,7 @@ allOf:
   - $ref: dsa.yaml#/$defs/ethernet-ports
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   Realtek advertises these chips as fast/gigabit switches or unmanaged
diff --git a/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml b/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml
index 51cf574249be..c41f479bdee9 100644
--- a/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Vitesse VSC73xx DSA Switches
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   The Vitesse DSA Switches were produced in the early-to-mid 2000s.
diff --git a/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml b/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml
index f92730b1d2fa..80336b7e64ec 100644
--- a/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml
+++ b/Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP46x PTP Timer (TSYNC)
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Intel IXP46x PTP timer is known in the manual as IEEE1588 Hardware
diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
index 8689de1aaea1..3b8f83b7099d 100644
--- a/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml
@@ -11,7 +11,7 @@ allOf:
   - $ref: ethernet-controller.yaml#
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Intel IXP4xx ethernet makes use of the IXP4xx NPE (Network
diff --git a/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml b/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
index 7a405e9b37b2..1d952735c81b 100644
--- a/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
+++ b/Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx V.35 WAN High Speed Serial Link (HSS)
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The Intel IXP4xx HSS makes use of the IXP4xx NPE (Network
diff --git a/Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml b/Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml
index 378dd1c8e2ee..fed393a89563 100644
--- a/Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml
+++ b/Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTPCI100 PCI Host Bridge
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
     This PCI bridge is found inside that Cortina Systems Gemini SoC platform and
diff --git a/Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml b/Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml
index 3cae2e0f7f5e..c1806aef7bac 100644
--- a/Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml
+++ b/Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx PCI controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: PCI host controller found in the Intel IXP4xx SoC series.
 
diff --git a/Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml b/Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml
index 38cac88f17bf..0e2ac2f8faed 100644
--- a/Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml
+++ b/Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: V3 Semiconductor V360 EPC PCI bridge
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   This bridge is found in the ARM Integrator/AP (Application Platform)
diff --git a/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml b/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
index d1bc389e0a6d..a916d0fc79a9 100644
--- a/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Generic Pin Configuration Node
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   Many data items that are represented in a pin configuration node are common
diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl.yaml
index d471563119a9..290438826c50 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Pin controller device
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Rafał Miłecki <rafal@milecki.pl>
 
 description: |
diff --git a/Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml b/Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml
index ca9d246d46fe..7ba26271c4d6 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Generic Pin Multiplexing Node
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   The contents of the pin configuration child nodes are defined by the binding
diff --git a/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml b/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml
index 40292d581b10..fa1ccff043be 100644
--- a/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/samsung,battery.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Samsung SDI Batteries
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   Samsung SDI (Samsung Digital Interface) batteries are all different versions
diff --git a/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml b/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml
index 9f7590ce6b3d..146593a669d6 100644
--- a/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml
@@ -12,7 +12,7 @@ description: |
   32 bit random number.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml b/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml
index b1c1a0e21318..2b1215b49580 100644
--- a/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml
+++ b/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTRTC010 Real Time Clock
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: |
   This RTC appears in for example the Storlink Gemini family of SoCs.
diff --git a/Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml
index bb8b6863b109..f976e416395b 100644
--- a/Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Peripheral-specific properties for Arm PL022 SPI controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 select: false
 
diff --git a/Documentation/devicetree/bindings/spi/spi-pl022.yaml b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
index 7f174b7d0a26..680fdfa184d0 100644
--- a/Documentation/devicetree/bindings/spi/spi-pl022.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ARM PL022 SPI controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: spi-controller.yaml#
diff --git a/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml b/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml
index 39506323556c..e93c20243dba 100644
--- a/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml
+++ b/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml
@@ -8,7 +8,7 @@ title: Faraday FTTMR010 timer
 
 maintainers:
   - Joel Stanley <joel@jms.id.au>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description:
   This timer is a generic IP block from Faraday Technology, embedded in the
diff --git a/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml b/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml
index 526b8db4d575..c92e6b9cd5e2 100644
--- a/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Intel IXP4xx XScale Networking Processors Timers
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: This timer is found in the Intel IXP4xx processors.
 
diff --git a/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml b/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml
index fa65878b3571..873a01c287f4 100644
--- a/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml
+++ b/Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: ST Microelectronics Nomadik Multi-Timer Unit MTU Timer
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 description: This timer is found in the ST Microelectronics Nomadik
   SoCs STn8800, STn8810 and STn8815 as well as in ST-Ericsson DB8500.
diff --git a/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml b/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
index 3fe4d1564dfe..b97ba535087c 100644
--- a/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
+++ b/Documentation/devicetree/bindings/usb/faraday,fotg210.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FOTG200 series HS OTG USB 2.0 controller
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: usb-drd.yaml#
diff --git a/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml b/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml
index 4ed602746897..91a149ad3ad6 100644
--- a/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml
+++ b/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml
@@ -10,7 +10,7 @@ description: The IXP4xx SoCs has a full-speed USB Device
   Controller with 16 endpoints and a built-in transceiver.
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml b/Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml
index 726dc872ad02..3eb35f325f4c 100644
--- a/Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml
+++ b/Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Faraday Technology FTWDT010 watchdog
 
 maintainers:
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
   - Corentin Labbe <clabbe@baylibre.com>
 
 description: |
diff --git a/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml b/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
index 442c21f12a3b..defe0401ded0 100644
--- a/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
+++ b/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
@@ -8,7 +8,7 @@ title: Maxim 63xx Watchdog Timers
 
 maintainers:
   - Marc Zyngier <maz@kernel.org>
-  - Linus Walleij <linus.walleij@linaro.org>
+  - Linus Walleij <linusw@kernel.org>
 
 allOf:
   - $ref: watchdog.yaml#

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251216-maintainers-dt-1db061b06cb4

Best regards,
-- 
Linus Walleij <linusw@kernel.org>


