Return-Path: <devicetree+bounces-313090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zLxECZzGMmqR5QUAu9opvQ
	(envelope-from <devicetree+bounces-313090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 18:09:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD2969B454
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 18:08:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QfTlOKUs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313090-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313090-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BAEF334C262
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D134A2E2C;
	Wed, 17 Jun 2026 15:52:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050084A33E5;
	Wed, 17 Jun 2026 15:52:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781711532; cv=none; b=DChYXfeoP/gkMhvady+WnwBTl6Ih1dECzf35/nQNB3wzmGetyme24SzttIvqOU98UAAO/3Fhm1oX8zstBDbNLSmUK/IATMyCKKgr1RM16YHbB2fCQZaf3EYwK4cBfn0ZNIpz+Ax65t75wxVuEOZRCc3fzYyhQjINRibTgOICDz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781711532; c=relaxed/simple;
	bh=xMKIrMYcxLIvUrRnb1nX0SNbgE8J65HYfyplz2ZbiUg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VCcf2jdVgZ5aoy+LwNyWXomwE6l0oh6XaSOu7Xk+upr88byW02A09fwtFu2viOhS5vkdd4qXoXHM1FcHJLEAVGULurHa18ab2u1xUW1pA8sKGP1uwUyk0dm7s3Au8jaZU9Yd4zoBXCg0ACVCOSE3Iap4vy/3/cAmF8MVffjCqys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfTlOKUs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0201F000E9;
	Wed, 17 Jun 2026 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781711520;
	bh=gtj5dg64TxuCBekH6gIVDZSCybZ/XwBRYoS+TH55748=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QfTlOKUslYhUnlz4WPjprU6l2Bl/sK2EoRV2qIAAC5HWapAwMLx7cqGNoOMvIoZKa
	 pQwwbHZp+EhIju41Y7LJbOCm1rP2AXYk4qsepwBUGAnd3iBZeuNHNxBZqijpo/btbI
	 hl9xcmLSc7Pb2uuDHAaUNJEssiVY8/zB5D0qzZvDnEOh6c7NMi7IlLHT5eGywT84RJ
	 VvpEtQt1guRuw7maw33RyAKAByb3uf3y6SWf3N4QFzpTQ45GtjB+gZMZId07PF4ehX
	 a1yblVlKREyF/URZRXJumKWDGYgzRUYiZajGC+bJ7S2RunBm7VEWGhAOJ9zz1NGTSh
	 kqobO8NFZoUuQ==
Date: Wed, 17 Jun 2026 16:51:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-ID: <20260617-deviate-sulk-c57104ef939f@spud>
References: <20260617-feature-mipi-csi-dphy-4k60-v1-0-4611ff00b0ff@wolfvision.net>
 <20260617-feature-mipi-csi-dphy-4k60-v1-2-4611ff00b0ff@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VWeXfw4mhda8KfwY"
Content-Disposition: inline
In-Reply-To: <20260617-feature-mipi-csi-dphy-4k60-v1-2-4611ff00b0ff@wolfvision.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:gerald.loacker@wolfvision.net,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313090-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,wolfvision.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7AD2969B454


--VWeXfw4mhda8KfwY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 17, 2026 at 02:23:14PM +0200, Gerald Loacker wrote:
> Add support for the optional rockchip,clk-lane-phase device tree property
> to allow board-specific tuning of the clock lane sampling phase for
> improved signal integrity across supported data rates.
>=20
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 7 ++=
+++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy=
=2Eyaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 03950b3cad08c..0d824d1511bc0 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -56,6 +56,13 @@ properties:
>      description:
>        Some additional phy settings are access through GRF regs.
> =20
> +  rockchip,clk-lane-phase:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    description:
> +      Clock lane sampling phase in 40 ps steps. The hardware default is =
3.

Can this instead become rockchip,clk-lane-phase-ps and be listed in the
actual unit?
With the -ps suffix, you can then drop the $ref.
The default should be listed as "default: 3" (or default: 120)

pw-bot: changes-requested

> +
>  required:
>    - compatible
>    - reg
>=20
> --=20
> 2.34.1
>=20

--VWeXfw4mhda8KfwY
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajLCnAAKCRB4tDGHoIJi
0gDoAP9k3dz45bxi4cXPTLEgr6PZeKMsVt1LStk2R98sBcwk2AD3bcuGGmbrTcuM
+Q1nqKDjDPHzxpNyJkTPhyVUuYB5AA==
=kgQi
-----END PGP SIGNATURE-----

--VWeXfw4mhda8KfwY--

