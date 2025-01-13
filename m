Return-Path: <devicetree+bounces-138070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC16A0BA57
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D9933A05AB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1056623A0F6;
	Mon, 13 Jan 2025 14:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATXTWNbG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD16323A0E7;
	Mon, 13 Jan 2025 14:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779919; cv=none; b=tD6GuHY1GyWTvdJTM8ojyn2DnmcAMpKnw9gPpSS30bcSqfTDMmhoiaivzr2H6yF1JJ9f1sLYvtq/eG+oEM7yGMbsQQMzzCLs87E9Azb3vem/oaqlDmdTwpfQ106DURQZmhtxrBMVGUVt5ucErfi3BRVVqA48pjjyYJaQQV2pWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779919; c=relaxed/simple;
	bh=uLQz9Gspj9N6xZEdlZSbNEFyBFC8Xjh/R+rkbGHpbbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JerjIlEyW7/xIE+UlCDkMNAaO9kcOemz3fO5HZ7c+5o/u1zkKiiUd9mRYtDTPv06/Gh9FmsoXCSXokoDSF6G/Uq3oYzlTuC21U2DBb1sA+zumU7HkPRTR1BIst5KFSWdGOd0Mki2Ecss5Xfe2+2sd6nHhZCW/9lS2QHt9/4a15M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATXTWNbG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 491A4C4CEE2;
	Mon, 13 Jan 2025 14:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736779918;
	bh=uLQz9Gspj9N6xZEdlZSbNEFyBFC8Xjh/R+rkbGHpbbU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ATXTWNbGWGl813XPS+jv1Ix0weR28R0oBo00ogyVUhjNv6nEywtbwQUsNt5+fyKbT
	 csndsc8tIwWbmWgjjH0dHuz8goh59MNlzbXm/NWPwBo9C2mV56TLjELeGRjg9fsMhl
	 C1K2SwqT0kKd2DThb+4IrysSq0deY8a7Z1NiMrVVpN+n8C9lR1URsYxlHWmxLaQX/t
	 24WD+rPWsA+HTx/AnQH4TirjwMfxM8Ie/8hXaeF2rxyyAcvkuc57j089LsuxTs/IwJ
	 Uryza0r+/tzMnzOgh2MisptXkUciATQ6kBXamQ+DioYp5Mv57PrSkFrx7vditusjjt
	 vZ2ogqjIbG/mQ==
Date: Mon, 13 Jan 2025 14:51:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
 <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
 <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
 <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7Ez1COzbfkS4RkPI"
Content-Disposition: inline
In-Reply-To: <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
X-Cookie: You will outgrow your usefulness.


--7Ez1COzbfkS4RkPI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 13, 2025 at 03:45:51PM +0100, Kory Maincent wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > joining it up with the power limiting.  It's fortunately not used
> > dynamically by anything at the minute so we could just remove that API
> > and replace it by a power one, given that nobody uses it and there do
> > appear to be users for the power based API.  We do have some things that
> > set current limits in constraints IIRC.

> There is few users for the regulator_set_current_limit function.
> https://elixir.bootlin.com/linux/v6.12.6/A/ident/regulator_set_current_limit

> Not sure we could replace it to power limit that easily.

Huh, I wonder what tree I grepped in.  The DRM usage is yet more broken
usage of the regulator API, I'm not sure why it attracts this so much,
but the others are legit.  Still, we should be able to map between the
two.

> > We probably also need something explicit about how we handle baseline
> > load from things like passive components, the assumption probably needs
> > to be that it's negligable.

> We could add a devicetree property on the consumer node, but lets keep it for
> later.

One problem is that there might not be a consumer node - things like
random passives don't tend to get represented.

--7Ez1COzbfkS4RkPI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeFKIgACgkQJNaLcl1U
h9CGHQf9FDviKeOJDjm0M0B7Wm/a6fur07ae/mB4j2EmuYRmtyDel/2pEXEFxDKv
v7A6zy37shCjMShi6BLBGJfQ1UW5zWpu6AUHmN2G+S9bUfecUjyR0AkrFJ1e+1uS
4EhYoNLzJ/D9s1Ou5JGJqlGKexN4VBrM9L2VK/LR1w3zCQQmbBKloOFQu353eO9z
e/aSNtEZKJxKR4B+Dz+xtnxclRhiLrTvmf66Ih1MyNbzVKEA3GR0awghn8cPtAtM
vvrwGpaYoslRzgTQdpA/0ZtyrnVyyZxygBklBeWcO6dkk23x2+ozjiBh/firOeW1
d3VfvyWgX5SfDWkmZm9Z5hd0Mle0qw==
=5s+3
-----END PGP SIGNATURE-----

--7Ez1COzbfkS4RkPI--

