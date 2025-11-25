Return-Path: <devicetree+bounces-242113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D03ADC86783
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 19:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 894E93A35F7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08BEA32D43C;
	Tue, 25 Nov 2025 18:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5xXmqeS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DAE32D42A;
	Tue, 25 Nov 2025 18:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764094177; cv=none; b=baKUJc3LOYP6w3FtiK8eHOEGiEJwGjAbrFyoXMHavNsUoJIGketprEDGwdlhszyTSPZxJYLJHNwy21by1bVL9o6KXwGyvfGLpf+zOQzw5VmwwfZmEiOgaSLXNqj3pni60QNDrAYkMh44zoWI98EE4dj8wCGIFseURBp7wY52M+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764094177; c=relaxed/simple;
	bh=/mvfUzi1Qw/4Y5kr212cUVhQ1RqPh58sZxHLxmDAY+M=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=iY3rJR3ynyPcIrNcznrfdGKBQE6n/Daj9mqXQTuooHn6BJyOrewWS8MrepQHTUa1zzeC1MSKMJ0i7AW9kgKscB6XYYlReKXDDOYQ3NRAYhOwO7Sp+AJKzwISLRNEytZQHC8nuFB/njNCAjWTD5kuaDMgy8V0E5U24jWI0dlYG9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5xXmqeS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5372CC4CEF1;
	Tue, 25 Nov 2025 18:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764094177;
	bh=/mvfUzi1Qw/4Y5kr212cUVhQ1RqPh58sZxHLxmDAY+M=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=T5xXmqeS+/oH53FIpbyhDSoWH/3vPI/1rNwHCdWGhlaVbQI8Sh8EvfLvn4fgZCN+J
	 0UhbZVikkjQqQM3F+qdS0qmkYrakKQukVb+NsriVuDgkqs+l/7W1762mlVTl4p/Beo
	 qaCYC7fvlYxeRYgOcM4gflVSwBtNHLnCgoQoTJC8O05IrFkLUYlV9/3zYTYOX9GbIw
	 XAuQHRoWoQA9P0McfnRMmBvC2klCkjI2oL3KEVzqO2jDU/1HrwXrJZVnfI5GOCvtqz
	 x1DeUdbNhxnowfC78YZePpKtK1f4dyOdyD3k4W/h19xwQhXIYk7rs5VnPLTBxHBkaf
	 GDv0f44YyThOA==
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Nov 2025 12:09:35 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Joel Stanley <joel@jms.id.au>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, linux-kernel@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
To: Marc Olberding <molberding@nvidia.com>
In-Reply-To: <20251124-msx1_devicetree-v4-0-a3ebe3110a67@nvidia.com>
References: <20251124-msx1_devicetree-v4-0-a3ebe3110a67@nvidia.com>
Message-Id: <176409395426.3843808.13226161866300781148.robh@kernel.org>
Subject: Re: [PATCH v4 0/2] Add device tree for Nvidia BMC msx4 cx8
 switchboard


On Mon, 24 Nov 2025 15:14:16 -0800, Marc Olberding wrote:
> Patch 1 Adds the binding for the msx4 cx8 switchboard
> Patch 2 Adds the device tree for the msx4 cx8 switchboard reference implementation.
> 
> This is an Aspeed AST2600 based reference implementation for a BMC
> managing the nvidia mgx cx8 switchboard.
> 
> Reference to Ast2600 Soc [1].
> 
> Link: https://www.aspeedtech.com/server_ast2600/ [1]
> 
> Signed-off-by: Marc Olberding <molberding@nvidia.com>
> ---
> Changes in v4:
> - Changed model name to be accurate per Andrew Jeffery
> - Added comments about why there are no i2c devices described here per Andrew Jeffery
> - Added support for probing the backup spi device through fmc
> - Link to v3: https://lore.kernel.org/r/20251108-msx1_devicetree-v3-0-c7cb477ade27@nvidia.com
> 
> Changes in v3:
> - Removed mac and mdio node completely per Andrew Lunn's request. Will add back
>     once the mac driver is fixed
> - Link to v2: https://lore.kernel.org/r/20251107-msx1_devicetree-v2-0-6e36eb878db2@nvidia.com
> 
> Changes in v2:
> - Added ack by Conor Dooley on patch 1
> - Changed phy-mode attribute after discussion with Andrew Jeffery and feedback from Andrew Lunn
>     and added a comment with a better explanation
> - Link to v1: https://lore.kernel.org/r/20250918-msx1_devicetree-v1-1-18dc07e02118@nvidia.com
> 
> ---
> Marc Olberding (2):
>       dt-bindings: arm: aspeed: Add Nvidia msx4 board
>       dts: aspeed: Add a dts for the nvidia msx4 hpm
> 
>  .../devicetree/bindings/arm/aspeed/aspeed.yaml     |   1 +
>  arch/arm/boot/dts/aspeed/Makefile                  |   1 +
>  .../boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dts | 248 +++++++++++++++++++++
>  3 files changed, 250 insertions(+)
> ---
> base-commit: ac3fd01e4c1efce8f2c054cdeb2ddd2fc0fb150d
> change-id: 20250908-msx1_devicetree-7af2c1fc15d0
> 
> Best regards,
> --
> Marc Olberding <molberding@nvidia.com>
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
 Base: ac3fd01e4c1efce8f2c054cdeb2ddd2fc0fb150d (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20251124-msx1_devicetree-v4-0-a3ebe3110a67@nvidia.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: timer (arm,armv7-timer): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: sdram@1e6e0000 (aspeed,ast2600-sdram-edac): compatible: ['aspeed,ast2600-sdram-edac', 'syscon'] is too long
	from schema $id: http://devicetree.org/schemas/edac/aspeed,ast2400-sdram-edac.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: bus@1e600000 (aspeed,ast2600-ahbc): compatible: ['aspeed,ast2600-ahbc', 'syscon'] is too long
	from schema $id: http://devicetree.org/schemas/bus/aspeed,ast2600-ahbc.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: syscon@1e6e2000 (aspeed,ast2600-scu): 'smp-memram@180' does not match any of the regexes: '^interrupt-controller@[0-9a-f]+$', '^p2a-control@[0-9a-f]+$', '^pinctrl(@[0-9a-f]+)?$', '^pinctrl-[0-9]+$', '^silicon-id@[0-9a-f]+$'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed,ast2x00-scu.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: /ahb/apb/syscon@1e6e2000/smp-memram@180: failed to match any schema with compatible: ['aspeed,ast2600-smpmem']
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: adc@1e6e9000 (aspeed,ast2600-adc0): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: adc@1e6e9100 (aspeed,ast2600-adc1): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: crypto@1e6fa000 (aspeed,ast2600-acry): 'aspeed,ahbc' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/crypto/aspeed,ast2600-acry.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2600-lhc']
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2600-ibt-bmc']
arch/arm/boot/dts/aspeed/aspeed-bmc-nvidia-msx4-bmc.dtb: /ahb/apb/dma-controller@1e79e000: failed to match any schema with compatible: ['aspeed,ast2600-udma']






