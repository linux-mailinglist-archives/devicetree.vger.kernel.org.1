Return-Path: <devicetree+bounces-247102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1D5CC445C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F65930562F7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82837310779;
	Tue, 16 Dec 2025 16:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB/187jZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E74B310640
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765901885; cv=none; b=XM51Wd4bnXWPWhySlsDYQKbXpDWQhBIJ+4MyuIRWpjiS7xq88IUCPVD7b4Nr1jK2yOH3UhFqqab3+tTnJS0ZUpRLkGPba7PWnF4Zq1DS95/WC+xZI2wgc95mdciZxYvZ13H6m9GBEhF5dD3JfNEFWFUIfQcmueLs+++9tkhDLrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765901885; c=relaxed/simple;
	bh=+MbvRs0CO1Ge/9lwEKhmRbha8wdV2tKHNrNbafa6Ws8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5qQ6Rt5Rttb8ZeY93ojzzDP7Lt1C/QBUVZ4UJxJDiiwbxwKVNA6mbLce6h99dg3/ZMPxmD/z2URLIVVzR7LzMByHMHHH67eVU/c+2KMoSc5qt0pLVoFI6haUExQeaxXsi7GrKO16BacZiiVcBZwWQEEi5s6rxhYygyeuGujtzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB/187jZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91453C113D0;
	Tue, 16 Dec 2025 16:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765901883;
	bh=+MbvRs0CO1Ge/9lwEKhmRbha8wdV2tKHNrNbafa6Ws8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nB/187jZNUSuL+5PL5RkHpvIjOTKY+EhGqk+mE4vi4gnen1/s41qY6LEc3fXhNy1X
	 Zd8IlSLwGqWyq03uyRuRF4btSZaUkWRTlQBavcYsJwGRZtsQuPNck1EXmYvwOdzOC7
	 JP+nIkzvAHYFTaXInfNoxvZ7wU0/x2rQ41oJp7QDgObQvbp7rHld23aYmlG0RXSx0w
	 vMct3nuN0UmkSacvzrRlQaX1MZf7OKlmvktcwfp3cjFPVw+HNnfLR7JkFb1XEyrRpC
	 Xnk1K2vto2ppBA3hfdPDf8g9U6D42FhjyGwZ+JBTFFUYPF7YPgnoaifpyO2CAAkwVo
	 o/Ujf/MPHCZVw==
Date: Tue, 16 Dec 2025 10:18:00 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: Updates Linus Walleij's mail address
Message-ID: <176590187945.2577071.4097281710505411554.robh@kernel.org>
References: <20251216-maintainers-dt-v1-1-0b5ab102c9bb@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-maintainers-dt-v1-1-0b5ab102c9bb@kernel.org>


