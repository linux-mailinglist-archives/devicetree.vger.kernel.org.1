Return-Path: <devicetree+bounces-275593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GXj1OreztGlrsAAAu9opvQ
	(envelope-from <devicetree+bounces-275593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:02:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F27A28B0ED
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E322A309B43A
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8DD1A275;
	Sat, 14 Mar 2026 01:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HW3CN3RD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE8140DFCC;
	Sat, 14 Mar 2026 01:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773450165; cv=none; b=E5eUrNA2imq+ljpIQBMRuK37NuMQTBh/yzvM1jAH3Eal/n+EOdH2oFgjHwmDhbZQjff33pyWIb5iEgPYnbZLV2fUkwFXp7zulKYIez5Bs5uNYgYB/nflpRH/SUOXw2LVAjN08XPv9PwfkILqkja19t1KlNLlmmllo6dQTt2Nz4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773450165; c=relaxed/simple;
	bh=tWYs9DvU+mZ9LOVAyOnflvF29x67OnKqYeQPgwvkhk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKyp1h2x69UpkC/ZBUKAfi86NhmIPywGK3IqztLhY5Co+Jk/kzX5jyfecP0pBAjFvQREUnkrIjDHUv50Opt4HYP8TGFq2OSTzDzJgsjR8zra5POn1yRuLoTZh8xyvvZq0Sz0Mvw75ot/xrpo2E/dPSDi5NfpXwSB2Q7pMGuaKiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HW3CN3RD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73374C19421;
	Sat, 14 Mar 2026 01:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773450164;
	bh=tWYs9DvU+mZ9LOVAyOnflvF29x67OnKqYeQPgwvkhk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HW3CN3RDbWA+xtGV5+q0X5flLSMIlP4UDcr0sHpw58UExgbzgaLZffft5PqZxZjoz
	 fdXAuS0ACArf5KBcnPgQrH27JvSnuro2JwKApqnp+R4PG3AkXpKt7K/cH+vY7Jp7Ee
	 B2t4WJUr6v5cML8RtKPTRw5pdElvD2OLBUE6VXNNoxtFNd49pL7qkvqNADoa3REIEA
	 9zyI2Gke6d/8TioKlqGFQoAf0J0eRXOBJ4nX/H1wYPHePY6n7l+h6I9lNIV5GuElMr
	 fGBXbj9BG5G0r8uIWbalHPkkBgKhuKBumA0WwgcPPRyRYFg2NrEXZv4p3VgQpISJMs
	 dPvzjrR6hPRpg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id E13621AC52DC; Sat, 14 Mar 2026 01:02:39 +0000 (GMT)
Date: Sat, 14 Mar 2026 01:02:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Conor Dooley <conor@kernel.org>, aspeedyh <yh_chung@aspeedtech.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
	maciej.lawniczak@intel.com
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Message-ID: <abSzrxJVcWi6VNTJ@sirena.co.uk>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-energy-casket-ca8adc1f1fd1@spud>
 <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="As7T8iPELD/sjSqV"
Content-Disposition: inline
In-Reply-To: <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
X-Cookie: Identify your visitor.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275593-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.co.uk:mid]
X-Rspamd-Queue-Id: 4F27A28B0ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--As7T8iPELD/sjSqV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 13, 2026 at 10:36:02PM +0100, Arnd Bergmann wrote:
> On Fri, Mar 13, 2026, at 17:24, Conor Dooley wrote:

> > FSL's appears to be there.

> I think this is just a similarly named device: Freescale/NXP's eSPI
> device driver is unrelated to the Intel eSPI spec but rather implements
> a normal SPI driver the same way that eDMA and eSDHC are Freescale's
> implementation of dmaengine and SDHCI drivers.

Yeah, SPI with a random letter or string in front of it is usually just
someone made a new controller for some reason (often a new feature, like
all the QuadSPI devices) and wants to differentiate it from their old
ones or connect it to other branding.

--As7T8iPELD/sjSqV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0s6sACgkQJNaLcl1U
h9CIOAf/Rrg0d27a/vhMLtPcEjSZQoXrrlz9ZUG/qs9V8Fvp+um7hK8PgZScqRn0
zbQKVJrMc2M25hSr6WGx7z3DNp40n5vwepJLhtVA8IGa+3IPMQJ0LchIGlrTVl/X
cgpRptD7myafQdktC0w1Lz2OafkIWFKxCcVj5jj8TCsjzlfwmIFrrCH8NbPGklhH
o309ZPAzFdOJNxV+h19WsfgXgIawJyZ8Qer7m3Ub4xSL6QvOk05G1nEqFDW6o2RF
uybGs9uOe2wUH7yBDIVoVhE7nPsr4npiTNG7zkvZRc4jtvb+i4mAgUbNtvuTzpJk
wCsgdWoq1QUE3wwIDdZFol24nhVa5A==
=FOG0
-----END PGP SIGNATURE-----

--As7T8iPELD/sjSqV--

