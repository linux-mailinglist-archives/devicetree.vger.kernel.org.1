Return-Path: <devicetree+bounces-66111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF448C140D
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 19:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D63A1C21D37
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 17:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D6117BC2;
	Thu,  9 May 2024 17:30:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E1B1759E
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 17:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715275802; cv=none; b=BcIRz43FF7S5LLAnmKiojNHWHQ3p4G3VvRseC6YFgBFRB2G9DxR8apMyCs18dT011kRbmUP20O8bJcxkZekTGyMEMzY1lI3tf+fJnBa7cY/DT+CdlqslARPZedCGWUXwbxeOCOPcrN+/SctOXpNRqy5VV72k3GGdQwxYB5SBJvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715275802; c=relaxed/simple;
	bh=w2h7XneCk2MaV80gK1ryvpL88EXGmMJN8AHtD7/dmsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2u80IJoSZdgYFoKWPh2jbdG8ZfNayTt6Vt9Vz1LXeJZORT7rkc8/vO0fJhR2O36Hctnm9VtdXrvFTAHTXyG8QBZsIYWoBdg8WfRn1R3KWjZc8CBRo/vqRWyVtCjK+mlGeR2ppH6aNHIxTPv3w8gf4Vxu73StLN0pbsf2upC6aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s57aC-0003Yj-7T; Thu, 09 May 2024 19:29:28 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s57a9-000UgF-2s; Thu, 09 May 2024 19:29:25 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s57a9-001PcK-00;
	Thu, 09 May 2024 19:29:25 +0200
Date: Thu, 9 May 2024 19:29:24 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, 
	Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	loongson-kernel@lists.loongnix.cn, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: renesas,tpu: Do not require pwm-cells
 twice
Message-ID: <dthqwkvdy7qkkwr6bvvi3mwutuaggnj3xripwa2jvqv4lni5bd@3zlnzotkmmfx>
References: <c0590d8898e553f29c96c7c4083f7b3ca1915727.1715050962.git.zhoubinbin@loongson.cn>
 <CAL_JsqJewzGp5E+O44JgvHu9Q-3PKaXnhjUQbmV7OHfFCEX3Ug@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="svvbuq3olqx47rsc"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJewzGp5E+O44JgvHu9Q-3PKaXnhjUQbmV7OHfFCEX3Ug@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--svvbuq3olqx47rsc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 09, 2024 at 08:46:14AM -0500, Rob Herring wrote:
> On Tue, May 7, 2024 at 1:54=E2=80=AFAM Binbin Zhou <zhoubinbin@loongson.c=
n> wrote:
> >
> > pwm-cells property is already required by pwm.yaml schema.
>=20
> This should be dropped or reverted.
>=20
> > Suggested-by: Uwe Kleine-K=C3=B6nig <ukleinek@kernel.org>
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >
> > This is a missing patch to cleanup the required pwm-cells attribute twi=
ce[1].
> > Thanks to Uwe for the heads up.
> > [1]:https://lore.kernel.org/linux-pwm/cover.1714450308.git.zhoubinbin@l=
oongson.cn/
> >
> >  Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml=
 b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
> > index a3e52b22dd18..4c8ce7a26d13 100644
> > --- a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
> > +++ b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
> > @@ -16,7 +16,6 @@ select:
> >          const: renesas,tpu
> >    required:
> >      - compatible
> > -    - '#pwm-cells'
>=20
> This line is not requiring #pwm-cells, but rather only applying the
> schema when #pwm-cells is present. It is needed because there's also
> renesas,tpu in bindings/timer/renesas,tpu.yaml. Without this,
> linux-next now has these warnings:
>=20
> [...]

Huh, indeed. I only grepped and didn't notice the context of the line. I
dropped the patch.

Sorry and thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--svvbuq3olqx47rsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmY9B+0ACgkQj4D7WH0S
/k4cowf/Z6dozCYzK9DiFHM/0340/SNDomoR2MHiqfpe565MjkhAISkq88wrIT9f
ZBb76SN04FljZfUjSo0kX6qeshyIIe8MO6s9il96bNOue8i4YqHY6E+kFHAu6Wot
5XwtvW7f3/acQaWpu13LyunLifwGFvafP891XMN3iBgRmbvpZZ/b4OP78/V7SdM2
fQKj154b4ci00chQ7yT+BXUj5QGX8fc2Er76FHFNMi0nYr77EnAI2sEkYWb0Wxg1
FUdoWa5lnV8U/wsohICoukVCxZT0KSCIjHuXl05mllSe2Yek+SzGJZ0fGxiW9Yfz
jeQSEiDOzeJYJRS0L/5sxCVzqNZOfw==
=iMm5
-----END PGP SIGNATURE-----

--svvbuq3olqx47rsc--

