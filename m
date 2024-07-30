Return-Path: <devicetree+bounces-89316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05516940BB1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A815B23855
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 08:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3F91946CA;
	Tue, 30 Jul 2024 08:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcW9niAD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFC4194156;
	Tue, 30 Jul 2024 08:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722328067; cv=none; b=rHptZpFF4new55wdzfy9fhOHR6WVVUFtXHmG8ey77wThp2fXnebE0q0cT3foTsGsnCp/XGCazaHr8cP91bv6mOEUmA7OrunJWx5+aWFbGY1yMyw9XUR2NAxazYqH9t2K5R391ZEF7xDUF/O+vVeE35PbARrtb+m5UabDE6llf1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722328067; c=relaxed/simple;
	bh=tdhxMFZbf6X4Xto3fZX8Cs/O2C9cTFuwG0F47dPrxR8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ys9eR37ElFy5673CoxJS3z5BaIfDJ9cnacU9CM4Fq0t6zy52Cm1b+5kw3l/yN0fzVHkk4J0PmuScW6I+Lh1SpZKrJ9/bXLKFkDbxtgEtDrl62qDoHrx6NN3/k/I5T7XG5+ujJiz2pXLNyuyzih3jGqsVPQ8icZYj9BRItpDcMzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcW9niAD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A240C4AF0F;
	Tue, 30 Jul 2024 08:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722328066;
	bh=tdhxMFZbf6X4Xto3fZX8Cs/O2C9cTFuwG0F47dPrxR8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XcW9niADYu52bX6zds16r2YCKc4kzkYJY65owTM5EJQFSK1zw0NvXvr2lETl0ulMB
	 FIz13JoSEluwp+J5enP/ht7IcJznnmRBo4D+tZkFOIUZv2ibmMtFXAqpX/Tg6h7h/Q
	 yimJ0fk+LDOl4QAydzGCpEnMNVbPxazrtSr6UxEfRjv/gj5d0AkoSTYO3rgRCMeJJa
	 v1gmGzucCluySRfQEdDzWDzaudjGkOKM4nlzh+ArX6r82BCEJGevfssj+hsTA3D3Hn
	 Q60lhTQbwoSDtonnm9XgwJ/faaw0Ej4wdXYrVdbqDea4c9VRx/VHnTZuOMSLjefdDI
	 8qBSNJb7PLJeg==
Date: Tue, 30 Jul 2024 10:27:44 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <20240730-eminent-venomous-condor-8ef421@houat>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e55d0f0e-a104-4790-b832-120dbddd93ad@freebox.fr>
 <20240715-stirring-purple-toad-7de58c@houat>
 <c302bc47-6492-44af-86a1-3ff6a815e314@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="gzcmjcbc6xzbf4ex"
Content-Disposition: inline
In-Reply-To: <c302bc47-6492-44af-86a1-3ff6a815e314@freebox.fr>


--gzcmjcbc6xzbf4ex
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 07:59:21PM GMT, Marc Gonzalez wrote:
> On 15/07/2024 16:40, Maxime Ripard wrote:
> > On Thu, Jul 04, 2024 at 07:04:41PM GMT, Marc Gonzalez wrote:
> >> On 01/07/2024 15:50, Maxime Ripard wrote:
> >>
> >>> The i2c register access (and the whole behaviour of the device) is
> >>> constrained on the I2C_EN pin status, and you can't read it from the
> >>> device, so it's also something we need to have in the DT.
> >>
> >> I think the purpose of the I2C_EN pin might have been misunderstood.
> >>
> >> I2C_EN is not meant to be toggled, ever, by anyone from this planet.
> >=20
> > Toggled, probably not. Connected to a GPIO and the kernel has to assert
> > a level at boot, I've seen worse hardware design already.
> >=20
> >> I2C_EN is a layout-time setting, decided by a board manufacturer:
> >>
> >> - If the TDP158 is fully configured once-and-for-all at layout-time,
> >> then no I2C bus is required, and I2C_EN is pulled down forever.
> >>
> >> - If the board manufacturer wants to keep open the possibility
> >> to adjust some parameters at run-time, then they must connect
> >> the device to an I2C bus, and I2C_EN is pulled up forever.
> >=20
> > How do you express both cases in your current binding?
>=20
> It's not that I'm ignoring your question.
>=20
> It's that I don't understand what you're asking.

And that's fine, you just need to say so.

Generally speaking, you're focusing on the driver. The driver is not the
issue here. You can do whatever you want in the driver for all I care,
we can change that later on as we wish.

The binding however cannot change, so it *has* to ideally cover all=20
possible situations the hardware can be used in, or at a minimum leave
the door open to support those without a compatibility breakage.

That's why I've been asking those questions, because so far the only
thing you've claimed is that "I can't test the driver for anything
else", but, again, whether there's a driver or not, or if it's
functional, is completely missing the point.

> SITUATION 1
> tdp158 is pin strapped.
> Device node is child of root node.
> Properties in proposed binding are valid (regulators and power-on pin)
> Can be supported via module_platform_driver.
>=20
> SITUATION 2
> tdp158 is sitting on I2C bus.
> Device node is child of i2c bus node.
> (robh said missing reg prop would be flagged by the compiler)
> Properties in proposed binding are valid (regulators and power-on pin)
> Supported via module_i2c_driver.
>=20
> If some settings-specific properties are added later, like skew,
> they would only be valid for the I2C programmable mode, obviously.

I think there's a couple more combinations:

  - The device is connected on an I2C bus, but I2C_EN is tied low
  - The device is connected on an I2C bus, but I2C_EN is connected to a
    GPIO and the kernel needs to assert its state at boot.

The GPIO case can be easily dealt with later on using an optional GPIO
in the binding, but the current binding infers the I2C_EN level from the
bus it's connected to, and I think we don't have a good way to deal with
cases that would break that assumption.

So I think we need an extra property to report the state of the i2c_en
pin (and would be mutually exclusive with the GPIO if we ever have to
support it).

Maxime

--gzcmjcbc6xzbf4ex
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZqij+wAKCRAnX84Zoj2+
dpSbAYD7bw/BPCnWme2toeNTN2iOJRZ6QxDg1sL9CWBnuAIEulrsO5qrFE0QKN2i
m/DAaVgBewTRNn3OvJuNyB2cC2sEg6A/Xh6uMEqPX3z217MLmwFP3g370Ig88eNe
Z3Aa0buNig==
=fQmt
-----END PGP SIGNATURE-----

--gzcmjcbc6xzbf4ex--

