Return-Path: <devicetree+bounces-275339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFItDXAhtGnahgAAu9opvQ
	(envelope-from <devicetree+bounces-275339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:38:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDC0285227
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2AFC730752FC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFA03A545E;
	Fri, 13 Mar 2026 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NByij+em"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CDD3A6B62;
	Fri, 13 Mar 2026 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412716; cv=none; b=fHdGEQbvW1oFdzqn0DuS0gs3MhAY/iGrVSIMozGXt73AQlfj5qsGvWcKCmavMeC1LGQZ4jiE4K0FiAT5IWjf3yTmhV8k1x8eYl1dQTYuRMbWzkaacVr4ys1Q44c0W1Bk68Jar+GBHYQSK+yPLPx0o3+zsvAGLiQFjQb1AU5DW+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412716; c=relaxed/simple;
	bh=QSmgrG0OG1xIa/QEPeKYY+gOfwfly9O/CNm38e9XojA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjokEWTMII1ADdI8wl7QVIhg+V90Oa64TdotViNaVh7gZ+osw79Ji4O9jEy21RoUhw/ui4oHOsqnXIp+nwXceReaDrsXDczT03lbY0chW8lM1JH9G2m8clSmNyDbXVduo/SpgUvk0KeynhrC/m1/9u8C4ahOiQJZ1a/0V3Y15Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NByij+em; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82CEFC19425;
	Fri, 13 Mar 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773412715;
	bh=QSmgrG0OG1xIa/QEPeKYY+gOfwfly9O/CNm38e9XojA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NByij+emn7cJC0i1ih0mExHBhmln0+EXm1lLGe1yT1hf5xXhge63H43c3p4Gr24Xj
	 BQ6UtRHchsj3i5+oohSqwN86kZwlm9n3m3uOOLqTQ3FL+duqDk3V3YwZo8qwHt5Sb6
	 Z1Plp3+akyaEqyb+TR/MPNpcqtis4OQTbrSlMB6induuhk1giceANxyABMIyi/5xPE
	 POzfr4UlX9GEQqYUOtDnTW6n/v72fmUe7oCnCZCxMbqj6ouTyPW88XutUUpIjNTA59
	 VJTcvLZKw+JwVMOY1rRecjkBD0XbzNGJqTVi6oK1lqpIbIrRsvkxtzObXfqWSBoRJ1
	 VjxJ1y8UQeq4w==
Date: Fri, 13 Mar 2026 14:38:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Robby Cai <robby.cai@nxp.com>, lgirdwood@gmail.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH v2 1/2] dt-bindings: regulator: fp9931: Make vin-supply
 property as required
Message-ID: <fe5571cf-bc46-4a7b-b09a-ccdd0eb5b0f6@sirena.org.uk>
References: <20260313133102.2749890-1-robby.cai@nxp.com>
 <20260313133102.2749890-2-robby.cai@nxp.com>
 <0b9d0512-1164-4178-9bd3-4a3a7505fe1a@sirena.org.uk>
 <20260313151643.7e6a5805@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="abW4aHNxrzA4MoW6"
Content-Disposition: inline
In-Reply-To: <20260313151643.7e6a5805@kemnade.info>
X-Cookie: Monitor not included.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275339-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 7FDC0285227
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--abW4aHNxrzA4MoW6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 13, 2026 at 03:16:43PM +0100, Andreas Kemnade wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > Please submit patches using subject lines reflecting the style for the
> > subsystem, this makes it easier for people to identify relevant patches.
> > Look at what existing commits in the area you're changing are doing and
> > make sure your subject lines visually resemble what they're doing.
> > There's no need to resubmit to fix this alone.

> Since I once have misunderstood that text block myself:
> - this sounds like you are talking about the subject line as a whole
>   and not only the prefix.

It *might* be the rest of the subject line as well, very much less often
but it does happen (excessively long lines for example).

--abW4aHNxrzA4MoW6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0IWUACgkQJNaLcl1U
h9C0BAf/eNEA12YHd7H1xAgm2pVt+JlET0YFIV+YLnIl4f2MAc365X5mS11Gl8vR
vS/g7UplM6qRzyoVSiheZiGvsoU5LkGH66G558Vw2qScWY22Jgq2Uix/ITW/ogI9
WGcBocb3LSd2xIXSUuBeL5yD2zT70AGAXINdqup7YjGd8YzytsDL75xoJyuv4CBN
cxbSdgUYKXZiwQ/h+UgENYt2ViF9ob/cPAKYr6Q5+teuTHnm+hP4tkpZO2Xvt0jQ
PikuwkFz3z9tNv25hGuUbZCwFdeb0r/gT+wEdRipkH1mCsaBDu/ojiILapg4Irar
ufvBr9vwk9sSLErNsGvNxjxbivId+Q==
=fLgU
-----END PGP SIGNATURE-----

--abW4aHNxrzA4MoW6--

