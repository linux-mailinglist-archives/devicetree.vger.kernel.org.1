Return-Path: <devicetree+bounces-270228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH+5K6YGpmkzJAAAu9opvQ
	(envelope-from <devicetree+bounces-270228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:52:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E7C1E431A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD9B230F8C0B
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 21:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626A9386C1E;
	Mon,  2 Mar 2026 21:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFQWY2Fy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8DF1A6804;
	Mon,  2 Mar 2026 21:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772485641; cv=none; b=o+tqW09Kw6h+lARQrEawkXLghvKrS8x2901QayLIOLl4IsC/BqkrX9KX3Xkfc3w3mOLuAVFxoyl6XCbM7FkEL3O3MaQQc+o5nliOxxHzkBfmcYZMh6HQWa04qM2yBGRhOSWiu4CzduHHrCXFBTq2+FsBvI/E5/7+pDCIvJ4xyk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772485641; c=relaxed/simple;
	bh=ZcpbPZzjAcuhP9CCScbDLc4UsNaN0uJXOcl33J21nmQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DJTIWr0U+hKaoK4a9I68yOuiCPVCmFo6vujmjKrEXi/6jwAGQqqokY5gjNN3EeXxs+hX68fvvdy3SC4TqH6WjW/yj7l/g2P936ikQO2LYG/oNfKHV44rbvp4YBWeIhZygC2ImAVknVtFZoaHQp3FJG29wz/SumBIObuai03hJtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFQWY2Fy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 910F5C19423;
	Mon,  2 Mar 2026 21:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772485640;
	bh=ZcpbPZzjAcuhP9CCScbDLc4UsNaN0uJXOcl33J21nmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KFQWY2FyxX5PaAiE/GN/Yz6HIMf+rSSjFge/XIeaf62XPaHEuUca2DyAVV78Xex5r
	 w2iKQuFHkfuf6o9uElF1h0m9GIG43S2c4Bli4SOycfQQfPKjz6FMZvLd3/aYlO9184
	 2LTVqkdAmf1b0PgYi5BO5sU5NZauwO/5TVvCYqa6n/juIlwackWz8v+s6U984XEN7T
	 jgiTI9gXzCDQw34wDcbRPtMz893/S9GB1jMm28ZaEFCx/2dcv65FA9zgQv/RZPeNaj
	 6H+fmSitUCDw10m1ns8GZ3SDuM7lnKWdTbJ1uo7bq39ZyJIgp20yQkXBYLJRIORPrd
	 DI387Bl1/bBFw==
Date: Mon, 2 Mar 2026 21:07:15 +0000
From: Mark Brown <broonie@kernel.org>
To: Maciej Strozek <mstrozek@opensource.cirrus.com>
Cc: Takashi Iwai <tiwai@suse.com>, Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 RESEND 3/4] mfd: cs42l43: Add support for the B variant
Message-ID: <a141da68-35a7-491e-bb6f-ca9b448030ff@sirena.org.uk>
References: <20260227130120.3070893-1-mstrozek@opensource.cirrus.com>
 <20260227130120.3070893-4-mstrozek@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VVwGhJdQXqV/B+G5"
Content-Disposition: inline
In-Reply-To: <20260227130120.3070893-4-mstrozek@opensource.cirrus.com>
X-Cookie: You love peace.
X-Rspamd-Queue-Id: 55E7C1E431A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270228-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Action: no action


--VVwGhJdQXqV/B+G5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 27, 2026 at 01:01:00PM +0000, Maciej Strozek wrote:
> Introducing CS42L43B codec, a variant of CS42L43 which can be driven by
> the same driver.

Lee, this seems like it's mostly an ASoC series - does it make sense for
me to apply this along with everything else and send a tag (assuming
it's OK of course, I just scanned this patch very quickly rather than
reviewing it)?

--VVwGhJdQXqV/B+G5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmml/AMACgkQJNaLcl1U
h9CrNQf9FGCObA8+p4zISGqfaM9g+jILUSgdkilYduwDYgJpyNrFIk6vLY3yQvK/
33d7CvXQp8FZQfWLlMGais6i1lpAwu4KKE7NbqV+7EYeNRwia7a8lfNDSvpIGft7
I6xWVYWslDWti7VVCTjwzkgSaVXqQSZrz9N6a3QYCyc5ZFSqgoow+Xf+Hl9jBKWy
rtCYH7zZJbdwy3FBloHJ5d1Ec+KLuROJdfMVkq64cadfenB2/RMdC8IrytBpLhJy
5uqRQDmsRMDExnIlpz8TcTTigRCv+oBT8dEKtPWRmLR91fAb+Wjp6MHXmiob7kML
b19MoLv+rX2mihcE3zIzQkQE71Zm5A==
=h1F1
-----END PGP SIGNATURE-----

--VVwGhJdQXqV/B+G5--

