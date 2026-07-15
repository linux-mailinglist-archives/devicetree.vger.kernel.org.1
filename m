Return-Path: <devicetree+bounces-327092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6oT2EtuVV2oBXgAAu9opvQ
	(envelope-from <devicetree+bounces-327092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:14:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 632EF75F3C3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:14:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=Gk2uER6O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327092-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-327092-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D6D38309375E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5450A34B682;
	Wed, 15 Jul 2026 13:59:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6960132E13B
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:59:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123951; cv=none; b=PmXPfjcZ8vYBsamVymOoS729mmecWgBhEYipOBOftFS729YbZJuavIIwNZq26z4G04k4+e2IpPRmALstHTKV9CZtNtB74mqmYDpCfSbgtuRmSUgjYGqVKzkcJpg3sybmFRH+ThDxGwsZg//D6MjuNtJB6BCaMTuY+D0G2w/vHRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123951; c=relaxed/simple;
	bh=QYrx3la5ntAKtVZEZfw1wXSd0ShgpB97LVU+Yz+xAdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=llg/YxpJArNu87z24yZgsKtJTd6MzDZ67SDsXtAjdPu0eD+bYN9xlsHflV/6I8eBT/p9yFfMybh4XRGQW9y0aBoYXEmH5/zS99vt3ZHlknriiZGSPfKJMlM/3M3wNTrqvzIbJP8QQ5CdgM3DVf2Hmp59tVFlN23/slVwJjgB/1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Gk2uER6O; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=Ves8
	I4HQSDwuYcpoElbBGp3o0zSoq6p668rnJaElwDY=; b=Gk2uER6O3dnGG4Tzay8x
	hnUHTqgkyHVmeGTwh1Ho+Tz2jv88pfPQ+HS/Hd8CRRh6ZGxFwZ3/wkDObbkh06A/
	1G2c2ACo5KhAJ0PxvGFC8SQINdL1VmNDfx/CzKHypgzPgbht7jWrUe5Zx3/fu89C
	HudCFiACI2US140f4pGY7WnS7yjIlWQZkOT93UE+3nrMSV9NtuSy9edXpBM5JSuV
	as/Ouz3anP8MHll4bHlkPqBKSScOPcQoDrzc5vQP4gFJBuNAx92+csFNbxrhQ4ei
	plqjTU/OxG5vIijdTXUv62btHFrDBnGFfYThQlP6O80oHzlPH+UEX4U8Kr13FAth
	Kg==
Received: (qmail 715327 invoked from network); 15 Jul 2026 15:59:04 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 15 Jul 2026 15:59:04 +0200
X-UD-Smtp-Session: l3s3148p1@bPXjuaZWOA9tKXCU
Date: Wed, 15 Jul 2026 15:59:01 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Brendan Higgins <brendan.higgins@linux.dev>,
	David Gow <david@davidgow.net>, Rae Moar <raemoar63@gmail.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Pascal EBERHARD <pascal.eberhard@se.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
	Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH v2 0/7] clk: Add support for clock nexus
Message-ID: <aleSJafTTPe9Keas@shikoro>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
 <alNN5qxBJ4EsB3Li@shikoro>
 <87ik6ge7kd.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3CdlzGtZ2+z9JVFH"
Content-Disposition: inline
In-Reply-To: <87ik6ge7kd.fsf@bootlin.com>
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:raemoar63@gmail.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kunit-dev@googlegroups.com,m:herve.codina@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-327092-lists,devicetree=lfdr.de,renesas];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[sang-engineering.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,linux.dev,davidgow.net,gmail.com,bootlin.com,se.com,vger.kernel.org,googlegroups.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sang-engineering.com:dkim,sang-engineering.com:from_mime,shikoro:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 632EF75F3C3
X-Rspamd-Action: no action


--3CdlzGtZ2+z9JVFH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Miquel,

> that all the drivers work on RZN1 hardware. When we send this out we
> will include a link in the cover letter with a branch to test,
> connecting the clock, irqchip an crypto changes together. Don't hesitate
> to remind us for that testing branch if we forget to include it!

Will surely do. Sounds awesome, thank you! Bonus points if you could
also shorty summarize how you tested all the stuff then.

Looking forward to it,

   Wolfram


--3CdlzGtZ2+z9JVFH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmpXkiEACgkQFA3kzBSg
KbZcHA//dAis+ekgGQ0PPkVMFajQvqo7G8CsFDkqEZNV8a0wtK+CAnJ3sF9ZnA/9
5THQaosfNakifzGHMcKlvn+U11IJhQHbg0Bcswu8hbjWN2zorDFqQ0JcvyqCHC1Y
PFoirBvIDARIeWWZrJUon+uR4JRb9TR1ERnYKJ5or/4e5eqVOZJQQkf/a40tTIq6
qxvd3rK8cn3dkBur8DNCTCDraen7a8iw61DFJeUL4kZ3a6ILzDp68rN1uY3LmOhH
ZMHfzqiLBkT2wyJEpQhEKrBy4/tarHyKBYcHJDsObDnByz3TqP0pXAloEdRkZAF8
4LnNHbR0TeQjvO99WXDfphyNtfoiJKRSLYIFebuiKSO+sw50yFnTqiUU7xOAZOyx
D+ztbEAyanEivlkDwGk5EcSPHQFY6s30wmzmk9b6r3Lr7QKHsiNs/yLX5p9BKvCV
hvPTvwSfKPWpNVUZZajD8GCLXlhyRdzQMLEY5RS5ne/zXYyW1uwHAs1oIuC3OMMx
EpIdMFTkylPcykTOZrLo7DnjJFsv3dZFKg1B2qmlVlac3k19CY+vOCslBvVOMAQf
TedFryjC44eu1JK0/L3iCF8+Cky/lNn0HuYTTUA874qpNMfrBLCKPQagqGac+Qad
JEyucuyYS5pbYLW/LEtbvPmn8ZPi8NDmr+w//4mQ89wvIn4KdN0=
=cvdn
-----END PGP SIGNATURE-----

--3CdlzGtZ2+z9JVFH--

