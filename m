Return-Path: <devicetree+bounces-311029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id voOtH1wqLGpkMgQAu9opvQ
	(envelope-from <devicetree+bounces-311029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB09867A9CE
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:48:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mCuIjJzu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311029-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311029-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2394631034DD
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A604D391E5B;
	Fri, 12 Jun 2026 15:48:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED52383C65;
	Fri, 12 Jun 2026 15:48:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781279318; cv=none; b=tIILROZqerK1skYP+/JUFj5fqKucmUhjPFmYPWpaX8jTp0do8pjcGMGmFYXg7nmvZ4ODjGN22fom4495SbAlep1lAd8Ex04/zQgDaHzknTmGCO4PYF32oI63UP8/6/uXdBIX+QBrXTk+xs7huOgo0AXugmNWYjRB5PxwAcBsiSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781279318; c=relaxed/simple;
	bh=LsR7KpA+fDSHS8txtXxcEBfQLL6FA9LdOsE1OmuaCIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o5vGTDTh+VUCKdmnKVW4lMyQGjZKH4klIzHYBYtDDIUMpwKeFwS06NvJVT3h8zHPLrat4sU+guYkfnT/5WoKqgUixd0nNbmXQGyDZTkTN3/oRW4AqtSPAJ9/fgo2AV9B3gMJIbxQu23f8iQPXaiKPs7ZZCRZcp5dbL7cVGugi10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCuIjJzu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 731841F000E9;
	Fri, 12 Jun 2026 15:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781279317;
	bh=P24PzYh2dPfggH2phH0CSdSprDerroPHjb0HskOrFUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mCuIjJzuVaQ73bpIXBCWHhNagTHww10+4/G86OLA8YHNzLyK0mxgnpCr209pm+xNi
	 MnN2EVodolcF8B8zpseyDfXQNywmc+F0LxNdQw/7eHeFcz3XAAtRR939BaNnGumqd4
	 vLXDQUaSpQzE3ZUvZHivRRc2J1wRJly+9mFFrS1waeNeVWopXgy4LhAsQg2cXgQOiJ
	 1cSHuZUm9hlGZSo61pQOOeeSb0NUq0r3DBsTMi9ilK7Ip2g6e57lc0rATfWfmlGGGi
	 SctNp+ClycrrpxJ5ROXC0fz8akcZJOBOgKyt1iRRyOddCf/C8iwyMyHGr5BzTQBYYE
	 14qeOAtMZxdTA==
Date: Fri, 12 Jun 2026 16:48:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Chi-Wen Weng <cwweng.linux@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cwweng@nuvoton.com
Subject: Re: [PATCH v3 1/2] dt-bindings: spi: nuvoton,ma35d1-qspi: Add
 Nuvoton MA35D1 QSPI
Message-ID: <20260612-diagram-florist-01a0e8f923d8@spud>
References: <20260611091246.2070485-1-cwweng.linux@gmail.com>
 <20260611091246.2070485-2-cwweng.linux@gmail.com>
 <20260611-decoy-glamorous-81903a5fd1f9@spud>
 <0031379c-0cc3-40c8-8145-5b1991b42f05@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d5KanU3abWapAIHY"
Content-Disposition: inline
In-Reply-To: <0031379c-0cc3-40c8-8145-5b1991b42f05@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311029-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwwenglinux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,devicetree.org:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB09867A9CE


--d5KanU3abWapAIHY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2026 at 08:33:01AM +0800, Chi-Wen Weng wrote:
> Hi Conor,
>=20
> Thanks for the review.
>=20
> I will add a default value for num-cs in v4:
>=20
> =C2=A0 num-cs:
> =C2=A0 =C2=A0 maximum: 2
> =C2=A0 =C2=A0 default: 2
>=20
> The controller has two native chip selects and the driver currently uses
> that hardware default.

The driver should handle the property and fall back to the default.
It's not complex to support, so surely there's no reason not to?

Cheers,
Conor.

>=20
> Best regards,
> Chi-Wen
>=20
> Conor Dooley =E6=96=BC 2026/6/12 =E4=B8=8A=E5=8D=88 01:34 =E5=AF=AB=E9=81=
=93:
> > On Thu, Jun 11, 2026 at 05:12:45PM +0800, Chi-Wen Weng wrote:
> > > From: Chi-Wen Weng <cwweng@nuvoton.com>
> > >=20
> > > Add a devicetree binding for the Quad SPI controller found in
> > > Nuvoton MA35D1 SoCs.
> > >=20
> > > The controller supports SPI memory devices such as SPI NOR and SPI NA=
ND
> > > flashes. It has one register range, one clock input and one reset lin=
e,
> > > and supports up to two chip selects.
> > >=20
> > > Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
> > > ---
> > >   .../bindings/spi/nuvoton,ma35d1-qspi.yaml     | 62 ++++++++++++++++=
+++
> > >   1 file changed, 62 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/spi/nuvoton,ma=
35d1-qspi.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qsp=
i.yaml b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
> > > new file mode 100644
> > > index 000000000000..d3b36e612eb0
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
> > > @@ -0,0 +1,62 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/spi/nuvoton,ma35d1-qspi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Nuvoton MA35D1 Quad SPI Controller
> > > +
> > > +maintainers:
> > > +  - Chi-Wen Weng <cwweng@nuvoton.com>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/spi/spi-controller.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: nuvoton,ma35d1-qspi
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  num-cs:
> > > +    maximum: 2
> > Missing a default of 2, unless you make the property required.
> > FWIW, your driver doesn't appear to read this value.
> >=20
> > pw-bot: changes-requested
> >=20
> > Cheers,
> > Conor.
> >=20
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - resets
> > > +
> > > +unevaluatedProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
> > > +    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
> > > +
> > > +    soc {
> > > +        #address-cells =3D <2>;
> > > +        #size-cells =3D <2>;
> > > +
> > > +        spi@40680000 {
> > > +            compatible =3D "nuvoton,ma35d1-qspi";
> > > +            reg =3D <0 0x40680000 0 0x100>;
> > > +            interrupts =3D <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
> > > +            clocks =3D <&clk QSPI0_GATE>;
> > > +            resets =3D <&sys MA35D1_RESET_QSPI0>;
> > > +            #address-cells =3D <1>;
> > > +            #size-cells =3D <0>;
> > > +        };
> > > +    };
> > > +
> > > --=20
> > > 2.25.1
> > >=20

--d5KanU3abWapAIHY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiwqUQAKCRB4tDGHoIJi
0hSZAPsGXy7Ljn9Qs0indD+H/DnIcVGLUKT5vrJDctij1nWDoAD/S2RKklLM1fdd
ssE+s+pAINHsBvdWwhPwG6YnBAEKiAA=
=gDMh
-----END PGP SIGNATURE-----

--d5KanU3abWapAIHY--

