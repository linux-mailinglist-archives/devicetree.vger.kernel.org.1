Return-Path: <devicetree+bounces-272307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAbkE6cTq2lzZwEAu9opvQ
	(envelope-from <devicetree+bounces-272307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:49:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B73832266F1
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CE763037F36
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 17:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6FE3ACF1F;
	Fri,  6 Mar 2026 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSWq3OAm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB7824E4B4;
	Fri,  6 Mar 2026 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772819363; cv=none; b=NWwH+68JSGDNm857nPUhP1h/+oG5VXS23pIqJbJM6y4MCIRuHVWee7ezRgiINg1kxrCRTw3DoGsTSXybwnlN5Najti55SRkSyzieePzuaV9qZ21lT6T9OkPMv0cO22bYUoMldLZ++jo3Abf8zyQEi4X757lBWQ/JpjudP4vke5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772819363; c=relaxed/simple;
	bh=02BSQUcXYv07UDnnOMJ+p6eIl32AtEBn1zYXatBdbNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BSSNJPbpl3WN0wxolOCPXhsv0kbUmtYy1Ausk1iOrBlDq3GHDfHI55FR2ifDGTrpTKghinwPfwMAjjtm6Jv/iNSXkn7SWqFGmgdfJ/LVnWvSjpSz3nC9J66KMLIG+7g7fEbkrh8WMtCbhBS6XHV0AQ5MTDjYZZPwk9eSXLrabCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSWq3OAm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D878BC4CEF7;
	Fri,  6 Mar 2026 17:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772819362;
	bh=02BSQUcXYv07UDnnOMJ+p6eIl32AtEBn1zYXatBdbNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uSWq3OAm+O/PogpZaVoKf0S42ZYwezcjSf1ytCQ41c5/zk6ywkP6HWrtC4INhvEWH
	 TF6NuX2HlaMwAnaM0OKxH023GN0pH8C8Sy5b6DkcrB4MRxO2rP5AukHmHvnkkuVhDN
	 UmgHM/ClPESbeSDKiTYK1RDHy3Z/YCxokfoFoU+5lCgH5xgk/SLIAGgWMrqsx9HZEX
	 ZlJtMg8/WGSXqZJlKwQ0q6dVvALvBNglQzjljkBtjtEWB5C/TRyyBFmFIMMRuBcvz6
	 I5Lf8TctL51j43+jT+LD+PjqufQ1IzpNbGb6wsTj88UUKDhFg7zxcuWylTtK1Uwr5a
	 aMv23Kdnen+2w==
Date: Fri, 6 Mar 2026 17:49:18 +0000
From: Conor Dooley <conor@kernel.org>
To: Raptor Engineering Development Team <support@raptorengineering.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	robh+dt@kernel.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
	Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260306-playtime-glorifier-9dc7838283f4@spud>
References: <20260129192047.562540-1-support@raptorengineering.com>
 <20260129192047.562540-2-support@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8RIQPUEFuXJXGpSM"
Content-Disposition: inline
In-Reply-To: <20260129192047.562540-2-support@raptorengineering.com>
X-Rspamd-Queue-Id: B73832266F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272307-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.0.0.0:email,sony.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,raptorengineering.com:email,3f:email]
X-Rspamd-Action: no action


--8RIQPUEFuXJXGpSM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Te=
am wrote:
> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>=20
> The Sony Cronos Platform Controller is a multi-purpose platform controller
> that provides both a watchdog timer and an LED controller for the Sony
> Interactive Entertainment Cronos x86 server platform. As both functions
> are provided by the same CPLD, a multi-function device is exposed as the
> parent of both functions.
>=20
> Add a DT binding for this device.
>=20
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> ---
>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>  1 file changed, 128 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
=2Eyaml
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml b=
/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> new file mode 100644
> index 000000000000..a7e88fd42d39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2025-2026 Raptor Engineering, LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sony Cronos Platform Controller CPLD multi-function device
> +
> +maintainers:
> +  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
> +
> +description:
> +  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
> +  controller that provides both a watchdog timer and an LED controller f=
or the
> +  Sony Interactive Entertainment Cronos x86 server platform. As both fun=
ctions
> +  are provided by the same CPLD, a multi-function device is exposed as t=
he
> +  parent of both functions.
> +
> +properties:
> +  compatible:
> +    const: sony,cronos-smc
> +
> +  reg:
> +    maxItems: 1
> +
> +  leds:
> +    type: object
> +    $ref: /schemas/leds/common.yaml#
> +    additionalProperties: false
> +    description: |
> +      The Cronos LED controller is a subfunction of the Cronos platform
> +      controller, which is a multi-function device.
> +
> +      Each led is represented as a child node of sony,cronos-led. Fiftee=
n RGB
> +      LEDs are supported by the platform.
> +
> +    properties:
> +      compatible:
> +        const: sony,cronos-led
> +
> +      reg:
> +        maxItems: 1
> +
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +    patternProperties:
> +      "^multi-led@[0-9a-f]$":
> +        type: object
> +        $ref: /schemas/leds/leds-class-multicolor.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          reg:
> +            description:
> +              LED channel number (0..14)
> +            minimum: 0
> +            maximum: 14
> +
> +        required:
> +          - reg
> +
> +    required:
> +      - compatible
> +      - "#address-cells"
> +      - "#size-cells"
> +
> +  watchdog:
> +    type: object
> +
> +    $ref: /schemas/watchdog/watchdog.yaml
> +
> +    properties:
> +      compatible:
> +        const: sony,cronos-watchdog
> +
> +      timeout-sec: true

Why is there a child node to just add timeout-sec? Didn't Krzysztof ask
you to come up with a generic node name for the mfd to use instead of
"smc", and to modify watchdog.yaml to accept the new node name? See
here:
https://lore.kernel.org/all/c7630eb1-2686-491e-81ed-fb43fff2dd31@linaro.org/

Something like "platform-controller" sounds generic to me, in a way that
"smc" doesn't.

Cheers,
Conor.

> +
> +    required:
> +      - compatible
> +
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
> +    #include <dt-bindings/leds/common.h>
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        smc@3f {
> +            compatible =3D "sony,cronos-smc";
> +            reg =3D <0x3f>;
> +
> +            watchdog {
> +                compatible =3D "sony,cronos-watchdog";
> +
> +                timeout-sec =3D <20>;
> +            };
> +
> +            leds {
> +                compatible =3D "sony,cronos-led";
> +                #address-cells =3D <1>;
> +                #size-cells =3D <0>;
> +
> +                multi-led@0 {
> +                    /*
> +                     * No subnodes are needed, this controller only supp=
orts RGB
> +                     * LEDs.
> +                     */
> +                    reg =3D <0>;
> +                    color =3D <LED_COLOR_ID_MULTI>;
> +                    function =3D LED_FUNCTION_STATUS;
> +                };
> +            };
> +        };
> +    };
> +
> --=20
> 2.39.5
>=20

--8RIQPUEFuXJXGpSM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaasTngAKCRB4tDGHoIJi
0qKgAQD2GEvkHWKqG2zjZqi9KOpFK4riei2Qp58eYzqkOQI/dAD/QjFfv47p/M4O
OAEzCrmoyO5f6rMg2j5WmgIgHLLjwAI=
=uW1W
-----END PGP SIGNATURE-----

--8RIQPUEFuXJXGpSM--

