Return-Path: <devicetree+bounces-311025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6uD+OH4pLGoYMgQAu9opvQ
	(envelope-from <devicetree+bounces-311025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:45:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4844E67A978
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:45:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="h91m9/RT";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311025-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311025-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32038302F380
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF03387378;
	Fri, 12 Jun 2026 15:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84430339861;
	Fri, 12 Jun 2026 15:44:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781279047; cv=none; b=RufYHaa7Huh6h4qvEuEF1BOuxJNDSltymjG8pE27V57pSWlKBp4JiGxUNxJA3qdmNEYaixiSDnqDbepf5FXBQfZFuZuwitSENgMLMLL0ftRDDyMNcz9grZB33alvcBXTQlM6TWZRQ5hsz17exLj1i49UGExPUHKxVM3RZD7vDfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781279047; c=relaxed/simple;
	bh=b9twEgOrbiR2T+mNdRUJyCxgzC559RFCFmHD2W94CdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8IUotIsQMNnYI0Pyb5J7l+euvHyD3g+NYRNqoYDspD+aXSWWtgCEc62gkIU92oX1YFExve2ulrQRXu2jkcj9oBG+nD/FHMgbevYysvhdIHKnf+iJ+UVFosLl8DimnrCAsL3L+mBqGJggknROYCw2uZsZWfSk0mLIl5n+q8D1nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h91m9/RT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CD361F000E9;
	Fri, 12 Jun 2026 15:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781279046;
	bh=Ua7ilpqGQ1TJZ+Bnhifl0cs54R7li+gA4PLtG5KdeuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h91m9/RTVoc4n7+PHfPlE/bu8XLven6nAKb35XV39yApAjaHBXzKJ8LUiHX1Ax3Uc
	 hs+12QVOwd6kjjJHbtVqYUbhAHbpwTwAT5pFJ1nP+Sh0z/nfy0DvOJYNcBQNju/VQ8
	 P04Ynl5UWyd/Y7FiICFoenOJs8qje3zDwnbGwSrCRteIPXWRqJ+I5RPoff7YUeQKum
	 036rNdlfFTMd8xwP8TnkpAhJ8pars/jTvXV2Gk1guqSQ4I9+GOgKudR2CLNTsWKdV3
	 iLGdyKn3IuvIXLxhLCWAjcln79zQPU1A7k5OmuBwMgVtAKBb5X12h4oXaUeQjm/24M
	 9ALyckPrchIYg==
Date: Fri, 12 Jun 2026 16:44:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Michael Walle <mwalle@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1 phy-next 6/8] dt-bindings: fsl: layerscape-dcfg:
 define DCFG_DCSR region
Message-ID: <20260612-graveyard-hacked-c65d54a1ece8@spud>
References: <20260611193940.44416-1-vladimir.oltean@nxp.com>
 <20260611193940.44416-7-vladimir.oltean@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Anvk3G/afIgQqFuh"
Content-Disposition: inline
In-Reply-To: <20260611193940.44416-7-vladimir.oltean@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:ioana.ciornei@nxp.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:tanjeff.moos@westermo.com,m:chleroy@kernel.org,m:mwalle@kernel.org,m:shawnguo@kernel.org,m:Frank.Li@nxp.com,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski+dt@linaro.org,m:robh@kernel.org,m:krzysztof.kozlowski@linaro.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4844E67A978


--Anvk3G/afIgQqFuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2026 at 10:39:38PM +0300, Vladimir Oltean wrote:
> In Layerscape (Arm) and QorIQ (PowerPC) devices, hardware peripherals
> are accessed by the CPU through a portion of the SoC address space
> called CCSR ("Configuration, Control, and Status Registers"). All
> hardware IP blocks have their registers mapped here, and the Device
> Configuration block makes no exception.
>=20
> However, there exists a secondary range of the address space named DCSR
> ("Debug Control and Status Registers") which, like CCSR, also holds
> registers of hardware IP blocks, except the DCSR contents is hidden in
> all public reference manuals.
>=20
> The intention of the CCSR/DCSR split, to the best of my knowledge, was
> to place the functionality that is too low level for normal use, and
> which is necessary only for debug, in a completely separate address
> space which can be hidden.
>=20
> A use case has appeared where networking SerDes lanes need to be
> reconfigured at runtime for a different protocol (example: 10GBase-R to
> SGMII), and the architecture of the SoCs does not normally permit that.
> The Reset Configuration Word (RCW) is a data structure read by the SoC
> preboot loader (PBL) which contains stuff like pinmuxing and SerDes
> protocol mapping for each lane.
>=20
> The RCW that the PBL has loaded is visible in the DCFG block's normal
> status registers (from CCSR), as read only. Turns out, the RCW is also
> mapped in the DCFG's shadow register map (in DCSR), in a write-only
> form. Writing to the RCW registers from the DCFG's DCSR space to change
> what the PBL has loaded is called "RCW override".
>=20
> It has been validated that the RCW override procedure is necessary to
> reconfigure the networking data path when a SerDes lane performs a major
> protocol change. It changes some internal muxes which connect the PCS to
> either the 10G MAC or to the 1G MAC.
>=20
> Defining the DCSR area of the DCFG as a secondary 'reg' array element
> allows operating systems to perform RCW overrides. Since it is
> introduced late in the binding's lifetime, it is optional. It can be
> identified by name, but also by index (first 'reg' is CCSR).
>=20
> Note that while all SoCs should have a DCFG register block in DCSR, we
> only need to expose it for the SoCs where the RCW override procedure is
> known to be needed and has been validated.
>=20
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: Conor Dooley <conor@kernel.org>

Where did this email come from btw? get_maintainer.pl result should have
+dt in it.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

Cheers,
Conor.

> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../bindings/soc/fsl/fsl,layerscape-dcfg.yaml     | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcf=
g.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
> index 3fb0534ea597..fc14fd0bf84b 100644
> --- a/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
> +++ b/Documentation/devicetree/bindings/soc/fsl/fsl,layerscape-dcfg.yaml
> @@ -36,7 +36,20 @@ properties:
>            - const: simple-mfd
> =20
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description:
> +          Customer-visible DCFG register map from CCSR address space
> +          (Configuration, Control and Status Registers)
> +      - description:
> +          Customer-hidden DCFG register map from DCSR address space
> +          (Debug Control and Status Registers)
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: dcfg_ccsr
> +      - const: dcfg_dcsr
> =20
>    little-endian: true
>    big-endian: true
> --=20
> 2.34.1
>=20

--Anvk3G/afIgQqFuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiwpPQAKCRB4tDGHoIJi
0iTkAP4y8yskNE7dxgDzs/Wxh5ly8vIUHNi1EsapV2wtvfvMrwEA//4T48+aL7mC
/esW1vHzfucr882C38bIUCbZewcjhgE=
=NKQc
-----END PGP SIGNATURE-----

--Anvk3G/afIgQqFuh--

