Return-Path: <devicetree+bounces-275436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICOjKCQ8tGmDjQAAu9opvQ
	(envelope-from <devicetree+bounces-275436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:32:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC81D287106
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3568830080B1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C933C552B;
	Fri, 13 Mar 2026 16:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiuPWHot"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925903B27D3;
	Fri, 13 Mar 2026 16:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419551; cv=none; b=h+BN45DZL0n5zjHjucV1f/AKfvzj3tvPrCoXtMP22iWCMc2MYD6uqFswVM88ymfzdMYSyMY3xdANkykbAu0+x1ObLCcb/iIdZptHO13/4BC4y9ESJZPSHt+0umfkvCF3QaydQiSNMmZgqedefRzzO/7Lva8wyAfKkBAOND0WyNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419551; c=relaxed/simple;
	bh=CIellapUW1+YjJZ9d2SpELMqrNBmvRAjw1fsXMHuNYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nD8fmpIrZcZ97quYY0babku7GZu+2e+JZ5kbTi2hRdGmpeEGUdUldPH4WDeKYrv7yrXAo1XyuCa6zXePos8KRZh4aFdw56aItS+0Hcn2MBdzJU1VbZYq1eKH/6O6h6HgvoIL/pJ/HVLxF1fu0PS6M6P1ECE9WuBvGjEGQIcmv0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiuPWHot; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66C86C2BC87;
	Fri, 13 Mar 2026 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773419551;
	bh=CIellapUW1+YjJZ9d2SpELMqrNBmvRAjw1fsXMHuNYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AiuPWHot8SbFapVb3TIecP0Kil02229FoPHuRNl4f+i42vizPrG8N0Mfot5rjsFW6
	 joRLyDy91I1ywpKOXol4RGHrjs5/t/yfQTPKoJnw7s7ZchkI+f6+4XR32wDSKt7jEK
	 UagzNGkvqEXlWRD9Bp/sNMShqP+LSW0Wtf2wR7hvWWTdEFueNWqTNdg+OatyQyEa73
	 l7ehFXvhipdXKNFXm2RcK50hsSnFE119k3/hXhJmt1prXl2Q+xP6KeVtMk1TI2hhgC
	 UVgNK0VInD6ukeFou9G6Ip0fcBINpcjJQkTWUY1G2uUh8Zq1bgobc+g23FiWSis1iS
	 f3QDPMsufA7Gg==
Date: Fri, 13 Mar 2026 16:32:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: aspeedyh <yh_chung@aspeedtech.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
	maciej.lawniczak@intel.com
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Message-ID: <903bcc13-5b50-462c-8fa8-051f07748127@sirena.org.uk>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-energy-casket-ca8adc1f1fd1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F2hu5EuVOUo3uSja"
Content-Disposition: inline
In-Reply-To: <20260313-energy-casket-ca8adc1f1fd1@spud>
X-Cookie: Monitor not included.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275436-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AC81D287106
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--F2hu5EuVOUo3uSja
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 04:24:22PM +0000, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> > This series adds initial support for the eSPI controller found on ASPEED
> > AST2600 BMC SoCs.
> >=20
> > The series introduces a eSPI controller framework for ASPEED SoCs under
> > drivers/soc/aspeed/, adds AST2600-specific controller support for
> > peripheral and flash channels, defines the corresponding devicetree=20
> > binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
> >=20
> > The driver is intended to support host-BMC communication over the BMC-s=
ide
> > eSPI slave controller present on AST2600 systems.
>=20
> This all seems to be in the wrong places entirely, shouldn't an eSPI
> driver and bindings go in the spi subsystem? FSL's appears to be there.
> Mark?

As documented in submitting-patches.rst please send patches to the=20
maintainers for the code you would like to change.  The normal kernel
workflow is that people apply patches from their inboxes, if they aren't
copied they are likely to not see the patch at all and it is much more
difficult to apply patches.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--F2hu5EuVOUo3uSja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0PBgACgkQJNaLcl1U
h9AAYAf+L1uxDFy0+AOhCEgiEggmR6FDeUbMGbqzgBvrCvnN+F2MpV8AWF7bFJfG
/bUEMAYMn1InW0Xj5aP6ITHk4X4CxIY1K62AEj5kjT/pMIfe7e+ggSATZNwR4kPK
6CHD8Gw40/UsogozFin1KplzPpCjzfXkScCFpT4g0lDWLp/FohmBLC+57+LrjpV+
PAtFlfcxBf+BgROn9ioH6FlSJHpcSxqwCLg0sIo/ZCcGyDlLuySN9zyBpIVwZ9SJ
YasQI1vLbWj+oI9WoxaDEibuKaMeBomWL2MLklbtumzbAB9fLrmwDnH4Q0ZL7swh
oGrz049gojg+z3JNaufDsOtPHZoLRg==
=0yd5
-----END PGP SIGNATURE-----

--F2hu5EuVOUo3uSja--

