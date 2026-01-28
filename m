Return-Path: <devicetree+bounces-260295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOuQKJbheWm50gEAu9opvQ
	(envelope-from <devicetree+bounces-260295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:14:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E27A9F511
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 692713005584
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBE02D8DDB;
	Wed, 28 Jan 2026 10:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXfFbSuX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83492D46B2;
	Wed, 28 Jan 2026 10:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595276; cv=none; b=UwS2TVx4aKC4/UX8tsG6nq+nmw1CQkeeKhEQJZD5qRZs4p0SxkTWwC9vYlTXDNk+Ok44UkXL4w9LiafN9y8ch7TV4wG+Dc4o3NdMa6tET37xb7kIuJKNS0ql+NjOWpM3vFe1u5Ju9GAJsqxz62LmMo9coxmf8ziHMAXalX7LNaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595276; c=relaxed/simple;
	bh=KAgStXIY/0n/ED+LlmoyP5606/L5gBLVdKMUWMJzF24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O/rZ1inFUPUG2nEi6cixzs+vVn10TbsxNJj9wfn2G6IYh5BYbQQ4LUfrtKH5rBVd4Mve/aTxsrQeFC9SmjPuRJgE/OEwoWHtV6mLV1mauTQMq0ZNLFOTASqOWUKyeR8tVJIk+56q+WhC5YixGrXY73JD2BRhwQZrcZB0ZvDV3lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXfFbSuX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 772CDC4CEF1;
	Wed, 28 Jan 2026 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769595276;
	bh=KAgStXIY/0n/ED+LlmoyP5606/L5gBLVdKMUWMJzF24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QXfFbSuXZPO1u9arOeVTJIcR3HaTkPSGMyDVMl3e1u1qgoPVhi5DDzilQaQXqgIbn
	 aQtks6pXXY08gKatTcr62sghWWZ4mRMZr8YtpcQCoStbBs0IXGL16NxY8NIC8X1Md1
	 Zydz7EMFBcZ/cwRpYU+Y42TYcltGvC3aE3qp0E3wwxnMlrZXjkpX0+mq5qR/xQ6bJH
	 CWy7/unTg014tiM0wPzMIW48SIxw4kFK5zkltZAdeOokK6hdIPQ+8SeoYZ1Uh3h04h
	 4PqE6Zl/1mBWx0ufUZWyzzTrc2OulnvK1nLu35LS1z0arr2G/XdIXDwsmi2SdQ8tAh
	 VwhMC8fUYBD0A==
Date: Wed, 28 Jan 2026 10:14:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Gary Yang <gary.yang@cixtech.com>, lee@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	peter.chen@cixtech.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: add sky1 reset controller
Message-ID: <20260128-coke-poser-56bb1a5f6d00@spud>
References: <20260128093611.1932770-1-gary.yang@cixtech.com>
 <20260128093611.1932770-2-gary.yang@cixtech.com>
 <556bf15b-727a-4eff-92c7-9fc6c744047b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IlEptCxOdo5jO1Kg"
Content-Disposition: inline
In-Reply-To: <556bf15b-727a-4eff-92c7-9fc6c744047b@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260295-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,cixtech.com:email,0.244.36.0:email]
X-Rspamd-Queue-Id: 1E27A9F511
X-Rspamd-Action: no action


--IlEptCxOdo5jO1Kg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2026 at 11:01:40AM +0100, Krzysztof Kozlowski wrote:
> On 28/01/2026 10:36, Gary Yang wrote:
> > There are two reset controllers on Cix sky1 Soc.
> > One is located in S0 domain, and the other is located
> > in S0 and S5 domain.
>=20
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/su=
bmitting-patches.rst#L597
>=20
> >=20
> > Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> > Link: https://lore.kernel.org/r/20251124063235.952136-2-gary.yang@cixte=
ch.com
> > Signed-off-by: Peter Chen <peter.chen@cixtech.com>
> > ---
> >  .../devicetree/bindings/mfd/syscon.yaml       |   7 +
> >  .../bindings/reset/cix,sky1-rst.yaml          |  46 +++++
> >  .../soc/cix/cix,sky1-system-controller.yaml   |  48 +++++
> >  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
> >  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
> >  5 files changed, 307 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rs=
t.yaml
> >  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-=
system-controller.yaml
> >  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
> >  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> >=20
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Docume=
ntation/devicetree/bindings/mfd/syscon.yaml
> > index 55efb83b1495..be864a6b8efb 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > @@ -170,6 +170,8 @@ properties:
> >                - cirrus,ep7209-syscon1
> >                - cirrus,ep7209-syscon2
> >                - cirrus,ep7209-syscon3
> > +              - cix,sky1-system-controller
> > +              - cix,sky1-s5-system-controller
> >                - cnxt,cx92755-uc
> >                - freecom,fsg-cs2-system-controller
> >                - fsl,imx93-aonmix-ns-syscfg
> > @@ -254,6 +256,11 @@ properties:
> >            - const: microchip,pic64gx-sysreg-scb
> >            - const: microchip,mpfs-sysreg-scb
> >            - const: syscon
> > +      - items:
> > +          - enum:
> > +              - cix,sky1-system-controller
> > +              - cix,sky1-s5-system-controller
> > +          - const: syscon
>=20
> Do not create your own style. Cix is not special. There is already an
> enum for EVERYONE.
>=20
> > =20
> >    reg:
> >      maxItems: 1
>=20
> Independent patch. Please do not combine unrelated patches into one.

