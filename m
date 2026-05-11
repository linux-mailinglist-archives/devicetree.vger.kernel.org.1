Return-Path: <devicetree+bounces-295213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FY31AHMvAWqIRgEAu9opvQ
	(envelope-from <devicetree+bounces-295213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 03:22:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C85506F71
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 03:22:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6211F3009B33
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 01:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C261E1E16;
	Mon, 11 May 2026 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyDqCj4t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F47117A309;
	Mon, 11 May 2026 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778462573; cv=none; b=Nqzbxr6h1IH+22/Muy1eu5M9LKZokP5pxjqF7b/uuqOC8RK0CufUWjY8g+LC38jnIbsLuuVfxk0LTIXAHxeEYZhIKo9vhMH6vZr3Bl6SI9omux1F8bWEogzdfcWRlt6sCvfvhvkWXYl1h+ws/RknsMTuXsmRas94kFjmS/MQfXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778462573; c=relaxed/simple;
	bh=BsbV29kdqQO2kfxxJXFWmagPpfzUCkSSdzLkYmxMOhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SDREGNKYDD2Y4xcs37+473+0a++6tF7wGMqFfimJ7SMc3WUKdsnnaP15VOqM8v9ixMj4LQDrNJtqrCDGzKHmYycPVzgKoVJmt5gCSKW4VPLn73+lpKopVODUYGnwrzLQGivPnP8Ty/TeJzyAiLpZ9j2sBdKjKbqjaC6cOcWo3Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyDqCj4t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01CFCC2BCB8;
	Mon, 11 May 2026 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778462573;
	bh=BsbV29kdqQO2kfxxJXFWmagPpfzUCkSSdzLkYmxMOhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZyDqCj4tntF73k2tmcPuFXBBRr2GvgHWnuXF4jBiXCKbIl+WNuhG8yBl9hivPsXaV
	 2UJQVRqmQu1P2vIWXXaqrmFEpLXk6YOOvfBOVMOyIDygxixkyLE1GaEwtVnBHpC26v
	 4uxmQA+0c1wm5Bm7y2m/yT6klCCtt9KlCwoTBjOkEpQZShZgoEy8Gug8fWVqt429aE
	 rnL4GoUXgTJVYfpeittai6hsLyY5VZ60KOz3ehvdjDuhfuHFgLInCd1/oJWRo9SKbB
	 GJnyexWN3Tm/YvMJPMV2RyTjnUUe81LOxrJHc87ZUFIvRRrKAwQyw5TbphBSvB5ukJ
	 5rFM2pEgtnkbQ==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 01D1C1AC58A6; Mon, 11 May 2026 02:22:50 +0100 (BST)
Date: Mon, 11 May 2026 10:22:50 +0900
From: Mark Brown <broonie@kernel.org>
To: azkali.limited@gmail.com
Cc: Philippe Simons <simons.philippe@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: regulator: add SGMicro SGM3804
Message-ID: <agEvatbbJ6YTUp2y@sirena.co.uk>
References: <20260510-sgm3804-v1-0-e5e8799e0aa0@gmail.com>
 <20260510-sgm3804-v1-1-e5e8799e0aa0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FSaujl/1OwEoxBn2"
Content-Disposition: inline
In-Reply-To: <20260510-sgm3804-v1-1-e5e8799e0aa0@gmail.com>
X-Cookie: Truckers welcome.
X-Rspamd-Queue-Id: 46C85506F71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295213-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--FSaujl/1OwEoxBn2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 10, 2026 at 11:45:26PM +0700, Alexandre Hamamdjian via B4 Relay=
 wrote:
> From: Alexandre Hamamdjian <azkali.limited@gmail.com>
>=20
> The SGMicro SGM3804 is an I2C-controlled positive and negative output
> charge-pump regulator. It is commonly used to provide the AVDD and AVEE
> supplies for display panels, and exposes two reset GPIOs to sequence the
> positive and negative output rails independently.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--FSaujl/1OwEoxBn2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoBL2oACgkQJNaLcl1U
h9DgLggAgi9ZchgS0zVqvs5zvNBz80eH1MBR7oqPpU28uNQEmReOTDMo6ch+eV8F
oAWVzp0of41YWyooyZlG9nDTbK+IuFqVFg8+jYF8jsoinPelNg5Wci+KF8nR6Xtv
pK03KY42eKdHNnGf0OZ6ciP+gfaWQTDDUa4BXrJetlnCHQk10SxyfIBD+5dXgU/T
VHXg7HHfd/QCKkHS9o302KYydD0+LaxtPpKEsJkezXImG/aK9Vhc9GoIEJ4j3hdN
YR5O7i3l66jWTYindtnygnc/UOfZGgH3p1jefGGWQWQPr/64nregFfnHCF2r/o7i
V+KYovJtukmNECQ4aaisrHZnqtyCTQ==
=+eyZ
-----END PGP SIGNATURE-----

--FSaujl/1OwEoxBn2--

