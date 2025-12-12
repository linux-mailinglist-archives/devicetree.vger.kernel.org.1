Return-Path: <devicetree+bounces-246175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9ACCB9804
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 19:00:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01DD0303134E
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 17:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E252F60DB;
	Fri, 12 Dec 2025 17:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnKkkqOs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D1F2F5322;
	Fri, 12 Dec 2025 17:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765562354; cv=none; b=oHp+CGGMBHAiQWOBp9amcpEEDBIP5rfvjEMyEleG0RXxPIX8lo9TppTiUOT+3enM771IUFE8B2vDnLON2tBHQmIUveGUDxC7MLSNK2fjkZjVXCn/KXuEnF5XWno40CfMPtlVBh4/C616GvV8zJwIu86yl+MW+7m76YrTVjOG6hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765562354; c=relaxed/simple;
	bh=8RRRc4CBHUq0nTddaC6P4w2gbfOVChhf7hvdjIaZf3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HDYRY9tV6Jdwydm7SkGp2q1w5NYpRQs5c87SHpoMihF/nfE6rfFvceulmEghiCm0VWmYmO1V/5Uj4GQeo9ufPsdTRnRa6pzWOWzFwYtHLBvyLBvED3SL93zHoBa1SnN5hy/wGe3+qIjxY7nq4V1QUVP7itfiC+udY9CnI0NFyF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnKkkqOs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DADD3C4CEF1;
	Fri, 12 Dec 2025 17:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765562353;
	bh=8RRRc4CBHUq0nTddaC6P4w2gbfOVChhf7hvdjIaZf3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JnKkkqOsuQYo6Kg/tf3OLKczT7R+rmDIqxBXoC1ouGBPIYWybMu1jOjUCYs1AIhbX
	 Xja5+84QoJsD6CPaTpUPv50qtXCmrctCWJCBQTZxlHbye+f4Bp9ov3MT0ybaryu05A
	 VrAvQARc/Kdeb0EalRbebKXZBb0QPcYvNCpIJeTJDcjl43oxH38TFAhlgI7yzrMQyp
	 75RM7OWSrr4mW1g7Ve+ze5CVITxQc2WqlDjwxvraGvXtHVaGl5mBJb9n+CuuXwcta2
	 LONKGNyC4CbiBwCAvW+LYLypMAEcX+tJVIX5Z+dHXyDZRD7RQldGFxdk9iCFDaCIYr
	 xltoAOAUV0UPQ==
Date: Fri, 12 Dec 2025 17:59:08 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Samuel Holland <samuel.holland@sifive.com>,
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
Message-ID: <20251212-arming-slacks-18b9407f69e3@spud>
References: <20251206204540.112614-1-e@freeshell.de>
 <20251208-jogging-morally-9b787b7ab1b8@spud>
 <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
 <0bb12889-cb28-44e7-b2d6-7ecba6264d1a@freeshell.de>
 <d8fa12cc-7a03-4954-8ea5-1e2edf9a149d@sifive.com>
 <20251210-pull-pleading-57c880596510@spud>
 <4b08ce35-9d2d-4e7b-9ea6-c1dcbc4ad04d@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Kfbt5e6Jlj5iflno"
Content-Disposition: inline
In-Reply-To: <4b08ce35-9d2d-4e7b-9ea6-c1dcbc4ad04d@freeshell.de>


--Kfbt5e6Jlj5iflno
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 08:23:54PM -0800, E Shattow wrote:
>=20
> On 12/10/25 08:43, Conor Dooley wrote:
> > On Tue, Dec 09, 2025 at 03:18:58PM +0900, Samuel Holland wrote:
> >> On 2025-12-09 9:53 AM, E Shattow wrote:
> >>> The unanswered question what I was asking in the code review of StarF=
ive=20
> >>> VisionFive 2 Lite series: What is the normal thing to do for compatib=
le=20
> >>> strings of relabeled silicon when there is a suggestion of different=
=20
> >>> operational parameters?
> >> I don't think we are very consistent on this, and some of it depends o=
n how
> >> different the binned chips are from each other.
> >=20
> > Largely I think the lack of consistency stems from there being relative=
ly
> > few users of these soc-level compatibles, so there's nothing really gai=
ned
> > from having one in a lot of cases.
> >=20
> >> Example 1: Rockchip RK3399 has several bins. RK3399-S and RK3399-T jus=
t override
> >> the OPPs, but reuse the SoC compatible string without change. On the o=
ther hand
> >> RK3399pro is a superset of RK3399, but uses a new compatible string wi=
thout a
> >> fallback.
> >>
> >> Example 2: Allwinner H616 (https://linux-sunxi.org/H616) has multiple
> >> bins/packages/die revisions. H313 is a down-binned version of H616, wh=
ich reuses
> >> the SoC compatible string without change. H700 is a superset of H616 (=
same die,
> >> more pins), but uses a new compatible string without a fallback.
> >>
> >>> I can include the (paraphrased) above summary by Heinrich, yes. Altho=
ugh
> >>> now I doubt whether this is the best approach, when removal of
> >>> "starfive,jh7110s" compatible is potentially an equally valid fix, or=
 if
> >>> we're rather considering JH7110 at 1.5GHz maximum to be a superset of
> >>> itself at 1.25GHz maximum (JH-7110S). Would we want to change all the
> >>> JH-7110 boards to then have JH-7110S as the least-compatible, if I am
> >>> understanding that meaning of "superset"? I would like to know what is
> >>> expected.
> >>
> >> If starfive,jh7110 is a superset of starfive,jh7110s, yes, it would be=
 valid to
> >> add starfive,jh7110s as a fallback compatible string in all of the exi=
sting
> >> board bindings. But this is not very useful, as existing software alre=
ady looks
> >> for starfive,jh7110, and you can't replace that without breaking compa=
tibility
> >> with existing DTs. So the advantage of one compatible string (mostly) =
covering
> >> both SoCs only applies to new software.
> >=20
> > Yeah, adding it to the existing stuff provides no real benefit.
>=20
> I agree, there's not any benefit to add "starfive,jh7110s" as the
> least-compatible to existing stuff.
>=20
> The reply from Samuel is quite helpful however it's not any clearer to
> me what direction to take this.

I think the idea is fine, just explain why it'd be helpful in the commit
message and do the dt-binding change that this doesn't cause warnings.

--Kfbt5e6Jlj5iflno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTxX7AAKCRB4tDGHoIJi
0nmjAQDvW2M/SJc1mloZZeSTieEzeq3XEtz99LP8y2uOdYeEzwD+Km3roylyabwi
8vw0sl/uT0llCM/gnJswUJDN6CjCywc=
=7Ipe
-----END PGP SIGNATURE-----

--Kfbt5e6Jlj5iflno--

