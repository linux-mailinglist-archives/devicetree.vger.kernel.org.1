Return-Path: <devicetree+bounces-6993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C226C7BE620
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F36711C2098C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 16:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B37738BB2;
	Mon,  9 Oct 2023 16:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueG4FvCW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06E374C6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 16:17:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 272BFC433C8;
	Mon,  9 Oct 2023 16:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696868259;
	bh=1I9Mf0P70RDfN2bWDORGQ7rejIEzlWu8nj21FaxunAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ueG4FvCWARpNVmDgXA7EKEoHYkK543c6nnLJkJyo1VXbTfAzaCxx5Aoua/yEHbol3
	 o4sr5OFut3T87VxzmRx+WXRKdyVLf/xZhv8183TPX6B1vkvQv9/uTTqD6XimoP9Ih/
	 D2HQK+a0ZGa8qetpGmHe1ibvwWiZqjCA+FOn6OjJR695v+oPEDf2AHM1jJXvgD8FZb
	 aWHGDcYi0Qi/Ty4+fKTd3ty51g9VtP5mOFbsKCAt9dnm4nyWbDe6mbVzHJ/2vWtCeR
	 7KkaSaIYYATYR+AExbXJo5js5rjpkB008YqkEJpQPi2y5pt2wjCSZwRs44oKPSfivQ
	 xIACtvNeuJffw==
Date: Mon, 9 Oct 2023 17:17:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 0/5] Add RZ/G2UL MTU3a support
Message-ID: <20231009-elderly-squad-a739461e5e64@spud>
References: <20230727081848.100834-1-biju.das.jz@bp.renesas.com>
 <20230831-iphone-muscular-7442cda2c39e@spud>
 <TYCPR01MB5933370B7660B8504B2D8D7386FBA@TYCPR01MB5933.jpnprd01.prod.outlook.com>
 <TYCPR01MB112697D67514D2E6FC690B9F886CEA@TYCPR01MB11269.jpnprd01.prod.outlook.com>
 <576809c2-b7bc-4342-9c63-0662bfcecebf@linaro.org>
 <20231009-lure-overcome-f33ee1fd6480@wendy>
 <42ed1a41-a59c-478b-8ef2-4000f0509150@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aAbF7L5PVlLbwYHe"
Content-Disposition: inline
In-Reply-To: <42ed1a41-a59c-478b-8ef2-4000f0509150@linaro.org>


--aAbF7L5PVlLbwYHe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 09, 2023 at 04:18:13PM +0200, Daniel Lezcano wrote:
> On 09/10/2023 15:59, Conor Dooley wrote:
> > On Mon, Oct 09, 2023 at 11:52:13AM +0200, Daniel Lezcano wrote:
> > > On 09/10/2023 08:54, Biju Das wrote:
> > > > Hi all,
> > > >=20
> > > > Gentle ping. This patch is in the patch work for a while.
> > > > It is acked/reviewed by Conor Dooley and Geert Uytterhoeven.
> > > >=20
> > > > Can we apply to mainline if you are happy? Or do you want me
> > > > to RESEND the patches? Please let me know.
> > >=20
> > > Krzysztof ?
> >=20
> > Daniel ?
> >=20
> > (Or for the non-telepathic, what is "Krzysztof ?" supposed to mean?)
>=20
> Sorry I missed you were in the DT bindings maintainer list. I was expecti=
ng
> Krzysztof tag.

Heh, I figured that that is what was going on, but my telepathy skills
were a bit lacking and I was not 100% sure... NW!

--aAbF7L5PVlLbwYHe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQnngAKCRB4tDGHoIJi
0l8PAP9T0L4kqeS6/ASmu3yIS50Za7MyLA0Jb8xkzTKiqMKSFQEA/j8oMP+ApNPf
I85BeVxW73nPy5pB8htbvqQXubCK2AA=
=ObgY
-----END PGP SIGNATURE-----

--aAbF7L5PVlLbwYHe--

