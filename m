Return-Path: <devicetree+bounces-149886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF2A40B20
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A240A17E953
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943BE20AF78;
	Sat, 22 Feb 2025 19:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="ulhrDdKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 556791EF0A6
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740251245; cv=none; b=JxEP6fZ3VzCNBFgZVIeI0Kua8qz8ACGd4PlaoDg/rypZBzZYtmuGvemKBqqkjgpnYsGdDmcbGTVgYauPf+E+zdHBXwluWxqUtrCy5zq8JNPULt/GpUxnhYbm6llV+dDDBKvZe8agsxX/qSAyCWlv859iyQQuNRVDJUda/xGH8NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740251245; c=relaxed/simple;
	bh=ngjMtpD+z8pJ95iCu9tQR0ZKk0fNGJM+81u2RcL9fEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7xWwlfmC0siLlkm+7sDtt3Gv0CbfZnpX6052q2cZLChBr9bpuPmw7Oog25/jZv17KFDXHS0JFpozudKtAUIHoNdPMcdNrp/u2BRsKwNHyPw93VoyAShl33rHCudpBtT7x6aWVONM0ZU5nUCY4QkhuwZGwHoHwYHjvkRsfWK+CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=ulhrDdKQ; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id DBE678A312A;
	Sat, 22 Feb 2025 11:02:20 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id C37D0160036F; Sat, 22 Feb 2025 11:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740250940;
	bh=PK6nhumwEa8qfufAAd/8nTxtim8pVFn24vKEFq4IzAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ulhrDdKQC0RybuRsiOb0oCZysoTjgaZtZmCEg22IbJIaddd/elxKnfPCO2lf0RXMz
	 gCLvaWPsw+t0rL8wz8m4/HHaVKL7+CDQgWLG4qTwU2pksPQ8360zAsy0k35e4XyHTz
	 fRffFa94RJ47MIVRttCHyn9RkXhZqSDuZ21Ixqps=
Date: Sat, 22 Feb 2025 11:02:20 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
Message-ID: <20250222190220.GX16911@sventech.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
 <20250222172752.6254-4-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250222172752.6254-4-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
> new file mode 100644
> index 000000000000..fa975c5db0ae
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3588-orangepi-5-compact.dtsi"
> +
> +/ {
> +	model = "Xunlong Orange Pi 5 Ultra";
> +	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
> +};
> +
> +&led_blue_pwm {
> +	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
> +};
> +
> +&led_green_pwm {
> +	pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
> +};
> +
> +&pinctrl {
> +
> +	usb {
> +		usb_otg_pwren: usb-otg-pwren {
> +			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&vcc5v0_usb30_otg {
> +	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
> +};

Error: arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts:58.24-25
syntax error
FATAL ERROR: Unable to parse input tree

I think you may need to include <dt-bindings/pwm/pwm.h>

JE


