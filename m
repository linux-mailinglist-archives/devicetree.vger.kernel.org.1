Return-Path: <devicetree+bounces-248284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C793CD0B95
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 59F82303F5D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 240F8366DCC;
	Fri, 19 Dec 2025 15:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHsauULH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCC0366DC0;
	Fri, 19 Dec 2025 15:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766159750; cv=none; b=gEQCypvaAK6jOv2lbfz5zvBH399SjSDOTbei9arnoSt7vVm3OCdTiM9bNSXHSHS8rPQ/A4VZ1fVgiJVKRGMNgaAKVBJ0gCnMorZIxHXEVJUmwat+abVZnmFJMzlX35oJYsgweBt4VrQL9L1KRcXIkXSDHGXDWNws/iRWa9q9Hic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766159750; c=relaxed/simple;
	bh=qKyYm1wjY1/f9MKBEYaGT5Ko0GUkJLFzRCDD89BnQZU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=reGWzMi0Bo1QYYTtfxrhJKYpdz7lxe/xLTjIChS9ByB3kOWc0gi/ap+Zd1tifvBFufu6U8N61MI6CT/QLohsX4C/yLc341h3siuwWm8FI3Z9U5/QJuM/8vX0fc8TvRvcf7Kdqa9XY+Dr4eX7v1RarUUYxuIUrHhaYRThV16TIdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHsauULH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52169C116D0;
	Fri, 19 Dec 2025 15:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766159749;
	bh=qKyYm1wjY1/f9MKBEYaGT5Ko0GUkJLFzRCDD89BnQZU=;
	h=Date:From:To:Cc:Subject:From;
	b=jHsauULHdTbhTus1B5noKbsEQY5GPd9bzTKNhTRRqZBglF38UM3V3H4lp+82Qt3oU
	 l7275yyWbyQiUQ8BgM08U11lsPr65oWxpWHvYn4Hz1FZIEjwlHfbv3FSIdQj/0X9Zi
	 zJGaaRFj0PXqcfLawh8Eu6Ble1833hSVcECMhjex/gmJsx5Gu3fQFGYl8PW6eyjBOs
	 83G5pni8cXFgBnxkQeL7DMA5EsReTXwpZEOvTUDme702CHhM5cSLwsXFfnHsZwLIF7
	 vs/kuWkI09Cw1GvaQM3o5hrN/xwOc/bQTccrErofaE6NhkVP7g9+mlkzo0EyCrPwJp
	 ZVV5oWo9KrWtA==
Date: Fri, 19 Dec 2025 09:55:46 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.19, part 1
Message-ID: <20251219155546.GA3433312-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Linus,

Please pull DT fixes for 6.19.

Still one DTB warning after this, but I'm told the fix for it is getting 
applied today (via soc tree).

Rob


The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.19-1

for you to fetch changes up to ce7b1d58609abc2941a1f38094147f439fb74233:

  arm64: dts: mediatek: Apply mt8395-radxa DT overlay at build time (2025-12-19 09:18:27 -0600)

----------------------------------------------------------------
Devicetree fixes for v6.19, part 1:

- Fix warnings for Mediatek overlays not getting applied

- Fix regression in handling elfcorehdr region

- Fix creating cpufreq device on OPPv1 platforms

- Add GE7800 GPU in Renesas R-Car V3U

- Simplify dma-coherent property in TI display bindings

- Allow "reg" in sprd,sc9860-clk binding

- Update Linus Walleij's email

----------------------------------------------------------------
Frank Wunderlich (2):
      arm64: dts: mediatek: mt7986: add dtbs with applied overlays for bpi-r3
      arm64: dts: mediatek: mt7988: add dtbs with applied overlays for bpi-r4 (pro)

Jianpeng Chang (1):
      arm64: kdump: Fix elfcorehdr overlap caused by reserved memory processing reorder

Krzysztof Kozlowski (2):
      dt-bindings: display/ti: Simplify dma-coherent property
      cpufreq: dt-platdev: Fix creating device on OPPv1 platforms

Linus Walleij (1):
      dt-bindings: Updates Linus Walleij's mail address

Niklas Söderlund (1):
      dt-bindings: gpu: img,powervr-rogue: Document GE7800 GPU in Renesas R-Car V3U