On Tue, 16 Dec 2025 10:52:10 +0100, Linus Walleij wrote:
> My name is stamped into maintainership for a big slew of DT
> bindings. Now that it is changing, switch it over to my
> kernel.org mail address, which will hopefully be stable for the
> rest of my life.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
> DT maintainers: please funnel this as a fix through the DT
> binding tree.
> ---
>  Documentation/devicetree/bindings/arm/arm,integrator.yaml               | 2 +-
>  Documentation/devicetree/bindings/arm/arm,realview.yaml                 | 2 +-
>  Documentation/devicetree/bindings/arm/arm,scu.yaml                      | 2 +-
>  Documentation/devicetree/bindings/arm/arm,versatile-sysreg.yaml         | 2 +-
>  Documentation/devicetree/bindings/arm/arm,versatile.yaml                | 2 +-
>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml            | 2 +-
>  Documentation/devicetree/bindings/arm/gemini.yaml                       | 2 +-
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml                 | 2 +-
>  Documentation/devicetree/bindings/arm/ux500.yaml                        | 2 +-
>  Documentation/devicetree/bindings/ata/ata-generic.yaml                  | 2 +-
>  Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml   | 2 +-
>  Documentation/devicetree/bindings/ata/faraday,ftide010.yaml             | 2 +-
>  Documentation/devicetree/bindings/ata/intel,ixp4xx-compact-flash.yaml   | 2 +-
>  Documentation/devicetree/bindings/ata/pata-common.yaml                  | 2 +-
>  Documentation/devicetree/bindings/ata/sata-common.yaml                  | 2 +-
>  Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml     | 2 +-
>  Documentation/devicetree/bindings/clock/stericsson,u8500-clks.yaml      | 2 +-
>  Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml       | 2 +-
>  Documentation/devicetree/bindings/display/dsi-controller.yaml           | 2 +-
>  Documentation/devicetree/bindings/display/faraday,tve200.yaml           | 2 +-
>  Documentation/devicetree/bindings/display/panel/arm,rtsm-display.yaml   | 2 +-
>  .../devicetree/bindings/display/panel/arm,versatile-tft-panel.yaml      | 2 +-
>  Documentation/devicetree/bindings/display/panel/ilitek,ili9322.yaml     | 2 +-
>  Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml    | 2 +-
>  Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml | 2 +-
>  Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml | 2 +-
>  Documentation/devicetree/bindings/display/panel/samsung,s6d16d0.yaml    | 2 +-
>  Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml     | 2 +-
>  Documentation/devicetree/bindings/display/panel/ti,nspire.yaml          | 2 +-
>  Documentation/devicetree/bindings/display/panel/tpo,tpg110.yaml         | 2 +-
>  Documentation/devicetree/bindings/display/ste,mcde.yaml                 | 2 +-
>  Documentation/devicetree/bindings/dma/stericsson,dma40.yaml             | 2 +-
>  Documentation/devicetree/bindings/extcon/fcs,fsa880.yaml                | 2 +-
>  .../bindings/firmware/intel,ixp4xx-network-processing-engine.yaml       | 2 +-
>  Documentation/devicetree/bindings/gnss/brcm,bcm4751.yaml                | 2 +-
>  Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml           | 2 +-
>  Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml        | 2 +-
>  Documentation/devicetree/bindings/gpio/gpio-ep9301.yaml                 | 2 +-
>  Documentation/devicetree/bindings/gpio/gpio-mmio.yaml                   | 2 +-
>  Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml           | 2 +-
>  Documentation/devicetree/bindings/gpio/mrvl-gpio.yaml                   | 2 +-
>  Documentation/devicetree/bindings/gpio/pl061-gpio.yaml                  | 2 +-
>  Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml             | 2 +-
>  Documentation/devicetree/bindings/gpio/st,stmpe-gpio.yaml               | 2 +-
>  Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml             | 2 +-
>  Documentation/devicetree/bindings/hwmon/winbond,w83781d.yaml            | 2 +-
>  Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml            | 2 +-
>  Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml               | 2 +-
>  Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml           | 2 +-
>  Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml          | 2 +-
>  Documentation/devicetree/bindings/iio/gyroscope/invensense,mpu3050.yaml | 2 +-
>  Documentation/devicetree/bindings/iio/light/capella,cm3605.yaml         | 2 +-
>  Documentation/devicetree/bindings/iio/light/sharp,gp2ap002.yaml         | 2 +-
>  .../devicetree/bindings/iio/magnetometer/asahi-kasei,ak8974.yaml        | 2 +-
>  Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas530.yaml   | 2 +-
>  Documentation/devicetree/bindings/iio/st,st-sensors.yaml                | 2 +-
>  Documentation/devicetree/bindings/input/atmel,maxtouch.yaml             | 2 +-
>  .../devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml       | 2 +-
>  .../devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml       | 2 +-
>  Documentation/devicetree/bindings/input/touchscreen/melfas,mms114.yaml  | 2 +-
>  Documentation/devicetree/bindings/input/touchscreen/zinitix,bt400.yaml  | 2 +-
>  .../bindings/interrupt-controller/arm,versatile-fpga-irq.yaml           | 2 +-
>  .../devicetree/bindings/interrupt-controller/faraday,ftintc010.yaml     | 2 +-
>  .../bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml           | 2 +-
>  Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml    | 2 +-
>  Documentation/devicetree/bindings/leds/register-bit-led.yaml            | 2 +-
>  Documentation/devicetree/bindings/leds/regulator-led.yaml               | 2 +-
>  Documentation/devicetree/bindings/leds/richtek,rt8515.yaml              | 2 +-
>  .../memory-controllers/intel,ixp4xx-expansion-bus-controller.yaml       | 2 +-
>  .../memory-controllers/intel,ixp4xx-expansion-peripheral-props.yaml     | 2 +-
>  Documentation/devicetree/bindings/mfd/arm,dev-platforms-syscon.yaml     | 2 +-
>  Documentation/devicetree/bindings/mfd/st,stmpe.yaml                     | 2 +-
>  Documentation/devicetree/bindings/mfd/stericsson,ab8500.yaml            | 2 +-
>  Documentation/devicetree/bindings/mfd/stericsson,db8500-prcmu.yaml      | 2 +-
>  .../devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml        | 2 +-
>  Documentation/devicetree/bindings/mmc/arm,pl18x.yaml                    | 2 +-
>  .../devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.yaml      | 2 +-
>  Documentation/devicetree/bindings/mtd/partitions/redboot-fis.yaml       | 2 +-
>  Documentation/devicetree/bindings/mtd/partitions/seama.yaml             | 2 +-
>  Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml     | 2 +-
>  Documentation/devicetree/bindings/net/cortina,gemini-ethernet.yaml      | 2 +-
>  Documentation/devicetree/bindings/net/dsa/micrel,ks8995.yaml            | 2 +-
>  Documentation/devicetree/bindings/net/dsa/realtek.yaml                  | 2 +-
>  Documentation/devicetree/bindings/net/dsa/vitesse,vsc73xx.yaml          | 2 +-
>  Documentation/devicetree/bindings/net/intel,ixp46x-ptp-timer.yaml       | 2 +-
>  Documentation/devicetree/bindings/net/intel,ixp4xx-ethernet.yaml        | 2 +-
>  Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml             | 2 +-
>  Documentation/devicetree/bindings/pci/faraday,ftpci100.yaml             | 2 +-
>  Documentation/devicetree/bindings/pci/intel,ixp4xx-pci.yaml             | 2 +-
>  Documentation/devicetree/bindings/pci/v3,v360epc-pci.yaml               | 2 +-
>  Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml              | 2 +-
>  Documentation/devicetree/bindings/pinctrl/pinctrl.yaml                  | 2 +-
>  Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml              | 2 +-
>  Documentation/devicetree/bindings/power/supply/samsung,battery.yaml     | 2 +-
>  Documentation/devicetree/bindings/rng/intel,ixp46x-rng.yaml             | 2 +-
>  Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml             | 2 +-
>  Documentation/devicetree/bindings/spi/arm,pl022-peripheral-props.yaml   | 2 +-
>  Documentation/devicetree/bindings/spi/spi-pl022.yaml                    | 2 +-
>  Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml           | 2 +-
>  Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml         | 2 +-
>  Documentation/devicetree/bindings/timer/st,nomadik-mtu.yaml             | 2 +-
>  Documentation/devicetree/bindings/usb/faraday,fotg210.yaml              | 2 +-
>  Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml             | 2 +-
>  Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml        | 2 +-
>  Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml           | 2 +-
>  105 files changed, 105 insertions(+), 105 deletions(-)
> 

Applied, thanks!


