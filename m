Return-Path: <devicetree+bounces-257902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALYXBci8cGkRZgAAu9opvQ
	(envelope-from <devicetree+bounces-257902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:47:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C945635D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 754FE949252
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3429A3A8FEE;
	Wed, 21 Jan 2026 11:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtevf5tC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3622C37A49B;
	Wed, 21 Jan 2026 11:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768995574; cv=none; b=K+RP4Ooxubfjp0yOWqcjko2qBiZ/FK5igHweOGxTQEyumkeGWhY0V6RSpzkcJ6u7wKyCayK/SCH/1OH3NfTlUSdOJFPFu9Kj6eyAuY4nZREfnsUHuVnoQ5tPOvKDQVgWoJUWNgqNj2Jbxm+sQ9NYb4yP6yodNOLQd0r8onhQJLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768995574; c=relaxed/simple;
	bh=OZXYeC+9a+kafCG1p94BKTtO3DuMta1qT3VMpvj+N7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gJU5YMakN2xbaNyehc3d2w9uPaQ3GjBttaS3HgHAAoWcM+THm59166nPT5EeRD0Akpzl4qn9T/CEnu1sJU3QZAhxvB9W6XkP2R8yQjQZiij5XQSIiqSSCpaG48aP7LpQFB0TbMZagEYikKDdOOOgRovvLokqxa4Y3c7U9tLNOFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtevf5tC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA7B8C116D0;
	Wed, 21 Jan 2026 11:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768995571;
	bh=OZXYeC+9a+kafCG1p94BKTtO3DuMta1qT3VMpvj+N7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jtevf5tC7W2AYC2sCJEIUgUmDW2cMb/DMQtYixYR5BL3bQN3CpYpm7lmnmYlaY8JG
	 BSY3FvBAT6IBBrk1D3qLSu4jf9zd29KCIu3R7Qt5w2P/e+QXZyjSvns0lLBu2OHy+x
	 jn4jYTQitVAUwSnagvCsU1tOM6zYVQYFgyufo1n9YGi1FQJZUlQIjuiS36SoxS9HpE
	 ugvZOuAEB2ZLFByCwCas++FjNOEMQbHr7ueO/TYW65mEI/Qa/II0i+Sq6uwXfIXLr4
	 N5+JBi9BC1NaWri91qbsTAcWK15L/WIfGBk2awyAyoVISQQNJdzKBdEI0q8RLSYpl4
	 XgS+aO9v3u5DQ==
Date: Wed, 21 Jan 2026 11:39:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] spi: xilinx: switch to device properties
 and make IRQs optional
Message-ID: <83b93899-8f48-47cb-a74a-b4e838cc463b@sirena.org.uk>
References: <20260119-spi-xilinx-v3-0-4566c33bac0d@nexthop.ai>
 <176893698361.778248.6867023245726406177.b4-ty@kernel.org>
 <c0288962-6a11-4274-9e93-91bd5a6997c5@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6oTNzElpk8SzuhnU"
Content-Disposition: inline
In-Reply-To: <c0288962-6a11-4274-9e93-91bd5a6997c5@amd.com>
X-Cookie: Eschew obfuscation.
X-Spamd-Result: default: False [-2.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257902-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 94C945635D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--6oTNzElpk8SzuhnU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 21, 2026 at 09:15:02AM +0100, Michal Simek wrote:
> On 1/20/26 20:23, Mark Brown wrote:

> > [1/3] spi: dt-bindings: xilinx: make interrupts optional
> >        commit: b603500de20fbe15ee54580481c1df4212a4ec44

> Are you sure about this one based on my discussion with Rob in past?
> https://lore.kernel.org/all/20250605130331.GA2370690-robh@kernel.org/

> I don't really mind but would be good to do it in a consistent way.

My understanding was that the hardware doesn't require physically wiring
up the interrupt signal and can work in a polling only mode.  That's not
unknown for SPI controllers.  If the interrupt is actually a strong
requirement for the hardware (and especially if it is actually wired up
on this system) then we should drop these patches.

--6oTNzElpk8SzuhnU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlwuu4ACgkQJNaLcl1U
h9DM0wf9Ef7sqmY9FVcVZkrTC4gEsAf/UWIpQT7xuqTVm6rMyNBxcr7hgG1I2jpp
civnH47B1gKiGjfVFVdSKaP9r7dh0XsyiuHVCECK/zaB1og4XDvIJd4v2louzCQ8
+xeqWZf6vuTu4LFjbhdMetTqWgBFBKu/dEm/oKrpTN8wBHbRGsCE+kd5W5hHATF9
h0eivfXgVIDIS7ktrVvgirKQ+6AkY/qBsvn0NAqEdMrPkGPsud8znU3eLkNrQmC3
hgEOqBqKI1/gw22IrJM++MPADnzYbUVJmZlwSd+LQdDlOjmSSgTJjRRKxZaIhBpl
qEgDqXc0EVQhN7JUODVuBlxWmepKiQ==
=jyYD
-----END PGP SIGNATURE-----

--6oTNzElpk8SzuhnU--

