Return-Path: <devicetree+bounces-131060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 598509F1DFC
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 11:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B17F9188B9E6
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 10:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36622169AE6;
	Sat, 14 Dec 2024 10:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k64zMY3s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E52F18AE2;
	Sat, 14 Dec 2024 10:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734171182; cv=none; b=Wz+crNl9KVzySgMaZvhYM7MxWzYLu2rCEns4AxlZu1jMeZ8kXufYY+paLjQoW7pm2lGBpg4b0mU5zG1i/tbvmqg84WZl2yu9z2kcxW8/K9SE3S+3iknWGRRKPu2iN+CrGzr+kJi/32yWwZbnBwmHIkCRBI3iNGgzthJuDxH7+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734171182; c=relaxed/simple;
	bh=B4w7qyzubxMMydQEqp4vY3XoKkUYi/sW0XSUiYIB5GU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sBbnvnQ6RTvADq5YysDFpXkjY7p2Vzm8q0qxgYYP6FJBPLGr9C3uNJYVdNP5nniTktzSwC/81IANjc7ZyZmeG0af9i+OZLU6UTHZNa9i0Hr35LQFBFobBKOVAw5wm7xXt+99gZc7Xt90082DZfyNB3XjLpg92Xe5Ls8najgwkk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k64zMY3s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE134C4CED1;
	Sat, 14 Dec 2024 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734171181;
	bh=B4w7qyzubxMMydQEqp4vY3XoKkUYi/sW0XSUiYIB5GU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k64zMY3sXhjFqj8VWoHKVF0VfjCyE8haQyPK0AOsMGKc+HhyEiekPiy+/nBZAbut5
	 Z749auXM7u84JTN5l8Zrr+nls5mmHzxscTfI1fsOERBPeRfe8zz1UoaOsnvp82s4hH
	 yvoTnb9xR1P5L1GnwFTNSIwOPySI3Kuu1WlAv2zE6L2GhCjR3N7o/bVU+gEbRMvHkt
	 agXz3YeAgPCx/dpboWMg71cWoBsyBQxfoHqy6wxmSxTdkves24inTjZN5vUofZAn4F
	 20sVH855IJ88fi0L8B1f2Zt7rR+aMzM0FeaOtE0L8c7cZ23rSWSzm0POVFRFr/9qUv
	 shjxm62HsuaAQ==
Message-ID: <c01fab26-876f-4ffa-9360-c6746bbb467e@kernel.org>
Date: Sat, 14 Dec 2024 11:12:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] arm64: dts: morello: Add support for soc dts
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-5-vincenzo.frascino@arm.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241213163221.3626261-5-vincenzo.frascino@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2024 17:32, Vincenzo Frascino wrote:
> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
> 
> Introduce Morello SoC dts.

So Morello is an architecture, not a board or platform? You cannot have
both...




> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/boot/dts/arm/morello-soc.dts | 267 ++++++++++++++++++++++++
>  1 file changed, 267 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/morello-soc.dts
> 
> diff --git a/arch/arm64/boot/dts/arm/morello-soc.dts b/arch/arm64/boot/dts/arm/morello-soc.dts
> new file mode 100644
> index 000000000000..3c5247121e4d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/morello-soc.dts
> @@ -0,0 +1,267 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (c) 2021-2024, Arm Limited. All rights reserved.
> +
> + */
> +
> +/dts-v1/;
> +#include "morello.dtsi"
> +
> +/ {
> +	model = "Arm Morello System Development Platform";
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		secure-firmware@ff000000 {
> +			reg = <0 0xff000000 0 0x01000000>;
> +			no-map;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +		cpu0: cpu0@0 {
> +			compatible = "arm,neoverse-n1";
> +			reg = <0x0 0x0>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			clocks = <&scmi_dvfs 0>;
> +		};
> +		cpu1: cpu1@100 {
> +			compatible = "arm,neoverse-n1";
> +			reg = <0x0 0x100>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			clocks = <&scmi_dvfs 0>;
> +		};
> +		cpu2: cpu2@10000 {
> +			compatible = "arm,neoverse-n1";
> +			reg = <0x0 0x10000>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			clocks = <&scmi_dvfs 1>;
> +		};
> +		cpu3: cpu3@10100 {
> +			compatible = "arm,neoverse-n1";
> +			reg = <0x0 0x10100>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			clocks = <&scmi_dvfs 1>;
> +		};
> +	};
> +
> +	/* The first bank of memory, memory map is actually provided by UEFI. */
> +	memory@80000000 {
> +		device_type = "memory";
> +		/* [0x80000000-0xffffffff] */
> +		reg = <0x00000000 0x80000000 0x0 0x7F000000>;
> +	};
> +
> +	memory@8080000000 {
> +		device_type = "memory";
> +		/* [0x8080000000-0x83f7ffffff] */
> +		reg = <0x00000080 0x80000000 0x3 0x78000000>;
> +	};
> +
> +	smmu_pcie: iommu@4f400000 {

This all is weird. MMIO nodes outside of soc, soc pieces defined in DTS
instead of DTSI.

Please look first how all other DTS and DTSI are done. Also carefully
read DTS coding style.



Best regards,
Krzysztof

