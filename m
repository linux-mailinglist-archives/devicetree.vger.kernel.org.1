Return-Path: <devicetree+bounces-247639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F311CC9BDF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 23:53:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E61F30285CB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 22:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70CA632ED4D;
	Wed, 17 Dec 2025 22:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="DB0aI9Lu"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8A13A1E67;
	Wed, 17 Dec 2025 22:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766012036; cv=none; b=k87dnHie9OjYDIrJAXMjZvCP8sswICOEtviRb9PsMTJDJ3CxiWx7i9zYKxRGxOMeRGWWHqKr15aG5GBgS3ojKSKBoFPVRqfkInDd2qCI71GHBdgRuhZ9SpG+aGV3lH5DV1FHEX5PVHEpHgksQ3A46AMqdESu0q4L0RF/RPT5mBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766012036; c=relaxed/simple;
	bh=Ag3cQmQptiWIe2vpUdGsQXbHOyuPBe32qrSGWBLIy7A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qw8MYpA3AjwoLPCuq1hQkQ0k0CEUOC+pTR9vJCEr7wq+lnK5cWB2OHogs89BuAtx8gqW2mBu9zd6krPLJTLyyG2rL4/4ml1Dh4zkUxw9WPf1XXCv5vBTITzLS6feNoDDquK5Wl2SofkizvUWpv0CnyFuBDjXaVivVuRZDY8BG/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=DB0aI9Lu; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1766012032;
	bh=J1EO9nRN3BOzOyJvyc6Rau/FS5vQn8zuB3tbnQRn2do=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=DB0aI9Lu6IkzUxPvmlzKi1NLFN8r/PmBrtmRFY8KT4Fe3rTAKnTkjsK11cfhX/CUp
	 tXWT5e+HaySUTzD3d4GwVolw4P0CpnP4ReH0wOAlFxahthjJYNYzsq0DO6j9J7R/gj
	 ppKIU8TPT/A/GKufXp4RouX0am0IlXPXN/dMNPebaO04RrK0mw6juY+GJToO2KbLEt
	 tmJMxbYhm9VCdzxwoCi7KP/sFDtnGuyxUGqQ5uYpdwT1N1PuQj4FpvsC5JtcAn7G6L
	 I8tGti09g1HiXqFYtFwaGOl0I6pWkvVv6g2bUP/bL1rCoOiUgfxEkw+iuLOg+Bb3Tf
	 ZvxpBg3R/DFpQ==
Received: from [192.168.68.115] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 706157C1B2;
	Thu, 18 Dec 2025 06:53:51 +0800 (AWST)
Message-ID: <ee0acf89f82555a1c0705fba5818875811a3a27e.camel@codeconstruct.com.au>
Subject: Re: [PATCH v5 2/2] ARM: dts: aspeed: add device tree for ASRock
 Rack ALTRAD8 BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rebecca Cran <rebecca@bsdio.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>
Date: Thu, 18 Dec 2025 09:23:50 +1030
In-Reply-To: <20251211165700.29206-3-rebecca@bsdio.com>
References: <20251211165700.29206-1-rebecca@bsdio.com>
	 <20251211165700.29206-3-rebecca@bsdio.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Rebecca,

On Thu, 2025-12-11 at 09:56 -0700, Rebecca Cran wrote:
> The ALTRAD8 BMC is an Aspeed AST2500-based BMC for the ASRock Rack
> ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q boards.
>=20
> Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
> ---
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts
> b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts
> new file mode 100644
> index 000000000000..4898ddede1c2
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-altrad8.dts
> @@ -0,0 +1,624 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/dts-v1/;
> +
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/i2c/i2c.h>
> +
> +/ {
> +	model =3D "ASRock ALTRAD8 BMC";
> +	compatible =3D "asrock,altrad8-bmc", "aspeed,ast2500";
> +
> +	aliases {
> +		serial4 =3D &uart5;
> +		i2c50 =3D &nvme1;
> +		i2c51 =3D &pcie4;
> +		i2c52 =3D &pcie5;
> +		i2c53 =3D &pcie6;
> +		i2c54 =3D &pcie7;
> +		i2c55 =3D &nvme3;
> +		i2c56 =3D &nvme2;
> +		i2c57 =3D &nvme0;
> +		i2c58 =3D &nvme4;
> +		i2c59 =3D &nvme5;
> +		i2c60 =3D &nvme6;
> +		i2c61 =3D &nvme7;
> +		i2c62 =3D &nvme8;
> +		i2c63 =3D &nvme9;
> +		i2c64 =3D &nvme10;
> +		i2c65 =3D &nvme11;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "uart5:115200n8";
> +	};
> +
> +	iio-hwmon {
> +		compatible =3D "iio-hwmon";
> +		io-channels =3D	<&adc 0>, <&adc 1>, <&adc 2>, <&adc
> 3>,
> +				<&adc 4> ,<&adc 5>, <&adc 6>, <&adc
> 7>,
> +				<&adc 8>, <&adc 9>, <&adc 10>, <&adc
> 11>,
> +				<&adc 12>, <&adc 13>, <&adc 14>,
> <&adc 15>;
> +	};
> +

*snip*

> +&adc {
> +	status =3D "okay";

Please add the necessary pinctrl properties to request the ADC lines as
used for the iio-hwmon bridge. This ensures their exclusive use so they
can't otherwise be muxed as e.g. GPIOs and produce surprising system
behaviour.

> +};
> +

*snip*

> +&pinctrl {
> +	aspeed,external-nodes =3D <&gfx &lhc>;

This property is now set in aspeed-g5.dtsi so it's unnecessary to do so
here in the dts. I also have a cleanup at [1] that impacts it, so the
less we can propagate the problem the better

[1]: https://lore.kernel.org/all/20251211-dev-dt-warnings-all-v1-0-21b18b9a=
da77@codeconstruct.com.au/

Otherwise the patch looks okay to me.

Andrew

