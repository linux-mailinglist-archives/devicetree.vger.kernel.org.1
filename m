Return-Path: <devicetree+bounces-242116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AF9C867A4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 19:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19E53A3AFD
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD0932E74A;
	Tue, 25 Nov 2025 18:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/VqDJhY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344432E736;
	Tue, 25 Nov 2025 18:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764094182; cv=none; b=geJoC1bQ/T1WqLEBJ+6xItdN1W1YiTyOODiegotcTUWGSq5x71oxNs4iy7zPXyTF/w/0P01QZ9OvKoYIfFMXcPKPVEutX+4dpNd/hLoYFmzD/5O352XOnu62p1DzccqcgICbLzkQB0dZgLdiYxuCGL8BCFCB6iPJvcVKoXIL0rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764094182; c=relaxed/simple;
	bh=A9TI1uGv3Jhr0VsYInmJA+RoLyunx8Jk4kjNxlKKpCA=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=c46ApmgpwmQSTx6gaZxtxdDDJbI/2JBpcH6/5xWD47wp5QNwEOTxU/FPOrNCZKCJnyAbEKeMGyNItcNcc8GJKgpaHvJAdccMKgmr9ZKRYyXDnlHkne7DzWU4JfqxaxiEauOsezMshG/ZDT6quuWl2rcMCd9yVQMfQu8LM/85kvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/VqDJhY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59B5C116B1;
	Tue, 25 Nov 2025 18:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764094181;
	bh=A9TI1uGv3Jhr0VsYInmJA+RoLyunx8Jk4kjNxlKKpCA=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=M/VqDJhYVUdTIZ8VtubHKshI/xH7SwLgwbY1h/SNV81u/zsD7hfUg8dDbkjzVhluj
	 bUoGFv89GU/F8NOy92Nuej1YsUSyt0HeYQl3Bk+B2KDgWOf11g2WCj6K72+RzTEzEX
	 5Ek2B9eYaLgu/QAf2y/vSbNiycvkOlZduPfmZxnsmNmteBKmEsjR50woD4TLNO9O3F
	 q/9tHFbi4k4OwzfzTBXUfZI/BWnPlrhqVL/jG9LBLDET8ewAdDs5L8CYj4Ou3z05AI
	 I3TSrwczn5yrvUdJAwxcw5B6hesYp1zpa3qC08SLFtfOYu0MsAQZapBUNdLOwx5jj3
	 rMsO8cR97fkXw==
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Nov 2025 12:09:40 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: conor+dt@kernel.org, nicolas.ferre@microchip.com, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, claudiu.beznea@tuxon.dev, 
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org, 
 wsa+renesas@sang-engineering.com, linux-arm-kernel@lists.infradead.org, 
 romain.sioen@microchip.com
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20251125081551.1390820-1-horatiu.vultur@microchip.com>
References: <20251125081551.1390820-1-horatiu.vultur@microchip.com>
Message-Id: <176409395844.3843915.15817733774701768303.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] ARM: add support for pcb8385


On Tue, 25 Nov 2025 09:15:49 +0100, Horatiu Vultur wrote:
> Add pcb8385 and the documentation for it.
> This is a moduler board on which it can add different daughter cards.
> 
> v1->v2:
> - sort nodes in alphanumerical order
> - move the eeprom nodes under i2c0
> 
> Horatiu Vultur (2):
>   dt-bindings: arm: at91: add lan966 pcb8385 board
>   ARM: dts: Add support for pcb8385
> 
>  .../devicetree/bindings/arm/atmel-at91.yaml   |   6 +-
>  arch/arm/boot/dts/microchip/Makefile          |   3 +-
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 135 ++++++++++++++++++
>  3 files changed, 141 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> 
> --
> 2.34.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/next-20251124 (exact match)
 Base: tags/next-20251124 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/microchip/' for 20251125081551.1390820-1-horatiu.vultur@microchip.com:

arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: /soc/usb@200000: failed to match any schema with compatible: ['microchip,lan9662-udc', 'atmel,sama5d3-udc']
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: /soc/usb@200000: failed to match any schema with compatible: ['microchip,lan9662-udc', 'atmel,sama5d3-udc']
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): $nodename:0: 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): False schema does not allow 32
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): $nodename:0: 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): False schema does not allow 32
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: rng@e0048000 (atmel,at91sam9g45-trng): 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	from schema $id: http://devicetree.org/schemas/rng/atmel,at91-trng.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): $nodename:0: 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): False schema does not allow 32
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): $nodename:0: 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): False schema does not allow 32
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): '#size-cells' is a required property
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): '#address-cells' is a required property
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): 'atmel,usart-mode' is a required property
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): $nodename:0: 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: serial@200 (atmel,at91sam9260-usart): False schema does not allow 32
	from schema $id: http://devicetree.org/schemas/serial/atmel,at91-usart.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: leds (gpio-leds): led-p1-green:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'e200413c.mdio-mii:01:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'e200413c.mdio-mii:01:link' does not match '^cpu[0-9]*$'
	'e200413c.mdio-mii:01:link' does not match '^hci[0-9]+-power$'
	'e200413c.mdio-mii:01:link' does not match '^mmc[0-9]+$'
	'e200413c.mdio-mii:01:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml
arch/arm/boot/dts/microchip/lan966x-pcb8385.dtb: leds (gpio-leds): led-p2-green:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'e200413c.mdio-mii:02:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'e200413c.mdio-mii:02:link' does not match '^cpu[0-9]*$'
	'e200413c.mdio-mii:02:link' does not match '^hci[0-9]+-power$'
	'e200413c.mdio-mii:02:link' does not match '^mmc[0-9]+$'
	'e200413c.mdio-mii:02:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml






