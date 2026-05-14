Return-Path: <devicetree+bounces-297747-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKGEDtEPBmoFegIAu9opvQ
	(envelope-from <devicetree+bounces-297747-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:09:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 933C8545B4F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4A8830136AE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495FA34404F;
	Thu, 14 May 2026 18:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKwZ3jyk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB033689B;
	Thu, 14 May 2026 18:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778782158; cv=none; b=TvbwZg4psCkmyNJvYBI43wfI4FZ0yvsTtKRi9NwSRy2GJjEfZjzkO/8Y8b6ITBYaPJ+PYcUAfjMxhcZaYFqCbrgi2abgWDUxCzthhhMUYnO8smJdYrFtAgY4rRBUqhxifb062iHEiICQ5G5AVUrcqm2mqNSxG+dt4mbL43y38HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778782158; c=relaxed/simple;
	bh=MlbDFgNuqesS/vtt+w+U2M1SHGf1/e2ict7OTZCA9Nk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Noi9Y/rvj6CUQLhbKfMS9ifsvS1tdfnZBit4EfO4vc98xKRfbQhmfZcDTyzsqxhIQKFLR2MoUzA5iNt7V2PSb2I/XqKuPLRjYM7hWE7yD1XnETuDnsu6ntoUZP9vBt08wE4liYu1VQhygXE8jUHeArTqJnNtgUpmz0c9GDTdtBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKwZ3jyk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0533C2BCB3;
	Thu, 14 May 2026 18:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778782157;
	bh=MlbDFgNuqesS/vtt+w+U2M1SHGf1/e2ict7OTZCA9Nk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TKwZ3jykwzEg7s7rGOXrdSncVewfonN42hO53D/WbCNl19lAYaopFZj7+ZDLhwn2N
	 pf4+LlUSayYOygKD+l8wmIi51jyBwkhswyszjE+IDHhdzGYwP50oznH9bttsNzgTxN
	 aKyr5uFgCit+iZxFD+AnrGLfQ90QgYg9u6X8OpoYKoD98vlyrhpX43TAfy2pEKDQWc
	 +2YOz9U8aDtg0ecZprvPh9riA7h4V7wgz/UNj2+L029XQxADO/RyFnnC7YsZB+JUUZ
	 0oEddhgbLDRgutfo3rPYeKJlP95Ti8LyJeJcqs1RWAXg8XozJ92pzWZYv+EedMXJZd
	 3LsdQd+UOYF9g==
Date: Thu, 14 May 2026 19:09:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-next 1/2] dt-bindings: phy: add PHY bindings for the
 TI DS125DF111 Retimer PHY
Message-ID: <20260514-scorebook-uproot-c9766b3e1be4@spud>
References: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
 <20260513185103.1371809-2-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45ZlJcds5wU0pS3E"
Content-Disposition: inline
In-Reply-To: <20260513185103.1371809-2-ioana.ciornei@nxp.com>
X-Rspamd-Queue-Id: 933C8545B4F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297747-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,nxp.com:email,microchip.com:email,0.0.0.18:email]
X-Rspamd-Action: no action


--45ZlJcds5wU0pS3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2026 at 09:51:02PM +0300, Ioana Ciornei wrote:
> Add device tree binding for the TI DS125DF111 Retimer PHY.
>=20
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
>  .../bindings/phy/ti,ds125df111.yaml           | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.y=
aml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml b/D=
ocumentation/devicetree/bindings/phy/ti,ds125df111.yaml
> new file mode 100644
> index 000000000000..47e9ba2a8990
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,ds125df111.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI DS125DF111 Retimer PHY
> +
> +description:
> +  This binding describes the TI DS125DF111 multi-protocol Retimer PHY.
> +
> +maintainers:
> +  - Ioana Ciornei <ioana.ciornei@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: ti,ds125df111
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      The phandle's argument in the PHY specifier selects one of the two
> +      channels of the retimer
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      ti_retimer: retimer@18 {

Drop the unused label here please. How come the node name isn't phy@
btw?
Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: changes-requested

Cheers,
Conor.

> +        compatible =3D "ti,ds125df111";
> +        reg =3D <0x18>;
> +        #phy-cells =3D <1>;
> +      };
> +    };
> --=20
> 2.25.1
>=20

--45ZlJcds5wU0pS3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagYPyQAKCRB4tDGHoIJi
0sTMAPwLXhzIReQBO/zv5kY9Wf3P1x0bDogPEpE4EaHYt8L7hgEA8XHwi1gvu3Ba
5wosjLKdedh+0tspOVKUcMBzmAwLjAU=
=s6fG
-----END PGP SIGNATURE-----

--45ZlJcds5wU0pS3E--

