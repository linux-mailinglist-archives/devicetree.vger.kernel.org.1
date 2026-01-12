Return-Path: <devicetree+bounces-254112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF5CD14234
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:46:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ABB5302C23B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E602E265A;
	Mon, 12 Jan 2026 16:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEmtxW0t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A8F23ED6A
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768236129; cv=none; b=uUDIgKDs+ppd2+BeN/TthVQ4DY8S5wZwhHXSHZbrU8n2RIP38i4Y6gJ8O7H6Uo7MQCGMFHs2OUWMgLeNiMkoQZlOY8jI5qd28AelpOXWuvnbe7SpvFbokgln4MZWACBLzup+fTQVifvOrbf9GbZgYDT1aHN/TmBrYlMO8/IZdG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768236129; c=relaxed/simple;
	bh=3f0BSE29001p0oooXCvYsM4FPIUFhOUPGQunofb/jwY=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=j9IIjUuUvN+c4rgA+vvxAp4vV87D0SKVklTRFuxPpulhmU4fVx5KaBBPs2OlLUMCW8zMyc/BYI84FTps75szuixF6/enBJWoIbZFezDJYFmprG84rRgRuJ9QpUFUnCX+GfYxzLt2vlFZEMoeuAyaFYCDoCqigXzxk7qbcbZ9zh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEmtxW0t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1C32C16AAE;
	Mon, 12 Jan 2026 16:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768236129;
	bh=3f0BSE29001p0oooXCvYsM4FPIUFhOUPGQunofb/jwY=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=sEmtxW0tRQXNFlHsyEttRqs348S1roVRCBGebJ3c1yy6rcLvA6C+PuZmQlQhK6Y22
	 7UgTzDeZqlQYz1+M98mWsTRvl+NlkKHOlhZMTJzDAP2eg9n1Fr1ARgd2lEYppP4dc7
	 IItlJZgN4Jk/tkgN+oqmOPsiIDBrAxeriN3CJHdX8Gfdyn/bJNK2ypxVjHaaRY0MLX
	 ggXz/rWpNq8KlN+Dm92XigqBA0DcU+QtpfJKqXXjMx+5QngmfBmdCDtCAu6nEM7seJ
	 medRSl1oMUDDCo4N5T7S98+FgfMpD0I1HpU6+zl1gY45O7XqDF58MxQlumcwHCp2ic
	 duYsMtKB4h0SQ==
From: Rob Herring <robh@kernel.org>
Date: Mon, 12 Jan 2026 10:42:07 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
To: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260112044153.1887253-1-dinguyen@kernel.org>
References: <20260112044153.1887253-1-dinguyen@kernel.org>
Message-Id: <176823586262.507018.8175061634299628380.robh@kernel.org>
Subject: Re: [PATCHv2] ARM: dts: socfpga: remove underscore node names for
 base socfpga dtsi


On Sun, 11 Jan 2026 22:41:53 -0600, Dinh Nguyen wrote:
> The node names in a DTS file should be using a hyphen, not an underscore
> as warned by 'dtc W=2'.
> 
> For clock nodes, use clock-controller@address and clock-<name>. While at
> it, fix DTS coding style to use lowercase hex for values and unit
> addresses for these clock nodes.
> 
> There are no functional change in this patch.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v2: used clock-controller@address and clock-name
>     reworded commit message
> ---
>  arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 128 +++++++++----------
>  1 file changed, 64 insertions(+), 64 deletions(-)
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
 Base: tags/next-20260109 (exact match)
 Base: tags/next-20260109 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/intel/' for 20260112044153.1887253-1-dinguyen@kernel.org:

arch/arm/boot/dts/intel/socfpga/socfpga_vt.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_vt.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_vt.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_vt.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_sdmmc.dtb: sysmgr@ffd08000 (altr,sys-mgr): compatible: 'oneOf' conditional failed, one must be fixed:
	['altr,sys-mgr', 'syscon'] is too long
	'altr,sys-mgr-s10' was expected
	'altr,sys-mgr' was expected
	from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe3_emmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_emmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_chameleon96.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_chameleon96.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_chameleon96.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_chameleon96.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socrates.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socrates.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socrates.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socrates.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe3_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_pe1_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_pe1_qspi.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_emmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa1_st1_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mercury_sa2_st1_sdmmc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de0_nano_soc.dtb: clkmgr@ffd04000 (altr,clk-mgr): clocks: 'clock-can0', 'clock-can1', 'clock-cfg', 'clock-controller@40', 'clock-controller@80', 'clock-controller@c0', 'clock-dbg', 'clock-dbg-at', 'clock-dbg-timer', 'clock-dbg-trace', 'clock-ddr-2x-dqs-gate', 'clock-ddr-dq-gate', 'clock-ddr-dqs-gate', 'clock-emac-0', 'clock-emac-1', 'clock-f2s-periph-ref', 'clock-f2s-sdram-ref', 'clock-gpio-db', 'clock-h2f-user0', 'clock-h2f-user1', 'clock-h2f-user2', 'clock-l3-main', 'clock-l3-mp', 'clock-l3-sp', 'clock-l4-main', 'clock-l4-mp', 'clock-l4-sp', 'clock-mpu-l2-ram', 'clock-mpu-periph', 'clock-nand', 'clock-nand-ecc', 'clock-nand-x', 'clock-qspi', 'clock-sdmmc', 'clock-sdmmc-divided', 'clock-spi-m', 'clock-usb-mp' do not match any of the regexes: '^[a-z0-9,_]+(clk|pll|clk_gate|clk_divided)(@[a-f0-9]+)?$', '^osc[0-9]$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-clk-manager.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de0_nano_soc.dtb: clocks: clock-gpio-db: {'#clock-cells': 0, 'compatible': ['altr,socfpga-gate-clk'], 'clocks': [[20]], 'clk-gate': [160, 6], 'div-reg': [168, 0, 24]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de0_nano_soc.dtb: clock-f2s-periph-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml
arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de0_nano_soc.dtb: clock-f2s-sdram-ref (fixed-clock): 'clock-frequency' is a required property
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml






