Return-Path: <devicetree+bounces-260084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FHgJakMeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:06:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44348999B6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E2BA304DD4A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C53434F476;
	Tue, 27 Jan 2026 18:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWXAZ33Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E3A346E6A;
	Tue, 27 Jan 2026 18:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540346; cv=none; b=syC8TRsqE5DaXuyFf5LZRtFvsv2FUokk9IGjdsejsHa/hOFujUXW5uoP5SRTnbbBOxpd/gs7diOdMo3fMtnb0Xd2e7MCfB5sKrIdhyJEOGFt7LsSlRbq0EclOKDIZzAVkimd3xnIOGT1oEJw2CJTpFekJw6B5mu4/+eTaZgeoh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540346; c=relaxed/simple;
	bh=RNmO6INJrf6vBZOIGgzqhzcFiKfgOZ5TeFz3FBzqLHw=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pEQ54RdzFOTx5cIVzDsTRSq9nLbPVqAVkIL5Y2eXYx54PyX8NnTfxIplo7hnx01vRhLlH9NWNBoWtyMLG1r/dvdERn/ehZn9FXqRtKNBuoULynK3iGudkgDH5ptBJBwvPUro2Ht8ddV5GKmGN9VU1sQlT4a54nhmvuuBh+/bbGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWXAZ33Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA81C116C6;
	Tue, 27 Jan 2026 18:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769540346;
	bh=RNmO6INJrf6vBZOIGgzqhzcFiKfgOZ5TeFz3FBzqLHw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=cWXAZ33QRRnZkydpJVvnUSoHkk8cxWYejV8/TPs8NZD0o8n+tA5Gm0fblbii+5VGc
	 zE3lmp4kPGZWOrVbzafwOENhHCHGueS8GLOFS/U2h5jDuhGclzkVJqTybpK7HgVVkA
	 NCDGysIFqGpSOGwldCYwZ54m1x0jeANTKg8dfnTkt2o7wGOSY3y/uZE0lCJ26s0TII
	 hwvPUU4rdUkDTaX5h2uxp2LB+6cty8MZrPBeWQh0abyILSKhQKFi0hSvh6XxFw0qJz
	 jNnp5eYhRL4LDUw71ZpWrlO6Wfl+b7E5lE6Jaq+XTvEbep4gk7b6iKXUBbDOLIPPVO
	 2aMucMFWV9IXA==
Date: Tue, 27 Jan 2026 18:58:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>, linux-sound@vger.kernel.org,
	sophgo@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/2] ASoC: sophgo: cv1800b: document DAC overwrite
 handling
Message-ID: <f5a0646e-f21d-48a2-8a57-e47db794a327@sirena.org.uk>
References: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
 <20260127-incremental-for-i2s-dvier-v1-1-431b809c632d@gmail.com>
 <6f1d8478-c2b6-4966-b339-47c4d55fe7c8@sirena.org.uk>
 <aXkKfZDyG1uxDsD0@anton.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8LAMoqXCOpm9loGG"
Content-Disposition: inline
In-Reply-To: <aXkKfZDyG1uxDsD0@anton.local>
X-Cookie: I brake for chezlogs!
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260084-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 44348999B6
X-Rspamd-Action: no action


--8LAMoqXCOpm9loGG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 27, 2026 at 10:57:43PM +0400, Anton D. Stavinskii wrote:
> On Tue, Jan 27, 2026 at 06:49:14PM +0400, Mark Brown wrote:

> > You've not provided a Signed-off-by for this so I can't do anything with
> > it, please see Documentation/process/submitting-patches.rst for details
> > on what this is and why it's important.

> Sorry. I was relying on b4 prep --check. Looks like it was wrong. Should
> I resend as v1?=20

Probably easiest to just resend - sending as v2 is fine and probably
less likely to confuse tools.

--8LAMoqXCOpm9loGG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAml5CvIACgkQJNaLcl1U
h9ColAf/fkgnBF6kRiud7owt/zoAhQrLAMNQlUlFwskWevHmn16QwdOmfa4p8Zxz
iZ7aUK2l72TqSnLGeGTsQaN0b6F/95fIQKv6HHN3IpFapf6PQ/yRqRr18cZiXoEG
IRZOwmrxHOeym/3pg/Ebsz6aOAXfOorDiZEx7rJo1MFVy82YuXbSNcjTgruQsPmV
lTvtFv+F2E97fkAwjVLqbGcbBpmXcP37NoPD15fYIPyipUCijusaHEdeHEcj4XvS
K19zqmoS4Ay8XVe723/HPS6787jIo3tKuPDhDGv7xKbIPG+egQ+w5vifCEpuA1Y3
Ev54KUVRptPiGGTomsb6qOlTWeGmCQ==
=6QcR
-----END PGP SIGNATURE-----

--8LAMoqXCOpm9loGG--

