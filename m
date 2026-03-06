Return-Path: <devicetree+bounces-272311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAh5M4MZq2lNaAEAu9opvQ
	(envelope-from <devicetree+bounces-272311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB1226991
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 19:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71B3E3014606
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 18:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3456F41C0BD;
	Fri,  6 Mar 2026 18:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTAWtJm2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115CE3AA1B4;
	Fri,  6 Mar 2026 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772820864; cv=none; b=rOTst2sNmkWTvv7ekRKeB2HtrVT2IFTVG22J5nDXYNFCM9dgL1dIbXHqFJihd0SuaOZmuhF3uajWHKN99m6N0D9v7/3cxokgmCPrYqjAouF2AYjSCmKPUd/qqdB6AwZbZHeObArMmcKLdl2PNt7Y/yWWbE6fMD26H3V8EcawTkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772820864; c=relaxed/simple;
	bh=RfDIrqYqkoRPacTz0oihcH+IqatybaTJUPSXQIzG2Lk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jjBPrCn7hBRvknlf5toPmYhUCNhlsw94v9emsPk/RVYJkc7jWRnbZuJN4jkhNFUIgry8LG1R42jiNv2RqIoOKgsZYUgOD7FpsHKI+Qj7ys+Y+fKmoZFrFTWSeEypKc+/Zr2LOKRB3Lol40zR0wmsIiF+6Q2EYFlYSU8vZ9DyK5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTAWtJm2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0064C19425;
	Fri,  6 Mar 2026 18:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772820863;
	bh=RfDIrqYqkoRPacTz0oihcH+IqatybaTJUPSXQIzG2Lk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rTAWtJm21w33S3OrfLRmTfMrf00LeTGuklxrV3FsXBaEplScbxXU3uuvpZEGXoO9y
	 AwbuzkBFpRATwr6UJnW232ccCo8ytD67SocWP52ENiMoCVPMw34x7KhaurVFRJE4Yl
	 +LYbNVJ7UpaIGbl9iBZOAwjY+7RPGSfLMRLdmWp6pR3eywLxwvGU12vz9Dmn9DR3Mr
	 mrqZOGaVCEJCvfm5ijpk/rZeeBsvp52dRfGyfewJqxEyRFPFIGkf4GoD9j20tUQnfq
	 nhtR6nOqDtwPdJ+LOtAE43ET3OSdmGrQev41TqC16vKbMb3EbmlBepnpEnjqty7F2C
	 JIzwoH4W6PH8Q==
Date: Fri, 6 Mar 2026 18:14:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: Raptor Engineering Development Team <support@raptorengineering.com>,
	devicetree <devicetree@vger.kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>,
	Shawn Anastasio <sanastasio@raptorengineering.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260306-prescribe-monorail-60836f62dc83@spud>
References: <20260129192047.562540-1-support@raptorengineering.com>
 <20260129192047.562540-2-support@raptorengineering.com>
 <20260306-playtime-glorifier-9dc7838283f4@spud>
 <530063102.286103.1772819543617.JavaMail.zimbra@raptorengineeringinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GjhXMOpLUqNAxJ63"
Content-Disposition: inline
In-Reply-To: <530063102.286103.1772819543617.JavaMail.zimbra@raptorengineeringinc.com>
X-Rspamd-Queue-Id: 5CBB1226991
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-272311-lists,devicetree=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.953];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,3f:email,linaro.org:email,0.0.0.0:email,raptorengineering.com:email]
X-Rspamd-Action: no action


