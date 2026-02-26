Return-Path: <devicetree+bounces-268972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DIe8KuuWoGkVlAQAu9opvQ
	(envelope-from <devicetree+bounces-268972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:54:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 019701AE091
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B802631B7EE9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B62364933;
	Thu, 26 Feb 2026 18:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef3D++Yu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0106D3290D4;
	Thu, 26 Feb 2026 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772129544; cv=none; b=F2RSsAOdz4DdToUaV+O+YEhLhFCTsnCx7LDA9lmL1u4RQ50Yf2OlFRlFqlzFNrglFOlkLVUN12m/Ha2H4SxzxWyf1g4/ef4hthFlgyjUlnIIYv7RFq40hu0evIa7GW4wbcd2jNcfSuDBNwdYYEB/+ixKi12zYZBGyTNtlv6EOC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772129544; c=relaxed/simple;
	bh=pwv4c3DZNyODTHone22LzNjJgvcn88A3kBVODStq6jA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mqqo8VuwSe+v5alO4ZHirg9LiJCoaPKJuIkJgJBNfSayohbAlOQpjz23+INHktDDuVCz0yJByB6gCF/o0+b9SYqZxZsDMml1W03M435h8J56FpsTrNms/e60celTLzoAmw06zaoC0YdTVXJCchGyJuSt2igWX/jAFf7il8htnDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef3D++Yu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8D7AC116C6;
	Thu, 26 Feb 2026 18:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772129543;
	bh=pwv4c3DZNyODTHone22LzNjJgvcn88A3kBVODStq6jA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ef3D++YuYVHUjD/BDgy/GJUCMcNqZRydCEr/+xhCiox6mAyUPg5/sqgekTGUcJNxH
	 U9XEBXFQFSkJr/+YeU/z7Ust1K3J4KWcb+5YoQLaqyPz3O0y/uoEoICtvAGYJmH8ZH
	 gJF0i17JytseYoJ5aXgS65WaOy5F0Pbu8ARFjvsPM6fa7O7vSmL1YHzhYCq4X0UGb/
	 bbIpPfVDt2caWbtntPkd6yLpVWWlvUSdAuecKNhHy+aDph3xB7ebXDzvt9ox9oW40p
	 LTDVzQeO4RDyGUFNa8RHGhu9aDOthLfCl3tUn9m1OQYFiGJpJQp97A0FzPPly31SSc
	 JLFknbjhLAUtg==
Date: Thu, 26 Feb 2026 18:12:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc:
 convert to DT schema
Message-ID: <20260226-escapade-staff-4f2842222b3e@spud>
References: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
 <20260226-arm-microchip-v3-5-0bda15abd922@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xblG4IE1HbojiYMm"
Content-Disposition: inline
In-Reply-To: <20260226-arm-microchip-v3-5-0bda15abd922@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268972-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,microchip.com:email,tuxon.dev:email]
X-Rspamd-Queue-Id: 019701AE091
X-Rspamd-Action: no action


--xblG4IE1HbojiYMm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 04:13:37PM +0000, Akhila YS wrote:
> Convert RAMC SDRAM/DDR controller binding to YAML format.
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++=
++++++
>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 20 -------
>  2 files changed, 67 insertions(+), 20 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdram=
c.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
> new file mode 100644
> index 000000000000..1516fc8e09e1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-sdramc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip (Atmel) SDRAM / DDR Controller (RAMC / DDRAMC / UDDRC)
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
> +
> +description:
> +  The SDRAM/DDR Controller (often called RAMC or DDRAMC) in various
> +  Atmel/Microchip ARM9 and Cortex-A5/A7 SoCs  manages external
> +  SDRAM / DDR memory. It is typically exposed as a syscon node for
> +  register access from other drivers (e.g. for initialization or mode
> +  configuration). No interrupts or clocks are usually required in the
> +  binding.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: atmel,at91rm9200-sdramc
> +          - const: syscon
> +      - items:
> +          - const: microchip,sama7d65-uddrc
> +          - const: microchip,sama7g5-uddrc
> +      - items:
> +          enum:

Whoops, sorry for not noticing this earlier, but an items list with one
entry can be reduced to that one entry. For you here that means that
"- items enum:" becomes "- enum:".

--xblG4IE1HbojiYMm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCNAwAKCRB4tDGHoIJi
0qtpAP9APtvalgzi0zvyIeO61JzAAmgR5MhmOEmLmbI/hapjCAD/Xmuxw6uLJVCq
SsgDnOlRaH/Sip9zrvYl75+sAEQyBQA=
=PX69
-----END PGP SIGNATURE-----

--xblG4IE1HbojiYMm--

