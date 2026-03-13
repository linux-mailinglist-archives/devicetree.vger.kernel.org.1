Return-Path: <devicetree+bounces-275431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALQWIX87tGmDjQAAu9opvQ
	(envelope-from <devicetree+bounces-275431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:29:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A1D287081
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 619B3328E580
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD803C6602;
	Fri, 13 Mar 2026 16:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYtH8FoC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9353C5DA8;
	Fri, 13 Mar 2026 16:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419067; cv=none; b=P1CG8t7AKZIxvR3cVG3aJuosJD8rH4kmJvLb74C9sihLO9mFkaHj7lM4DPMckp3IXYHvGz3JLmRSSMCT0UsG+fQ01ssnC9Nputy0kQo4SSysSOHouhYEuEAzP/PY78hkESi5n1zFGpF/idtIIaRlWctcanv39uIkJUUUE9zO1PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419067; c=relaxed/simple;
	bh=nO2xN0bDN0di6NgmvrvHhZmDL3VlQvUs/UOpTeiuJe0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqGC+TZgGdKNciHSxj/QloB8vXNGxnbNj4dlt/G5tWxffl1VPx9zOfTlCu4gUpGIQ7SS6ChA8pKVPwWDrYcnMjuVfAR2HlaaoGXujrsDoLb7bLd8rjOicwtoC9vMNvz8oqjiZdLba6ffKuejmxUGfvZyd6NX56LFkEqPrwrNw2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYtH8FoC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC9CC19421;
	Fri, 13 Mar 2026 16:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773419067;
	bh=nO2xN0bDN0di6NgmvrvHhZmDL3VlQvUs/UOpTeiuJe0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NYtH8FoCr6ad2IGGddfsQz/i3/rgc4qD74Qn/NXfwLySdulz3ldgIt7/Iuwmq74as
	 +JcUXGNF78o2C73GYhk/AXAeXOg1QvyMw/Nk0CvB7itIB9K8CWmL/DsF/CC8Sxehsj
	 zFchOBuN4oE5yrqNUUwaFkgpADo4Ok5WUHWdD9Opd57YYyAwQe2mvEBtB8DtPVHaMx
	 FeUfzB1C4DfIBWOcSRIKHbCWvWMuI/la9OwP0z9382xeOFGhbhhVoa/oxvGDIDMOCl
	 86FIfIl01DgJnrhGMYENdeylbCF3WxPqjoQNRTYY+g8lbpjzV6HWwKu4FcnwgeRr7q
	 wT34YX1lhTIJA==
Date: Fri, 13 Mar 2026 16:24:22 +0000
From: Conor Dooley <conor@kernel.org>
To: aspeedyh <yh_chung@aspeedtech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
	maciej.lawniczak@intel.com, broonie@kernel.org
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Message-ID: <20260313-energy-casket-ca8adc1f1fd1@spud>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ri4H3n7qcgGpiS4k"
Content-Disposition: inline
In-Reply-To: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275431-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:email]
X-Rspamd-Queue-Id: D8A1D287081
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--Ri4H3n7qcgGpiS4k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> This series adds initial support for the eSPI controller found on ASPEED
> AST2600 BMC SoCs.
>=20
> The series introduces a eSPI controller framework for ASPEED SoCs under
> drivers/soc/aspeed/, adds AST2600-specific controller support for
> peripheral and flash channels, defines the corresponding devicetree=20
> binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
>=20
> The driver is intended to support host-BMC communication over the BMC-side
> eSPI slave controller present on AST2600 systems.

This all seems to be in the wrong places entirely, shouldn't an eSPI
driver and bindings go in the spi subsystem? FSL's appears to be there.
Mark?

>=20
> Patch summary:
> 1. dt-bindings: soc: aspeed: Add AST2600 eSPI controller
> 2. soc: aspeed: Introduce core eSPI controller support
> 3. soc: aspeed: Add AST2600 peripheral channel port I/O support
> 4. soc: aspeed: Add eSPI TAFS backend support
> 5. soc: aspeed: Add espi flash channel support
> 6. soc: aspeed: Add sysfs controls for flash LUN selection
> 7. arm: dts: aspeed: Add eSPI node for AST2600
>=20
> This series has been tested on AST2600 platform with Intel's host eSPI
> controller.
>=20
> Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>

Unless you're an fanatical employee of Aspeed, I doubt that this signoff
reflects your actual name!

> ---
> aspeedyh (7):
>       dt-bindings: soc: aspeed: Add AST2600 eSPI controller
>       soc: aspeed: Introduce core eSPI controller support
>       soc: aspeed: Add AST2600 peripheral channel port I/O support
>       soc: aspeed: Add eSPI TAFS backend support
>       soc: aspeed: Add eSPI flash channel support
>       soc: aspeed: Add sysfs controls for flash backend selection
>       arm: dts: aspeed: Add eSPI node for AST2600
>=20
>  .../bindings/soc/aspeed/aspeed,ast2600-espi.yaml   |  74 +++
>  arch/arm/boot/dts/aspeed/aspeed-g6.dtsi            |  11 +
>  drivers/soc/aspeed/Kconfig                         |   7 +
>  drivers/soc/aspeed/Makefile                        |   1 +
>  drivers/soc/aspeed/espi/Makefile                   |   1 +
>  drivers/soc/aspeed/espi/aspeed-espi-comm.h         |  62 +++
>  drivers/soc/aspeed/espi/aspeed-espi.c              | 618 +++++++++++++++=
++++++
>  drivers/soc/aspeed/espi/aspeed-espi.h              |  63 +++
>  drivers/soc/aspeed/espi/ast2600-espi.c             | 304 ++++++++++
>  drivers/soc/aspeed/espi/ast2600-espi.h             | 302 ++++++++++
>  drivers/soc/aspeed/espi/espi_storage.c             | 322 +++++++++++
>  drivers/soc/aspeed/espi/espi_storage.h             |  32 ++
>  12 files changed, 1797 insertions(+)
> ---
> base-commit: 0257f64bdac7fdca30fa3cae0df8b9ecbec7733a
> change-id: 20260313-upstream_espi-d9fea66d1772
>=20
> Best regards,
> --=20
> aspeedyh <yh_chung@aspeedtech.com>
>=20

--Ri4H3n7qcgGpiS4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQ6NgAKCRB4tDGHoIJi
0r9rAQCzRJj+qeLcVgcLte6ZhkBlAd80bAZXjUF47eDDrK5abgD/bQdbCvmv8GKV
PXvZhB78H2Kl0OTJ/ssW+ILpkoWz9Q8=
=dRsP
-----END PGP SIGNATURE-----

--Ri4H3n7qcgGpiS4k--

