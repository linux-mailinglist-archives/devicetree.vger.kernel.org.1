Return-Path: <devicetree+bounces-202324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A457B1CF3B
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 00:58:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C445418A51AC
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 22:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7442248AF;
	Wed,  6 Aug 2025 22:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQSlhl/W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88E2634
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754521080; cv=none; b=tOWmuZoK8Hl4SAHFDtvxG3grtcSo+Vpa920FZinjWy1H27cuDGsMLvpWcBRIVJLhOUSNNt8mgS03OzfwbIPlDJtCfIq42STWDy3Euj4Vm1mS3btoVgLQXlfE+N9L2ivskmkC8VV20XQn8zG/LGfUjjTJ/0k7fIO64GmRr7P3P9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754521080; c=relaxed/simple;
	bh=Bd9Z5BrkCDKF+FeSSJKPTu6+LyU+x9yOb1Otk4UIQ5w=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=V7BWRsmyqpUsMR/GAVGmLp+zXPYmgSU6W2VdupQ+lEwJXkDfT7GVYa50J95fO+QkOOLzuItx/nfMtF/VQB6jwNklovqS6z5BxAh6JSTcLBxR4MMnkPg++aZv77c4Ev10z05UUUug5WMhAMP3gV5AU4xGs3DnvL3Jxa65dbkL3aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQSlhl/W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E0FC4CEE7;
	Wed,  6 Aug 2025 22:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754521079;
	bh=Bd9Z5BrkCDKF+FeSSJKPTu6+LyU+x9yOb1Otk4UIQ5w=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=CQSlhl/WhuhGB9e+Ik8jw3kJT3UoEIzeS/t5lJ0OUu38wZesLr3c2FvQ2qZG+dhtq
	 ieDTWaLOCMISHAXi00oo7TAvMtq1Tj8ebB2snCusHg8B3euLZd488dQbXr10uSovK0
	 MGHFc8gSBu5WWR54fVr6Lc/B9ylbqyRqtcp/64JXlv2R75fJ1tVneTvWNn5ogqG1ed
	 iyACGLvFfJAWscnylsaaMqqGDcUgSb1y3bMsEAvuMxlrojHgBvb0/MYTAWGG1SLc+N
	 wt5nsNJHZxcUu0INXElYU/zyPbwY4/0B8ivsfiQ7bV2PNoxuRymIjgRuHuiXWeYTiO
	 cCnvErUDpyV6Q==
Date: Wed, 06 Aug 2025 17:57:59 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 andrew@codeconstruct.com.au, linux-aspeed@lists.ozlabs.org
To: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <20250806184711.1882725-1-eajames@linux.ibm.com>
References: <20250806184711.1882725-1-eajames@linux.ibm.com>
Message-Id: <175452100992.1966822.12980269013541207054.robh@kernel.org>
Subject: Re: [PATCH v3 0/4] ARM: dts: aspeed: Add Balcones system


On Wed, 06 Aug 2025 13:47:07 -0500, Eddie James wrote:
> The Balcones system is similar to Bonnell but with a POWER11 processor.
> 
> Changes since v2:
>  - Fix a couple of incorrect i2c addresses
>  - Document dps310 and max31785 properly
>  - Drop the UCD binding documentation update, it's been fixed
> 
> Changes since v1:
>  - Add all the ucd9000 driver supported compatible strings
>  - Fix node ordering in Balcones device tree
>  - Improve commit message to explain addition of ibm-power11-dual.dtsi*** BLURB HERE ***
> 
> Eddie James (4):
>   dt-bindings: arm: aspeed: add IBM Balcones board
>   dt-bindings: iio: Add Infineon DPS310 sensor documentation
>   dt-bindings: trivial-devices: Document max31785 sensors
>   ARM: dts: aspeed: Add Balcones system
> 
>  .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>  .../devicetree/bindings/hwmon/max31785.txt    |  22 -
>  .../iio/pressure/infineon,dps310.yaml         |  44 +
>  .../devicetree/bindings/trivial-devices.yaml  |   6 +-
>  MAINTAINERS                                   |   1 +
>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>  .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
>  .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
>  .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
>  9 files changed, 1441 insertions(+), 791 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>  create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
> 
> --
> 2.50.1
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
 Base: tags/next-20250806 (best guess, 5/6 blobs matched)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20250806184711.1882725-1-eajames@linux.ibm.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-opp-witherspoon.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: timer (arm,armv7-timer): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /sdram@1e6e0000: failed to match any schema with compatible: ['aspeed,ast2600-sdram-edac', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: bus@1e600000 (aspeed,ast2600-ahbc): compatible: ['aspeed,ast2600-ahbc', 'syscon'] is too long
	from schema $id: http://devicetree.org/schemas/bus/aspeed,ast2600-ahbc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: syscon@1e6e2000 (aspeed,ast2600-scu): 'smp-memram@180' does not match any of the regexes: '^interrupt-controller@[0-9a-f]+$', '^p2a-control@[0-9a-f]+$', '^pinctrl(@[0-9a-f]+)?$', '^pinctrl-[0-9]+$', '^silicon-id@[0-9a-f]+$'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed,ast2x00-scu.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/syscon@1e6e2000/smp-memram@180: failed to match any schema with compatible: ['aspeed,ast2600-smpmem']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2600-gfx', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: adc@1e6e9000 (aspeed,ast2600-adc0): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: adc@1e6e9100 (aspeed,ast2600-adc1): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: crypto@1e6fa000 (aspeed,ast2600-acry): 'aspeed,ahbc' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/crypto/aspeed,ast2600-acry.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: lpc@1e789000 (aspeed,ast2600-lpc-v2): reg-io-width: 4 is not of type 'object'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: lpc@1e789000 (aspeed,ast2600-lpc-v2): lpc-snoop@80: 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: kcs@24 (aspeed,ast2500-kcs-bmc-v2): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: kcs@28 (aspeed,ast2500-kcs-bmc-v2): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: kcs@2c (aspeed,ast2500-kcs-bmc-v2): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: kcs@114 (aspeed,ast2500-kcs-bmc-v2): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2600-lhc']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2600-ibt-bmc']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: sdc@1e740000 (aspeed,ast2600-sd-controller): sdhci@1e740100:compatible: ['aspeed,ast2600-sdhci', 'sdhci'] is too long
	from schema $id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: sdc@1e740000 (aspeed,ast2600-sd-controller): sdhci@1e740200:compatible: ['aspeed,ast2600-sdhci', 'sdhci'] is too long
	from schema $id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/sdc@1e740000/sdhci@1e740100: failed to match any schema with compatible: ['aspeed,ast2600-sdhci', 'sdhci']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/sdc@1e740000/sdhci@1e740200: failed to match any schema with compatible: ['aspeed,ast2600-sdhci', 'sdhci']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dtb: pwm@52 (maxim,max31785a): '#address-cells', '#size-cells' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/dma-controller@1e79e000: failed to match any schema with compatible: ['aspeed,ast2600-udma']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1', 'fan@2', 'fan@3' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1', 'fan@2', 'fan@3' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1', 'fan@2', 'fan@3', 'fan@4', 'fan@5' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1', 'fan@2', 'fan@3', 'fan@4', 'fan@5' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1', 'fan@2', 'fan@3', 'fan@4', 'fan@5' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: max31785@52 (maxim,max31785a): '#address-cells', '#size-cells', 'fan@0', 'fan@1' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#






