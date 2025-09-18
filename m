Return-Path: <devicetree+bounces-219070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1080AB873D5
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 00:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF16F3B2ECC
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478202D7DD3;
	Thu, 18 Sep 2025 22:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NryvmGPh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202908BEE
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 22:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758234789; cv=none; b=RWBkJxy6XZh79+Tr81rMxNuqZ82uoKTLtelC24YoJmiQ4BMjWPjtdZKtWXWkFQS6URLX8fHXpTj+wLyPtvY6o2/1OX3SzTgOJCYpqMsjZuSFVNI+S5IB/zlyM144oT0+TnStCJetaD29eVMdY9G3MxSObaeLdeub9crEhDvFCcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758234789; c=relaxed/simple;
	bh=WPfmqn1OxLWBN/7IZvB3pbW3CMSPqKScIpv+qE8feW8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=LqlDO+DdrVyCIw1FgUPEKNe7WTx1gj75bJ/lY+pQlJo4pLlMBbzbW6GlLhUsxcEKyx0TbTOpZDd8RlY4TjYzMDS5J8karI0NX5/ShmhTLHvZaHBGHUSDFUgDJfhBFtxmQnHBYojL12K0rAxJeXdeWPgTxLDFQBS2PnVeiQiGuJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NryvmGPh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23CC4C4CEE7;
	Thu, 18 Sep 2025 22:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758234788;
	bh=WPfmqn1OxLWBN/7IZvB3pbW3CMSPqKScIpv+qE8feW8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=NryvmGPhT+wgy5n2Oxn4mneZkvZGgKNtfJrUj+Py6fzQzzPLz3+JKEGrlaZJNzd8W
	 qVo37pdZlp5X9IbyFgiqZrXEatFOv0v+t5Z9DSP2Pirti36wyLMEqFaotuS5gZZvac
	 H3kK5qv2mANC/A91ik9p20pQoZchteJQKBxv75F9250x/k1w36k3OABG+1G3YUIyJs
	 os+K7IPsj+1jAyBBOoxogGH2Fv+uMaPi93ilYd6vcofaBl72dyxQEaUYZtvxNX7GWl
	 QK6vBDpfhYCLv82Brp3xREQzJCSnmZZIbZxDOfL6yACcrcCnOwj8huD5RQDRnr0+ce
	 jLfzScyaSJ28A==
Date: Thu, 18 Sep 2025 17:33:06 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, krzk+dt@kernel.org, 
 andrew@codeconstruct.com.au
To: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <20250918180402.199373-1-eajames@linux.ibm.com>
References: <20250918180402.199373-1-eajames@linux.ibm.com>
Message-Id: <175823464696.3104136.904298221604133111.robh@kernel.org>
Subject: Re: [PATCH v6 0/7] ARM: dts: aspeed: Add Balcones system


