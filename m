Return-Path: <devicetree+bounces-306179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c9tWJlEYIGrgvgAAu9opvQ
	(envelope-from <devicetree+bounces-306179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:04:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8976374C6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:04:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=amJF0ZPV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306179-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306179-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D31D53089F4C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 11:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6FA46AED3;
	Wed,  3 Jun 2026 11:57:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F473806DB;
	Wed,  3 Jun 2026 11:57:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780487837; cv=none; b=MUxbkNz2me7Q5NOJndz7xLZ7o50kJsYHfbp7OD5vNHTw0O1Vf9JjNRYcJAz9DV37H0PotpQBC6a2Bv5EEdd7cvbivSPpNkUXF9wAGoyZWIn+SB4tadBUeHkFxvFB/eN9/0Cvg2LKigBwcIJQt6DoS6uX5KSWcEdcuhB4asHTkH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780487837; c=relaxed/simple;
	bh=TZdsiqRofW9BmGd/id88K43I5hkz6Pc37P+fwW5bWKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BuFag1iGK3iL3omyEJuQ3in9K+rC6yuL7iMS2maxFcMcZblFATtA8xhHzEBllJURSY8eQUgCFI7SAxrjfgI3xTw5nkezi2+JmKDCNSkiTBDOccyVKCBl03K0yXHfuTSKXoNRlTBtv951PFAajIM94xe93qf3ib8zkLNE+st/ni0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amJF0ZPV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E29901F00893;
	Wed,  3 Jun 2026 11:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780487836;
	bh=TZdsiqRofW9BmGd/id88K43I5hkz6Pc37P+fwW5bWKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=amJF0ZPVCFCtuY+yWKi3v98RzGSvP4gwyhhG2JgTbGQbb+BKrdHf5wbwd12XrJOh/
	 vAyMQEINO9niqxU81vq5Y9rjFQI1qeA4JaglnbVH1LsmvdXzh8x92Np0Nv/+bXXMOl
	 8UP6pMkVHfzgjjNMJ1wNVOIXZPrl39LNwtzAHZHJlpFJIVpmeP1EsdgCMxBbhYcADo
	 //TXggf0nITZieRnFMSm5iJyFLMzOlGVo4rOJxxo5mGNXwd9NDEDXWZMFRaGfO//IM
	 NdmQkMbdDUgBBdCn8fGKOqX+3ikVduFfR6/zsWfN64z6W5wyh/3RV64qW1Bfc1Dtzd
	 6npBAK2GK42eQ==
Date: Wed, 3 Jun 2026 12:57:11 +0100
From: Mark Brown <broonie@kernel.org>
To: chancel.liu@oss.nxp.com
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com,
	david.rhodes@cirrus.com, rf@opensource.cirrus.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
	patches@opensource.cirrus.com
Subject: Re: [PATCH v2 0/2] ASoC: cs42xx8: Add SPI bus support for
 CS42448/CS42888 codec
Message-ID: <7522f14b-f416-45df-9e84-477dd0c81ed7@sirena.org.uk>
References: <20260601080224.1410292-1-chancel.liu@oss.nxp.com>
 <20260603095041.3906558-1-chancel.liu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vZi2AwqtALTjj6sG"
Content-Disposition: inline
In-Reply-To: <20260603095041.3906558-1-chancel.liu@oss.nxp.com>
X-Cookie: No running on pool deck.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306179-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,cirrus.com,opensource.cirrus.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:chancel.liu@oss.nxp.com,m:lgirdwood@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:david.rhodes@cirrus.com,m:rf@opensource.cirrus.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:patches@opensource.cirrus.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF8976374C6


--vZi2AwqtALTjj6sG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 06:50:39PM +0900, chancel.liu@oss.nxp.com wrote:
> From: Chancel Liu <chancel.liu@nxp.com>
>=20
> The existing cs42xx8 driver only supported I2C control interface.
> Add SPI bus support for the Cirrus Logic CS42448/CS42888 Audio CODEC.

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

--vZi2AwqtALTjj6sG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmogFpYACgkQJNaLcl1U
h9Culgf/R82n9Qsl+6d7h1Gkz0QoRPfinM4CsWxGCk4Z6TOrT41zSuY2SucZ7wMs
lFPYgGw91FwHhmpkCq1LGAMLh+3/97+ZDPzF7eTCrz39ItyfviyQHMugaiKcipz+
5KbFLR/bqn9Bl22FJU/KwB+5Qlthkwvt91xq4bXkoWWpqO1ylOsUpiIheb/PKgPC
n7kD1MBSy9TYu24ZDEweWOBaHaVwDA2vgT+WN088euuuVPMmbJdwYbrcw5AM6MWm
XD6yvLIqmp+RYN3hdD6qjlOapemQIWIGUbZHv01HC7Ix1OlvEgrjX92Q4ny2l8wC
pbbWUe4rxQCBPvPwHnhY0MXMthDQaA==
=yNrW
-----END PGP SIGNATURE-----

--vZi2AwqtALTjj6sG--