Was mid reply when I saw this mail come through, just wanted to add the
one thing I had to say in excess of what you've written:

All the changes to syscon.yaml should be deleted, as it adds a competing
definition to the one in the dedicated file, and I am surprised
something like this passed testing.. Perhaps it passes if
DT_SCHEMA_FILES=3Dsyscon.yaml but it'd fail a real dtbs_check, right?
At v4, I'd be hoping for more thorough testing to be done.

Cheers,
Conor.

>=20
>=20
> > diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml =
b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > new file mode 100644
> > index 000000000000..4323acdc2c45
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: CIX Sky1 Reset Controller
> > +
> > +maintainers:
> > +  - Gary Yang <gary.yang@cixtech.com>
> > +
> > +description: |
> > +  CIX Sky1 reset controller can be used to reset various set of periph=
erals.
> > +  There are two reset controllers, one is located in S0 domain, the ot=
her
> > +  is located in S0 and S5 domain.
> > +
> > +  See also:
> > +  - include/dt-bindings/reset/cix,sky1-rst.h
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - cix,sky1-rst
> > +          - cix,sky1-rst-fch
> > +
> > +  '#reset-cells':
> > +    const: 1
>=20
> No resources? Then not a dedicated child node, but part of the syscon.
> Fold this entire binding into the parent node.
>=20
> > +
> > +required:
> > +  - compatible
> > +  - '#reset-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    syscon@16000000 {
> > +      compatible =3D "cix,sky1-s5-system-controller", "syscon",
> > +                "simple-mfd";
>=20
> Mess alignment.
>=20
> > +      reg =3D <0x0 0x16000000 0x0 0x1000>;
>=20
> Does not belong here.
>=20
> > +      src: reset-controller {
> > +        compatible =3D "cix,sky1-rst";
> > +        #reset-cells =3D <1>;
> > +      };
>=20
> > +    };
> > diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-=
controller.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system=
-controller.yaml
> > new file mode 100644
> > index 000000000000..f6e2776e3f53
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control=
ler.yaml
> > @@ -0,0 +1,48 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-controller.=
yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cix Sky1 SoC system controller register region
> > +
> > +maintainers:
> > +  - Gary Yang <gary.yang@cixtech.com>
> > +
> > +description:
> > +  An wide assortment of registers of the system controller on Sky1 SoC,
> > +  including resets and usb.
> > +
> > +allOf:
> > +  - $ref: /schemas/mfd/syscon.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - contains:
>=20
> What? No, don't come with random code. There is no single code like this.
>=20
> > +          - enum:
> > +              - cix,sky1-system-controller
> > +              - cix,sky1-s5-system-controller
> > +          - const: syscon
> > +          - const: simple-mfd
>=20
> Huh? You already documented this.
>=20
> NAK, you are making random changes without any concept.
>=20
> Read previous feedback. Really carefully.
>=20
> Best regards,
> Krzysztof

--IlEptCxOdo5jO1Kg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXnhiAAKCRB4tDGHoIJi
0qlIAQDYoPNSj6epvxuaK++lkC3BS+BwQkFo9VsnahgMXn2zMwEAv7Pa1k8CBf7S
5C6M3SuzcZoIF4AYeTyjTxTGxg7KbwE=
=dMPV
-----END PGP SIGNATURE-----

--IlEptCxOdo5jO1Kg--

