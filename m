Return-Path: <devicetree+bounces-134441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C819FD704
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 19:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEBAD7A205F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3928D1F892C;
	Fri, 27 Dec 2024 18:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP4+l5Mx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D97A45005;
	Fri, 27 Dec 2024 18:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735324798; cv=none; b=gRQvQ3b5TcKxHOK/MvlTQ0S3oZ4fz72KFDN4yb4srzTB/BuEyI9VyOe6nsxEjROK775lrA4g1Hp7HhUlp6Rvol2yVqN1Xd3SWDZuuq4QWe/iQhCM+pADXrARqjRJ6qItlcn5+yeqeP+8nwx8bB/nkR0QHDy1oDsmGY9/jMcSzag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735324798; c=relaxed/simple;
	bh=MNrCK6XPcXOoPj5ut2wmZfeib4qboxWdm6CRH71+73Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nDMCobO965y4itgSxt/lnocDD0fP2F9JnuoMLpSmR6Du77gWjGRTUgL59FSt+Y9Vl1H+G7OqOTay8O217c+/9yp7Y7k9URvZhZZkzQcc9YeRRh4zA2KdPBGBoBVPHgSVaCzSaxvE9eQdgslnj8YrrWpJjVNExO2OaAzVPpPPOgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP4+l5Mx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BFF2C4CED0;
	Fri, 27 Dec 2024 18:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735324797;
	bh=MNrCK6XPcXOoPj5ut2wmZfeib4qboxWdm6CRH71+73Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lP4+l5MxM8k/2KGbS9gE7IaXTjLcRZXFkSWB43/9yt0qbNCXhK/OilgtPZCxliM9A
	 bKh+il5T/TKVdvA/qAlAQq08eExAUNCpQtHbcCInHIcWxu78j2Lz/qiEQGST8ooCmc
	 6HQIfO2pQiwEvJcRLMEd9NW1lU5r9IJ5FT/DYYTlsuybKrlOcfIug1JHdojIEedcS6
	 gHznqSdEf395SSDDwzg6lsUWIa8AqosmiuGFnnPHgEwEnFpHjAwnRzcSG7k09LQ9/g
	 QwtMzPgX28NeUGVaXQe/PLc23acZHBaV0l7KWGiaXpFR/gD0x5Oaid6LnThtiuqTkf
	 TINSdK6NkG6jQ==
Date: Fri, 27 Dec 2024 18:39:53 +0000
From: Conor Dooley <conor@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Siflower
Message-ID: <20241227-muskiness-retention-734a3d3d3c6b@spud>
References: <20241223034350.215375-1-gch981213@gmail.com>
 <20241224-finalist-unaligned-c94635604376@spud>
 <CAJsYDVJr-eypyZuPrGywpdruzSXoM8phBCKHNg_VFsRfCi-T7Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OCZhtt+fSvw4VdR5"
Content-Disposition: inline
In-Reply-To: <CAJsYDVJr-eypyZuPrGywpdruzSXoM8phBCKHNg_VFsRfCi-T7Q@mail.gmail.com>


--OCZhtt+fSvw4VdR5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 25, 2024 at 09:12:33AM +0800, Chuanhong Guo wrote:
> Hi!
>=20
> On Wed, Dec 25, 2024 at 4:24=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Mon, Dec 23, 2024 at 11:43:49AM +0800, Chuanhong Guo wrote:
> > > Shanghai Siflower Communication Co. is a manufacturer for home router=
 SoCs.
> > > Add a vendor prefix for it.
> > >
> > > Link: http://www.siflower.com.cn/en
> > > Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> >
> > Where's the user?
>=20
> I'm about to send some drivers for siflower chips. Should I duplicate thi=
s patch
> in all the driver patchsets instead?

No, what you have here is fine.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--OCZhtt+fSvw4VdR5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ270eQAKCRB4tDGHoIJi
0jbUAQDHKthcSkZcVNcY3XGTOfHK8kp0BzYe5/dkeTLC25efjwD/d/oSiBAi4rXI
qABfhnSsvBirSCcLbhmD0NWldtUIUwU=
=ILRN
-----END PGP SIGNATURE-----

--OCZhtt+fSvw4VdR5--

