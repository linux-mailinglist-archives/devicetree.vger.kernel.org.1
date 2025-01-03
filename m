Return-Path: <devicetree+bounces-135277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5667CA00566
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AB23188401F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 07:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7D01C5799;
	Fri,  3 Jan 2025 07:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXtlddqV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346441B21B2;
	Fri,  3 Jan 2025 07:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735890903; cv=none; b=r5HmmFAt+QO8eSp9YKUY/+0Bj8SIzkb26ahP9zQb8jnyCpHiI9dV7CxnhWm17ZervkLAaOU+xzHXRQN19NXNfbFa5xLeod+CoJGX05tGx+zJBL0GFq5cz/7rHKXZ1uKPIFSfYC9FqFOtz3InSaCRzMf+FhyDyYDk8SbVpEm01ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735890903; c=relaxed/simple;
	bh=NpIXwBPwb7jLEDHahiTfDLx71UgAQTQ6tNt8p6O4N90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=unmvyhFeRRU+OSSOrqxVHnCL/inak14OLDVihFzi4ZlypTURXI39d0H+nzm0GngXfUEx8T9UJqALfjRw4OPgCiP88qhnKbRACPFduGtLCdqTki9H4xKfNQn7ZEMpuwkKw5UInZ25aJqm4O67kYFsxIHtlbjGmU0p4Roa2AoK12A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXtlddqV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA8E1C4CECE;
	Fri,  3 Jan 2025 07:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890902;
	bh=NpIXwBPwb7jLEDHahiTfDLx71UgAQTQ6tNt8p6O4N90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sXtlddqV04A8wbpFyqMt4deIAwjERAkhFOtaaWQScBvLpMUi9P1wofOj3YALdXBay
	 ouIiN0gYu65vlY2S1YHIJbCJsx0fsW+LjRC9l8bLIScZwz7HWlP150TsMWvgPLqcLk
	 O1RSfstE8ufNczxt8jeBQygp5qm5AWS1QCBBl8x/vh+N/xiHmlBFj8aey3w/lPHqZu
	 0lLoCa5ePzp7/p+FgNVfxgWBtj3DRPj7X8EjP2UPXI+pB0/i0xikGBeVqxRIRcVhVW
	 R+Fhcyp/14TwPgSKRdyo+atKBbl5Sfw/AnsWsDVtP5pg9/sZiHgvTtai3f9tximEeI
	 9QgB/XG/HscwQ==
Date: Fri, 3 Jan 2025 08:54:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v3 3/4] arm64: dts: morello: Add support for soc dts
Message-ID: <syspr5f42jceogrnwngwndfuc25uqhxxxlzpfxs7c4k4jactnz@ipwrsxsxrwha>
References: <20250102155416.13159-1-vincenzo.frascino@arm.com>
 <20250102155416.13159-4-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250102155416.13159-4-vincenzo.frascino@arm.com>

On Thu, Jan 02, 2025 at 03:54:15PM +0000, Vincenzo Frascino wrote:
> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
> 
> Introduce Morello SoC dts.
> 
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/boot/dts/arm/Makefile        |  1 +
>  arch/arm64/boot/dts/arm/morello-sdp.dts | 55 +++++++++++++++++++++++++
>  2 files changed, 56 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/morello-sdp.dts
> 
> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
> index d908e96d7ddc..869667bef7c0 100644
> --- a/arch/arm64/boot/dts/arm/Makefile
> +++ b/arch/arm64/boot/dts/arm/Makefile
> @@ -7,3 +7,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
> +dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb
> diff --git a/arch/arm64/boot/dts/arm/morello-sdp.dts b/arch/arm64/boot/dts/arm/morello-sdp.dts
> new file mode 100644
> index 000000000000..68926f511362
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/morello-sdp.dts
> @@ -0,0 +1,55 @@
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
> +	compatible = "arm,morello-sdp", "arm,morello";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&gic {
> +	reg = <0x0 0x30000000 0 0x10000>,	/* GICD */
> +	      <0x0 0x300c0000 0 0x80000>;	/* GICR */

This coding choice is very confusing, really the first code like this in
the kernel.  Deserves comments explaining why this is different than
everything else (or just fix it).

Best regards,
Krzysztof


