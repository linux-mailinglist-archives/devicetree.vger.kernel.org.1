Return-Path: <devicetree+bounces-141969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AC9A237FC
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 00:38:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2CEC7A2E51
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 23:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF281F239E;
	Thu, 30 Jan 2025 23:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azAqe0cn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F6C1F2390
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 23:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738280290; cv=none; b=TXXz57N6QTQPwdyV/wb3jzwPByG5KbQbii2XSiCnbC14Ynop8JgeiXuvYseW13WWFeIm/EXA1tWqDSkk0Amjz9ZCuDwXTHFv3AzDYlXhNnEHxwu5z0uotzvc02+dEtsZFe9/bDuZenjQyn1XXOzI3Od5t8OLMYKanzgYHve/g8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738280290; c=relaxed/simple;
	bh=4lk7Ig7s5pJJbMrVZyk6e3D+x/5H8relNk/MdScJCB0=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Fhhke8dR2QEEwHXWoQZjRIdil/Tq0pCM24xG9GhIMh+kSw9HQsEdxe7fsFJ0gO/xSej6uLFAjIBbnEb8+d0AeHOOfCODGHL1GEcx6hkaXsasEFyUr4YtJYBWShE91XdKRYJW9Ur9dNhUAFyprTzPXq9cZ7UwRBOX+Rc/rIFVJPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azAqe0cn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B30DC4CED2;
	Thu, 30 Jan 2025 23:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738280289;
	bh=4lk7Ig7s5pJJbMrVZyk6e3D+x/5H8relNk/MdScJCB0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=azAqe0cnNc8eM36JQGaBvZHcaKfmjN3ub1BdsMCsTqXaZNT9aDmxbz3603cRanMf6
	 qq3+XMflKe20EIyWy7O6VtgdfYlZtqwbieI/VLMa0YcOm2OFYw95m5FAZQ2GpPW8fY
	 trdbqy8i/Oqa+eJOUjXB2G1xqhzndPKostHq8oau/HN1mNfSdJxVlxc9JiosDeJ1Zj
	 fLp+AsFU5cFG76tQqz/z8jJZGhvNz8j0Lw/T5UlS4rzEvptaWERDFybKRFnkctbaKz
	 rN+owmeYpuxELumjleJ6khJK2nuiLf5WPthz+Cx6I4WhkCzUhuebWUcD/ICQXBe5a4
	 onr4OLqT8ahWg==
Date: Thu, 30 Jan 2025 17:38:08 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Dinh Nguyen <dinguyen@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
In-Reply-To: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
References: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
Message-Id: <173828013131.1872475.6879199940703724951.robh@kernel.org>
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano


On Thu, 30 Jan 2025 08:45:53 +0100, Uwe Kleine-König wrote:
> This dts is enough to make the board boot to Linux with the rootfs on
> a micro SD card.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
> ---
> Hello,
> 
> changes since (implicit) v1 available at
> https://lore.kernel.org/linux-arm-kernel/20250128172917.4565-2-u.kleine-koenig@baylibre.com/:
> 
>  - Use rgmii-id for ethernet/mdio. (Andrew Lunn)
>  - Add a compatible entry for the machine (only had the SoC before),
>    fix compatible for accelerometer and various other small
>    improvements, most of them pointed out by the dt checker.
>    (Krzysztof Kozlowski)
> 
> There are still warnings when the dtb is built, but they all originate
> from the SoC dtsi.

Except for the ones with the board compatible...

> 
> Something I forgot to say in v1: The accelerometer fails to probe
> (readout of the device ID yields an error). This also doesn't work for
> me with the downstream kernel and dtb. I didn't debug that. Is that a
> reason to drop it?
> 
> Best regards
> Uwe
> 
>  arch/arm/boot/dts/intel/socfpga/Makefile      |  1 +
>  .../socfpga/socfpga_cyclone5_de10nano.dts     | 95 +++++++++++++++++++
>  2 files changed, 96 insertions(+)
>  create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/intel/' for 20250130074553.92023-2-u.kleine-koenig@baylibre.com:

arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
	['terasic,de10-nano', 'altr,socfpga-cyclone5', 'altr,socfpga'] is too short
	['terasic,de10-nano', 'altr,socfpga-cyclone5', 'altr,socfpga'] is too long
	'terasic,de10-nano' is not one of ['altr,socfpga-arria5-socdk']
	'terasic,de10-nano' is not one of ['altr,socfpga-arria10-socdk']
	'terasic,de10-nano' is not one of ['enclustra,mercury-pe1', 'google,chameleon-v3']
	'terasic,de10-nano' is not one of ['altr,socfpga-cyclone5-socdk', 'denx,mcvevk', 'ebv,socrates', 'macnica,sodia', 'novtech,chameleon96', 'samtec,vining', 'terasic,de0-atlas', 'terasic,socfpga-cyclone5-sockit']
	'terasic,de10-nano' is not one of ['altr,socfpga-stratix10-socdk', 'altr,socfpga-stratix10-swvp']
	'altr,socfpga-vt' was expected
	'altr,socfpga-arria5' was expected
	'altr,socfpga-arria10' was expected
	'enclustra,mercury-aa1' was expected
	'altr,socfpga-stratix10' was expected
	'altr,socfpga' was expected
	from schema $id: http://devicetree.org/schemas/arm/altera.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /: failed to match any schema with compatible: ['terasic,de10-nano', 'altr,socfpga-cyclone5', 'altr,socfpga']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: pmu@ff111000: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/arm/pmu.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: soc: stmmac-axi-config: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: soc: sdramedac: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: soc: base_fpga_region: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: soc: usbphy: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: amba: $nodename:0: 'amba' does not match '^([a-z][a-z0-9\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: pdma@ffe01000: $nodename:0: 'pdma@ffe01000' does not match '^dma-controller(@.*)?$'
	from schema $id: http://devicetree.org/schemas/dma/arm,pl330.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: base_fpga_region: $nodename:0: 'base_fpga_region' does not match '^fpga-region(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/fpga/fpga-region.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: clkmgr@ffd04000: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: osc2: 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: f2s_periph_ref_clk: 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: f2s_sdram_ref_clk: 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40: failed to match any schema with compatible: ['altr,socfpga-pll-clock']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/mpuclk@48: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/mainclk@4c: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/dbg_base_clk@50: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/main_qspi_clk@54: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/main_nand_sdmmc_clk@58: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/main_pll@40/cfg_h2f_usr0_clk@5c: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80: failed to match any schema with compatible: ['altr,socfpga-pll-clock']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/emac0_clk@88: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/emac1_clk@8c: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/per_qsi_clk@90: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/per_nand_mmc_clk@94: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/per_base_clk@98: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/periph_pll@80/h2f_usr1_clk@9c: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdram_pll@c0: failed to match any schema with compatible: ['altr,socfpga-pll-clock']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdram_pll@c0/ddr_dqs_clk@c8: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdram_pll@c0/ddr_2x_dqs_clk@cc: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdram_pll@c0/ddr_dq_clk@d0: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdram_pll@c0/h2f_usr2_clk@d4: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/mpu_periph_clk: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/mpu_l2_ram_clk: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l4_main_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l3_main_clk: failed to match any schema with compatible: ['altr,socfpga-perip-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l3_mp_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l3_sp_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l4_mp_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/l4_sp_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/dbg_at_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/dbg_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/dbg_trace_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/dbg_timer_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/cfg_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/h2f_user0_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/emac_0_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/emac_1_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/usb_mp_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/spi_m_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/can0_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/can1_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/gpio_db_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/h2f_user1_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdmmc_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/sdmmc_clk_divided: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/nand_x_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/nand_ecc_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/nand_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/qspi_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/ddr_dqs_clk_gate: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/ddr_2x_dqs_clk_gate: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/ddr_dq_clk_gate: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/clkmgr@ffd04000/clocks/h2f_user2_clk: failed to match any schema with compatible: ['altr,socfpga-gate-clk']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: fpga_bridge@ff400000: $nodename:0: 'fpga_bridge@ff400000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/fpga/altr,socfpga-hps2fpga-bridge.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: fpga_bridge@ff500000: $nodename:0: 'fpga_bridge@ff500000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/fpga/altr,socfpga-hps2fpga-bridge.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/fpgamgr@ff706000: failed to match any schema with compatible: ['altr,socfpga-fpga-mgr']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/ethernet@ff700000: failed to match any schema with compatible: ['altr,socfpga-stmmac', 'snps,dwmac-3.70a', 'snps,dwmac']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/ethernet@ff702000: failed to match any schema with compatible: ['altr,socfpga-stmmac', 'snps,dwmac-3.70a', 'snps,dwmac']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/eccmgr: failed to match any schema with compatible: ['altr,socfpga-ecc-manager']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/eccmgr/l2-ecc@ffd08140: failed to match any schema with compatible: ['altr,socfpga-l2-ecc']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/eccmgr/ocram-ecc@ffd08144: failed to match any schema with compatible: ['altr,socfpga-ocram-ecc']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: sram@ffff0000: '#address-cells' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: sram@ffff0000: '#size-cells' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: sram@ffff0000: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: spi@ff705000: resets: [[6, 37]] is too short
	from schema $id: http://devicetree.org/schemas/spi/cdns,qspi-nor.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /soc/sdramedac: failed to match any schema with compatible: ['altr,sdram-edac']
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: sysmgr@ffd08000: compatible: 'oneOf' conditional failed, one must be fixed:
	['altr,sys-mgr', 'syscon'] is too long
	'altr,sys-mgr-s10' was expected
	'altr,sys-mgr' was expected
	from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: timer0@ffc08000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/timer/snps,dw-apb-timer.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: timer1@ffc09000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/timer/snps,dw-apb-timer.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: timer2@ffd00000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/timer/snps,dw-apb-timer.yaml#
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: timer3@ffd01000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/timer/snps,dw-apb-timer.yaml#






