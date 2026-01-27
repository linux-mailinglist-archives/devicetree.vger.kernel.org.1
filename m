Return-Path: <devicetree+bounces-260080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAgLEk4KeWmxugEAu9opvQ
	(envelope-from <devicetree+bounces-260080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:56:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D9F99723
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5D2F30ED356
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AF9364E9A;
	Tue, 27 Jan 2026 18:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4mTqxui"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A4B1DE3A4;
	Tue, 27 Jan 2026 18:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539761; cv=none; b=k9f2N1Dk5rqOih6qUe3fXJnRiHETz0OYGuMWyjsKNDpvjS77o7ACCfW1T4gqKwYg4apt2/00LpM7mWfBl3LqNzqBilJnqqMc3MtL3O+7RXEtG1w1Vevax351KvbsPr6rChogmFqssTCqnmXkLtYALm8kJjfwnTjk/53CKEjGRuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539761; c=relaxed/simple;
	bh=iT+yyXgQZ3x2/4R14CXtSWhq5XlSr9HST37oX+8s2WQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oPYnNhu6dWECTRs/jSpskjOynL2jONaAQy28lh7Oy0XIYVnG1u5RbW0treoVO2C0Ckbv3/U+AX3xSfqFzpJ/7vKrSvzwaSwIPEANmWJxsab110+qB2YIvv/L80CHlgYsGIeTS6AoiYMJ2mB33b2TEFAfNn464/U9f5PChJIpL1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4mTqxui; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C9F3C116C6;
	Tue, 27 Jan 2026 18:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769539760;
	bh=iT+yyXgQZ3x2/4R14CXtSWhq5XlSr9HST37oX+8s2WQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R4mTqxuigK0STYTNEcUwZ3eoJnKu2PylZkqigulHGoDlYwE+FurRxSvINwlG+VKfq
	 BGEbnBH+OoqnRycIR4vNO5cLSjI6W/bJFgnPj4zxGOqfMdAiyTsJZgKIsxv+uQw+bQ
	 bFGdPoa/9f9gsI8JGUzaerjyWe8UEbrcBpfaCkUmmqP/PDR70mRhO2qCajU8MpFM4/
	 jbJ4c0dMgRFU467QlE6ZvIPq8DknicMbbKYLKc2Qwtbfgj/DPWV+Q+8GecYvaaL4Tw
	 Hv9A5aTwIykpMA45/OO2ETyRUTBt/5frYU871RjtBcM/lu4ihy0cnE9o1jAvn09dk9
	 4PqLcEiRNQaZQ==
Date: Tue, 27 Jan 2026 18:49:14 +0000
From: Mark Brown <broonie@kernel.org>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
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
Message-ID: <6f1d8478-c2b6-4966-b339-47c4d55fe7c8@sirena.org.uk>
References: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
 <20260127-incremental-for-i2s-dvier-v1-1-431b809c632d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A2SbuAFzC6dVpo13"
Content-Disposition: inline
In-Reply-To: <20260127-incremental-for-i2s-dvier-v1-1-431b809c632d@gmail.com>
X-Cookie: I brake for chezlogs!
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260080-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4D9F99723
X-Rspamd-Action: no action


--A2SbuAFzC6dVpo13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 27, 2026 at 10:48:07PM +0400, Anton D. Stavinskii wrote:
> Add comments to cv1800b_dac_mute() and its caller to explain how the
> overwrite mechanism works and why we force it off before playback.
> ---
>  sound/soc/sophgo/cv1800b-sound-dac.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

You've not provided a Signed-off-by for this so I can't do anything with
it, please see Documentation/process/submitting-patches.rst for details
on what this is and why it's important.

--A2SbuAFzC6dVpo13
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAml5CKoACgkQJNaLcl1U
h9Dexwf9F3/yOByeyoXaxyjBlHEC/mxOv+OZ2GLloz5ZE/XmNslI8Vr6cfyArC2n
CXy9zt5T5q9gqyWr0rPj75rhS0iRrxcI38bQA26JaJIP03Yx6Nxu0uRxL3psJexY
Cc3DYocMeU8i+u+5NcChQ07Hb3k/1n+IqwaMd9Dkm98EuXlgkfCDSLpllLiQUjFA
bnO9p8Zq6ohvKbfCgX/BfIdKgBSbiiXWFRsmkmSSKd61a7ZXhJrGxRZYOrexbEBs
9zqJHPgObJxVQcLsjouy2VS1t1tyyOrsjHbbd6T9qMG/OXiVPI2Ms4NW5zQNtZhr
rXxVFARpLhC0o5ZOVZAilBJdVTquRg==
=SBDX
-----END PGP SIGNATURE-----

--A2SbuAFzC6dVpo13--

