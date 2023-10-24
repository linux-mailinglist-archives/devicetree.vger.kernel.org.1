Return-Path: <devicetree+bounces-11341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DAA7D54B8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:09:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 323E6B20E53
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4CA2B776;
	Tue, 24 Oct 2023 15:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgZv75zm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B468A13FED
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 740BAC433C7;
	Tue, 24 Oct 2023 15:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698160141;
	bh=WjZOHjehQIEdnvElJew7f9x5ZqLGCeUVjwRuHOMlEjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CgZv75zmnuoQ3ekkikQC5x9qSL7DET36FFJXesbijJrWTAliIFHfRSIjF6/JXUDQ0
	 d+cP6SIFduzbCM5SmWKiaiRL18S85MiUGZ8OX1xnjboThQELef/voEBlHUIIa4Yc80
	 0P++v7esCbdc9Z1jAU+oRLa52c7PCgm+7OaJJG19BLbu2WUUIDxnUugkzoKgEgtHig
	 xbqa1LPQHGhx0lPElbc/GcNikq8DiiOhwHgeUguRliY3sJJiAYe+wSeAuj/zX1NwXL
	 s9T/KMpbHqCf2cLHEaSW4y52qBo5mgOAtijYPOOu3uxicZgzGpkSpEPL5Unstd12Hi
	 /HclSTJxGaD5w==
Date: Tue, 24 Oct 2023 16:08:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: backlight: mp3309c: remove two required
 properties
Message-ID: <20231024-paddling-spongy-be82eae03228@spud>
References: <20231020135434.2598578-1-f.suligoi@asem.it>
 <20231020135434.2598578-2-f.suligoi@asem.it>
 <20231020-moonrise-senate-86d0edb2d404@spud>
 <DU2PR01MB803498DFD93E82DD3947D72DF9D8A@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
 <20231023-anybody-silver-4548023f8f26@spud>
 <DU2PR01MB8034CF8EE4358B9446809AA2F9DFA@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8Q3LPtznJIWd+xHE"
Content-Disposition: inline
In-Reply-To: <DU2PR01MB8034CF8EE4358B9446809AA2F9DFA@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>


--8Q3LPtznJIWd+xHE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 07:53:38AM +0000, Flavio Suligoi wrote:
> > On Mon, Oct 23, 2023 at 09:28:03AM +0000, Flavio Suligoi wrote:
> > > > On Fri, Oct 20, 2023 at 03:54:33PM +0200, Flavio Suligoi wrote:
> > > > > The two properties:
> > > > >
> > > > > - max-brightness
> > > > > - default brightness
> > > > >
> > > > > are not really required, so they can be removed from the "require=
d"
> > > > > section.
> > > >
> > > > Why are they not required? You need to provide an explanation.
> > >
> > > The "max-brightness" is not more used now in the driver (I used it in
> > > the first version of the driver).
> >=20
> > If it is not used any more, what happens when someone passes an old
> > devicetree to the kernel, that contains max-brightness, but not any of =
your
> > new properties?
>=20
> This is not a problem, because the device driver has not yet been include=
d in any kernel.
> My patch for the device driver is still being analyzed by the maintainers.
> Only this dt-binding yaml file is already included in the "for-backlight-=
next" branch
> of the "backlight" kernel repository.
> At the moment, this driver is used only in a i.MX8MM board produced in my=
 company,
> under my full control. No other developer is using it now.

Right. This is exactly the sort of commentary that you need to provide
up front, to have us spent a bunch of time going back and forth to
figure out :(

> > > The "default-brightness", if omitted in the DT, is managed by the
> > > device driver, using a default value. This depends on the dimming mode
> > used:
> >=20
> > For default-brightness, has here always been support in the driver for =
the
> > property being omitted, or is this newly added?
>=20
> In the first version of the driver this property was a "required property=
",
> but nobody has used this driver before, so this should be not a problem.

> > What I would like is an explanation in the commit message as to why the
> > revised example is more helpful than the existing (and
> > must-remain-valid) one.
>=20
> As said before, no one may have ever used this device driver,
> so I would leave only this new version of the example.

Okay. Please improve the commit message explaining why it is okay to
make these changes & send a v2.
The alternative is that Lee drops the dt-binding patch & you submit a
revised version of the binding alongside the next iteration of the
driver.

Cheers,
Conor.

--8Q3LPtznJIWd+xHE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfeCAAKCRB4tDGHoIJi
0iFhAP9S/FlnjK5C6KCH6pLyfeeCD1U8XFRW7kZPbpJplU8SCAD/bkAcQQd5VU9d
3r2f744R9Cw33bKy5n99PAJBaey2KwU=
=8wm8
-----END PGP SIGNATURE-----

--8Q3LPtznJIWd+xHE--

