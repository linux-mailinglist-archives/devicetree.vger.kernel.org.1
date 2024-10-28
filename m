Return-Path: <devicetree+bounces-116430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5959B2D41
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B481F2282A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1123192B98;
	Mon, 28 Oct 2024 10:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2/MnGix"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9490C15E8B;
	Mon, 28 Oct 2024 10:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730112560; cv=none; b=gHpiSmgadaNNh0AMVDHSCKdhIQPoMX5/3Esv1T1aBp9xBo76v1tdQgFlvHw0LRY8kiMG6IghRm57zpQB9cG72CHIevenzWyzS0eWUF48pXZcgsITBb/rm4woZ6Y7lB8F9H77M6mZiN93+Wsaa+gH76jEwdi6rk7OGx4ukdKII5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730112560; c=relaxed/simple;
	bh=v6EHhhVXOSG8ZL9YvhzZLZdGXNHG3JkKEDntfhN7X50=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gc10uQ5vy63yAC9t0z0Y7HjkFNEaTgdN4kT/CL754Hf+RlqvywgN8jx9JmQ+5rbf2/LhLZY/V/0sxX/Z5/C/7FFICxRWbUHzDkc0tZugglVdOYTtQ83MFGMPYlSWhF5omLZADAIZ18Di20cD+WAB+aGyFQZ56jxJVqStYv4iBWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2/MnGix; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87550C4CEC3;
	Mon, 28 Oct 2024 10:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730112558;
	bh=v6EHhhVXOSG8ZL9YvhzZLZdGXNHG3JkKEDntfhN7X50=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i2/MnGixTaxiehclVcN4zqa7p3XLhvQW7/CPplOhhQvO2aff5bsKSW43W/qdjwiU6
	 CcNygD0rbjq+XAh7SW1ad5DMijLq4X4ynkjpplqD4kjO5x/Vkad7cqk7FwSkuBEepw
	 3KYjcNqZzfjvWxQuIfFsZLPfAZ/XV/9XW1en3aFWGql/BUe1+W1V3XEWabxq3KdApC
	 fGKerSYGOqbpGbVp8r38t+xsZ/aCFZRGr3Ejg5/q7bPYMm1xsWv982Pebn/3+Zqdzp
	 o4rbw7fPmGjJgSAZzjopKGovrl7+/0462308enC8ZzctTD4iT2VXkW6M6vLAUAEI+A
	 zViFJePMVFqeA==
Message-ID: <fd4fffb3-44d3-4efb-8c74-4d94e1f26298@kernel.org>
Date: Mon, 28 Oct 2024 11:49:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: imx8mp: add aristainetos3 board
 support
To: hs@denx.de, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20241028082332.21672-1-hs@denx.de>
 <20241028082332.21672-3-hs@denx.de>
 <f4150aa3-4c0e-45fa-9c9c-879ac04c4364@kernel.org>
 <bf2c81e1-4e97-cfa2-326f-0a6125b2cff9@denx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <bf2c81e1-4e97-cfa2-326f-0a6125b2cff9@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/10/2024 11:41, Heiko Schocher wrote:
