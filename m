Return-Path: <devicetree+bounces-245639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5CCB381E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 17:43:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA78330052A5
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C88322C66;
	Wed, 10 Dec 2025 16:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDWqVryA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D384A07;
	Wed, 10 Dec 2025 16:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765385024; cv=none; b=ODZInbWwGZ9m7UZmfznw+kbXC0ag4l5a1EFvD4SncyLQNFrPIsbm54OyqEtOx7nr7Rp2Sa+sQI3XHFW+Jr/ECeUUEvL+5H/9+1eSfr0JbLx9zzTctTQW3vXBTGYufnLOXRMt6YVQqDAkJcdY/9HfjXL5AaZtvdUsKPKN8u19auo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765385024; c=relaxed/simple;
	bh=vX82vHpfuSWdB2Gu15A/XQ203JPU6YTJg2N9kCrjbV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fKzuoiKWEbAPO8+ntnFc0M78A3CWwDTD/ulbRCb10I2MLfeYysp5Nr6bG/JiDv+HcOVyfF09/61+K9+aSRq4lCt38Xcs8BrHidZJf8qxd9EiE8v9h2H6AeI7fOh6+T9V+u/7uq7FOhy7h5dWtd05M3icl5lWTfoAlOqS6B2lJdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDWqVryA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FEFFC4CEF1;
	Wed, 10 Dec 2025 16:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765385023;
	bh=vX82vHpfuSWdB2Gu15A/XQ203JPU6YTJg2N9kCrjbV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hDWqVryAgEe8uGEOAbB827iUYnBqCyZF8ZgzA2fsbaE8CMs6jzHSXkQjlFH8cP4tB
	 KU4DLLZJ8UhHy6gvsbzsIBUs7hHBP5MK9uX5Juo17CzfMp8LYuXltVxKddfNVhB3zM
	 hxmgKU2sTpZN4FFEGcrbVycC+vhcLa9O1/waqdAjbsnC1/co/pTrS11XbMriMYVB0f
	 WwHIxDCMR60dXsjloJpfd5FqluJGfcuhT7dF07UHBHPSVLg2HEqwoE/p/WVrByVEH8
	 jNzeRgT+p2dtQ9xZ/py8MWSXtlPJAgXq6o+kglkq4EamV4Q30Rn8ZiMNuNZ22XzKGz
	 CVrbRU4TMlUmg==
Date: Wed, 10 Dec 2025 16:43:37 +0000
From: Conor Dooley <conor@kernel.org>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: E Shattow <e@freeshell.de>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Hal Feng <hal.feng@starfivetech.com>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110
 compatible to VisionFive 2 Lite
Message-ID: <20251210-pull-pleading-57c880596510@spud>
References: <20251206204540.112614-1-e@freeshell.de>
 <20251208-jogging-morally-9b787b7ab1b8@spud>
 <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
 <0bb12889-cb28-44e7-b2d6-7ecba6264d1a@freeshell.de>
 <d8fa12cc-7a03-4954-8ea5-1e2edf9a149d@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zCievs4J+eiCE9vK"
Content-Disposition: inline
In-Reply-To: <d8fa12cc-7a03-4954-8ea5-1e2edf9a149d@sifive.com>


--zCievs4J+eiCE9vK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 09, 2025 at 03:18:58PM +0900, Samuel Holland wrote:
> On 2025-12-09 9:53 AM, E Shattow wrote:
> > The unanswered question what I was asking in the code review of StarFiv=
e=20
> > VisionFive 2 Lite series: What is the normal thing to do for compatible=
=20
> > strings of relabeled silicon when there is a suggestion of different=20
> > operational parameters?
> I don't think we are very consistent on this, and some of it depends on h=
ow
> different the binned chips are from each other.

Largely I think the lack of consistency stems from there being relatively
few users of these soc-level compatibles, so there's nothing really gained
=66rom having one in a lot of cases.

> Example 1: Rockchip RK3399 has several bins. RK3399-S and RK3399-T just o=
verride
> the OPPs, but reuse the SoC compatible string without change. On the othe=
r hand
> RK3399pro is a superset of RK3399, but uses a new compatible string witho=
ut a
> fallback.
>=20
> Example 2: Allwinner H616 (https://linux-sunxi.org/H616) has multiple
> bins/packages/die revisions. H313 is a down-binned version of H616, which=
 reuses
> the SoC compatible string without change. H700 is a superset of H616 (sam=
e die,
> more pins), but uses a new compatible string without a fallback.
>=20
> > I can include the (paraphrased) above summary by Heinrich, yes. Although
> > now I doubt whether this is the best approach, when removal of
> > "starfive,jh7110s" compatible is potentially an equally valid fix, or if
> > we're rather considering JH7110 at 1.5GHz maximum to be a superset of
> > itself at 1.25GHz maximum (JH-7110S). Would we want to change all the
> > JH-7110 boards to then have JH-7110S as the least-compatible, if I am
> > understanding that meaning of "superset"? I would like to know what is
> > expected.
>=20
> If starfive,jh7110 is a superset of starfive,jh7110s, yes, it would be va=
lid to
> add starfive,jh7110s as a fallback compatible string in all of the existi=
ng
> board bindings. But this is not very useful, as existing software already=
 looks
> for starfive,jh7110, and you can't replace that without breaking compatib=
ility
> with existing DTs. So the advantage of one compatible string (mostly) cov=
ering
> both SoCs only applies to new software.

Yeah, adding it to the existing stuff provides no real benefit.

--zCievs4J+eiCE9vK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTmjOQAKCRB4tDGHoIJi
0so3AQD3KkPLV7QxsDVX34aXmDpzy7tqoYbs2VYHfVRVM4Qu0wD+KLORYZ1rE4aP
9WtBk/WpLmKag2G2+OqeLI/H/hzxRAg=
=Gfec
-----END PGP SIGNATURE-----

--zCievs4J+eiCE9vK--

