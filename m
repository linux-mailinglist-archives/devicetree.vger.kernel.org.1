Return-Path: <devicetree+bounces-271411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIC7BDs9qWmn3QAAu9opvQ
	(envelope-from <devicetree+bounces-271411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:22:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6625220D63F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44279301C8B4
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1931F372EC7;
	Thu,  5 Mar 2026 08:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCXNaCh8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C0A366DDE;
	Thu,  5 Mar 2026 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772698934; cv=none; b=AU6aeokrfnUmxlrwrfopA+Z77PtnXUXIn07K8XBgbro2Dwf+amHT0b/nB9CPreTz5XU8BWcPj23iYCUCRKSBN4UEOdPMwX72AW+3Q/jMHCHUYFYBMqScl4MhB8bhU0ZRiXwUzQGDhG+oIIhvB9pu/L2Oe1U5eZ23uafqlo1gggo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772698934; c=relaxed/simple;
	bh=WNQaYbqsWl5GcqsRD9xTGJysvUcTpIBJXQIESqnEV2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nuywwf6H+b3wncmoDltkP/kqNRh1HSv0FZVJ1kLe/l8rW6r8OFkkoakc6Gd8i0+gWXM2+ddhj8ZmJloVFjJLSLoz/hCByHzCbMLD03wD2qCo8bIhwtATmpUvmWzA4q/NHqmfUBbcOzvAnhQLSFDFQ5q7KiUdPJ8VlseF9NjButY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCXNaCh8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6EC5C19423;
	Thu,  5 Mar 2026 08:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772698933;
	bh=WNQaYbqsWl5GcqsRD9xTGJysvUcTpIBJXQIESqnEV2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JCXNaCh8NDzazx2GC3TYspB6/Yro1LA51C2/VZsUC94X3UhWCLZ5+89NkpmxyNcHb
	 WZwX9Vv+q1kLJIINsrTKHa6xPepwK4aFRdDIUuv3pBwZ89xwYvugHdn8q1KrbbN+3X
	 4ixS/Wf6lFW5404jQMC36jH9YSYV+qsSqRrWQE66By8OYv3MaVRjx3meEFE4tYvwn6
	 eUuVox3CM64qqurrmmHzOUQRLmYLPg52WGjJkVRUnquj98C7EfkdIMGq5IWYDB6pcS
	 UhhMczVPC0uM11zlsuxx0RmloJ7A/giL1d8j2rBA42dgjZgwFpGhpoQjobeAewtPmF
	 4w99n2IXxxtdQ==
Date: Thu, 5 Mar 2026 09:22:09 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, Andras Sebok <sebokandris2009@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: exynos: add initial support for
 samsung-j5y17lte
Message-ID: <20260305-gentle-important-starling-48ca1b@quoll>
References: <20260304-exynos7870-j5y17lte-v1-0-eb25902c84c8@disroot.org>
 <20260304-exynos7870-j5y17lte-v1-2-eb25902c84c8@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260304-exynos7870-j5y17lte-v1-2-eb25902c84c8@disroot.org>
X-Rspamd-Queue-Id: 6625220D63F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271411-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[samsung.com,kernel.org,intel.com,igalia.com,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[3.254.86.192:email,2.98.90.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,disroot.org:email]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 10:56:54PM +0530, Kaustabh Chakraborty wrote:
> From: Andras Sebok <sebokandris2009@gmail.com>
> 
> Add initial devicetree support for samsung-j5y17lte (exynos7870)
> 
> Signed-off-by: Andras Sebok <sebokandris2009@gmail.com>
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>  arch/arm64/boot/dts/exynos/Makefile                |   1 +
>  arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts | 528 +++++++++++++++++++++
>  2 files changed, 529 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/exynos/Makefile
> index fa6e6308e30a9..76cc23acb9b29 100644
> --- a/arch/arm64/boot/dts/exynos/Makefile
> +++ b/arch/arm64/boot/dts/exynos/Makefile
> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_EXYNOS) += \
>  	exynos5433-tm2e.dtb		\
>  	exynos7-espresso.dtb		\
>  	exynos7870-a2corelte.dtb	\
> +	exynos7870-j5y17lte.dtb		\
>  	exynos7870-j6lte.dtb		\
>  	exynos7870-j7xelte.dtb		\
>  	exynos7870-on7xelte.dtb		\
> diff --git a/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts b/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts
> new file mode 100644
> index 0000000000000..d685bc0703cff
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos7870-j5y17lte.dts
> @@ -0,0 +1,528 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Samsung Galaxy J5 (2017) (j5y17lte) device tree source
> + *
> + * Copyright (c) 2024 Andras Sebok <sebokandris2009@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "exynos7870.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>

These are ordered by name so interrupt < input.

> +
> +/ {
> +	model = "Samsung Galaxy J5 (2017)";
> +	compatible = "samsung,j5y17lte", "samsung,exynos7870";
> +	chassis-type = "handset";
> +
> +	aliases {
> +		mmc0 = &mmc0;
> +		mmc1 = &mmc1;
> +		mmc2 = &mmc2;
> +		serial0 = &serial0;
> +		serial1 = &serial1;
> +		serial2 = &serial2;
> +	};
> +
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		stdout-path = &serial2;
> +
> +		framebuffer@67000000 {
> +			compatible = "simple-framebuffer";
> +			reg = <0x0 0x67000000 (720 * 1280 * 4)>;
> +			width = <720>;
> +			height = <1280>;
> +			stride = <(720 * 4)>;
> +			format = "a8r8g8b8";
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&key_power &key_voldown &key_volup>;
> +
> +		key-home {
> +			interrupt-parent = <&gpa1>;
> +			linux,code = <KEY_HOMEPAGE>;
> +			label = "gpio-keys: KEY_HOMEPAGE";
> +			gpios = <&gpa1 7 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		key-power {
> +			interrupt-parent = <&gpa0>;
> +			linux,code = <KEY_POWER>;
> +			label = "gpio-keys: KEY_POWER";
> +			gpios = <&gpa0 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		key-voldown {
> +			interrupt-parent = <&gpa2>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			label = "gpio-keys: KEY_VOLUMEDOWN";
> +			gpios = <&gpa2 1 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		key-volup {
> +			interrupt-parent = <&gpa2>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			label = "gpio-keys: KEY_VOLUMEUP";
> +			gpios = <&gpa2 0 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0x3e400000>,
> +		      <0x0 0x80000000 0x40000000>;
> +	};
> +
> +	pwrseq_mmc1: pwrseq-mmc1 {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpd3 6 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	vdd_fixed_mmc2: regulator-fixed-mmc2 {

And this should be regulator-1 or regulator-xvx (see bindings).

No need to resend for these.

Best regards,
Krzysztof