> Hello Krzysztof,
> 
> On 28.10.24 11:24, Krzysztof Kozlowski wrote:
>> On 28/10/2024 09:23, Heiko Schocher wrote:
>>> Add support for the i.MX8MP based aristainetos3 boards from ABB.
>>>
>>> The board uses a ABB specific SoM from ADLink, based on NXP
>>> i.MX8MP SoC. The SoM is used on 3 different carrier boards,
>>> with small differences, which are all catched up in
>>> devicetree overlays. The kernel image, the basic dtb
>>> and all dtbos are collected in a fitimage. As bootloader
>>> is used U-Boot which detects in his SPL stage the carrier
>>> board by probing some i2c devices. When the correct
>>> carrier is probed, the SPL applies all needed dtbos to
>>> the dtb with which U-Boot gets loaded. Same principle
>>> later before linux image boot, U-Boot applies the dtbos
>>> needed for the carrier board before booting Linux.
>>>
>>> Signed-off-by: Heiko Schocher <hs@denx.de>
>>> ---
>>> checkpatch dropped the following warnings:
>>> arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi:248: warning: DT compatible string "ethernet-phy-id2000.a231" appears un-documented -- check ./Documentation/devicetree/bindings/
>>>
>>> ignored, as this compatible string is usedin other dts too, for example in
>>>
>>> arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
>>>
>>>   arch/arm64/boot/dts/freescale/Makefile        |    5 +
>>>   .../imx8mp-aristainetos3-adpismarc.dtsi       |   64 +
>>>   .../imx8mp-aristainetos3-adpismarc.dtso       |   14 +
>>>   .../imx8mp-aristainetos3-helios-lvds.dtsi     |   89 ++
>>>   .../imx8mp-aristainetos3-helios-lvds.dtso     |   13 +
>>>   .../imx8mp-aristainetos3-helios.dtsi          |  103 ++
>>>   .../imx8mp-aristainetos3-helios.dtso          |   13 +
>>>   .../imx8mp-aristainetos3-proton2s.dtsi        |  176 +++
>>>   .../imx8mp-aristainetos3-proton2s.dtso        |   13 +
>>>   .../imx8mp-aristainetos3a-som-v1.dts          |   18 +
>>>   .../imx8mp-aristainetos3a-som-v1.dtsi         | 1210 +++++++++++++++++
>>>   11 files changed, 1718 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-adpismarc.dtsi
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-adpismarc.dtso
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-helios-lvds.dtsi
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-helios-lvds.dtso
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-helios.dtsi
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-helios.dtso
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dtsi
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-proton2s.dtso
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dts
>>>   create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
>>> index 9d3df8b218a2..7c3586509b8b 100644
>>> --- a/arch/arm64/boot/dts/freescale/Makefile
>>> +++ b/arch/arm64/boot/dts/freescale/Makefile
>>> @@ -163,6 +163,11 @@ imx8mn-tqma8mqnl-mba8mx-usbotg-dtbs += imx8mn-tqma8mqnl-mba8mx.dtb imx8mn-tqma8m
>>>   dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtb
>>>   dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx-usbotg.dtb
>>>   
>>> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-aristainetos3a-som-v1.dtb \
>>> +			  imx8mp-aristainetos3-adpismarc.dtbo \
>>> +			  imx8mp-aristainetos3-proton2s.dtbo \
>>> +			  imx8mp-aristainetos3-helios.dtbo \
>>> +			  imx8mp-aristainetos3-helios-lvds.dtbo
>>>   dtb-$(CONFIG_ARCH_MXC) += imx8mp-beacon-kit.dtb
>>>   dtb-$(CONFIG_ARCH_MXC) += imx8mp-data-modul-edm-sbc.dtb
>>>   dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-adpismarc.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-adpismarc.dtsi
>>> new file mode 100644
>>> index 000000000000..cc0cddaa33ea
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3-adpismarc.dtsi
>>> @@ -0,0 +1,64 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (C) 2024 Heiko Schocher <hs@denx.de>
>>> + */
>>> +
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +
>>> +&ecspi1 {
>>> +	spidev0: spi@0 {
>>> +		reg = <0>;
>>> +		compatible = "rohm,dh2228fv";
>>
>> Hm? I have some doubts, what device is here?
> 
> $ grep -lr dh2228fv drivers/
> drivers/spi/spidev.c
> 
> Customer uses an userspace implementation...

That's not the question. I asked what device is here.


> 
>>
>>> +		spi-max-frequency = <500000>;
>>> +	};
>>> +};
>>> +
>>> +&ecspi2 {
>>> +	spidev1: spi@0 {
>>> +		reg = <0>;
>>> +		compatible = "rohm,dh2228fv";
>>> +		spi-max-frequency = <500000>;
>>> +	};
>>> +};
>>> +
>>> +&i2c2 {
>>> +	/* SX1509(2) U1001@IPi SMARC Plus */
>>> +	gpio8: i2c2_gpioext0@3e {
>>
>> Uh, no, please never send us downstream code.
>>
>> Please follow DTS coding style in all upstream submissions.
> 
> driver is in here:
> 
> $ grep -lr probe-reset drivers/pinctrl/
> drivers/pinctrl/pinctrl-sx150x.c

This so not related... Your driver does not matter. You send us poor
quality downstream code.

...

> 
>> And why this is DTSO, I have no clue...

Why is this a DTSO, not a DTS?


Best regards,
Krzysztof


