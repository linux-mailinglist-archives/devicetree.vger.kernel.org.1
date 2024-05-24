Return-Path: <devicetree+bounces-69012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B548CE696
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 16:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D78411C219EB
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 14:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB8B86636;
	Fri, 24 May 2024 14:01:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914B686255
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 14:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716559319; cv=none; b=kRX5jnwMUBJw20Dgee56w2cZES1NNR44wqPUPzLj7UVmH32joTRSGPqXxAX8NaZhK0PCxKuR5REPMFEBc9hNU5MKpEAb2NIG8LnoyYKE8Ze+yLUWEJiZNdHTmT0BrlJ7X4LN91p4jdv6GGfRTqYBsWb4xAAi+2WjJOt3YOn0WeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716559319; c=relaxed/simple;
	bh=NY5DZo2keldw1Tp/cmGYN8DjxzuoD7v9MPhLqsijU0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qL0kMprZCeCLO+FkFGtXXkzRjx4NObsWp6RQGuQbVdVzFsV0oCjvijZvz7YXD16AcYJnprwr9F3Abbm+ndrccxWgzEtDLse0ZZz64Zad2XniUd1fFPfUsd3iR8pGiDrfRFf66XONpjExTcDBNEVv0htCMn6bLkqWi8gADBTXwk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1sAVUI-0001KR-2V; Fri, 24 May 2024 16:01:38 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1sAVUC-002nnD-Qc; Fri, 24 May 2024 16:01:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1sAVUC-00BNeg-2L;
	Fri, 24 May 2024 16:01:32 +0200
Date: Fri, 24 May 2024 16:01:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Juxin Gao <gaojuxin@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, 
	loongson-kernel@lists.loongnix.cn, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev
Subject: Re: [PATCH v3 2/2] pwm: Add Loongson PWM controller support
Message-ID: <aqcpf2tjt4iywxc7vgddkzaxtotlua2mnnpfsivpwobrc64neo@gylq5sl6sahk>
References: <cover.1713164810.git.zhoubinbin@loongson.cn>
 <c89917023b49fff70bc89ddb66be7da4e0fe67ef.1713164810.git.zhoubinbin@loongson.cn>
 <t3efvxh4d2xvjh4pfrdnho6mwonwm6spjer72ww3wiqx2v3a2x@52ufzsdhc44i>
 <CAMpQs4KyX3A-Bxyp7+evBT5Umb03OvpV0VtqrNjAnZPYZ_dNQw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m6qvlzhmbrdzg3ms"
Content-Disposition: inline
In-Reply-To: <CAMpQs4KyX3A-Bxyp7+evBT5Umb03OvpV0VtqrNjAnZPYZ_dNQw@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--m6qvlzhmbrdzg3ms
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Binbin,

On Fri, May 24, 2024 at 02:29:35PM +0600, Binbin Zhou wrote:
> > > +     ddata->duty =3D pwm_loongson_readl(ddata, PWM_DUTY);
> > > +     ddata->period =3D pwm_loongson_readl(ddata, PWM_PERIOD);
> >
> > The rounding looks wrong. Did you test with PWM_DEBUG enabled?
> >
> > I think the value assigned to ddata->period and the other members isn't
> > used. Unless I'm mistaken, please drop the assignment.
> >
>=20
> The period, duty and ctrl are prepared for PM. I plan to put these
> three parameters separately into the pwm_loongson_context structure. I
> think it will look clearer:
>=20
> struct pwm_loongson_context {
>         u32 ctrl;
>         u32 duty;
>         u32 period;
> };

But .suspend() reads the value from the registers and rewrites these
three members itself, too. So the write in .apply() is unused and can be
dropped.

The suggestion to put this in a struct is nice. I'd call it something
with "suspend" though, maybe "pwm_loongson_suspend_store"?
=20
Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--m6qvlzhmbrdzg3ms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZQnbsACgkQj4D7WH0S
/k52zwf/Q2TCGQKtD2L4IwNcg0/uwjW65m8tsFTF7ir7jcOQySLXwPbZ5efUrLu2
mKQT0Inkk1oGzdv9RT3nBBmCKl39FrH5ErFDJY924irw52NxosBwYSRHJAdH10xl
Mbs44d9JGJNqK0sxHvC9JSmz0xq1ymUgT02bDgPnM7n+scA4Ne3LQlc2vRLRAxjT
FDdUP3c56RbpNzTNxcVBI/WG/elYX35t6OL9rdQIuH7sfQYDxaNVXhRmqRUVRyB3
MyXUPZqlik3bwZKr8BIU6swR5bw4wpq1Cl3bxrStGF3gFxA6lA2bUkOuOym6V1x4
sAOrHYtDJ4Gi9jAInQMT3bNfRHzeeA==
=cm1l
-----END PGP SIGNATURE-----

--m6qvlzhmbrdzg3ms--

