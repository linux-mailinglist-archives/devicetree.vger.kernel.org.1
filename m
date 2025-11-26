Return-Path: <devicetree+bounces-242583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C89EC8C3F3
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 23:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8BE87344FE6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 22:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10362FF179;
	Wed, 26 Nov 2025 22:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRJ4EDK2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896E82FD692;
	Wed, 26 Nov 2025 22:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764197191; cv=none; b=ET1OS9vYiTw+6yN6VG40LOw1XjFQu2N9LUj+JovRv+a50jOC12v99/WVZWqzGETeQHKk/wAGDTQ4veDZas+ffD9QyHbZuZV74pqVryOPkEEHFLu3OQ5ult4zKMHFudRI4eGksYzj2zaQXfyjNik03PJhiW5ZGAi+nUIv1h4iwcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764197191; c=relaxed/simple;
	bh=bNM+CROlydlXKDMoCqe7N1HXOL9Z+z1dmdlwlkSYP0M=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=upVqi5RIr/eGXeCxhcZosG22rPmy/ExprJsBGisdNZsmtA7ZVcmkgcdwqEn47XMokc68evRgWQzErsIPPeTiXOLuA8S8pWYRzfgq+V3kP22i4P2+Fh2ItuQCLNT7soBvfeyOJGiK1Zj+M53Gi4Yi3xtHYU7EyAlXYlswzy3e9Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRJ4EDK2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E1BC113D0;
	Wed, 26 Nov 2025 22:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764197191;
	bh=bNM+CROlydlXKDMoCqe7N1HXOL9Z+z1dmdlwlkSYP0M=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=TRJ4EDK2vXcBHljpyUP3HNsgF9G+D3tNgwh+DrxhZ9yfpcpyM/dS/0fGQV/N+b42N
	 bmE+4rvbDG+8gWDot8lbdqHfFrUGElOT90ksM6tOOdxTr4d4SMFvUY4wXayiUn4FeF
	 dfYYinsTEpY/qiLKRvDhJRP4cg1jppxD29RaFf7K/8drflhFeBg2DDH1aKiJ9wJwbN
	 /qSoiRC7gl5/C1cM33xgZuA/cnEHKuR1FATScWakDQfHELUxMda8wSexd7FnRWhVAK
	 o6zyHzTgkgyJc24FintKqpdG5eWyUOfhzx9gMdsoIiX2Amrl6phT/YP8+8e4IvtBqS
	 4uzfOpQCI8fow==
From: Rob Herring <robh@kernel.org>
Date: Wed, 26 Nov 2025 16:46:29 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Ryan.Wanner@microchip.com, 
 romain.sioen@microchip.com, nicolas.ferre@microchip.com, 
 claudiu.beznea@tuxon.dev, alexandre.belloni@bootlin.com, krzk+dt@kernel.org
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
References: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
Message-Id: <176419714481.2726359.16798282036348525511.robh@kernel.org>
Subject: Re: [PATCH v3 0/2] ARM: add support for pcb8385


On Wed, 26 Nov 2025 11:01:49 +0100, Horatiu Vultur wrote:
> Add pcb8385 and the documentation for it.
> This is a moduler board on which it can add different daughter cards.
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
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 133 ++++++++++++++++++
>  3 files changed, 139 insertions(+), 3 deletions(-)
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

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/microchip/' for 20251126100151.1559590-1-horatiu.vultur@microchip.com:

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






