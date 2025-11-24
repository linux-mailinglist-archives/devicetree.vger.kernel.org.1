Return-Path: <devicetree+bounces-241655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5285AC80703
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C11703A148C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AAC61D6193;
	Mon, 24 Nov 2025 12:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOW8LXM6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F26743AA4;
	Mon, 24 Nov 2025 12:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986812; cv=none; b=P2NqkS50usunnZ4QZYYX1enVam7X4WCphp1HVX60MEvhCFLGuQ4K+qfgWR9NYjXPZ91scuv7E44eYspCxtsIElzaQ2qOqrUB8r0lXso6YIq31XdJUxgJO+bq5BGSt8/wCRumlr9hiFJHzlXEfxovpK0me8bQiK1XZkGfUoVjHKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986812; c=relaxed/simple;
	bh=/Yj6YE4nwthYIL0rOIKkvsqhHOAJVwTXZM7e6cPjilI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kZ3bmoV34Vpb2KfFeRYPUwMofmDlyFpU2/fsPxa7oO/kgA/rNJeQEq17rJ2qI6aX9Wxv0xm4y9rtN+PFNMypg7JML4mofvRDoXkateP9i4yMc8EP6S9vMRz7lwT6P4MXO8bFEvqONTsZKso9jjOw2IyKCg8Sb8KFnWfbkMzDqNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOW8LXM6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CABBEC4CEF1;
	Mon, 24 Nov 2025 12:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763986811;
	bh=/Yj6YE4nwthYIL0rOIKkvsqhHOAJVwTXZM7e6cPjilI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FOW8LXM6jn+tyShA7JzzS7B75rWdGAjSbVmsNC7op1FkTrHLxbqL056CpUrHTOaAt
	 Fmo0V/XYMdFbgaqArrJxeJmlocKsGcE+x3XN/YvFQWtP6cvwA/VWdG5JqWo0T7qf0i
	 jspUtiynQyQGf1MTZkUTC8MhxQx1NDQsAnZvXC+4q/REblJHzdxed1VBecfN8Zgzml
	 38YrA3tOYAVqq9rt6avIhg6TmPxGEUQ9QfWezFxniOkuTAJEmfVrHKINKtRgwOd7W1
	 q70gB+M8/fT5A13BDmWFTWaOQpDjpiPnQ4AWNah9S5GEXbYeRs9whu27vLViO9fmZi
	 F5oC6MKpai3Bg==
Date: Mon, 24 Nov 2025 12:20:04 +0000
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
Message-ID: <20251124-pulp-pound-a2b6d749dcfc@spud>
References: <20251124105226.2860845-1-uwu@icenowy.me>
 <20251124105226.2860845-3-uwu@icenowy.me>
 <d4cfe8bb-5ca2-40a9-bfe0-96e7ded5586c@kernel.org>
 <f7bbb57180866a0674fc1d72d4bd3279c7b1c1e9.camel@icenowy.me>
 <c26dabfb-c4af-428b-a1d4-d626f37ff559@kernel.org>
 <f944f0b28f62233b1874e0f00c0a130d71845417.camel@icenowy.me>
 <6ceb41bc-0597-4ea5-84be-51f53e3bc2d8@kernel.org>
 <20251124-said-overvalue-8a8f49d6c99d@spud>
 <477bbcbe-17d9-40ae-be10-be4fd107687e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kdnfVisB77n/BULr"
Content-Disposition: inline
In-Reply-To: <477bbcbe-17d9-40ae-be10-be4fd107687e@kernel.org>


--kdnfVisB77n/BULr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 01:08:00PM +0100, Krzysztof Kozlowski wrote:
> On 24/11/2025 13:05, Conor Dooley wrote:
> >=20
> > I don't really get what the fuss is with the dual signoff, what's the
> > point having both when they represent the same person? Pretty sure it
> > was you (Krzysztof) and Arnd that told me not to both doing the double
> > signoff.
>=20
> I do not object having or not having dual signed off HERE.
>=20
> I never said that. Just like I never said "From" has to be changed.

I didn't say you objected to both being there. *I* am saying that it is
probably not worth doing. That's especially the case when it is adding
complication about correct ordering of signoffs and maybe interacting with
how git-send-email decides to insert From: fields.

> So repeating THIRD time: sender's SoB cannot be somewhere else than the
> last one.
>=20
> ... and before you attribute me another thing I did not say - if you
> change the "From" field, rules will be different a bit...



--kdnfVisB77n/BULr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSRNdAAKCRB4tDGHoIJi
0ptBAP956X1zit1/KmamkExrxDO5JHMTMOIMyhqNrJtUut8iogEA/6YMiCwput82
DBhi2ECBNDPoqb3RvOun1DrwHY3DUA4=
=uorq
-----END PGP SIGNATURE-----

--kdnfVisB77n/BULr--

