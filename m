Return-Path: <devicetree+bounces-291246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id F1EGGYpq8WnhggEAu9opvQ
	(envelope-from <devicetree+bounces-291246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:18:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB6248E474
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE5FC30142BB
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4AA366823;
	Wed, 29 Apr 2026 02:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5IHIhKt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADC023EAB7;
	Wed, 29 Apr 2026 02:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777429124; cv=none; b=e02CfMnIIDv6Amb4aGRY2S0SrxqQNUD0ig1yHFqgP/EoBhUYEtLyy5M0Pb4odMT/JC7DnQQuy3zWNxWTz9Opj3NNqiBi4t2qSn5dFsN3dCuIYfFK+xHEbQChbsLmHuVRagjGEsNGQ23ufPOoYKopdpFUbEmiOoQukFUczTZtyaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777429124; c=relaxed/simple;
	bh=vGSVbfAVTOpSVg1fm2QT59qVSHoz0uJHSJXD4xG06mM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bgl2OZzbetplOSy9cyT1Ihfl7Rq3wj3k5U6BYUVSzfr3gR5zpYtstLnstf/Ez2WFRJCIK4w5j4L5ZGd7fKDQbu/wVmrAlQ/c5JMFzfsz6OU2KvdLZ5KX3YVUAp9uY+q2KUXz2VlA9nqySVR6YNFbnhm/cFrv1efgn4cwALNbRm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5IHIhKt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA7D2C2BCB7;
	Wed, 29 Apr 2026 02:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777429124;
	bh=vGSVbfAVTOpSVg1fm2QT59qVSHoz0uJHSJXD4xG06mM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E5IHIhKtVgkAVtcj1ExEsmkatJgBLFWB7W9wBJlC1v175fncWjLK0FcaT/THfDB8Q
	 VceqdeqaWKsSf351p1f9iwXkteowC68OHYcfw86IEP8dw2NXwHl6kYNJbT3i3wI28T
	 3ibahPTbSiE8K3qbPhNizRiCkkHM8cDSXUuH35Wb+FrWk4m4ewt5ZYdp3B0BiFP22k
	 1TWQQ1SVddrFv1p6JF8bNLO3+o74cQgqM3SqXqHFUczuwnDHyPMADEoJxurpSu6I5E
	 YUIv/EubEx0sZSIXd4lUgeUiJTso+ndSSKU2ve1p6UwW+eO/f8w3hjZlHsrJ4KTJj/
	 VceEGxELdw9Qw==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id BA2491AC584E; Wed, 29 Apr 2026 03:18:40 +0100 (BST)
Date: Wed, 29 Apr 2026 11:18:40 +0900
From: Mark Brown <broonie@kernel.org>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Yixun Lan <dlan@kernel.org>,
	Jinmei Wei <weijinmei@linux.spacemit.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/7] ASoC: dt-bindings: add fixed-sample-rate property
 for SpacemiT K1/K3
Message-ID: <afFqgF6ZRwYdfUmL@sirena.co.uk>
References: <20260429-k3-i2s-v1-0-2fe99db11ecb@linux.spacemit.com>
 <20260429-k3-i2s-v1-5-2fe99db11ecb@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IS1KD8op5z8FDjax"
Content-Disposition: inline
In-Reply-To: <20260429-k3-i2s-v1-5-2fe99db11ecb@linux.spacemit.com>
X-Cookie: 667:
X-Rspamd-Queue-Id: 5BB6248E474
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291246-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,kernel.org,linux.spacemit.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sirena.co.uk:mid]


--IS1KD8op5z8FDjax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2026 at 09:38:50AM +0800, Troy Mitchell wrote:
> Add the optional spacemit,fixed-sample-rate property. When multiple I2S
> controllers share a common bclk, this property constrains all
> controllers to the same sample rate. This applies to both K1 and K3
> SoCs and is only needed when two or more I2S controllers are active
> simultaneously.

This doesn't seem controller specific, it should be factored out into
the core - the same issue will apply with any system sharing a BCLK.

--IS1KD8op5z8FDjax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnxan8ACgkQJNaLcl1U
h9Ctsgf7BigM6trDym58z1FxPiU6RC6NIViof8JRu2+HoU5tOUI3IEfmeCu5RPjz
kNaDvDYvJRCpUnWNySV2bzDhChyCYHDeN4aReVbA4sqcgV8abNBd4evnVJ7gIbLX
YmZuymQocJ1SHzmJebkzMw+eJhTTGnMGKutZi6Mb+wHsfeqjZAJJUpsYE81dLG3Q
sHhkHg1pccPmLig8OiiCBsy0tpkwhOnTyM8Z4WQKi8qgvkiGKR0/fwbefUqRyETf
lNO4qPKH9aXZJ4BpyvM+sXdiKGxLTny65mqBGCpyLwhKivhwzFHlXf8Lsy8kvJZa
hJsLtDneM5uQH6jSfZU/w5hUU0Y5lA==
=d0Ef
-----END PGP SIGNATURE-----

--IS1KD8op5z8FDjax--

