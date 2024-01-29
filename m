Return-Path: <devicetree+bounces-36280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC078406AA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CA471C24907
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F3362A03;
	Mon, 29 Jan 2024 13:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe0bYNUl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA35657CB
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706534383; cv=none; b=s8BxZGsczru+zSz9leaLTNXDdb89fd2dulaeI0WJFCtHfplWpHfUymp+s0Fg7/U+mliFB/1BpFcFLD0uBtLzWVKaTHR1IOg7sTjecMm/7gIrmawZm2Tblq78Nv10tAL0Ouhm7USu4ERgv6CUG5CZiZh0ltulEBBIB3iymxiPV/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706534383; c=relaxed/simple;
	bh=y5CXI94G3cDdvg0pcCH5XgYbMc63lmzQNHlNCcB70es=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MySAI5xxHH6A3mA1ePcCCcNQm6e72Fvd0n2WZb/c6YWKqza+5EHwSi2K7qF7e0/SRRE9rJjtrTwGcJPIqEuA5EvSNQzLtyMlVc280jySI9+fYKIZlTP3G1UczH70U+Xn+P4ORJk7sBxV1FSoQX5zOxLONrxODCSOKI/n5Y1G96E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe0bYNUl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD9DEC433C7;
	Mon, 29 Jan 2024 13:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706534383;
	bh=y5CXI94G3cDdvg0pcCH5XgYbMc63lmzQNHlNCcB70es=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=Xe0bYNUl9QMWFwqhe1MZa1YTZaKfcC3tIGjoUKBxu+Zx3Ye2SeoOy7al/5Ti5yxGo
	 v0lr4sM08W3nE4eIYDTuG5rJoC6SFdKvADTS2zF3TBgDvQalD3wpoV0NP01YDTeMyt
	 6FsQfq/HZOsAvZjV6HR4zX5PLkpSJ02WS6EHtThpeJxgKx45zrUHcQLXmj9c6xtybM
	 cKxrbblOBDq7azJZRFXxxlXNkOzBP9WbdWxm+UyOl0UxUt4Fmpw9Y1xq/+vgjG7eFd
	 ri+9FQr+/iz6ZmoMc2J6JK6GeEYtCvPqQ6ANZ+xA3Nh/byjPW3g4DT0gBBWni7P1Dp
	 FpqN5z1McHa6A==
Date: Mon, 29 Jan 2024 14:19:39 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	devicetree@vger.kernel.org, John Crispin <john@phrozen.org>,
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, dd@embedd.com
Subject: Re: Support for airoha en7581 Soc
Message-ID: <Zbel62idW9Nsm3k6@lore-desk>
References: <ZbeJ5okKQ66FXGxP@lore-desk>
 <f16842b0-0086-41b6-a366-e27ccb2905c1@collabora.com>
 <20240129-gawk-strongly-91344f34d004@spud>
 <841e102c-c5ab-432c-bdba-efdd67a3c129@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uedfQUkScHt4J/Y/"
Content-Disposition: inline
In-Reply-To: <841e102c-c5ab-432c-bdba-efdd67a3c129@collabora.com>


--uedfQUkScHt4J/Y/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 29/01/24 12:39, Conor Dooley ha scritto:
> > On Mon, Jan 29, 2024 at 12:34:37PM +0100, AngeloGioacchino Del Regno wr=
ote:
> > > Il 29/01/24 12:20, Lorenzo Bianconi ha scritto:
> > > > Hi Matthias,
> > > >=20
> > > > I was wondering about the status of the following patches:
> > > > https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-d=
d@embedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
> > > >=20
> > > > Do we need to respin them? Thx in advance.
> > > >=20
> > >=20
> > > Lorenzo, I don't think you have to.
> >=20
> > The compatibles in en7581-evb.dts appear to be undocumented as of
> > whatever linux-next I have checked out from late last week.
> >=20
>=20
> Right, there's a 7523, but not a 7581.
> Needs one more commit :-)

ack, I will respin the series.

Regards,
Lorenzo

>=20
> > >=20
> > > Matthias, should we update the MAINTAINERS file to include the MediaT=
ek
> > > Airoha folder?
> > >=20
> > > Actually that question is for both ARM and ARM64.
> > >=20
> > > Cheers
>=20

--uedfQUkScHt4J/Y/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZbel6wAKCRA6cBh0uS2t
rLKKAP0X1DePP1bARIHXEF/5mypfT+arrtryoEQ7ehczSWXlTAEAinijWXxxK+CJ
RQLBIHlUy3mvQ1RYDtA4B5cy0Jvk6AQ=
=iF8F
-----END PGP SIGNATURE-----

--uedfQUkScHt4J/Y/--

