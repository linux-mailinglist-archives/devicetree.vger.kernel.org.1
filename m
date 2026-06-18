Return-Path: <devicetree+bounces-313553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EZLHBA8WNGppOAYAu9opvQ
	(envelope-from <devicetree+bounces-313553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:00:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 641C76A168F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:00:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cAHndvHT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313553-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313553-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7370130442B4
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960872DFA25;
	Thu, 18 Jun 2026 15:54:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ACCE1DDC1D;
	Thu, 18 Jun 2026 15:54:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781798099; cv=none; b=nRzUR/cuwC2eILc3KmxJ6M/gz3XWljAi2CBAI5gD5o4F680PT3T7mIwZORxKXTdDo0tl6MtwJu7aZ3aGKvbRCfd0EQNTi0U3z3bT4C6KQsvt1xz5UwtezF4nYCkuHFQBFKvcYwl9qBbOFrPSUgqSUjCRATJT2r9KzIQoPwDzkeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781798099; c=relaxed/simple;
	bh=cEo2H5hPXP7wiwlAi8r1q5W+2AonGUAeCyv2FcsB3Ts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ApYh+4upHNw0pg/gOUuZvga+NmRT4cpg9aCxuhYATt83KeHVjvIchCkBDKRgWjMErIgx4RyRHrYhT0vgPLljmIK3xlpmafOOpXp4caRA0mSo38yGx7VUEs16c0/iir+/IgNKh5AsqGtFrQdSntwkp5JY5i2fhryr2vu42SrlhFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAHndvHT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D19C1F000E9;
	Thu, 18 Jun 2026 15:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781798098;
	bh=cEo2H5hPXP7wiwlAi8r1q5W+2AonGUAeCyv2FcsB3Ts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cAHndvHTgH7xsgDq9U73etZp+681CtliqAEu36HI1QzOWh1HxyT9At83/hweDyiKb
	 xb6X8GYrQ4yKia8uHOVg9IeJaNM+T+IMoRe62xIo0xr78jZSfg2yaFuNbeeKTv1YM2
	 70hDFZox8lumOvxviceVy/NGxaArMkbQX2XooEOOLXh47TyUtyPaKLTio+/hZ6bwlN
	 2ibZXdfnix47KdUA18XxnI7K187ocx7OT5+dLLT4tS9Ayz2UM6oVb1FQLWZjEb9jh4
	 MymIW7Q1sxYLtd5IelO/VxzRWk562dgPDDPscz2mVmCs3u7SLuHgplyiEQ6o+3ksme
	 zBb+wlo0pAhZA==
Date: Thu, 18 Jun 2026 16:54:52 +0100
From: Mark Brown <broonie@kernel.org>
To: han.xu@oss.nxp.com
Cc: Han Xu <han.xu@nxp.com>, Haibo Chen <haibo.chen@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-spi@vger.kernel.org,
	imx@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: spi: nxp,imx94-xspi: add DMA properties
Message-ID: <df5eed08-3be3-4ddf-bde3-97d5d02cf865@sirena.org.uk>
References: <20260617215520.3327836-1-han.xu@oss.nxp.com>
 <20260617215520.3327836-3-han.xu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yxnX1CTfXzVl5TLQ"
Content-Disposition: inline
In-Reply-To: <20260617215520.3327836-3-han.xu@oss.nxp.com>
X-Cookie: This unit... must... survive.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-313553-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:han.xu@oss.nxp.com,m:han.xu@nxp.com,m:haibo.chen@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:linux-spi@vger.kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,nxp.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 641C76A168F


--yxnX1CTfXzVl5TLQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 17, 2026 at 04:55:19PM -0500, han.xu@oss.nxp.com wrote:
> From: Han Xu <han.xu@nxp.com>
>=20
> Add dmas and dma-names to describe TX and RX DMA channels for the i.MX94
> XSPI controller.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--yxnX1CTfXzVl5TLQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo0FMwACgkQJNaLcl1U
h9B0IAf/QVSaTxukEen1yvTKMq6oJ86umcRRPCGK0btvDvQrNLogVv+/AOqZpjz3
5eyYCQ4F08jn3BoBFQI86/2Hld9C0pefI6XE1zuQt6yLNn6iks2oXu4KZyIp+Ae0
QXUz0eXIWZtZFpJWgOoEp9TsO1D03xi9UOyzXBiOPHAPfNEDpEKa1MRp6t2/V0XK
9Wf1lVqkOSn+YSwJhIh9ic/fBB7NjN2wR4YjPDoAel6g8GY37wMI1DDKK8uJ1r/0
dhl/yWklxqirmX2/YC5pq6jGyEHgpHYIqFc1vTaE7spOsKec1NNkfhGRzH2WxbUS
utYfVKotCNqFm45IMmlQTiURwsTUXA==
=yx4k
-----END PGP SIGNATURE-----

--yxnX1CTfXzVl5TLQ--

