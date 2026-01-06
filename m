Return-Path: <devicetree+bounces-252064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F1CFA5BE
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5E9B9302C93E
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1563533DEE9;
	Tue,  6 Jan 2026 18:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ9Biqbo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09083BB4A;
	Tue,  6 Jan 2026 18:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724076; cv=none; b=nLgYXe4W4lsf4F53uObfYw+TuRfUh+ujHAeuynKUe1xsZLbcnydRYs9QbJRfKjVe9ZH4/gYqyJ2FY3nTokd1Vmw0p2pHzJ7MsbaB0bpfkJ+BSSH5CXQwchMFt7XXeinofe+EWQ41GT3sJha2DY0EyUuI3QBs20C3z0bEiIxhDc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724076; c=relaxed/simple;
	bh=Prv57drWJrH6jeQxrlKC1P3LM56QbpCo4BEmXOIcOk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pxvxhb5HafHejGa3QKewfQdNvn0bTdkEpKWdClK9xuu7yztIFjOP33yxPpVJM7B4kD1s6G5OE7xBa605cMasA9nm55bp6b7wPpe73lWZJBxXYY32AOLkcTbJ13lZoRb/7H0Gw+zo3vNFnOfIDKENQBpltV5XJ5WUwzlxKVgI9qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ9Biqbo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F48C19423;
	Tue,  6 Jan 2026 18:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724075;
	bh=Prv57drWJrH6jeQxrlKC1P3LM56QbpCo4BEmXOIcOk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hQ9Biqbon5XoPR3/DxK4V4OTbpe9l6bkrBiox0FkY4UYFsrYYLQDzWmLMYnnLTfJr
	 4hGZbpxQFnH/YYWzRotId8mJtxPY4x/ySgMFWefl3GjWndsd1TpL1bfbe9gh+NAK9X
	 QuOgQr3UEY4zhuNHt9JJyeRBiHN7+aGuwuhRer9wnf2fIoKaR/4oGPj+K9MdtUe6Bh
	 11LFYU9RIJ3wYcijSKoj9bhdH5+tfhf1EqxqPgrQaQ9yqvW4Ukj7j3TKbV7aHxANa1
	 mHF7jr15Qk1kxqkgAB0m9Vh30svSKpLjFjPXmDAXbkEMPD42i3sINSuGxBIgTfZnZs
	 ZSqJ2gp5t7lVg==
Date: Tue, 6 Jan 2026 12:27:54 -0600
From: Rob Herring <robh@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: conor@kernel.org, krzk+dt@kernel.org, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, alex@ghiti.fr, cyy@cyyself.name,
	kingxukai@zohomail.com, TroyMitchell988@gmail.com,
	gaohan@iscas.ac.cn, me@ziyao.cc
Subject: Re: [PATCH v2 2/2] riscv: dts: canaan: Add initial dshanpi board DT
 files
Message-ID: <20260106182754.GA2506656-robh@kernel.org>
References: <20260104070911.219588-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260104070911.219588-3-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104070911.219588-3-jiayu.riscv@isrc.iscas.ac.cn>

On Sun, Jan 04, 2026 at 03:09:11PM +0800, Jiayu Du wrote:
> Add board devicetree for 100ask K230 dashanpi, and also the SoM
> device utilized by the board. UART0 is enabled as the default
> console.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/canaan/Makefile           |  1 +
>  .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
>  .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 30 +++++++
>  3 files changed, 113 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
>  create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
> 
> diff --git a/arch/riscv/boot/dts/canaan/Makefile b/arch/riscv/boot/dts/canaan/Makefile
> index 7d54ea5c6f3d..89cb64bde440 100644
> --- a/arch/riscv/boot/dts/canaan/Makefile
> +++ b/arch/riscv/boot/dts/canaan/Makefile
> @@ -2,6 +2,7 @@
>  dtb-$(CONFIG_ARCH_CANAAN) += canaan_kd233.dtb
>  dtb-$(CONFIG_ARCH_CANAAN) += k210_generic.dtb
>  dtb-$(CONFIG_ARCH_CANAAN) += k230-canmv.dtb
> +dtb-$(CONFIG_ARCH_CANAAN) += k230-canmv-dshanpi.dtb
>  dtb-$(CONFIG_ARCH_CANAAN) += k230-evb.dtb
>  dtb-$(CONFIG_ARCH_CANAAN) += sipeed_maix_bit.dtb
>  dtb-$(CONFIG_ARCH_CANAAN) += sipeed_maix_dock.dtb
> diff --git a/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts b/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
> new file mode 100644
> index 000000000000..4f95b534ee87
> --- /dev/null
> +++ b/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2025 Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> + */
> +
> +/dts-v1/;
> +
> +#include "k230-canmv-module-dshanpi.dtsi"
> +
> +/ {
> +	model = "100ask CanMV-K230-dshanpi";
> +	compatible = "100ask,canmv-k230-dshanpi",
> +		     "100ask,canmv-k230-module-dshanpi",
> +		     "canaan,kendryte-k230";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	vdd_5v: regulator-vdd-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vdd_3v3: regulator-vdd-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vdd_5v>;
> +	};
> +
> +	vdd_1v8: regulator-vdd-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vdd_5v>;
> +	};
> +};
> +
> +&pinctrl {
> +	uart0_pins: uart0-pins {
> +		uart0-txd-cfg {
> +			pinmux = <K230_PINMUX(38, 1)>;
> +			slew-rate = <0>;
> +			drive-strength = <7>;
> +			power-source = <K230_MSC_1V8>;
> +			output-enable;
> +			bias-disable;
> +			input-schmitt-enable;
> +		};
> +
> +		uart0-rxd-cfg {
> +			pinmux = <K230_PINMUX(39, 1)>;
> +			slew-rate = <0>;
> +			drive-strength = <7>;
> +			power-source = <K230_MSC_1V8>;
> +			input-enable;
> +			bias-disable;
> +			input-schmitt-enable;
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
> +	status = "okay";
> +};
> diff --git a/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi b/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
> new file mode 100644
> index 000000000000..ed0abc68f321
> --- /dev/null
> +++ b/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2025 Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> + */
> +
> +/dts-v1/;
> +
> +#include "k230.dtsi"
> +
> +/ {
> +	model = "100ask CanMV-K230-Module-dshanpi";
> +	compatible = "100ask,canmv-k230-module-dshanpi",
> +		     "canaan,kendryte-k230";

These get overwritten, but aren't really valid on their own. Drop.

> +
> +	ddr: memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x0 0x40000000>;
> +	};
> +
> +	timerx_pulse_in: clock-50m {

clock-50000000

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <50000000>;
> +	};
> +};
> +
> +&sysclk {
> +	clocks = <&osc24m>, <&timerx_pulse_in>;
> +	clock-names = "osc24m", "timer-pulse-in";
> +};
> -- 
> 2.52.0
> 

