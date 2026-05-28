Return-Path: <devicetree+bounces-303886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCL5AzNSGGqwiwgAu9opvQ
	(envelope-from <devicetree+bounces-303886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:33:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B0C5F3BC2
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17B04307385B
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 754E53E0724;
	Thu, 28 May 2026 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X82UcBfN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79445377009;
	Thu, 28 May 2026 14:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779977896; cv=none; b=jULoUpF2FQwAFjr7rioUX6OlGfZtwTE4XqUr6fR+kbWd+paqAQPlKEewpdrIaYgvQBvom2AJthrEEA/YL++ED9bC3tH9N+3LcBYBWlvGQ2cztzEY5PjCM9LfXoQ0pOjfuN0OxbmB/d9KU31eJgUJSNAucsomiktmEq3042GCwJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779977896; c=relaxed/simple;
	bh=Fz2IZj151Y029gOdF7m11EooVZaXpyiG07lV0OoALV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t8dgf2Hp3eCqjpfrDbxxDQuxFTRE5h0Vs7LtyPpaCaTX6vdYT0z0oEN51z9wRzJS0c3dxa1rvMVQNoxhY+UTgaAbUgFsnedVAoOlcgvYdb+tbdAAdUz/o4EA2CgofDg7VmtsCD/TfKQj7lvSTFL92Wi3SXNH/WFmVaD7n9c5Tiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X82UcBfN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A60B41F000E9;
	Thu, 28 May 2026 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779977891;
	bh=8Y/q4DHE4I6kofJEa8EbrZ4uiX1Bo74IORrWzMYrFRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=X82UcBfN8RcTWtZVbhWxccD7RyaJ5exs0b0O8tm7i0BxGNvXfWWzzaCqPwsopVlpE
	 tv8llTT4fysg8k8ZhN1P3E2Ql9Qw/yENEbt5v/B+vhNEbHfnNGV1fvCqwOukQABWk6
	 u/gY1ataw06qMYbNLyhuHyAJ43nCHxEvkoZ4QA9ZwGYHF8dbtrfZ5+BUaD0iezvOEU
	 6zo9IJmNLk+a12OByhjTN27hrvXHmbG1I/yLJyCgKasRhQxmR4dDN1zQmX6lyrVh6M
	 n220wQAMfZZfuqNWrYRCrV01Bj4g3keSZs1OEjsOxSBiw2lUdo45t4RlGHTC8ajNDg
	 3iKPuxAaBVIKQ==
Date: Thu, 28 May 2026 15:18:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Chancel Liu <chancel.liu@nxp.com>, lgirdwood@gmail.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shengjiu.wang@nxp.com,
	shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com,
	nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com,
	Frank.Li@nxp.com, s.hauer@pengutronix.de,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] ASoC: imx-rpmsg: Add headphone jack detection and
 driver_name support
Message-ID: <5314b232-9688-4f59-a57f-4cca044c9e44@sirena.org.uk>
References: <20260526053815.140008-1-chancel.liu@nxp.com>
 <20260528020725.2265321-1-chancel.liu@nxp.com>
 <37324dcf-5214-432f-9aea-90bcff5fec32@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wWa6HuIO+szsHHcJ"
Content-Disposition: inline
In-Reply-To: <37324dcf-5214-432f-9aea-90bcff5fec32@lunn.ch>
X-Cookie: Someone is speaking well of you.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303886-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,perex.cz,suse.com,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 07B0C5F3BC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wWa6HuIO+szsHHcJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 28, 2026 at 04:12:58PM +0200, Andrew Lunn wrote:
> On Thu, May 28, 2026 at 11:07:22AM +0900, Chancel Liu wrote:

> > This series adds two features to the i.MX RPMSG ASoC card:
> > 1. Headphone jack detection via GPIO: Introduce the "hp-det-gpios"
> >    device tree property and use simple_util_init_jack() to
> >    register a headphone jack with GPIO-based insertion detection.

> I'm not familiar with ASoC, but have been in a long discussion about
> RPMSG and GPIO....

> I just want to confirm the GPIO you are talking about is a local GPIO?
> You are not tunnelling the GPIO over RPMSG using some vendor protocol?

This is a GPIO accessed via gpiolib, the driver is for an audio
subsystem accessed via rpmsg.

--wWa6HuIO+szsHHcJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoYTpwACgkQJNaLcl1U
h9BDfgf8D56dWhhtsJtiSVFFuAtK4SvR827YA8oEpusYCpy8rCSmJYQnBDfSHJL8
1VrmMggbVk042uz2wvOxhYiFzrcIaovpNISfUClaUy4i4qnyJZdGMjJO3lw46YoN
5txxEzVwGv6HmZj+F6pUj9O4EjnISED6u/Sw5QyOtwmaiSQkkL+CYWoqY9DULilk
8yAN5S0yocXka+Y43Wz038BtoknsfwolP7jitXTF3uDeXfT95xq09lnS14RxhmPN
TpBMDniASO5sgXWS8mSzdpKnHz5NrdaeUeedgnxfMumutsGcv6px/73O5rpo95Mi
n4FPg8mfRPM1F6ljySHha7bIdQFf/g==
=w2JU
-----END PGP SIGNATURE-----

--wWa6HuIO+szsHHcJ--

