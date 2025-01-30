Return-Path: <devicetree+bounces-141813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9970A229CD
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 09:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F298166A08
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 08:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D5B1AB530;
	Thu, 30 Jan 2025 08:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVg6h0pf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF301922D8
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 08:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738226805; cv=none; b=D3oqeG2omwf1a7oHr4gCdS0JiJ6+/omkKIN5Mha7JHy6NkhN0XeXizw3OuCGC0H6FghweHioq70gaIPN96HkvR8AsMfVTSmMbMwKRnoNzU+Va/z6Tr89OBoKb2sYNOh/uKymyTcFwUTlv+JItRKCF3CFpTxp4Xu4cOIj0Vu8dzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738226805; c=relaxed/simple;
	bh=NRg/4JVVG1mi/HTsZXn7qNMLf2qvPz1xgm7mr6EGP4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cA6t7jeYdQw4dgxcmybciSwIevQG66NDk+X1F7CAXdhnKSw4rYuwV3xw6JgC0KZroNaC2S69DZs1DsPq9iu22oVKohKQGMSN8/hAsdTmTr7ZLfADrNxfzwxDl9c0KQI9RVEe1fZcCa7lMq7nO7gKb3Q37SXmxevRd9tneUB9kCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVg6h0pf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 456F3C4CED2;
	Thu, 30 Jan 2025 08:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738226805;
	bh=NRg/4JVVG1mi/HTsZXn7qNMLf2qvPz1xgm7mr6EGP4g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RVg6h0pfEuxp/EIBFwms6AIvocEq5pwvqko41EtxpAt1Oyha5G+aRG86GooAiLwva
	 Gqm2DMWEChpr/ZLeymmjcdlqx3TF+fWVGXd82tGeRWvRkozldzP9n38v7mjp+6SinQ
	 hOzshnhu0P04ILrZ0a4VEE9/fWH7rB2Nx5IqVxPlSmfUG3oimcNNx3bh+MLgj4MeHK
	 hwHGiTn08N4tJzTcOFov89e5kQodgk8/IKlqos9TVxd1VwRXDbWuNO7qa46Tv0NogX
	 +Rb5Ow0enXMlUl9tGGsfBDR8Cm1vsXY3ra83cT/W99FLUeqlB9nH6ukSza3NKNk8re
	 WFESiL61SAuvw==
Message-ID: <63b7f4f9-71c3-4847-9693-047d82da957b@kernel.org>
Date: Thu, 30 Jan 2025 09:46:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
References: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 30/01/2025 08:45, Uwe Kleine-König wrote:
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
> diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
> index c467828aeb4b..7f69a0355ea5 100644
> --- a/arch/arm/boot/dts/intel/socfpga/Makefile
> +++ b/arch/arm/boot/dts/intel/socfpga/Makefile
> @@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
>  	socfpga_cyclone5_mcvevk.dtb \
>  	socfpga_cyclone5_socdk.dtb \
>  	socfpga_cyclone5_de0_nano_soc.dtb \
> +	socfpga_cyclone5_de10nano.dtb \
>  	socfpga_cyclone5_sockit.dtb \
>  	socfpga_cyclone5_socrates.dtb \
>  	socfpga_cyclone5_sodia.dtb \
> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
> new file mode 100644
> index 000000000000..ec25106caacf
> --- /dev/null
> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2017, Intel Corporation
> + *
> + * based on socfpga_cyclone5_de0_nano_soc.dts
> + */
> +/dts-v1/;
> +
> +#include "socfpga_cyclone5.dtsi"
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model = "Terasic DE10-Nano";
> +	compatible = "terasic,de10-nano", "altr,socfpga-cyclone5", "altr,socfpga";

I already commented on this, you will not get different review.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).
Maybe you need to update your dtschema and yamllint. Don't rely on
distro packages for dtschema and be sure you are using the latest
released dtschema.


Please run scripts/checkpatch.pl and fix reported warnings. After that,
run also `scripts/checkpatch.pl --strict` and (probably) fix more
warnings. Some warnings can be ignored, especially from --strict run,
but the code here looks like it needs a fix. Feel free to get in touch
if the warning is not clear.

Best regards,
Krzysztof

