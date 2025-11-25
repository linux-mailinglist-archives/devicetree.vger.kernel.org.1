Return-Path: <devicetree+bounces-242122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E92ABC86BF0
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 20:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D10A84E19E2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 19:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD8832D452;
	Tue, 25 Nov 2025 19:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2sBjc92"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43010224AF2;
	Tue, 25 Nov 2025 19:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764098051; cv=none; b=fB34ufJSX9NhRzaWLyfu5EY+HkyfsGv8UPaI24kevAslM/FcqS/WrbTSeUY1L3+iLgSQNE9aWDa5uryrQRrp6vMTMoBWy4zwcG/49s+yPAahQd2Q6kAcKbklGPEXC0aemExgHbecrMZN5NI0xhO4SBSp+j8obicQTZOr+FKWv3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764098051; c=relaxed/simple;
	bh=9YyxCftvyPpNqO/zThdyq9ELQ/bGk2MOT5444oriALA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=koINXspk0zT8O9vUntHSZ1SvMEOxtxgFHZSrNdJjIwN+6h8WRuxCJsMGTJcPRD+EPA9SqBu7VQ1RgjLlEJICk54h9rvgrvsgyb7cu3D/RhG5EepIfY7vLrPgxjlpROR5tpBbWEw8ERN6899ixccDxrcUThlnhiEnHpKestr/x0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2sBjc92; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2C2C116B1;
	Tue, 25 Nov 2025 19:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764098049;
	bh=9YyxCftvyPpNqO/zThdyq9ELQ/bGk2MOT5444oriALA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n2sBjc92dFvvPUgZI/0U/1Hz+lghtF6AxW0U/tsgEUcYqIzJDGL3VtABJmqo6qpiU
	 vTER+dnCVeREKbDUoq9oCE7qABlMYm0ldShIbZJM1R/4U43Eqez5fzcdDpAcg+vtKd
	 93HgsUlQVplInfBuz1H1rwjo+KNgFx6+uyunnatJuHAIw8mucxEeUJpXRku+BPF4mf
	 NGapG36PdOWX6+wJS9ycHstRG35CHDyJl44gRl9bNsmyY99eNXqNwbWKRfXGel4dlm
	 gfYNirE5cWtRqFUGNJSU/i4SD2GAozo2WSr5sojMi9AI5sPM3cOczGmSNZRXZB5aGK
	 lo/MMOgEFqFOQ==
Date: Tue, 25 Nov 2025 19:14:04 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Icenowy Zheng <uwu@icenowy.me>, Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
Message-ID: <20251125-borrowing-arming-9c256497af8f@spud>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
 <20251124-state-campsite-3e7788a495c1@spud>
 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
 <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
 <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
 <0a2104faee332ee143b5499c18aea3625971156c.camel@icenowy.me>
 <fb9ca9fd-1591-4e43-b055-b6ea8d55a42a@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="70y7hwIBPKmbUhHP"
Content-Disposition: inline
In-Reply-To: <fb9ca9fd-1591-4e43-b055-b6ea8d55a42a@freeshell.de>


--70y7hwIBPKmbUhHP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 25, 2025 at 05:07:00AM -0800, E Shattow wrote:
>=20
>=20
> On 11/25/25 00:01, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-25=E6=98=9F=E6=9C=9F=E4=BA=8C=E7=9A=84 08:48 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> >> On 25/11/2025 08:33, Icenowy Zheng wrote:
> >>> =E5=9C=A8 2025-11-25=E6=98=9F=E6=9C=9F=E4=BA=8C=E7=9A=84 08:28 +0100=
=EF=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> >>>> On 24/11/2025 22:59, E Shattow wrote:
> >>>>>
> >>>>> On 11/24/25 05:22, Conor Dooley wrote:
> >>>>>> On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
> >>>>>> wrote:
> >>>>>>> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
> >>>>>>>> From: Icenowy Zheng <uwu@icenowy.me>
> >>>>>>>>
> >>>>>>>> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
> >>>>>>>> board.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> >>>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
> >>>>>>>
> >>>>>>> <form letter>
> >>>>>>> This is a friendly reminder during the review process.
> >>>>>>>
> >>>>>>> It looks like you received a tag and forgot to add it.
> >>>>>>
> >>>>>> It's from me, don't resubmit just to add it since it'll be me
> >>>>>> applying
> >>>>>> anyway.
> >>>>>>
> >>>>>
> >>>>> Hi Conor,
> >>>>>
> >>>>> Okay. Yes I'd dropped the tag since the commit message is
> >>>>> appreciably
> >>>>> different, and you would be handling it again anyways. Thanks!
> >>>>> And
> >>>>> thank
> >>>>> you Krzysztof for the reminder -E
> >>>>
> >>>>
> >>>> And where did you explain that you dropped the tag because of
> >>>> that?
> >>>> Please read the form letter carefully.
> >>>
> >>> Well I think there's no clear definition of "the patch has changed
> >>> substantially" here.
> >>>
> >>> E may think for this such-short patch, the commit message weighs a
> >>> lot
> >>> and the change to it is significant to the patch (e.g. making the
> >>> patch
> >>> not clear enough).
> >>
> >> You still did not bother to read what we expect. I do not discuss if
> >> this changed significantly or not, although it is obvious that it did
> >> not change and tag should have been retained.
> >>
> >> Look again:
> >> <QUOTE>
> >> Please read:
> >> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/proces=
s/submitting-patches.rst#L577
> >>
> >> If a tag was not added on purpose, please state why and what changed.
> >> </QUOTE>
> >>
> >> Where did you explain that?
> >=20
> > Sure, I agree that explaination of this should be delivered.
> >=20
> >>
> >>
> >> Best regards,
> >> Krzysztof
> >=20
>=20
> Krzysztof,
>=20
> The submitting-patches document does not support your assertion in this
> situation. I evidently have a different understanding of than you, as
> when I read it before sending the series I did arrive at the action of:
>=20
> 1. Acked-by is less formal and so it is a matter of opinion and
> judgement whether to retain it or not. I choose not to here due to
> changes visible in the commit log (the commit messages and titles). I
> would let Conor decide if they will acknowledge the revised series
> instead of making that decision for them.

If anything, acked-by being "less formal" would mean that it's more
resistant to chances in the patch.

> 2. I am not required to mention the drop of any Acked-by tag in the
> cover letter for this situation. Conor is handling this series so I do
> need to participate on the mailing list when there's a question or
> comment about picking up the lack of Acked-by.

If I were you, I would pretty much always mention the reason for
dropping tags unless the changelog or cover letter contains some pretty
drastic changes between versions thereby making it really obvious why
the tags are gone.

--70y7hwIBPKmbUhHP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSX//AAKCRB4tDGHoIJi
0itWAP4liiNjiJ+0fpF83sw6dcznvAKjeJUH0cyzATI3hQeTjwD+IoEOlLMs4aoR
6c19DoYnPnMiAFJAjV3jf16Tenw3mQE=
=WIRP
-----END PGP SIGNATURE-----

--70y7hwIBPKmbUhHP--

