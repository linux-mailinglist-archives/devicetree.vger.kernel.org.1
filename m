Return-Path: <devicetree+bounces-141660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC7BA21D03
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EAC61884F1A
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1821B0405;
	Wed, 29 Jan 2025 12:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iV3g5ngD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD1F18C31
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 12:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738153167; cv=none; b=mgZDtnJiycz1j0hM8pePHieC4O/SKRvOn8RAUe03BzIIytFMaUXt52tzaRq4ey1BNQD1a6YgwWD9weDy2NnHpPG9VI5wpGFBZC9hTPS8HSIq3S9+xFD1AZPpfp3FRwKEl/9C4ynLcbS2r9N7z5FmhTo1ReiA8UdXa4HslwB3Btk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738153167; c=relaxed/simple;
	bh=CPw58Hu4cwsPU4ph/twNeFCxQj3wVOTM8yF/KRgI83E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=htnkGd1iIorQgkZTr2rPGIh8aiiokD6fmPrv3MylMP02nS1TfnGaz3i0kX6u2JJ6S8lnlJys2aSOel/Pbt5bYGL/vekf0jcboelbXsR5St5zrhnMXjcFi7Wb5CyhtcvgPrZ36en58C9JatZyqEpHuCfvr43ghDHdkgT30l6/Gdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iV3g5ngD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4364a37a1d7so68902165e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 04:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738153163; x=1738757963; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtvWH9HC9OXDQ65y8F2rGn9Z9fITteRdJfb1FXGtdWU=;
        b=iV3g5ngDpSvlw5QO9iClxGBPqyFIaPzaBzx7Lc1fAfj/uFJTGcqdUQB+P/8oMkFDhP
         Urquig2BCLs0LHubHuiwAY62on1YO6SMOOf9z58flgCldjTeOrw1mff5dkQDHSW9hQP/
         1WNhs7nWPXcBmJgI3uoo8KxkEANDOwkknf5k9//sja7ue96z8p2vVzgjQbb+G3YhbjOK
         SBnk7nz8RZDmOl/MYJYHjyyJ8rPX+bBoxbmYLR2YrNvNiwCWSOwE8pOxQ/H4poQUsC+M
         PeyX3fplnfwFKWaZiN1e3O9QZAzKTu7BBsvyl+tD0YG1WO82N3+VpwoOf+BA66CitVWe
         fC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738153163; x=1738757963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtvWH9HC9OXDQ65y8F2rGn9Z9fITteRdJfb1FXGtdWU=;
        b=FIIf5N9TAkl+rddpm9BwxhyzXJQNwqQylW7eFX0obITQ4GC/O9xZMYSc2p6lkFGsFA
         VQ8R7i/dCtP9SoE4FITWrodKVEokYduzCRxdBXoKlvv2emPfsqSl7TwngzdQGXVAJ+5b
         Sj4hI6rqR1Qvdibnxx5HdVu7f5cp73xBXW9GXNsVX5M/99xAB/kD9nzfnB/pdSoUu9x/
         rxaeBIbKk1UhAVkqdzwhX7e2VGBg/TrYZSJM5ZpTuBkzvkMhwyoCoCt3a/Lva6cdXN4X
         s/ncy+T639yvstGeQGJurF8Jg998/D/8FoxOtSLvkxNU901nbw1enHSgpSiRctZcuBD2
         N79w==
X-Forwarded-Encrypted: i=1; AJvYcCXqoa29LAOKATjEGyqruLfb2EbiOGNgmm4AlDzjlOLX4vYIzFf/1CDKuztOCgn28VfEQMGPqTlwfOEN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm9th5UowfJypvlzzL8a8NW78UrM3LhtaDf7Ftd64bcdWQgv8O
	2rYTeKPtnsSI+qMLzB4gAQB/kS1z5cuyiWfuIGNIF9hGCw8FtAOFx7bVlzpgqek=
X-Gm-Gg: ASbGncsgR7ueGyC2cc/IyBRdY/R6xuTgiLYvqDl0FK+pBkwJs6QPIb3g2YzWv+ClnDL
	FC96iDM+PaM9KzQeu9/OwPfBLkOY2Zfp8nmFuZ5YuKZsuImS1Nl7mrZebXosYQDl9L8fZ2CLsKi
	e/o6ldMNPX3443X3+xtaDDFubd9XtgDGR6tVPHa5n7TKszl/arbbjdarnVWxCxl+WWpGQ+9KAV3
	DDkD0dxT2TTBW/xCy6VPS1usPPZGLP1KSIEi8Dnh7hXrRwB5ehlE0UeHyeFcBapp91Ll6UNCL0c
	I9R+KTxSlEGoNKV9OKzi
X-Google-Smtp-Source: AGHT+IGzeAyPLZ8WQK55a3c3lcJIJbPq40PvGcUxEiWYC63E3vM5o2mCyMTe5m/vY93V44472PKnng==
X-Received: by 2002:a05:600c:1c1e:b0:432:7c08:d0ff with SMTP id 5b1f17b1804b1-438dc40b8e6mr23385775e9.23.1738153162909;
        Wed, 29 Jan 2025 04:19:22 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1885besm16640570f8f.49.2025.01.29.04.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 04:19:22 -0800 (PST)
Date: Wed, 29 Jan 2025 13:19:20 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <kxdipj2oktcyivl7o7mtyyacqm437jm7dpjihi7e7hcrmll6xb@5dywwnt5wpz5>
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
 <fa163bab-1461-479d-b149-4e018935ac57@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="74nv2pfs7afedfib"
Content-Disposition: inline
In-Reply-To: <fa163bab-1461-479d-b149-4e018935ac57@kernel.org>


--74nv2pfs7afedfib
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

Hello Krzysztof,

On Wed, Jan 29, 2025 at 10:27:22AM +0100, Krzysztof Kozlowski wrote:
> On 28/01/2025 18:29, Uwe Kleine-K=F6nig wrote:
> > This dts is enough to make the board boot to Linux with the rootfs on
> > a micro SD card.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> > ---
> > diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.=
dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
> > new file mode 100644
> > index 000000000000..d1f23a57a94d
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
> > @@ -0,0 +1,90 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2017, Intel Corporation
> > + *
> > + * based on socfpga_cyclone5_de0_nano_soc.dts
> > + */
> > +/dts-v1/;
> > +
> > +#include "socfpga_cyclone5.dtsi"
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +	model =3D "Terasic DE10-Nano";
> > +	compatible =3D "altr,socfpga-cyclone5", "altr,socfpga";
>=20
> Incorrect compatible. It's not cyclone5 board. cyclone5 is the SoC.

OK, adding "terasic,de10-nano".

> There is no altr,socfpga

What does that mean?
`git grep \"altr,socfpga\" linus/master:arch/arm/boot` gives me 15
matches from other boards with socfpga SoCs. If you give me a bit more
verbose description for the problem you're pointing out here, I can work
on that.

> This wasn't ever tested with bindings.

I tried

	dt-validate -m -u Documentation/devicetree/bindings -p ~/work/kbuild/arm/D=
ocumentation/devicetree/bindings/processed-schema.json ~/work/kbuild/arm/ar=
ch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb

which emitted a bunch of warnings and after processing some of them I
gave up because they were all triggered by the soc.dtsi file. I started
another try comparing the output for "my" socfpga_cyclone5_de10nano.dts
with one for a file that only has the includes and the machine
compatible. (Which generates 124 lines and 123 lines respectively.)

I'll work on the diff between the two for the next revision. Or would
you recommend a different approach?

> > +	chosen {
> > +		stdout-path =3D "serial0:115200n8";
> > +	};
> > +
> > +	memory@0 {
> > +		/* 1 GiB */
> > +		device_type =3D "memory";
> > +		reg =3D <0x0 0x40000000>;
> > +	};
> > +
> > +	soc {
> > +		fpga_axi: axi_h2f_lw_bridge@ff200000 {
>=20
> Follow DTS coding style. You just sent us something from downstream.

Indeed this is from downstream. Looking at the matching dt-validate
output I guess just "axi@ff200000" would be appropriate?!

> > +			compatible =3D "simple-bus";
> > +			reg =3D <0xff200000 0x00200000>;
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
>=20
> ranges would be after reg, but they are pointless here, no?

I thought it's "compatible", "reg" at the start, "status" at the end and
the rest in-between in alphabetic order. What is the right ordering?

> Where is the child?

I intend to add children using dt-overlays. I have a prototype here, but
that's still to embarrassing to show.

> > +			ranges =3D <0x00000000 0xff200000 0x00200000>;
> > +		};
> > +	};
> > +};
> > +
> > [...]
> > +&i2c0 {
> > +	clock-frequency =3D <100000>;
> > +	status =3D "okay";
> > +
> > +	accelerometer@53 {
> > +		compatible =3D "adi,adxl34x";
>=20
> There is no such compatible and nothing in changelog refers to missing
> bindings. Always provide link in the changelog to your bindings which
> were not yet accepted.

Oops, indeed. Will make this "adi,adxl345" for the next revision.

Best regards and thanks for your feedback,
Uwe

--74nv2pfs7afedfib
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeaHMUACgkQj4D7WH0S
/k4neQgAhA5FLBYQHlx07nMFPjvos5FLp0wia0tuofrfRhOPWcZJZtOaLfsRezcU
QADPwe2v3s4cBpIq4jluxRi1dSHWuBgDRDcxkPIgb8I67nrqWW4AuiyrhA9ZitMz
l+DM8xGCLfq+N4vjWMzxdmemllF8GDPqo46+fcbF5mYz+zWpgNGEK1th1pJle/BM
IEZZduRSP/UoekI8MOOdIx5q5qRVut/NSPl7qfdfKgMpYiee9/EDnS/QcCWySNrt
v0gZuB/4oCWILu6eqknUjqVhHPJ/a83FseoBRk4ixbLpwo5N7U5s1Fi2XDm2FUS2
yLLTigcLZUU0s0/z6k/Lz+ziDqfspQ==
=nlqC
-----END PGP SIGNATURE-----

--74nv2pfs7afedfib--

