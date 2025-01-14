Return-Path: <devicetree+bounces-138477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D849A108DC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78F3A1622F0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E5085C5E;
	Tue, 14 Jan 2025 14:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7AqcXP2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67697232448;
	Tue, 14 Jan 2025 14:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736864121; cv=none; b=Y6XPyKkNjTMuK0RJjMWAPhSILKrpcwMew602O7B3cp5kXQFDi7vheQqRairI/0U82aLXxHVvw9awRrPu8DteVn6zX8wLPTQv2LiAcio37xRrTZZUMU1aQF8iNh5XWfTMb3wgwPW2nCaIbTUoC8Vy9VuE5P7zPh/aIX2mry2zYW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736864121; c=relaxed/simple;
	bh=r06iAKaEy587eggweTVNAXmeaYWSRfuZNe5fwaQnde4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=swmKMvoJamSeFbKWWgTrVndwGmYI0phZWhpFLTeUdL7MzkfchuQlNAgG0sdcic8uUI5NlOj7F4L6V4dInA6WQzildhR/83JXtjfQOJejTageURLMuEhEd16p90gle8+7cOHobuE8MrLMjDvIPNkdrbbTNuv2thMrMWfWOrHDDNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7AqcXP2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB2D1C4CEE1;
	Tue, 14 Jan 2025 14:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736864121;
	bh=r06iAKaEy587eggweTVNAXmeaYWSRfuZNe5fwaQnde4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i7AqcXP2q2UHDgOmNQTrrR+4akbg9BHmADTs6fx4RClJ4Et6hvZJIW2DXOfhdbos1
	 V6QjeZuuCrKnqoDDSEZISwY4rg/jHCokSB/bVXr3f9BZchVtmZ3wmODoLIBkdXPjOQ
	 m6Ch3XYoxrFo0C+O/giI+Wj7LWP8lnmSYK41lu1+L6yWorfqq6r14zQTU/6oZ14Ddq
	 tJp373b3O3MPlKB2dypgkhFLlrusAccuIO2Z+83LAxuT0ciGmy1iMa2thDKwRDZ4Xv
	 YnpOeztZ7q1GdqrhDmv5AMtjbWaMODkQvBMnhyYOMNJcWfj6wwqB/wpSNJFcsyn1nV
	 EYdFJU/34bedw==
Date: Tue, 14 Jan 2025 14:15:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <bea06b24-a47c-4b9b-8fcb-1ae8494cfcd5@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
 <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
 <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
 <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
 <b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
 <20250113162620.3c244302@kmaincent-XPS-13-7390>
 <8f5ce662-f8bc-449e-99cf-737066dabebd@sirena.org.uk>
 <20250114145328.437a3375@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="15riv+8wG3IfOMGK"
Content-Disposition: inline
In-Reply-To: <20250114145328.437a3375@kmaincent-XPS-13-7390>
X-Cookie: Sauron is alive in Argentina!


--15riv+8wG3IfOMGK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2025 at 02:53:28PM +0100, Kory Maincent wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > Yup, indeed.  That said I am wondering if it's safer to just configure
> > the constraint in the hardware rather than the currently requested
> > limit, considering what might happen in the case where there's multiple
> > consumers that have only been partially updated.  If the hardware limits
> > or shuts down rather than warning it'll blow up badly so it might be
> > better to be conservative.  Unfortunately we don't distinguish in the
> > ops.  Possibly it should be a policy thing even but then that's better
> > at runtime...

> Indeed, should we begin without it and see later if we add it?

I think so.

> We could simply add an event for now:
> regulator_notifier_call_chain(rdev, REGULATOR_EVENT_OVER_CURRENT, NULL);

We should (TBH I thought that was there already) but part of the problem
is that a bunch of the hardware will shut down or otherwise do something
that we might not want when it hits the limit.  Again something that
could be addressed separately/incrementally.

--15riv+8wG3IfOMGK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeGcXIACgkQJNaLcl1U
h9DyTgf/cSQ/wf8ILam6wODeRDf/k/cFH7WLUzsC4PrM4LpB3f3Z3uTu8/7Wlh93
rRsTHRoulENk33ywBqhDJkxT3fDeRb+NfuOLOdkaqOiPNeGefUAko9MT16FVvVBE
ZtsC/lJpPphEYyPXwid9S4GVaZ6D6Z6nTr1zL2ssw+puRBguz9PtKo1VfXJVBd9q
JVidG/nK0Z3yD0dC+QM+vDHCp9YmVCSE2hK+xd8DQ94hLDMZYWwrIqPH3Dgv3txK
SRZeF5lU3jcawSimfbWAvoHqxM4CmqM6edu7g15guOJ4gu9FEFgpmSdYfhb4xy+r
RonkwGK9BWrrdgtGLjFUu+moehqLMw==
=Oo8w
-----END PGP SIGNATURE-----

--15riv+8wG3IfOMGK--