Rob Herring (Arm) (2):
      dt-bindings: clock: sprd,sc9860-clk: Allow "reg" for gate clocks
      arm64: dts: mediatek: Apply mt8395-radxa DT overlay at build time

 .../devicetree/bindings/arm/arm,integrator.yaml    |  2 +-
 .../devicetree/bindings/arm/arm,realview.yaml      |  2 +-
 Documentation/devicetree/bindings/arm/arm,scu.yaml |  2 +-
 .../bindings/arm/arm,versatile-sysreg.yaml         |  2 +-
 .../devicetree/bindings/arm/arm,versatile.yaml     |  2 +-
 .../devicetree/bindings/arm/arm,vexpress-juno.yaml |  2 +-
 Documentation/devicetree/bindings/arm/gemini.yaml  |  2 +-
 .../devicetree/bindings/arm/intel-ixp4xx.yaml      |  2 +-
 Documentation/devicetree/bindings/arm/ux500.yaml   |  2 +-
 .../devicetree/bindings/ata/ata-generic.yaml       |  2 +-
 .../bindings/ata/cortina,gemini-sata-bridge.yaml   |  2 +-
 .../devicetree/bindings/ata/faraday,ftide010.yaml  |  2 +-
 .../bindings/ata/intel,ixp4xx-compact-flash.yaml   |  2 +-
 .../devicetree/bindings/ata/pata-common.yaml       |  2 +-
 .../devicetree/bindings/ata/sata-common.yaml       |  2 +-
 .../bindings/auxdisplay/arm,versatile-lcd.yaml     |  2 +-
 .../devicetree/bindings/clock/sprd,sc9860-clk.yaml | 26 ----------
 .../bindings/clock/stericsson,u8500-clks.yaml      |  2 +-
 .../bindings/crypto/intel,ixp4xx-crypto.yaml       |  2 +-
 .../bindings/display/dsi-controller.yaml           |  2 +-
 .../bindings/display/faraday,tve200.yaml           |  2 +-
 .../bindings/display/panel/arm,rtsm-display.yaml   |  2 +-
 .../display/panel/arm,versatile-tft-panel.yaml     |  2 +-
 .../bindings/display/panel/ilitek,ili9322.yaml     |  2 +-
 .../bindings/display/panel/novatek,nt35510.yaml    |  2 +-
 .../bindings/display/panel/samsung,lms380kf01.yaml |  2 +-
 .../bindings/display/panel/samsung,lms397kf04.yaml |  2 +-
 .../bindings/display/panel/samsung,s6d16d0.yaml    |  2 +-
 .../bindings/display/panel/sony,acx424akp.yaml     |  2 +-
 .../bindings/display/panel/ti,nspire.yaml          |  2 +-
 .../bindings/display/panel/tpo,tpg110.yaml         |  2 +-
 .../devicetree/bindings/display/ste,mcde.yaml      |  2 +-
 .../bindings/display/ti/ti,am65x-dss.yaml          |  3 +-
 .../bindings/display/ti/ti,j721e-dss.yaml          |  3 +-
 .../devicetree/bindings/dma/stericsson,dma40.yaml  |  2 +-
 .../devicetree/bindings/extcon/fcs,fsa880.yaml     |  2 +-
 .../intel,ixp4xx-network-processing-engine.yaml    |  2 +-
 .../devicetree/bindings/gnss/brcm,bcm4751.yaml     |  2 +-
 .../bindings/gpio/faraday,ftgpio010.yaml           |  2 +-
 .../bindings/gpio/gpio-consumer-common.yaml        |  2 +-
 .../devicetree/bindings/gpio/gpio-ep9301.yaml      |  2 +-
 .../devicetree/bindings/gpio/gpio-mmio.yaml        |  2 +-
 .../bindings/gpio/intel,ixp4xx-gpio.yaml           |  2 +-
 .../devicetree/bindings/gpio/mrvl-gpio.yaml        |  2 +-
 .../devicetree/bindings/gpio/pl061-gpio.yaml       |  2 +-
 .../devicetree/bindings/gpio/st,nomadik-gpio.yaml  |  2 +-
 .../devicetree/bindings/gpio/st,stmpe-gpio.yaml    |  2 +-
 .../devicetree/bindings/gpu/img,powervr-rogue.yaml |  4 +-
 .../devicetree/bindings/hwmon/ntc-thermistor.yaml  |  2 +-
 .../devicetree/bindings/hwmon/winbond,w83781d.yaml |  2 +-
 .../devicetree/bindings/i2c/arm,i2c-versatile.yaml |  2 +-
 .../devicetree/bindings/i2c/st,nomadik-i2c.yaml    |  2 +-
 .../bindings/iio/accel/bosch,bma255.yaml           |  2 +-
 .../bindings/iio/adc/qcom,pm8018-adc.yaml          |  2 +-
 .../bindings/iio/gyroscope/invensense,mpu3050.yaml |  2 +-
 .../bindings/iio/light/capella,cm3605.yaml         |  2 +-
 .../bindings/iio/light/sharp,gp2ap002.yaml         |  2 +-
 .../iio/magnetometer/asahi-kasei,ak8974.yaml       |  2 +-
 .../bindings/iio/magnetometer/yamaha,yas530.yaml   |  2 +-
 .../devicetree/bindings/iio/st,st-sensors.yaml     |  2 +-
 .../devicetree/bindings/input/atmel,maxtouch.yaml  |  2 +-
 .../input/touchscreen/cypress,cy8ctma140.yaml      |  2 +-
 .../input/touchscreen/cypress,cy8ctma340.yaml      |  2 +-
 .../bindings/input/touchscreen/melfas,mms114.yaml  |  2 +-
 .../bindings/input/touchscreen/zinitix,bt400.yaml  |  2 +-
 .../arm,versatile-fpga-irq.yaml                    |  2 +-
 .../interrupt-controller/faraday,ftintc010.yaml    |  2 +-
 .../intel,ixp4xx-interrupt.yaml                    |  2 +-
 .../bindings/leds/backlight/kinetic,ktd253.yaml    |  2 +-
 .../devicetree/bindings/leds/register-bit-led.yaml |  2 +-
 .../devicetree/bindings/leds/regulator-led.yaml    |  2 +-
 .../devicetree/bindings/leds/richtek,rt8515.yaml   |  2 +-
 .../intel,ixp4xx-expansion-bus-controller.yaml     |  2 +-
 .../intel,ixp4xx-expansion-peripheral-props.yaml   |  2 +-
 .../bindings/mfd/arm,dev-platforms-syscon.yaml     |  2 +-
 .../devicetree/bindings/mfd/st,stmpe.yaml          |  2 +-
 .../devicetree/bindings/mfd/stericsson,ab8500.yaml |  2 +-
 .../bindings/mfd/stericsson,db8500-prcmu.yaml      |  2 +-
 .../misc/intel,ixp4xx-ahb-queue-manager.yaml       |  2 +-
 .../devicetree/bindings/mmc/arm,pl18x.yaml         |  2 +-
 .../mtd/partitions/arm,arm-firmware-suite.yaml     |  2 +-
 .../bindings/mtd/partitions/redboot-fis.yaml       |  2 +-
 .../devicetree/bindings/mtd/partitions/seama.yaml  |  2 +-
 .../bindings/net/bluetooth/brcm,bluetooth.yaml     |  2 +-
 .../bindings/net/cortina,gemini-ethernet.yaml      |  2 +-
 .../devicetree/bindings/net/dsa/micrel,ks8995.yaml |  2 +-
 .../devicetree/bindings/net/dsa/realtek.yaml       |  2 +-
 .../bindings/net/dsa/vitesse,vsc73xx.yaml          |  2 +-
 .../bindings/net/intel,ixp46x-ptp-timer.yaml       |  2 +-
 .../bindings/net/intel,ixp4xx-ethernet.yaml        |  2 +-
 .../devicetree/bindings/net/intel,ixp4xx-hss.yaml  |  2 +-
 .../devicetree/bindings/pci/faraday,ftpci100.yaml  |  2 +-
 .../devicetree/bindings/pci/intel,ixp4xx-pci.yaml  |  2 +-
 .../devicetree/bindings/pci/v3,v360epc-pci.yaml    |  2 +-
 .../devicetree/bindings/pinctrl/pincfg-node.yaml   |  2 +-
 .../devicetree/bindings/pinctrl/pinctrl.yaml       |  2 +-
 .../devicetree/bindings/pinctrl/pinmux-node.yaml   |  2 +-
 .../bindings/power/supply/samsung,battery.yaml     |  2 +-
 .../devicetree/bindings/rng/intel,ixp46x-rng.yaml  |  2 +-
 .../devicetree/bindings/rtc/faraday,ftrtc010.yaml  |  2 +-
 .../bindings/spi/arm,pl022-peripheral-props.yaml   |  2 +-
 .../devicetree/bindings/spi/spi-pl022.yaml         |  2 +-
 .../bindings/timer/faraday,fttmr010.yaml           |  2 +-
 .../bindings/timer/intel,ixp4xx-timer.yaml         |  2 +-
 .../devicetree/bindings/timer/st,nomadik-mtu.yaml  |  2 +-
 .../devicetree/bindings/usb/faraday,fotg210.yaml   |  2 +-
 .../devicetree/bindings/usb/intel,ixp4xx-udc.yaml  |  2 +-
 .../bindings/watchdog/faraday,ftwdt010.yaml        |  2 +-
 .../bindings/watchdog/maxim,max63xx.yaml           |  2 +-
 arch/arm64/boot/dts/mediatek/Makefile              | 55 ++++++++++++++++++++++
 drivers/cpufreq/cpufreq-dt-platdev.c               |  7 +--
 drivers/of/fdt.c                                   |  2 +-
 112 files changed, 170 insertions(+), 140 deletions(-)

