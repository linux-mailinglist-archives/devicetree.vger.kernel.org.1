Return-Path: <devicetree+bounces-314380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JKlzG4gQOWrqmAcAu9opvQ
	(envelope-from <devicetree+bounces-314380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:38:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D30F06AEC16
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:37:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SjA84rh2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314380-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314380-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5B1C300CCAD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C379637267B;
	Mon, 22 Jun 2026 10:37:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A3372064;
	Mon, 22 Jun 2026 10:37:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782124675; cv=none; b=Ya0j2f1pmQUi3gzz7KzLg6ZEKqWklfap0szcF/2b4w901NItiNhZSyyaVZZ1OgS9VmbbKqTuAfwE83imqYnv21yGKLTvoYBUuvn/MyP8COKUq2nPUSR9c3Gis/5/nLUgeqvKGffRG0QpnqIcEWr2LcFR2+y8/ocpYvWbJ4I9gR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782124675; c=relaxed/simple;
	bh=SlXpapcESob2oMAX1fFCfcRVVrRmMpw/0lMMJyMoXZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUJpNSUGNU0NYtdBPUkQRKYgcRkTTay5W2c6HaUO0c797WhOWAfJt/1e40z2nlFo2Pka1cxOoAG17U0jTgrwSoiPG3MpNI75hW6mQ/QA1CsGgN+EYsLm6BzFMGS5+PHSJQ0qMHzEYE30jIDdI7ihqeiodKvK3IekKTwTIM9V78g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjA84rh2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD5B81F000E9;
	Mon, 22 Jun 2026 10:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782124673;
	bh=4JaDzGEOq8RviwvqFH3apYO55x+BKM/GmrtegVUEYwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SjA84rh2vGNpApF7xb/8/QboyqkViBsFqkxGtE93XASJ+6cAjHWGMYiaqrRp/pSwq
	 nAURq2pW5oZK+5kztm9oQ/j9SKS2UNBEdMeWO9RhLcnT1zJAaz+BD/7G4aqFCvVY4x
	 QHjPHYeIsBIaY32IwlZUhlFi1+/nLUdPptY22FEUURtZfP4gIY5r57Dig5yPyGWO6W
	 PSt5y3KkRLPjlfNLCab0Yw1tso96epHP2NtLYknAw8EpAV0q/Tzyg6NBTOlCmVCRNz
	 ZbyDjiLdaDqPPWkSrczxDGEZC2xL9ZfHm2u9lKJT1zSb47tP99cDSw/BDAWR7yf+Km
	 VEJxhJdxJ5q7A==
Date: Mon, 22 Jun 2026 11:37:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-sound@vger.kernel.org, robh@kernel.org, tiwai@suse.com
Subject: Re: [PATCH v2 1/7] ASoC: dt-bindings: ES8389: Add members about HPF
 and clock
Message-ID: <65a1d2ba-0790-4c6f-9c00-39ee8b4db7bf@sirena.org.uk>
References: <a619312f-55b8-41f4-b288-d7c343f5f9e9@sirena.org.uk>
 <20260622063318.3535-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qo2N2fpRNvMdPVCU"
Content-Disposition: inline
In-Reply-To: <20260622063318.3535-1-zhangyi@everest-semi.com>
X-Cookie: Now I am depressed ...
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314380-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D30F06AEC16


--qo2N2fpRNvMdPVCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 22, 2026 at 02:33:18PM +0800, Zhang Yi wrote:
> > > +  everest,mclk-src:
> > > +    $ref: /schemas/types.yaml#/definitions/uint8
> > > +    description:
> > > +      Indicates that SCLK is used as the internal clock.
> > > +    minimum: 0
> > > +    maximum: 0x01
> > > +    default: 0x00
> >=20
> > Could this be done by having a clock API property for the MCLK source
> > and then falling back to using SCLK if that's absent?  That would feel
> > more natural for DT, and you'll probably want the MCLK property at some
> > point.  It's also a bit more of a neutral description of the hardware,
> > future versions might switch dynamically between MCLK or SCLK based on
> > some criteria or something.

> Does the implementation below match what you described?

>=20
> es8389->mclk =3D devm_clk_get_optional(component->dev, "mclk");
> 	if (IS_ERR(es8389->mclk))
> 		es8389->mclk_src =3D ES8389_SCLK_PIN;

Yes.

> > > +  everest,hpf-frq:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      The frequency of HPF in Hz.
> > > +    maximum: 1020
> > > +    default: 16

> > Why configure this with a fixed value in the DT - it's the sort of thing
> > I'd expect to turn up as an ALSA control so the user can vary it at
> > runtime if they want to?

> I don't want users to be able to change the HPF value at any time,
> as this would affect the codec's startup.
> Or I can use SOC_SINGLE_EXT to define HPF-related controls
> and write the modified values to cache when writing to the hardware is no=
t permitted.

Some devices have custom controls like that already, you could also
prevent writes while audio is running.

--qo2N2fpRNvMdPVCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo5EHwACgkQJNaLcl1U
h9Ao7gf7By5U0QbeSqltgEe3rmQc/pjTB0u4wp2KBHSYRrwoM6NCiM8V/xI14EqS
daXlg2i/W4mJMdadyz9Yhb/85pYexqUb9IlIHSiheBOCJ/HMFpTROnVuUgu/LXMV
00zgMFzgga90YkP7sUW/KxgeMclhhBlkbek4bD+WL0AJE/V73kPlk+BatwQ830aP
7vn0MRV3XqkXsg2LNUrdS5jtG1QBGznKLKTe1y5+ixDOGJxWioA1h/HLKIjWRTbA
iQcP8wUY8OL+seDcD4m57FyD3EKA5/zM/x2L5S4AH7dWvZatj5JQoraByQ4z7X8j
s36VjkEXVY6RHDC5vk6dQzCVYSbgYw==
=Ddoj
-----END PGP SIGNATURE-----

--qo2N2fpRNvMdPVCU--

