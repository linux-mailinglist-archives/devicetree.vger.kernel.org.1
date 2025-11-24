Return-Path: <devicetree+bounces-241645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAADC805F2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B96884E516E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4A8F2FF678;
	Mon, 24 Nov 2025 12:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHHWsTh3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0392F90E0;
	Mon, 24 Nov 2025 12:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763985934; cv=none; b=DQDr9ScAWVdA2ki89s98PLRmM+l1QBHWNZB0rpnifohN598mUZP3yk6yTbUYh/GVEzINr8XDK4O8UanOsYaWNbFYtWkw02R/dBNrPReyi37soN2FKnCg/F44PZdnK0HGplVM2QdjFEcSaNOJ9kS/1lRAIT8wEyNMzBIEQmb/rKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763985934; c=relaxed/simple;
	bh=7sR0Xbnj66wneSR7F9/azeDlJ41BISBs9n+yKLO7m4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mxx9pCny5yP5TvH1rE1bLNK1SxuZvbSDKaI+2ufklykw+sZNgvhvqjU2Fh2hpcV6kgizo15ktPpB5g0utoyheV7eWbbOiJ3GdKLhs7mnqXEkvHQgI7GxndtnRFixqk3P4b1SOxxPh2ji60Lk/Nty/Bq4MzjwE91pi5mYrooVnNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHHWsTh3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D48C4CEF1;
	Mon, 24 Nov 2025 12:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763985934;
	bh=7sR0Xbnj66wneSR7F9/azeDlJ41BISBs9n+yKLO7m4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PHHWsTh3KJww1D4UdL22qgXtxdbcHwZuvGinbQte4VW/acqy3pwcVegXrqEXVaEzF
	 bfEOQCd0NbRLem1rhJEW/jDeVbivSZXdyKyVn5h/FqZ6MvBhZrl9+YaTqoUbPv8LDj
	 Rki0vAtHq6zYji++QfrZdUOsvrSbwrTh9l90a8U8X6hESvfHOS8KwV/Uf9YV3SXfhY
	 B+l+CFrS85I4Zvp8rUiT16XHRD1TflT4XKXs+n6VDPBqlCUv5ztCV1XCUIU4TynmML
	 OnPYetb8p0fLfKBEZsJXYCKzoDndm8n8sv6c5BlqUbWPvLPN5GT7uXbfG3x0uzgHsb
	 zP8RGHT70spCQ==
Date: Mon, 24 Nov 2025 12:05:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <20251124-said-overvalue-8a8f49d6c99d@spud>
References: <20251124105226.2860845-1-uwu@icenowy.me>
 <20251124105226.2860845-3-uwu@icenowy.me>
 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
 <f7bbb57180866a0674fc1d72d4bd3279c7b1c1e9.camel@icenowy.me>
 <c26dabfb-c4af-428b-a1d4-d626f37ff559@kernel.org>
 <f944f0b28f62233b1874e0f00c0a130d71845417.camel@icenowy.me>
 <6ceb41bc-0597-4ea5-84be-51f53e3bc2d8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="538wj/U0UoW9sjer"
Content-Disposition: inline
In-Reply-To: <6ceb41bc-0597-4ea5-84be-51f53e3bc2d8@kernel.org>


--538wj/U0UoW9sjer
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 12:27:09PM +0100, Krzysztof Kozlowski wrote:
> On 24/11/2025 12:13, Icenowy Zheng wrote:
> > =E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 12:09 +0100=EF=
=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> >> On 24/11/2025 12:04, Icenowy Zheng wrote:
> >>> =E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 12:01 +0100=
=EF=BC=8CKrzysztof Kozlowski=E5=86=99=E9=81=93=EF=BC=9A
> >>>> On 24/11/2025 11:52, Icenowy Zheng wrote:
> >>>>> Verisilicon has a series of display controllers prefixed with
> >>>>> DC
> >>>>> and
> >>>>> with self-identification facility like their GC series GPUs.
> >>>>>
> >>>>> Add a device tree binding for it.
> >>>>>
> >>>>> Depends on the specific DC model, it can have either one or two
> >>>>> display
> >>>>> outputs, and each display output could be set to DPI signal or
> >>>>> "DP"
> >>>>> signal (which seems to be some plain parallel bus to HDMI
> >>>>> controllers).
> >>>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> >>>>> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> >>>>
> >>>> Wrong DCO chain order. You send it as icenowy.me, so this must be
> >>>> last
> >>>> SoB. This identity is the last one certifying DCO. Please kindly
> >>>> read
> >>>> submitting patches, so you know what you are certifying here.
> >>>
> >>> Well I mapped the @iscas.ac.cn mail to the @icenowy.me one in the
> >>> last
> >>> patch.
> >>>
> >>> Or maybe I should make it the first patch?
> >>
> >> .mailmap has effect on b4 and git send-email, so maybe that's the
> >> answer. The problem is that:
> >> 1. This email has sender address @icenowy.me
> >> 2. It's SoB is not the last one.
> >=20
> > Well, I think a patch that is already sent shouldn't have the From
> > field changing when bumping revision, and a patch modified by one
> > identity should have the modifying one's SoB added.
> >=20
> > So here I am using the @icenowy.me mail (which can represent the
> > @iscas.ac.cn mail according to the mailmap) to send the patch that is
> > processed by @iscas.ac.cn mail.
> >=20
> > Sending the patch with @iscas.ac.cn mail needs some extra setup
> > (because of some weird security requirement).
>=20
> I did not ask you to change from. Please read carefully "You send it as
> icenowy.me, so this must be last sob"
>=20
> and later I re-iterated.
>=20
> If you insist on not fixing the chain, that's a NAK from me because you
> must follow the DCO process.

I don't really get what the fuss is with the dual signoff, what's the
point having both when they represent the same person? Pretty sure it
was you (Krzysztof) and Arnd that told me not to both doing the double
signoff.
I send lots of stuff w/ my kernel.org address but only ever sign off
with my work email since that's where attribution is going.


--538wj/U0UoW9sjer
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSRKBgAKCRB4tDGHoIJi
0pDoAP9o1Z5CFCq+ltlB03RgUrPunXHtjmI71AAiETEwSj3kbwEAmDA3YF7DfVAf
hHIyC/Q0TN/Eo9y5SG6XmQ3VImCekQ0=
=8YX3
-----END PGP SIGNATURE-----

--538wj/U0UoW9sjer--

