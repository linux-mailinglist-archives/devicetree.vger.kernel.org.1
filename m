Return-Path: <devicetree+bounces-261478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELXuBYVkfmmvYAIAu9opvQ
	(envelope-from <devicetree+bounces-261478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:22:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E897C3DC5
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C85C301907A
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71753376475;
	Sat, 31 Jan 2026 20:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knitpSWo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6F72D8DBB;
	Sat, 31 Jan 2026 20:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769890945; cv=none; b=UdWXyniSwteGQ73F7he5yh7G1kR+b/y6RFpvgjHT2f9PHVKXzY0YXCVhrOFLJx5PtrjlhDLkrWB2nXbTY/H9iQa4deLhVFqONtF0TLOAfe3KKeksLiLvkkKNwP+NAEdbRwQi/rQ1ydqxgDSFVY1343LwC3dRp8hZNqF1K5T0f5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769890945; c=relaxed/simple;
	bh=KXowOq+66wukikNIfSeAXLLdc6HZ6AI5hqnllTlO650=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=McwmRXI6a4KpNpkgXJnPDcp/PMaIt6/uZ3br+JkqrIbjpMGTfTuctLYluoiFhTYpMZtlxa31/JVSgJvQuydfdbL9I+gqp463fPehxvcEWeVpDaWTV34OeTQR/oUxH3aRfYktN0GsQShh4/1IPrKTBRwEnkcR7DFMUMp8qOEnm4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knitpSWo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C8CDC4CEF1;
	Sat, 31 Jan 2026 20:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769890944;
	bh=KXowOq+66wukikNIfSeAXLLdc6HZ6AI5hqnllTlO650=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knitpSWozGiAf8teRB375URDp8XiaYq0NzoE8NrzcEFJzNtpIZn40nn0p0zZdIhdT
	 DNVKIyANDVdO8Ec0tZS/v98kO2jf7GE1qXsHWjUdK/f2NwiNbtjsNEDcFjn0x4L3fL
	 XaR7msIxqAydQlhn0EBkZqCKsIz9bSQEDVuzLonAQw7R7xEowX/ob2HlAXdnsqb7zS
	 +3TwEF37AXmv1ZInncSlM40M6mXBJI89/eNZKmY7CfDMphv+/Qu5+Y7guk9sZnhWJB
	 9PJHvPLbF9eWU9nQiNC8S4JMZJBEFarjSFzZrU3kj2HTRdQ3268no6SYPWGha9OVlO
	 Gnfbxq5eoNMvw==
Date: Sat, 31 Jan 2026 20:22:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Igor Reznichenko <igor@reznichenko.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kael D'Alcamo <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Ilitek ILI9488
 panel controller
Message-ID: <20260131-salad-carving-cb908b936987@spud>
References: <20260131034101.307486-1-igor@reznichenko.net>
 <20260131034101.307486-2-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2PPmbUXSa9PAdcOs"
Content-Disposition: inline
In-Reply-To: <20260131034101.307486-2-igor@reznichenko.net>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261478-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,microchip.com:email]
X-Rspamd-Queue-Id: 6E897C3DC5
X-Rspamd-Action: no action


--2PPmbUXSa9PAdcOs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 30, 2026 at 07:41:00PM -0800, Igor Reznichenko wrote:
> Add binding for the Ilitek ILI9488 panel controller which is found on
> the FocusLCDs E35GH-I-MW800-CB MIPI DSI panel.
>=20
> Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
> ---
>  .../display/panel/ilitek,ili9488.yaml         | 63 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  2 files changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilite=
k,ili9488.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili94=
88.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.ya=
ml
> new file mode 100644
> index 000000000000..ea7449273022
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/ilitek,ili9488.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ilitek ILI9488 based MIPI-DSI panels
> +
> +maintainers:
> +  - Igor Reznichenko <igor@reznichenko.net>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - focuslcds,e35gh-i-mw800cb
> +      - const: ilitek,ili9488
> +
> +  reg:
> +    maxItems: 1
> +
> +  vci-supply: true
> +  iovcc-supply: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - vci-supply
> +  - iovcc-supply
> +  - reset-gpios
> +  - backlight
> +  - port
> +
> +unevaluatedProperties: false
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
> +            compatible =3D "focuslcds,e35gh-i-mw800cb", "ilitek,ili9488";
> +            reg =3D <0>;
> +            vci-supply =3D <&reg_vci_panel>;
> +            iovcc-supply =3D <&reg_iovcc_panel>;
> +            reset-gpios =3D <&gpio3 6 GPIO_ACTIVE_LOW>;
> +            backlight =3D <&pwm_bl>;
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint =3D <&dsi_out>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index c7591b2aec2a..aa3a8fd67155 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -584,6 +584,8 @@ patternProperties:
>      description: Flipkart Inc.
>    "^focaltech,.*":
>      description: FocalTech Systems Co.,Ltd
> +  "^focuslcds,.*":
> +    description: Focus Display Solutions, Inc.

Please point out in your commit message that focuslcds is their trading
name and their website. Looks like a random choice otherwise.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable
>    "^forlinx,.*":
>      description: Baoding Forlinx Embedded Technology Co., Ltd.
>    "^foursemi,.*":
> --=20
> 2.43.0
>=20

--2PPmbUXSa9PAdcOs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaX5kdwAKCRB4tDGHoIJi
0kBDAP9NNVd4HY8hMMlAUsR5Ox0GokG9j5N51mcWNEN7iq/EMgD+IlO1ljY/RyBy
car+lg7b1cALBdfaofT1lvBBvI36pQ0=
=Vyp7
-----END PGP SIGNATURE-----

--2PPmbUXSa9PAdcOs--

