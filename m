Return-Path: <devicetree+bounces-297092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO3pC8nSBGp3PgIAu9opvQ
	(envelope-from <devicetree+bounces-297092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:36:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2453A0FD
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9114D30E0375
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3173B38AF;
	Wed, 13 May 2026 19:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6OuiCq8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82673B3C06;
	Wed, 13 May 2026 19:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778699810; cv=none; b=av4mrMI1IfImBaz1RhPAOHCIgt7XI3XOWVTm7I2sFF5BWBzesJnJqDi5OF0r/1o5ISm0tLsjDmw0hiHis/7xppCzoib6STuMKm9W1WYxfcitlKmtsRDvA7jE8GP2mhf5OP+UZ+68JE8hoqsK/vTLRrTZS1rzs+xMtLsBNXNRDzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778699810; c=relaxed/simple;
	bh=iJJNz6HXYxUUNPv3YiVGvW7CisErCC6b/AI/iBRLhSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1PbSSMcVoL792Wj4tT6R1N+TtX/CoeXmzePBXvkde6TqUv1OJMp2gKVa/bsvyTk/4I/zeS/BkTFcUNo07GdDkx09n3o7vAdiarZIrb20ZAUB+PfpBPUfXlKAHd91JSVg7gG7sMbbKze8eYFUnHtk6bXDhjjf8ByEbCzQUtGfVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6OuiCq8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BAA5C19425;
	Wed, 13 May 2026 19:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778699810;
	bh=iJJNz6HXYxUUNPv3YiVGvW7CisErCC6b/AI/iBRLhSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z6OuiCq8h7MijIfztDY6J+WrxdHxFNtPzhozImiBFKWXr4RVkFOxosQZuzp1ZYavK
	 ElWJajC62XL+KbcFm1qYm69qffyGzkK5nWZ5W4P8MqED0RCivwlQzriDlV9c7LiHcq
	 j3tHQ6BVrEVEDyiF+ssBGaBeBrR+X41bpPPeWFGlfcO381xumDpZuZALJRKprODfkr
	 FmV79SWkehR89ltZ4VWnqLGeNVDbA+doXtRjM9dU5oqCfe2rQCzMu28JbN33zdb3kR
	 JTnUrdqjZUB3myunpwF0AdfZFFwK1BKOgMMaFVK/+DIAZGcwj3H4V4ZzBmEP8G2X6t
	 A6R9QblpKZeew==
Date: Wed, 13 May 2026 20:16:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v2 11/12] soc: starfive: Add socinfo driver for JHB100 SoC
Message-ID: <20260513-headstand-hertz-bf31fe6c1938@spud>
References: <20260512083521.3448-1-changhuang.liang@starfivetech.com>
 <20260512083521.3448-12-changhuang.liang@starfivetech.com>
 <20260512-mushroom-helpless-0815d0885abb@spud>
 <ZQ4PR01MB120205CCC0A3229824701640F2062@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wpszzjDaD+Si2T8W"
Content-Disposition: inline
In-Reply-To: <ZQ4PR01MB120205CCC0A3229824701640F2062@ZQ4PR01MB1202.CHNPR01.prod.partner.outlook.cn>
X-Rspamd-Queue-Id: B0D2453A0FD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297092-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,pengutronix.de,esmil.dk,outlook.com,gmail.com,alpha.franken.de,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[starfivetech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--wpszzjDaD+Si2T8W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2026 at 01:01:46AM +0000, Changhuang Liang wrote:
> Hi, Conor
>=20
> Thanks for the review.
>=20
> > On Tue, May 12, 2026 at 01:35:20AM -0700, Changhuang Liang wrote:
> > > Add socinfo driver for JHB100 SoC. Currently available for
> > > distinguishing between the two reversions, A0 and A1.
> > >
> > > Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> > > ---
> > >  MAINTAINERS                                   |  5 ++
> > >  drivers/soc/Kconfig                           |  1 +
> > >  drivers/soc/Makefile                          |  1 +
> > >  drivers/soc/starfive/Kconfig                  |  6 ++
> > >  drivers/soc/starfive/Makefile                 |  2 +
> > >  drivers/soc/starfive/socinfo/Kconfig          | 11 +++
> > >  drivers/soc/starfive/socinfo/Makefile         |  2 +
> > >  drivers/soc/starfive/socinfo/jhb100-socinfo.c | 80
> > > +++++++++++++++++++
> > >  8 files changed, 108 insertions(+)
> > >  create mode 100644 drivers/soc/starfive/Kconfig  create mode 100644
> > > drivers/soc/starfive/Makefile  create mode 100644
> > > drivers/soc/starfive/socinfo/Kconfig
> > >  create mode 100644 drivers/soc/starfive/socinfo/Makefile
> > >  create mode 100644 drivers/soc/starfive/socinfo/jhb100-socinfo.c
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS index
> > > 6f6aac7cea95..66175f453d20 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -25613,6 +25613,11 @@ S:	Maintained
> > >  F:	drivers/reset/starfive/reset-starfive-jhb1*
> > >  F:	include/dt-bindings/reset/starfive,jhb1*.h
> > >
> > > +STARFIVE JHB100 SOCINFO DRIVER
> > > +M:	Changhuang Liang <changhuang.liang@starfivetech.com>
> > > +S:	Maintained
> > > +F:	drivers/soc/starfive/
> >=20
> > FWIW, this is not what I asked for in v1, this should remain the full p=
ath to the
> > driver. I wanted you to add this directory back to the "STARFIVE SOC
> > DRIVERS" entry, since it's me that'll be applying patches for this driv=
er.
>=20
> Sorry, I misunderstood what you meant.
>=20
> >=20
> > > +
> > >  STARFIVE JHB100 SYSCON
> > >  M:	Changhuang Liang <changhuang.liang@starfivetech.com>
> > >  S:	Maintained
> > > diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig index
> > > a2d65adffb80..b3b01fc38139 100644
> > > --- a/drivers/soc/Kconfig
> > > +++ b/drivers/soc/Kconfig
> > > @@ -24,6 +24,7 @@ source "drivers/soc/renesas/Kconfig"
> > >  source "drivers/soc/rockchip/Kconfig"
> > >  source "drivers/soc/samsung/Kconfig"
> > >  source "drivers/soc/sophgo/Kconfig"
> > > +source "drivers/soc/starfive/Kconfig"
> > >  source "drivers/soc/sunxi/Kconfig"
> > >  source "drivers/soc/tegra/Kconfig"
>=20
> [...]
>=20
> > > +	pr_info("StarFive %s SoC rev(%s)\n", attrs->soc_id,
> > > +attrs->revision);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +early_initcall(starfive_socinfo_init);
> >=20
> > Does this really need to be an early initcall btw?
>=20
> Yes, there are some drivers that need to use soc_device_match() to match =
different=20
> revisions, in order to handle the processes caused by differences between=
 revisions.=20
> So there's no harm in initializing this driver earlier.

Other socinfo drivers use device_initcall, can you use that instead?

--wpszzjDaD+Si2T8W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagTOHAAKCRB4tDGHoIJi
0oebAQDHUz422QiNNBAozcQBRUUNetPwyzPv9mbhp5q6DhB6SgEA829KIXqQgaIA
+5tVEGY9wkEQecJDp2etojerH/4Npwk=
=dzjP
-----END PGP SIGNATURE-----

--wpszzjDaD+Si2T8W--

