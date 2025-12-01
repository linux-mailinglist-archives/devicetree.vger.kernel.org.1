Return-Path: <devicetree+bounces-243370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 855FFC97479
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B33943A12B4
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325DD31076B;
	Mon,  1 Dec 2025 12:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf2WBD4V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C78031064A;
	Mon,  1 Dec 2025 12:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592023; cv=none; b=pG1rbsayJxnFGPkiDRCaR6XLqXoY620ok+f+12Lv7zen37CJJE8zDsHHHoFWoMZLFHMZ4D3bVBc5MBZPd/zYmXNfXdJ+VrjdYzeFI8PPSrQFebG192wnMn8dgY+xfnTvIud71MkpAefUiYiQOp0uPLnWVcsvzksyCLG8mK2QyO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592023; c=relaxed/simple;
	bh=1QL/C5xKg2c9Q8Vv8Nax+tL1wCBHG41SGf+nI8jBEfs=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=bL9HZoiLfu6d7x3cQDllvdrm/ZlIDJuOHSUj5uB8Gg1uAtuWj6sxq0NiUvILUDh8AqwNpgWqLjgA9kZh3oTGdqDktns3T/5UhUqTtoms/QTXOlsTrlq5R5x54J5Keb+xgGP1Q3zuY2Z3fioT3MAfpQqXDNbtbxagDDwaY8+UOSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf2WBD4V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ED58C4CEF1;
	Mon,  1 Dec 2025 12:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764592022;
	bh=1QL/C5xKg2c9Q8Vv8Nax+tL1wCBHG41SGf+nI8jBEfs=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=sf2WBD4VBqUk697ARUWai3jFkhmSF8H5iO6mut0rBUU+xHavfTu46gWSQyaOa59CX
	 dmjYnMw+D1J2l/twVGROo7cixoGNHCEnH87vsCM4QT5lmMdWPPkHn3EOhE30iBVlHL
	 QDlLdAtZGEIyBMOy8D0UjXOOWq9mPzJW5x+Y5qN25e9PDJL6rRhsjObGv2qtU/gBvT
	 RBzXzq6gV2wrs7QS3WxM5bIkL/QiIXD6icnnIxkuzOWvCuIf+lzqiiM00/1EPENSOR
	 tdNoR8CVw6elvYEQMF+O++BdwjD0/XJfaFpLLDjBJF0BVle8F4Wt0yjHTq48BnbPEQ
	 y7/xCRaN6traA==
From: Rob Herring <robh@kernel.org>
Date: Mon, 01 Dec 2025 06:27:01 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, 
 nicolas.ferre@microchip.com, linux-kernel@vger.kernel.org, 
 romain.sioen@microchip.com, alexandre.belloni@bootlin.com, 
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
 conor+dt@kernel.org, claudiu.beznea@tuxon.dev
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
Message-Id: <176459099710.2909214.17458039501550116582.robh@kernel.org>
Subject: Re: [PATCH v4 0/2] ARM: add support for pcb8385


On Mon, 01 Dec 2025 09:26:27 +0100, Horatiu Vultur wrote:
> Add pcb8385 and the documentation for it.
> This is a moduler board on which it can add different daughter cards.
> 
> v3->v4:
> - override i2c0 using labels instead of having it under flx0
> - override usart3 using labels instead of having it under flx3
> 
> v2->v3:
> - remove the linux,default-trigger properties
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
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 131 ++++++++++++++++++
>  3 files changed, 137 insertions(+), 3 deletions(-)
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
 Base: tags/next-20251201 (exact match)
 Base: tags/next-20251201 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/microchip/' for 20251201082629.2326339-1-horatiu.vultur@microchip.com:

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