On Thu, 18 Sep 2025 13:03:55 -0500, Eddie James wrote:
> The Balcones system is similar to Bonnell but with a POWER11 processor.
> 
> Changes since v5:
>  - Add patch to add address and size cells to max31790 document
>  - Don't remove address and size cells in max31785 fixes change
> 
> Changes since v4:
>  - Add patch to fix max31785 warnings
>  - Add patch to fix missing Bonnell documentation
> 
> Changes since v3:
>  - Add max31785 to the max31790 document instead of to trivial-devices
>  - Fix minor formatting in dps310 document
> 
> Changes since v2:
>  - Fix a couple of incorrect i2c addresses
>  - Document dps310 and max31785 properly
>  - Drop the UCD binding documentation update, it's been fixed
> 
> Changes since v1:
>  - Add all the ucd9000 driver supported compatible strings
>  - Fix node ordering in Balcones device tree
>  - Improve commit message to explain addition of ibm-power11-dual.dtsi
> 
> Eddie James (7):
>   dt-bindings: arm: aspeed: add IBM Balcones board
>   dt-bindings: arm: aspeed: add IBM Bonnell board
>   dt-bindings: iio: Add Infineon DPS310 sensor documentation
>   dt-bindings: hwmon: Move max31785 compatibles to max31790 document
>   dt-bindings: hwmon: max31790: Document address and size cells
>   ARM: dts: aspeed: Add Balcones system
>   ARM: dts: aspeed: Fix max31785 fan node naming
> 
>  .../bindings/arm/aspeed/aspeed.yaml           |   2 +
>  .../devicetree/bindings/hwmon/max31785.txt    |  22 -
>  .../bindings/hwmon/maxim,max31790.yaml        |  12 +-
>  .../iio/pressure/infineon,dps310.yaml         |  44 +
>  .../devicetree/bindings/trivial-devices.yaml  |   2 -
>  MAINTAINERS                                   |   1 +
>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>  .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 609 ++++++++++++++
>  .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |   4 +-
>  .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |   8 +-
>  .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  12 +-
>  .../boot/dts/aspeed/aspeed-bmc-opp-tacoma.dts |   8 +-
>  .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
>  .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
>  14 files changed, 1465 insertions(+), 808 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/pressure/infineon,dps310.yaml
>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>  create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
> 
> --
> 2.51.0
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
 Base: tags/next-20250917 (best guess, 10/11 blobs matched)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20250918180402.199373-1-eajames@linux.ibm.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: timer (arm,armv7-timer): 'clocks' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /sdram@1e6e0000: failed to match any schema with compatible: ['aspeed,ast2600-sdram-edac', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: bus@1e600000 (aspeed,ast2600-ahbc): compatible: ['aspeed,ast2600-ahbc', 'syscon'] is too long
	from schema $id: http://devicetree.org/schemas/bus/aspeed,ast2600-ahbc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: syscon@1e6e2000 (aspeed,ast2600-scu): 'smp-memram@180' does not match any of the regexes: '^interrupt-controller@[0-9a-f]+$', '^p2a-control@[0-9a-f]+$', '^pinctrl(@[0-9a-f]+)?$', '^pinctrl-[0-9]+$', '^silicon-id@[0-9a-f]+$'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed,ast2x00-scu.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'maxim,fan-dual-tach', 'maxim,fan-fault-pin-mon', 'maxim,fan-no-fault-ramp', 'maxim,fan-no-watchdog', 'maxim,fan-pwm-freq', 'maxim,fan-ramp', 'maxim,fan-rotor-input', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'maxim,fan-dual-tach', 'maxim,fan-fault-pin-mon', 'maxim,fan-no-fault-ramp', 'maxim,fan-no-watchdog', 'maxim,fan-pwm-freq', 'maxim,fan-ramp', 'maxim,fan-rotor-input', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: max31785@52 (maxim,max31785a): fan-2: Unevaluated properties are not allowed ('compatible', 'maxim,fan-dual-tach', 'maxim,fan-fault-pin-mon', 'maxim,fan-no-fault-ramp', 'maxim,fan-no-watchdog', 'maxim,fan-pwm-freq', 'maxim,fan-ramp', 'maxim,fan-rotor-input', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: max31785@52 (maxim,max31785a): fan-3: Unevaluated properties are not allowed ('compatible', 'maxim,fan-dual-tach', 'maxim,fan-fault-pin-mon', 'maxim,fan-no-fault-ramp', 'maxim,fan-no-watchdog', 'maxim,fan-pwm-freq', 'maxim,fan-ramp', 'maxim,fan-rotor-input', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: /ahb/apb/bus@1e78a000/i2c@200/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: /ahb/apb/bus@1e78a000/i2c@200/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: /ahb/apb/bus@1e78a000/i2c@200/max31785@52/fan-2: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-tacoma.dtb: /ahb/apb/bus@1e78a000/i2c@200/max31785@52/fan-3: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/syscon@1e6e2000/smp-memram@180: failed to match any schema with compatible: ['aspeed,ast2600-smpmem']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: adc@1e6e9000 (aspeed,ast2600-adc0): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: adc@1e6e9100 (aspeed,ast2600-adc1): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: crypto@1e6fa000 (aspeed,ast2600-acry): 'aspeed,ahbc' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/crypto/aspeed,ast2600-acry.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2600-lhc']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2600-ibt-bmc']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: max31785@52 (maxim,max31785a): fan-2: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: max31785@52 (maxim,max31785a): fan-3: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: /ahb/apb/bus@1e78a000/i2c@780/i2c-mux@70/i2c@3/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: /ahb/apb/bus@1e78a000/i2c@780/i2c-mux@70/i2c@3/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: /ahb/apb/bus@1e78a000/i2c@780/i2c-mux@70/i2c@3/max31785@52/fan-2: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: /ahb/apb/bus@1e78a000/i2c@780/i2c-mux@70/i2c@3/max31785@52/fan-3: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/dma-controller@1e79e000: failed to match any schema with compatible: ['aspeed,ast2600-udma']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-2: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-3: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-4: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: max31785@52 (maxim,max31785a): fan-5: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-2: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-3: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-4: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-5: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-2: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-3: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-4: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: max31785@52 (maxim,max31785a): fan-5: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-2: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-3: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-4: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-5: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-0: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-1: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-2: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-3: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-4: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: max31785@52 (maxim,max31785a): fan-5: Unevaluated properties are not allowed ('compatible', 'tach-pulses' were unexpected)
	from schema $id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-0: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-1: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-2: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-3: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-4: failed to match any schema with compatible: ['pmbus-fan']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: /ahb/apb/bus@1e78a000/i2c@400/max31785@52/fan-5: failed to match any schema with compatible: ['pmbus-fan']






