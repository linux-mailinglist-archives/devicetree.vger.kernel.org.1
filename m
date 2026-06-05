Return-Path: <devicetree+bounces-307494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nkT8GQX/ImoAgQEAu9opvQ
	(envelope-from <devicetree+bounces-307494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:53:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EE3649F3C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:53:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SyjBJu5F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307494-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307494-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E99FF302497C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 16:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1BA367F26;
	Fri,  5 Jun 2026 16:39:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197F33803F4
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 16:39:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780677560; cv=none; b=fmvIRvZXLJpOZcjgXRUQDrylIeU+/SzDJE+1PQeIKg35pJo1BTX58r32fxih5jd9vCJ36ANsmiuP7RaQZFce3xWFFwtrdfYGjyezL80mwmTv76Dz9hPTgpK4KqtUmFc3L3jARIF5KAOAElAw7UK52jZdKvRjsSNVcJDPn9FHObM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780677560; c=relaxed/simple;
	bh=5Wro7cnrL/3hSq8YQc75iG7Afl7zZ4Uj6HUKy8fba4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lv/mWwKEuN68STANdkL6i0izAH2k8XahGyr9YAq0oIAmh6nld1WV5v6zUVfxgiO0VXSgJdDP6AA27ECrdynecgqCCU8RYj+KNsK1aDPLXrH+TbHZdPiRub2q2ztvlMWP5/sK5RASetn+wNjwKDmIcgGd9C5ezq/wS8luJB5e30g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyjBJu5F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6596E1F00893;
	Fri,  5 Jun 2026 16:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780677556;
	bh=Q55KjNa1M1fmOrAnHlb6q5BKlT5aMGyYW7wRoZ6jvqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SyjBJu5Fkq5JvVAS4J89YoKHq/U7bRCmjHO8cLm8z4lOLO13eiwTFcKdjR4RKNb9G
	 wK5CkizVQ0S6QGnmyCNjygJ0oizvgUxD3BB0WWv+FKpTxbn/dH7HKhlLLEAA92awbA
	 01AGbngZ4obq7xo0GQCiQUCHcUdxnVcQMUpATwdVhK66BRxgrr2kC2jZaJRfMIghYE
	 46dQVyXrqFHfgjBBEuUNGv2dO9UkZtC0rL/lT81WW1ajgp+nuBTn+iao158Yo604J+
	 kwBXfllRPdqradhjSWs27W1RwaRhMEyoHgJsOft3256DOYBBx75ciRGljKwc7XLq/k
	 Z++DUbeYsYTAA==
Date: Fri, 5 Jun 2026 17:39:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <20260605-browsing-unhealthy-9fa48d8b91e9@spud>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
 <20260604220802.119107-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qPUAUEUfyNDhO6Kw"
Content-Disposition: inline
In-Reply-To: <20260604220802.119107-2-macroalpha82@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:xsf@rock-chips.com,m:sre@kernel.org,m:simona@ffwll.ch,m:airlied@gmail.com,m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:jesszhan0024@gmail.com,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-307494-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1EE3649F3C


--qPUAUEUfyNDhO6Kw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 05:07:56PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document the SG Micro sgm41542 battery charger/boost converter.
> The parameters of input-current-limit-microamp and
> input-voltage-limit-microvolt are defined as such since they are in
> common use among multiple bindings currently.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../power/supply/sgmicro,sgm41542.yaml        | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicr=
o,sgm41542.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41=
542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.=
yaml
> new file mode 100644
> index 000000000000..a97afea83700
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
> @@ -0,0 +1,104 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SGM41542 Battery Charger
> +
> +description:
> +  The SGMicro SGM41542 is a single cell battery charger/boost controller.
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +  - Xu Shengfei <xsf@rock-chips.com>
> +
> +allOf:
> +  - $ref: power-supply.yaml#
> +
> +properties:
> +  compatible:
> +    const: sgmicro,sgm41542
> +
> +  input-current-limit-microamp:
> +    description:
> +      Optional value to clamp the maximum input current limit to for
> +      the device. If omitted, the default value for the hardware will
> +      be used (2400000).
> +    minimum: 100000
> +    maximum: 3800000

Instead of the text,
default: 2400000

> +
> +  input-voltage-limit-microvolt:
> +    description:
> +      Optional value to clamp the maximum input voltage limit to for
> +      the device. If omitted, the default value for the hardware will
> +      be used (4500000).
> +    minimum: 3900000
> +    maximum: 12000000

Same here.
pw-bot: changes-requested

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  monitored-battery:
> +    description: |
> +        A phandle to a monitored battery node. Values for the following
> +        are used by the driver and if not present will result in default
> +        values being applied:

I saw the wording "The charger uses the following battery properties"
elsewhere, and I think that's superior to what's here.

I had a quick check and didn't notice other devices that talked about
defaults here. I feel like it's probably a good idea to state in the
binding what the defaults are, so that if u-boot or whatever grows a
support for this hardware that it uses the same ones.

Cheers,
Conor.

> +        constant-charge-current-max-microamp
> +        constant-charge-voltage-max-microvolt
> +        charge-term-current-microamp
> +        precharge-current-microamp
> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object
> +    properties:
> +      otg-vbus:
> +        type: object
> +        description: OTG boost regulator
> +        $ref: /schemas/regulator/regulator.yaml
> +        unevaluatedProperties: false
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    battery: battery {
> +      compatible =3D "simple-battery";
> +      constant-charge-current-max-microamp =3D <10000000>;
> +      constant-charge-voltage-max-microvolt =3D <4350000>;
> +      precharge-current-microamp =3D <180000>;
> +      charge-term-current-microamp =3D <300000>;
> +    };
> +
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      charger@3b {
> +        compatible =3D "sgmicro,sgm41542";
> +        reg =3D <0x3b>;
> +        input-current-limit-microamp =3D <3000000>;
> +        input-voltage-limit-microvolt =3D <4500000>;
> +        interrupt-parent =3D <&gpio0>;
> +        interrupts =3D <26 IRQ_TYPE_EDGE_FALLING>;
> +        monitored-battery =3D <&battery>;
> +
> +        regulators {
> +          otg-vbus {
> +            regulator-max-microvolt =3D <5000000>;
> +            regulator-min-microvolt =3D <5000000>;
> +          };
> +        };
> +      };
> +    };
> --=20
> 2.43.0
>=20

--qPUAUEUfyNDhO6Kw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiL7rwAKCRB4tDGHoIJi
0mKMAP9UBWWsn0nk706W2BW6upSfQePXcQHPHZjnStuT5icFSQD8DRsbvFIwJ7di
mIQLiuGkoY5qnuCCy+mKIF1oYI5sWgE=
=z3h5
-----END PGP SIGNATURE-----

--qPUAUEUfyNDhO6Kw--

