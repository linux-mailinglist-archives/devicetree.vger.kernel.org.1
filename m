Return-Path: <devicetree+bounces-239421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BDEC64A93
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 013D74E179F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D125A325705;
	Mon, 17 Nov 2025 14:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJjCL/VI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71C41D31B9;
	Mon, 17 Nov 2025 14:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763390188; cv=none; b=KxJVEs9Z8qBopqrcZztypLs4T8zRBkzqCXlHR+/lggK/gMO61AwNJOTxqNZe7y0xF6uaCFZHeIuKKQMT6Lz5bFvt0v2lgsZIBSQqADMPXgHbUK8NM/4zhBBpDgd2dHaXw7P4V9JBkagrvzmqR6Hgl6MAmS1p08ICVDofeO/9Pb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763390188; c=relaxed/simple;
	bh=jpHTq2VyCK6MMaE3F5zeDQdp65AE4LebUx2/HG6St10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VU11BLXxw6iJwWmyuXM0QQJfAerztrBsWbiHRJCTs2ELbPzkaRKxVj0xEQzqoCJcw3EW99iLoD2KGzBWyQk36eKsOScYgSdr3k7vjP9FBT9GdqEj4JaMR9/wmYsfsOTogWHDXfAEk/cXhN4hp2g5yYMwIEO80C2MOj+zo+85u7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJjCL/VI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C79D4C2BC9E;
	Mon, 17 Nov 2025 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763390188;
	bh=jpHTq2VyCK6MMaE3F5zeDQdp65AE4LebUx2/HG6St10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cJjCL/VI3p/vrR/vPKvxut/drD5K9cmyQK/eoY+DNjQCqeG5MpMd0cwEAM2AsxBoq
	 0LV5PiUCf5VdmmokrAfZF6EGsXEqDpR1WTxjc/0fMOkDmmv9gBCI7Vj1uJyYFGW1A1
	 x0P+6npHsrBcuf+Pq5PshLcygzwYWJA1bgCaoKa5pZ77cbNqgKpl2wUA9fTZYT1S1P
	 4ExSbuO9PlNp9THY3kR6Sc81NF9RmgKdR+QJi8SieOlKraNRaONlMPwto+XwG0Tb8O
	 0qS2z/l1Ft9m8VKK9l1E+iqIKBBkD9EnSHcXBhPweQU9508Yui3dbjevURCMRTX6rC
	 vRY+Rn8LtQ90Q==
Date: Mon, 17 Nov 2025 14:36:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: afaerber@suse.de, conor+dt@kernel.org, cy.huang@realtek.com,
	devicetree@vger.kernel.org, james.tai@realtek.com,
	krzk+dt@kernel.org, lee@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-realtek-soc@lists.infradead.org, robh@kernel.org,
	stanley_chang@realtek.com
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: realtek: Add Kent Soc family
 compatibles
Message-ID: <20251117-platonic-settle-8c4f4b64aeb8@spud>
References: <20251113-preorder-task-4e5ba09580d8@spud>
 <20251117105542.14789-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WGyk7a5/LFEGj+tF"
Content-Disposition: inline
In-Reply-To: <20251117105542.14789-1-eleanor.lin@realtek.com>


--WGyk7a5/LFEGj+tF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 06:55:42PM +0800, Yu-Chun Lin wrote:
> On Thu, Nov 13, 2025 at 08:30:07PM +0800, Yu-Chun Lin wrote:
> > > Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.
> > >=20
> > > Additionally, convert legacy DTS-style comments to YAML description=
=20
> > > properties, following the pattern from the ARM bindings conversion=20
> > > series [1].
> >
> > "Additionally" is often a sign that it should be in a different patch.
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > pw-bot: not-applicable
>=20
> Hi Conor,
>=20
> I'm planning to split the changes into two separate patches:
>=20
> 1. One patch to convert realtek.yaml to match the DTS-style comments,
> following the pattern from the ARM bindings conversion series.
> 2. Another patch to define the compatible strings for Realtek RTD1501s,
> RTD1861b, and RTD1920s.
>=20
> Could you confirm if both patches should include your Acked-by tag, or is
> it only applicable to one of them?

I acked it to go together, because I didn't think it was worth a
resubmission for that alone. You can keep the ack I think, I'll take a
look regardless.

--WGyk7a5/LFEGj+tF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRsy5wAKCRB4tDGHoIJi
0nUKAP9tTYo/6WSr9wWOGgqtt4RhqY3eqn9PXtJSwkDJpcToHAD/dJCPZT1NB/EO
N9IliGRj0I7irxugG7qs1qXuIBKcfAQ=
=a7ys
-----END PGP SIGNATURE-----

--WGyk7a5/LFEGj+tF--

