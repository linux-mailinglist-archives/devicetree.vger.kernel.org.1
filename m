Return-Path: <devicetree+bounces-11367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A68057D5732
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB9992816D1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC7F138DFA;
	Tue, 24 Oct 2023 16:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK8WUa3b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861002E62F
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:01:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3227CC433C7;
	Tue, 24 Oct 2023 16:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698163297;
	bh=Mf9kKkvzbQgiQoeDAatd1OQUmxwlJN/S9OyYQXKGEc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qK8WUa3bIEr5FMNqVlHlcv/pJpND1bXxoulr/BdaYyQf9uvQOkvA/Uzu6Jc6WDupb
	 dlNYzubaHJCVOf15l3TRgXc8TaKMBgJJMS77aEXGNryEt8sxNcny3FYT/L4D2v2ewN
	 GfKhZHL7iKMJyZidX9kSKrP9ljif52CGo1zIlMYUWZKFLM0qZsST/G/U+rtExG0oCL
	 V2+0clA1AKHDy69ld3IHyhEGhn+jo+31END9zgXqbsnL0GpUgJmNJ4ey4sGzG4cf5r
	 GUM6174Uht9M2HnTzvIUTvAn49uqLWDsY3FGKkghNhbDszK2kHBMUuw2ocn1bOA4KI
	 RgfXGimBuwy9A==
Date: Tue, 24 Oct 2023 17:01:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] regulator: fixed: add support for under-voltage
 IRQ
Message-ID: <8cec1d82-76f1-4547-a6a9-139d535b68d8@sirena.org.uk>
References: <20231024130842.2483208-1-o.rempel@pengutronix.de>
 <20231024130842.2483208-3-o.rempel@pengutronix.de>
 <471281bf-4126-496b-93ef-0807f4910ce7@sirena.org.uk>
 <20231024140634.GD3803936@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ZRbw1cI2dEt2bA3"
Content-Disposition: inline
In-Reply-To: <20231024140634.GD3803936@pengutronix.de>
X-Cookie: 1 bulls, 3 cows.


--6ZRbw1cI2dEt2bA3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 24, 2023 at 04:06:34PM +0200, Oleksij Rempel wrote:
> On Tue, Oct 24, 2023 at 02:26:24PM +0100, Mark Brown wrote:

> > We need a bit more policy here - the regulator could be critical to
> > system function but it could also be well isolated and just affecting
> > whatever device it's directly supplying in a way that the system can
> > tolerate and might even want to (eg, for something like a SD card or USB
> > port where end users are plugging in external hardware).

> Hm, how about devicetree property to indicate system critical nature of
> the regulator. For example "system-critical-regulator" or
> "system-critical-undervoltage-interrupt" ?

I'd probably go with the former.  As a code thing we probably want the
driver to generate an under voltage notification and then the core uses
that notification to trigger the power failure handling.  It feels like
we might end up doing something better in future but I'm not seeing it
right now and there's a fairly clear argument that this is a part of the
hardware design.  It shouldn't be too bad to do backwards compatibility
if required I think.

I'd put the property in the core regulator bindings then it'll work for
everything.

--6ZRbw1cI2dEt2bA3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU36lsACgkQJNaLcl1U
h9DEMAf/b0hht0qoFdMoe5Xkj2U2OnGOK7SA/X4atAV+jFj6c8lqiDzcEA0O6Whe
vJKLyZaHjJmBjPxjkSBb2Cw3CSyIRQCy5cYEfil7m1ryhCApq35ZxDN3Fp09AJkx
C8KnYdQQouG1Y+VCigihXlMrMAU4ldCzDNqLMiZStToWj5cckDsB4X/G76zGJ+NV
YKpoLF0L5PXUbiKcQv2xbdPTdKZ0XAntTUa4cgVTQe494R0Z+LagUcppzZr6m+9k
c1MHoL0eoiANPW4917PzDUgXsCMIyFySzjNQRqAjaxLCJgTwLhkNmE3zy4Vkve/j
0rLWz3pyl3hVFzdEmhrTOZ07TU7jsA==
=YAgb
-----END PGP SIGNATURE-----

--6ZRbw1cI2dEt2bA3--

