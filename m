Return-Path: <devicetree+bounces-324447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b6PGA1zqUGqK8QIAu9opvQ
	(envelope-from <devicetree+bounces-324447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:49:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0CF73AE88
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:49:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mRlLSHk6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324447-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324447-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF7CB300B52F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E014F4279FC;
	Fri, 10 Jul 2026 12:49:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35E44218B1;
	Fri, 10 Jul 2026 12:49:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687761; cv=none; b=crdm1FhjiEsaL6zKra3JHu5NkA6MgHO5PPeQMGWwJSGz06QXMgH1ksqyc1CJbmrbZ4lufKSn1/kuL07u4CfsGbi06z/8GaEeruzU95cWOt0GB+b5A0+w9Z9waichkQy4KsCCAkauHvDG/h5Ll/8K3Qnr62a69KvXOCFUzgYNmec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687761; c=relaxed/simple;
	bh=INFG4LTJB+l1oeGq7VVDAiseFsqUXcFtGJivoC+zdZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/DcmRRr9WeDFBJqsliQfI0H1P/eNUY4NDJg1TvoAXWhi8oLYVNpMlzd4EvIy/MRn5rfGtdwJVszQuWuMLxGj/ZPBlp1xsT2/SGdfkptg3YkoSqwtF2FgsWlRsbR5EQNawNXRNQKvfQZvuQdzghBwIEDpamLHyAcuv+c1+qCRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRlLSHk6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 088BA1F000E9;
	Fri, 10 Jul 2026 12:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783687760;
	bh=INFG4LTJB+l1oeGq7VVDAiseFsqUXcFtGJivoC+zdZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mRlLSHk6NOGlU75HWcTFzwjrUCaNgS0OdikaSooJEfAHTde5KZfttqBV9SC+lnVrN
	 9wdU8cFK251QApNAD9UYASIJTLfR94zf+pQU4I38qfrSFE6XpINL+JitFbq82RYSd9
	 HRk3SD8j2nfU29n/4D7lW6KnBWbTw58ZhH1JAJO4Fb6ZL8kWo36Monfyk48uZdVSae
	 KhIimg9oZW0wturx4eE42FUtX4wIqpDgYCdgjtFom8Yen2WDQuLiomHI19fxL3TIdp
	 FQG0O2BpLJzMeF0Zw6kvyFCKsb8j/X73oBrrfthGaGctV8yj4nJSrAhEW2mVElSBQU
	 hzDYojBY+w6iw==
Date: Fri, 10 Jul 2026 13:49:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: sound: add Texas Instruments TAS2557
Message-ID: <a79fe709-6949-4f73-8f97-6d02e1ee9d78@sirena.org.uk>
References: <20260709221331.989109-1-morf3089@gmail.com>
 <20260709221331.989109-2-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fATq3Umw5cC/VuOG"
Content-Disposition: inline
In-Reply-To: <20260709221331.989109-2-morf3089@gmail.com>
X-Cookie: Did I say I was a sardine?  Or a bus???
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:morf3089@gmail.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:shenghao-ding@ti.com,m:kevin-lu@ti.com,m:baojun.xu@ti.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324447-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,ti.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF0CF73AE88


--fATq3Umw5cC/VuOG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 10, 2026 at 12:13:28AM +0200, Gianluca Boiano wrote:
> Document the TAS2557 mono Class-D smart amplifier with an integrated
> DSP for speaker protection. The device is controlled over I2C and
> receives audio over I2S/TDM (ASI). It can drive a single mono speaker

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--fATq3Umw5cC/VuOG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpQ6koACgkQJNaLcl1U
h9CEfgf7BfbE/ZnMv9DeSkzIy1BaCv1oKkas3UucwJqhK3lFbbGdh4zKupxuOxQ7
A5WwfZS8221D9FGX7EbTENwPPb+CsEKFMxb11vjzBXJpMxvkbgM7+sZ8HvskR317
An3QwIDTOcXOCBtJ6+waHjZMEceYDJRvZ7B+xYlI9GtTAXjNuAmfVzoq5pvLqFTS
HTidxmBie/dfP1sIubZ6XoT09KZJq82p1jw97r+bzXciT3Jh3xalpS2p+VcowG2W
udBM8jUl3eFHHHJ2/iU8SuIZvOVCZBJSSmDcvk809KwMJQ4P3NXmxdpdgwmHuIUm
k1tcqMiZ5Qkqzmf7iIE22kyfMvxVGQ==
=GrKJ
-----END PGP SIGNATURE-----

--fATq3Umw5cC/VuOG--

