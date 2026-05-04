Return-Path: <devicetree+bounces-292672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FFFHJ2p+GmdxgIAu9opvQ
	(envelope-from <devicetree+bounces-292672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 16:13:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF564BEDB4
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 16:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A22C230424F7
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 14:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3C23DEAC8;
	Mon,  4 May 2026 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjKzboMk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155603DEAC3;
	Mon,  4 May 2026 14:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777903509; cv=none; b=Me4QVDBdHq+e/ar/k0toUISsdZQ1+bfMSrS5nn9begTgqhjSpIWiL0zLJZKZ4rrNUQ8kTSfIAuUGVLS1DBV0yw5cW2WETMGEbf1qnbQQv74BQSXEkIfWwZGeUG8IUTvOFgMl4zYNyGphuMyK9MZVGAixqwxmY72oYhdspd4v0To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777903509; c=relaxed/simple;
	bh=VeO8wSt07jL0n5t5T5zGg4tzZzJM3ZVY2Wx15V4dBao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MwrUVoofEqH6O473S8o3C+r0VU5v7vTowD8/nS1okipamK7wWrGly5DmBprnInIc3wJuHGSD0PCOK9ctlkZB7onaQFBrhrK7x7ZDMZ5b/nJQQmIPKc+GZhy278nlLQnuF5vX9fm36br6bnzT5hCjI6ZKB7wV7Pn6KHaEo+XQ+/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjKzboMk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70A0EC2BCF5;
	Mon,  4 May 2026 14:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777903508;
	bh=VeO8wSt07jL0n5t5T5zGg4tzZzJM3ZVY2Wx15V4dBao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gjKzboMkeMhpeUpYfvvOmItewZW+hzHuVKfRi87Bo8itC0I4tYVhwJ9TB9qSDKQMJ
	 TIbeQuZ2ToqLPKuAZJNTf6+pcpREOq3+lcRLVCexuVG4SLToKg28E5LAlJkzJMvzUO
	 plA9KYtGTyQ+60RpLZHbzIHt0knyMWpo7P/5vhnARRCwAnaj9aaUe59rN0cEG8UsZq
	 0ua6pI3N+g1CgU176ktXtPNy83aAKymcoeZajz0RM5doGlricceyMRkvtWzMCYczxB
	 70jSiXCPnJchIB7kQu0TTwPy9U8+BxHmt3gPfqHuqs9LE8yErK46llMbT35mxUYrVE
	 y1UjODYNGIAXw==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 28CB51AC586B; Mon, 04 May 2026 15:05:06 +0100 (BST)
Date: Mon, 4 May 2026 23:05:06 +0900
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH v3 2/2] regulator: add SGM3804 Dual Output driver
Message-ID: <afinkq34soN5MWOm@sirena.co.uk>
References: <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-0-c4783443890b@linaro.org>
 <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-2-c4783443890b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WikX01iSoC9Z5Vlt"
Content-Disposition: inline
In-Reply-To: <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-2-c4783443890b@linaro.org>
X-Cookie: Alex Haley was adopted!
X-Rspamd-Queue-Id: 6DF564BEDB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292672-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]


--WikX01iSoC9Z5Vlt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 04, 2026 at 02:44:06PM +0200, Neil Armstrong wrote:

>  obj-$(CONFIG_REGULATOR_SUN20I) += sun20i-regulator.o
> +obj-$(CONFIG_REGULATOR_SGM3804) += sgm3804-regulator.o

The sorting is off here (and in Kconfig).

> +err:
> +	gpiod_set_value(ctx->gpios[rdev_get_id(rdev)], 0);
> +	return ret;

A stray gpiod_set_value() here.

--WikX01iSoC9Z5Vlt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmn4p5EACgkQJNaLcl1U
h9Atfwf/eH/hNPRliyPkIVaWZFrTCNYB1/wZzV+genXkSZ7f+VFegwcDno7tmtxd
iQOeFfarm69S+8Dr/2TFqtZ3atkJUe4pV+QqsJ/gIuX9e7/9BwEsWLIwlJ06tKfO
Y8bXZFi6RkXV/47SbgwyHAn9jfkZxn5ekloBD04OlNBGdxlcaxGt0NClnLFvCW3d
GYAIr3d5wHEFa/Lp/fazL0vWTs041ovUda3OTMR1t/xu8Bzu+FboV8/FxKSMWZz1
Q6EibJ+3MbKlcT89nGrXYSp1E74IOgBfZaZxlYe5OKkqe4IwpinChp7BpEiq/C59
XGSx1xneC0urn84+Erf6aKmChL+3yQ==
=B+Z7
-----END PGP SIGNATURE-----

--WikX01iSoC9Z5Vlt--

