Return-Path: <devicetree+bounces-34582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F51383A41B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 536161C215AB
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9031756A;
	Wed, 24 Jan 2024 08:26:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C8A17565
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706084800; cv=none; b=eBw7lht0dtDWgK0vUGtIBKCcdrVQigN9CKthm/+1yPHXxwwbvuHx6525tJYJPcWmNvwp4SXv8UiGHtxmmqQTZNlVtLjo1672zkEiE8xiByKqss8NBsy0k7M1FnQ5org5WfmtV8QNNgU9ZwOAK9Dp4LBTBd05kjaeSUhT6yEKf+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706084800; c=relaxed/simple;
	bh=HQRiUyWco/AQAm8j4TGQ2KP7Et83Pp67ONtM56voZgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K81eAJRO0FlEI4qQeqQ1mggqs615hdUAkKNUolxkl8iX0GMRUZjfKtG9mgOeOn0p1vs1fYMxe25NW/5Ig4nFNZkYHgeGVQdacy9Ud9+atmk78L2FsYUfHx9N3rxY5Pkz1y6mcXenWL2F2yZ8gmGE7WVVZ+ddQLotjTRZ5rfv3P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYag-0006T1-8M; Wed, 24 Jan 2024 09:26:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYaf-0020x1-75; Wed, 24 Jan 2024 09:26:33 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYaf-006zXL-0P;
	Wed, 24 Jan 2024 09:26:33 +0100
Date: Wed, 24 Jan 2024 09:26:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Johan Jonker <jbx6244@yandex.com>
Cc: linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Message-ID: <5swqcqpc5zwa3bfhuoyjnymozyzy3lgurnbsurebybj2c7fck3@ycwk2ugo2ouf>
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
 <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
 <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g63cxjnywwxblftj"
Content-Disposition: inline
In-Reply-To: <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--g63cxjnywwxblftj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Johan,

On Sun, Jan 07, 2024 at 11:30:14AM +0100, Krzysztof Kozlowski wrote:
> On 07/01/2024 00:25, Uwe Kleine-K=F6nig wrote:
> > On Sat, Jan 06, 2024 at 10:25:10PM +0100, Johan Jonker wrote:
> >> On 1/6/24 18:10, Krzysztof Kozlowski wrote:
> >>> On 06/01/2024 15:26, Uwe Kleine-K=F6nig wrote:
> >>>> This fixes the dtbs_check error
> >>>>
> >>>> 	arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb: pwm@10280030: 'inte=
rrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> >>>> 	from schema $id: http://devicetree.org/schemas/pwm/pwm-rockchip.yam=
l#
> >>>>
> >>>> in several device trees.
> >>>>
> >>>> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >>
> >>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> NAK
> >>
> >> There's a reason why this isn't implemented before:
> >>
> >> [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts property=
 <https://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a27219728=
52@gmail.com/#r>
> >>
> >> https://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a27219=
72852@gmail.com/
> >>
> >> [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588 <ht=
tps://lore.kernel.org/linux-rockchip/20220901135523.52151-1-sebastian.reich=
el@collabora.com/#r>
> >>
> >> https://lore.kernel.org/linux-rockchip/66b5b616-ae9f-a1aa-e2b5-450f570=
cfcdd@gmail.com/
> >>
> >> [PATCH v1 03/11] dt-bindings: pwm: rockchip: add rockchip,rk3128-pwm <=
https://lore.kernel.org/linux-rockchip/f5dd0ee4-d97e-d878-ffde-c06e9b233e38=
@gmail.com/>
> >>
> >> https://lore.kernel.org/linux-rockchip/946d8ac2-6ff2-093a-ad3c-aa755e0=
0d1dd@arm.com/
> >>
> >>
> >> On how to correctly model the DT with common interrupts , PWM and one =
shot as a sort of MFD etc there's no consensus yet.
> >>
> >> Leaf it as it is till someone made a working driver demo, so that the =
coder is free to model a DT solution that fits to him/her.
> >=20
> > Having the warnings until this happens is bad though. If describing the
> > irqs in the schema is considered wrong, we should remove the interrupts
> > properties from the device tree sources.
>=20
> I think the previous thread mixes bindings with driver. Does the
> hardware have interrupt? Yes? Add it to the bindings. No? Don't add it.
>=20
> However Johan's reply is saying something about driver, so how is it
> related?

Following Krzysztof's argumentation I'm inclined to apply the patch
despite Johan's objection as the irqs are already described in the
device trees and not having them in the binding only adds warnings to
the dt checks.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--g63cxjnywwxblftj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWwybgACgkQj4D7WH0S
/k5/Jgf/b/nfgkm/z6r4IycnlkEkHBd6KuwpTZCG/WLoFRBzIv5EGibepKaqeBPj
Afvp9Kw4vGeNU1fGvGgDII7i8+V4KK4QpIIB7/8dCH6G+u+rDmm+dnPcB0wtWKX7
I2H+tO1SEiegnpvn17AiqC2datTVeKuOatRlUQeNpfsc3QtNk5MJ0Gc2y8u4CC7s
A1A7GF3GJko2JF/5+lV5tS/uQORgyL6GIe3z1bEd+Nuzu0G3rMOZNTSdqnRigZRz
3E9nAKTWY6RHje4OFBe/qqfaH5enxziFkLNcR29GF5AHaVKiU0uDHBLHiyYiEi6G
kCiQix9wyz3lQM+EuhN3PZnhSyQmHg==
=beb2
-----END PGP SIGNATURE-----

--g63cxjnywwxblftj--

