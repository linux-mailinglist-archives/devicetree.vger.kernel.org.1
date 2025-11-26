Return-Path: <devicetree+bounces-242584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B78C8C5E8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 00:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7A00D4E171A
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 23:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399BC2DF134;
	Wed, 26 Nov 2025 23:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="j7MI0T4h"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2A287506;
	Wed, 26 Nov 2025 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764200306; cv=none; b=cI4tvGCGb57uM0BJ34Ig5NjBetpiux69O12+zpCmnEcgWR+CYnkiihxa6bZbkhkqNmqMQLXew8MV4gjKWRQoETVmFJavS0srqENcC+SAw0k2O3Wg0zKrfFML9/9TRggprmUJkWniVNsDqDgAb9T6c/7JsJUTOQ6TDekIwnVwKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764200306; c=relaxed/simple;
	bh=WxhRfYRbbLEDKDAb1l7frdPZpwK+Ue7MXRYNpsZlLOw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DAsxQjsCMiCx55VlEAEWwgZqUd/hh1lU2wFMYcabLPEb/brR3HF+SW53QmS7c/8GDHLqIE14wfoWx8Qx/+MvwBLfjCfo7Xt+00EBL+RzTTm13H0Bweb5uLYlL+cp/41rBBHGHOdCeG2fao1xRrXsldrlzoEDxkJ58M5Zqul3QWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=j7MI0T4h; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764200300;
	bh=1h6WNJy17sj34mCnfEYhILwT7lHGBmPDVuBZNGD7NM4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=j7MI0T4hAz8rhojuM9jtbMJ8tqsaJT2YXSHoBYHXPvC3lwXB68NI0uZGrD0ILEXE2
	 hTxVDx45cT3CWYZOaQt5l/Vq653Y4F9C+VVrhKD9fpE9fc9lSfO1Pf92dPiDYCZl20
	 XJqKtF3b2Pqwfc2Xavg14Tg6aJpzoUo/JVlyG03s93/K1zwq1F5e2trrBfctmcBKi5
	 SSXAorbazL9yiqr5MirI/+TezAYp3wpY0YbSikGkoqs8dZ2xhD9Jrcot+RflgUQ6an
	 l8/6X7bUyg9gpWoECpWMjZ/zjix6ZpDJySxNdD1JR4c7JOUnHbgxubvuWJIn3xuAYt
	 DOd5n+rXk5i0Q==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 0D70A6561D;
	Thu, 27 Nov 2025 07:38:18 +0800 (AWST)
Message-ID: <1db579becd8fc49e40acdc817bf4417d77feb47e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v8 2/2] ARM: dts: aspeed: Add Device Tree for Facebook
 Anacapa BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Peter Shen <sjg168@gmail.com>, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, peter.shen@amd.com, colin.huang2@amd.com
Date: Thu, 27 Nov 2025 10:08:17 +1030
In-Reply-To: <20251124212106.2068069-3-sjg168@gmail.com>
References: <20251124212106.2068069-1-sjg168@gmail.com>
	 <20251124212106.2068069-3-sjg168@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Peter,

A few follow-ups below on further inspection. Apologies for not
addressing more of these in your earlier submissions.

As a bit of a nit I'd prefer we use "devicetree" instead of "Device
Tree" in the subject. That said, it's also implied by the "dts:" part
of the prefix, so even better would be to drop it altogether:

ARM: dts: aspeed: Add Facebook Anacapa platform

On Tue, 2025-11-25 at 05:21 +0800, Peter Shen wrote:
> Add the initial device tree source file for the Facebook Anacapa BMC
> platform, based on the Aspeed AST2600 SoC.
>=20
> This device tree configures the platform-specific peripherals and
> aliases for OpenBMC usage.

This describes what we can see in the commit itself. Can you please
rather describe the purpose of the platform? Why does the design exist?

>=20
> Signed-off-by: Peter Shen <sjg168@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 1 +
> =C2=A0.../aspeed/aspeed-bmc-facebook-anacapa.dts=C2=A0=C2=A0=C2=A0 | 1044=
 +++++++++++++++++
> =C2=A02 files changed, 1045 insertions(+)
> =C2=A0create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ana=
capa.dts
>=20
> diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed=
/Makefile
> index 0f0b5b707654..e1b2fc7b8c08 100644
> --- a/arch/arm/boot/dts/aspeed/Makefile
> +++ b/arch/arm/boot/dts/aspeed/Makefile
> @@ -17,6 +17,7 @@ dtb-$(CONFIG_ARCH_ASPEED) +=3D \
> =C2=A0	aspeed-bmc-asus-x4tf.dtb \
> =C2=A0	aspeed-bmc-bytedance-g220a.dtb \
> =C2=A0	aspeed-bmc-delta-ahe50dc.dtb \
> +	aspeed-bmc-facebook-anacapa.dtb \
> =C2=A0	aspeed-bmc-facebook-bletchley.dtb \
> =C2=A0	aspeed-bmc-facebook-catalina.dtb \
> =C2=A0	aspeed-bmc-facebook-clemente.dtb \
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> new file mode 100644
> index 000000000000..a9bed728339b
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -0,0 +1,1044 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +/dts-v1/;
> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/i2c/i2c.h>
> +
> +/ {
> +	model =3D "Facebook Anacapa BMC";
> +	compatible =3D "facebook,anacapa-bmc", "aspeed,ast2600";
> +
> +	aliases {
> +		serial0 =3D &uart1;
> +		serial2 =3D &uart3;

Aliases should be defined sequentially. Is there a strong reason to
skip serial1 here?

> +		serial3 =3D &uart4;
> +		serial4 =3D &uart5;
> +		i2c16 =3D &i2c0mux0ch0;
> +		i2c17 =3D &i2c0mux0ch1;

...

> +
> +&adc0 {
> +	aspeed,int-vref-microvolt =3D <2500000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_adc0_default &pinctrl_adc1_default
> +		&pinctrl_adc2_default &pinctrl_adc3_default
> +		&pinctrl_adc4_default &pinctrl_adc5_default
> +		&pinctrl_adc6_default &pinctrl_adc7_default>;
> +	status =3D "okay";
> +};
> +
> +&adc1 {
> +	aspeed,int-vref-microvolt =3D <2500000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_adc10_default>;
> +	status =3D "okay";
> +};
> +
> +&ehci1 {
> +	status =3D "okay";
> +};
> +
> +&uhci {
> +	status =3D "okay";
> +};
> +
> +&fmc {

Can you please order all label references alphabetically? There are
other options in the DTS style guide, but alphabetical order is the
easiest to enforce by simple inspection.

Andrew

> +	status =3D "okay";
> +
> +	flash@0 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "bmc";
> +		spi-max-frequency =3D <50000000>;
> +#include "openbmc-flash-layout-128.dtsi"
> +	};
> +
> +	flash@1 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "alt-bmc";
> +		spi-max-frequency =3D <50000000>;
> +	};
> +};
> +

...