--GjhXMOpLUqNAxJ63
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 06, 2026 at 11:52:23AM -0600, Timothy Pearson wrote:
>=20
>=20
> ----- Original Message -----
> > From: "Conor Dooley" <conor@kernel.org>
> > To: "Raptor Engineering Development Team" <support@raptorengineering.co=
m>
> > Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-ke=
rnel@vger.kernel.org>, "Rob Herring"
> > <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof =
Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> > "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.c=
om>, "Shawn Anastasio"
> > <sanastasio@raptorengineering.com>, "Timothy Pearson" <tpearson@raptore=
ngineering.com>
> > Sent: Friday, March 6, 2026 11:49:18 AM
> > Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
>=20
> > On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Developmen=
t Team
> > wrote:
> >> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> >>=20
> >> The Sony Cronos Platform Controller is a multi-purpose platform contro=
ller
> >> that provides both a watchdog timer and an LED controller for the Sony
> >> Interactive Entertainment Cronos x86 server platform. As both functions
> >> are provided by the same CPLD, a multi-function device is exposed as t=
he
> >> parent of both functions.
> >>=20
> >> Add a DT binding for this device.
> >>=20
> >> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> >> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> >> ---
> >>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
> >>  1 file changed, 128 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-=
smc.yaml
> >>=20
> >> diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> >> b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> >> new file mode 100644
> >> index 000000000000..a7e88fd42d39
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> >> @@ -0,0 +1,128 @@
> >> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >> +# Copyright 2025-2026 Raptor Engineering, LLC
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Sony Cronos Platform Controller CPLD multi-function device
> >> +
> >> +maintainers:
> >> +  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
> >> +
> >> +description:
> >> +  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
> >> +  controller that provides both a watchdog timer and an LED controlle=
r for the
> >> +  Sony Interactive Entertainment Cronos x86 server platform. As both =
functions
> >> +  are provided by the same CPLD, a multi-function device is exposed a=
s the
> >> +  parent of both functions.
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: sony,cronos-smc
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  leds:
> >> +    type: object
> >> +    $ref: /schemas/leds/common.yaml#
> >> +    additionalProperties: false
> >> +    description: |
> >> +      The Cronos LED controller is a subfunction of the Cronos platfo=
rm
> >> +      controller, which is a multi-function device.
> >> +
> >> +      Each led is represented as a child node of sony,cronos-led. Fif=
teen RGB
> >> +      LEDs are supported by the platform.
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        const: sony,cronos-led
> >> +
> >> +      reg:
> >> +        maxItems: 1
> >> +
> >> +      "#address-cells":
> >> +        const: 1
> >> +
> >> +      "#size-cells":
> >> +        const: 0
> >> +
> >> +    patternProperties:
> >> +      "^multi-led@[0-9a-f]$":
> >> +        type: object
> >> +        $ref: /schemas/leds/leds-class-multicolor.yaml#
> >> +        unevaluatedProperties: false
> >> +
> >> +        properties:
> >> +          reg:
> >> +            description:
> >> +              LED channel number (0..14)
> >> +            minimum: 0
> >> +            maximum: 14
> >> +
> >> +        required:
> >> +          - reg
> >> +
> >> +    required:
> >> +      - compatible
> >> +      - "#address-cells"
> >> +      - "#size-cells"
> >> +
> >> +  watchdog:
> >> +    type: object
> >> +
> >> +    $ref: /schemas/watchdog/watchdog.yaml
> >> +
> >> +    properties:
> >> +      compatible:
> >> +        const: sony,cronos-watchdog
> >> +
> >> +      timeout-sec: true
> >=20
> > Why is there a child node to just add timeout-sec?
>=20
> When I tried Krzysztof's solution, the validation tools threw an error, a=
nd this was the only way I found to get them to stop throwing errors.

So you were not able to do what he did, and modify watchdog.yaml?
What did you try, and what were the errors?

>=20
> > Didn't Krzysztof ask
> > you to come up with a generic node name for the mfd to use instead of
> > "smc", and to modify watchdog.yaml to accept the new node name? See
> > here:
> > https://lore.kernel.org/all/c7630eb1-2686-491e-81ed-fb43fff2dd31@linaro=
=2Eorg/
> >=20
> > Something like "platform-controller" sounds generic to me, in a way that
> > "smc" doesn't.
>=20
> SMC is the name of the hardware block in question.  platform-controller g=
enerates some other confusion as there would be multiple separate hardware =
blocks that could fit that name.

Node names do not have to be unique. If there are 10 platform controllers
on the platform, then having 10 platform-controller@<foo> nodes would be
fine. We explicitly want node-names to describe the type of device, not
be a unique identifier. That's what compatible strings are for.
I'm unsure why there would be any confusion caused by the node name,
can you elaborate on that? What other devices connected to the BMC would
be considered "platform controllers"?

There's no explanation anywhere here where "smc" even comes from, none
of the description text or commit message has something that I would
expect "smc" to be shorthand for.

>=20
> >=20
> >> +
> >> +    required:
> >> +      - compatible
> >> +
> >> +    additionalProperties: false
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +
> >> +unevaluatedProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/leds/common.h>
> >> +    i2c {
> >> +        #address-cells =3D <1>;
> >> +        #size-cells =3D <0>;
> >> +
> >> +        smc@3f {
> >> +            compatible =3D "sony,cronos-smc";
> >> +            reg =3D <0x3f>;
> >> +
> >> +            watchdog {
> >> +                compatible =3D "sony,cronos-watchdog";
> >> +
> >> +                timeout-sec =3D <20>;
> >> +            };
> >> +
> >> +            leds {
> >> +                compatible =3D "sony,cronos-led";
> >> +                #address-cells =3D <1>;
> >> +                #size-cells =3D <0>;
> >> +
> >> +                multi-led@0 {
> >> +                    /*
> >> +                     * No subnodes are needed, this controller only s=
upports
> >> RGB
> >> +                     * LEDs.
> >> +                     */
> >> +                    reg =3D <0>;
> >> +                    color =3D <LED_COLOR_ID_MULTI>;
> >> +                    function =3D LED_FUNCTION_STATUS;
> >> +                };
> >> +            };
> >> +        };
> >> +    };
> >> +
> >> --
> >> 2.39.5

--GjhXMOpLUqNAxJ63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaasZewAKCRB4tDGHoIJi
0jTvAPsEul43LF1YWF7gzW1tO2QCD+vBHoDdQJTtDso4hSa/7gEA1HgsO5oPY/PT
RgCusqdFakZaE0/jOpAU7xDRXwircww=
=LV5Y
-----END PGP SIGNATURE-----

--GjhXMOpLUqNAxJ63--

