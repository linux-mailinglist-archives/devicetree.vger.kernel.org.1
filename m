Return-Path: <devicetree+bounces-259647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNn+IRTTd2mFlwEAu9opvQ
	(envelope-from <devicetree+bounces-259647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:48:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E19018D451
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D63E30160C1
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0981245031;
	Mon, 26 Jan 2026 20:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJRURO6S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC813EBF1C;
	Mon, 26 Jan 2026 20:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769460330; cv=none; b=MeQhiVZxcUTJOcUyQl6dm78r7re1tfH4oR1UqnheBwlTHvR/zjTWvzM7wFF10pqrkJjbGuFANPmJM2gJ6XhfIun42JVzrF5UDmUhFkRneT3urUmgfAe/9J+r12d89xikeA4blvE/fXdfR5E2i+Ae5EeA2wrVAR3dtGv7lPurb2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769460330; c=relaxed/simple;
	bh=JwQdQNdNJV/HaQFrrnZMThrwdtFA2E+1dlPwru2wF4Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ohXpnuyscuoXX85cD+go13+KT74AhirAseu5a3QxBTvI1PBDVX3BKPf4ihb3IQztZHZCdMr+x0MU1nqpm80R1H/5xNLRgRkWb0XRCrdJ+6uxEUj2FnOdSgWLHdRnO9NScdYB1T0DhW5zzug6S8VGlG7es92G97MeP7OVD3kd7hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJRURO6S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D800FC116C6;
	Mon, 26 Jan 2026 20:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769460330;
	bh=JwQdQNdNJV/HaQFrrnZMThrwdtFA2E+1dlPwru2wF4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AJRURO6SoU2+sHBJMNfvcn7oK0AmVW8DfHWWmTLcFqDSs9lYho8ZmNzH/5itsmS2U
	 ZP2dzYHhGsQ84wHVq1Ful51YLZmSSvKLXbMrGHY6bNPJ/kWnH67nSOg5N45ps4D8kD
	 cP5N+/6k+/YyXci95UdEb25+obCKMsi+UP/qlSVMVq9JBbnONvbDKeof/jUBBICfH9
	 KtpyfBYiGA4ImavQ79ppYmqYFyKA5DBDNSnVXkHHRMxeyo47c/3XuCOKj8vyHi8Xzj
	 2LFz3x1Pt4XrBVWN/BqJM16NmK5dpvh54y/VVj14n4rWtf907jYRLV3Juwld2I3n/H
	 Cv3Y8eBDm9dRA==
Date: Mon, 26 Jan 2026 20:45:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: document Atrix 4G
 and Droid X2 DSI panel
Message-ID: <20260126-patchwork-cofounder-8b7bb715556a@spud>
References: <20260125131904.45372-1-clamor95@gmail.com>
 <20260125131904.45372-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vuJvPvavnR/jWTI2"
Content-Disposition: inline
In-Reply-To: <20260125131904.45372-2-clamor95@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259647-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E19018D451
X-Rspamd-Action: no action


--vuJvPvavnR/jWTI2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 25, 2026 at 03:19:03PM +0200, Svyatoslav Ryhel wrote:
> Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
> panel vendor and model are unknown hence generic compatible is used based
> on board name it is used with.
>=20
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../display/panel/motorola,mot-panel.yaml     | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/motor=
ola,mot-panel.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/motorola,mot=
-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorola,mot-=
panel.yaml
> new file mode 100644
> index 000000000000..2326a83bc405
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.=
yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/motorola,mot-panel.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atrix 4G and Droid X2 DSI Display Panel
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +description:
> +  Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
> +  panel vendor and model are unknown hence generic compatible is used.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: motorola,mot-panel

What's a "mot" panel? If that's short for motorola, wouldn't it be
better to conjure up something at least more specific to these
particular users? The commit message has some info, but I still dunno
where "mot" comes from.
Seems okay otherwise..

> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Regulator for main power supply.
> +
> +  vddio-supply:
> +    description: Regulator for 1.8V IO power supply.
> +
> +  backlight: true
> +  reset-gpios: true
> +  port: true
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        panel@0 {
> +            compatible =3D "motorola,mot-panel";
> +            reg =3D <0>;
> +
> +            reset-gpios =3D <&gpio 35 GPIO_ACTIVE_LOW>;
> +
> +            vdd-supply =3D <&vdd_5v0_panel>;
> +            vddio-supply =3D <&vdd_1v8_vio>;
> +
> +            backlight =3D <&backlight>;
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint =3D <&dsi_out>;
> +                };
> +            };
> +        };
> +    };
> +...
> --=20
> 2.51.0
>=20

--vuJvPvavnR/jWTI2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXfSZQAKCRB4tDGHoIJi
0tSfAQDyy1EKaJ2Dsy+RRBrGRX2fB0H7nv5dH6KfrKaTNuIqIwD9Eei/dAnityuS
7Ezm8EnxLsIT4lVVXzFwtuCus8nA0g8=
=He5Z
-----END PGP SIGNATURE-----

--vuJvPvavnR/jWTI2--

