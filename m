Return-Path: <devicetree+bounces-243802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC094C9D1CF
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 22:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D77C64E03EA
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 21:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A9A22FE0E;
	Tue,  2 Dec 2025 21:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8j2tXkx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9E117BED0;
	Tue,  2 Dec 2025 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764711955; cv=none; b=BMi0gkKN0oY+xK7lLjFBkwTM1Tjjwoz6xKsLr8K1WFk3afSKa/Iw/dmFa0mDiT5opDbNyGIKCosrjD+R1miXXA/4ner5Mg0hopR79wlwkqUkmHGBkFtZ/ya6l4cDeshoYHxCFIaPLL7Qfsd2efdpdGhBbbUrloZQ17dNpmf5VLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764711955; c=relaxed/simple;
	bh=D5jIlCOTuSedkht4OP47ONHjNh51bSyG/euQxLWdCY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FlNzpXcZlXQUIvxHOuJT0qMSWNv9rvxFlpy27NZQDh0ALupCr9iY8SPDECPt6D4UW8vRPpubjk/I1ddYNdrM9oKL4eybjCzHMTVfqP4H+8Gi8iTFMCgnjRu/tILQsUA2ZKGRVypxZ7W8k4QM4d2yko9/nGCk2Xz7KstsVziCUmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8j2tXkx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C397C4CEF1;
	Tue,  2 Dec 2025 21:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764711954;
	bh=D5jIlCOTuSedkht4OP47ONHjNh51bSyG/euQxLWdCY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k8j2tXkx1eeXmaoDXcFhajOuft8ThBfB98DTzRyY1i4gSUHWrZUqPwAlQEU9+RtXR
	 IEkMXXh/W0roQ2rawtYaY/clVfke0kERyxwmIxNDBWzgN4B/DQZxEBhM+uO478P6Fm
	 pLIhsgolaLGvMq7+JsioU2+4QyiUfr1POiJOWVNrEfUsuA+10oA/AvfrTBjrC7ZOGA
	 A37n76QFMZ09aFegw2fcyoLcDdBnHDbOPuvyE+po0fLP2C1YAxkcW1nmSQ3b2e4y4i
	 MJsmytY3h/tBpH+h0WBiIrdc9yWu834iAD3QCBXCG2C0GrsjdfCAc7G6u/ltYKbAh2
	 0W26uN0kobvZA==
Date: Tue, 2 Dec 2025 21:45:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Subject: Re: =?utf-8?B?5Zue5aSNOiDlm57lpI06IFtQQVRD?= =?utf-8?Q?H?= v3 1/3]
 dt-bindings: reset: add sky1 reset controller
Message-ID: <20251202-mortuary-omission-f20793e20a36@spud>
References: <20251124063235.952136-1-gary.yang@cixtech.com>
 <20251124063235.952136-2-gary.yang@cixtech.com>
 <20251124-selector-blemish-ec6e9a356bc6@spud>
 <PUZPR06MB5887CB84BC4D006EC594B654EFD1A@PUZPR06MB5887.apcprd06.prod.outlook.com>
 <20251126-dreamily-shorty-cb543d993e7a@spud>
 <PUZPR06MB58873EBA3818208D061FF866EFDBA@PUZPR06MB5887.apcprd06.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gh+Gg8VtfZRPDihV"
Content-Disposition: inline
In-Reply-To: <PUZPR06MB58873EBA3818208D061FF866EFDBA@PUZPR06MB5887.apcprd06.prod.outlook.com>


--gh+Gg8VtfZRPDihV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 01, 2025 at 03:13:44AM +0000, Gary Yang wrote:
> Hi Conor:
>=20
> Thanks for your comments.
>=20
> > -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> > =E5=8F=91=E4=BB=B6=E4=BA=BA: Conor Dooley <conor@kernel.org>
> > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2025=E5=B9=B411=E6=9C=8827=E6=97=
=A5 3:15
> > =E6=94=B6=E4=BB=B6=E4=BA=BA: Gary Yang <gary.yang@cixtech.com>
> > =E6=8A=84=E9=80=81: p.zabel@pengutronix.de; robh@kernel.org; krzk+dt@ke=
rnel.org;
> > conor+dt@kernel.org; devicetree@vger.kernel.org;
> > linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
> > =E4=B8=BB=E9=A2=98: Re: =E5=9B=9E=E5=A4=8D: [PATCH v3 1/3] dt-bindings:=
 reset: add sky1 reset controller
> >=20
> > On Tue, Nov 25, 2025 at 02:12:23PM +0000, Gary Yang wrote:
> > > Hi Conor:
> > >
> > > Thanks for your comments
> > >
> > > > -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> > > > =E5=8F=91=E4=BB=B6=E4=BA=BA: Conor Dooley <conor@kernel.org>
> > > > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2025=E5=B9=B411=E6=9C=8825=E6=
=97=A5 3:54
> > > > =E6=94=B6=E4=BB=B6=E4=BA=BA: Gary Yang <gary.yang@cixtech.com>
> > > > =E6=8A=84=E9=80=81: p.zabel@pengutronix.de; robh@kernel.org; krzk+d=
t@kernel.org;
> > > > conor+dt@kernel.org; devicetree@vger.kernel.org;
> > > > linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > > > cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
> > > > =E4=B8=BB=E9=A2=98: Re: [PATCH v3 1/3] dt-bindings: reset: add sky1=
 reset controller
> > > >
> > > > On Mon, Nov 24, 2025 at 02:32:33PM +0800, Gary Yang wrote:
> > > > > There are two reset controllers on Cix sky1 Soc.
> > > > > One is located in S0 domain, and the other is located in S5 domai=
n.
> > > > >
> > > > > Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> > > > > ---
> > > > >  .../bindings/reset/cix,sky1-rst.yaml          |  50 ++++++
> > > > >  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
> > > > >  include/dt-bindings/reset/cix,sky1-rst.h      | 164
> > ++++++++++++++++++
> > > > >  3 files changed, 256 insertions(+)  create mode 100644
> > > > > Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > > > >  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
> > > > >  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> > > > >
> > > > > diff --git
> > > > > a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > > > > b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..a28f938a283d
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> > > > > @@ -0,0 +1,50 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML
> > > > > +1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: CIX Sky1 Reset Controller
> > > > > +
> > > > > +maintainers:
> > > > > +  - Gary Yang <gary.yang@cixtech.com>
> > > > > +
> > > > > +description: |
> > > > > +  CIX Sky1 reset controller can be used to reset various set of
> > peripherals.
> > > > > +  There are two reset controllers, one is located in S0 domain,
> > > > > +the other
> > > > > +  is located in S5 domain.
> > > > > +
> > > > > +  See also:
> > > > > +  - include/dt-bindings/reset/cix,sky1-rst.h
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    items:
> > > > > +      - enum:
> > > > > +          - cix,sky1-rst
> > > > > +          - cix,sky1-rst-fch
> > > >
> > > > You've not addressed my v2 commentary:
> > > > https://lore.kernel.org/all/20251114-problem-overbook-383f8e45cd0b@s
> > > > pud
> > > > /
> > > > I asked what else the device does, but you didn't answer me.
> > > > Dropping the syscon doesn't make sense if the device genuinely has =
other
> > functions.
> > > >
> > >
> > > First I'm sorry for not responding your questions earlier. We agree t=
he fact
> > the register space of reset should not depends on other modules.
> > > We found that while the reset register spaces on the sky1 platform are
> > non-contiguous, a specific register space among them is exclusively use=
d by
> > reset.
> > > So we can remove syscon property and split serval register spaces. Al=
l right?
> >=20
> > No, not all right, sorry.
> > It's perfectly okay for some region to do multiple things, most SoCs ha=
ve
> > multiple regions exactly like this.
> > The normal thing to do is to treat these regions as a syscon like your =
earlier
> > version did. The problem with your v1 was that you called the whole thi=
ng a
> > reset, when it isn't just that.
> > There's plenty of examples using mfd for how these kinds of devices are
> > handled in the kernel. There's some using the simple-mfd compatible, wh=
ich is
> > for when there are subdevices with their own nodes and other defining
> > mfd_cells and calling mfd_add_devices() when the subdevices do not have
> > enough complexity for a node (like your reset controller that has one p=
roperty
> > and is unlikely to be reusable on another platform).
> >=20
> > > > > +  reg:
> > > > > +    minItems: 1
> > > > > +    maxItems: 3
> > > > > +
> > > > > +  '#reset-cells':
> > > > > +    const: 1
> > > > > +
> > > > > +required:
> > > > > +  - compatible
> > > > > +  - reg
> > > > > +  - '#reset-cells'
> > > > > +
> > > > > +additionalProperties: false
> > > > > +
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/reset/cix,sky1-rst.h>
> > > > > +    reset-controller@16000304 {
> > > > > +      compatible =3D "cix,sky1-rst";
> > > >
> > > > > +      reg =3D <0x16000304 0xc>,
> > > > > +            <0x16000400 0x10>,
> > > > > +            <0x16000800 0x8>;
> > > >
> > > > This is also highly suspect, and I believe what you had before was
> > > > probably much more realistic.
> > > > Do things properly and fully *now*, rather than pay the price of
> > > > unravelling it all later. I just did this for one of my own
> > > > platforms, and putting in the effort to completely describe stuff up
> > > > front is actually worth it rather than having to refactor years dow=
n the line.
> >=20
> > > Yes, I agree your view.
> > > This scheme is discussed in our team. It is our decision, not only mi=
ne.
> > > There are some modules here that haven't been pushed upstream yet.
> > > If we take them as our internal names, maybe make you confuse. For
> > > example,
> >=20
> > If the naming is going to be confusing, then explain things in the desc=
ription
> > property.
> >=20
> > > The register space based 0x16000000 belongs to PMCTRL_S5. It is a sys=
tem
> > power control module, not SCP.
> > > It not only includes reset controller, but also some usb control,
> > > wakeup sources, clk gates, sleep states settings, generic registers f=
or software,
> > and so on. But In kernel, we mainly focus on reset controller and usb c=
ontrol.
> > > They are controlled by the different registers. So we decide to adopt=
 this
> > scheme.
> >=20
> > This is all very normal stuff that syscons are used for on other platfo=
rms.
> > Describe the register region based on what it contains, not based on wh=
at you
> > currently thing that linux is going to use. Maybe later you'll need the=
 other
> > functions either in linux, or in other projects (like u-boot) that impo=
rt our
> > devicetrees.
> >=20
>=20
> Yes=EF=BC=8CFirst we agree syscon scheme. It is very common in kernel. We=
 want to verify the next actions with you.
> One, we add a node syscon@16000000 as pmctrl_s5 an example.
> Two, the reset node and usb node both contain a phandle used to point to =
syscon node

Not quite. The rest node would be empty, other than the phandle, and is
therefore pointless. The #reset-cells property should go in the syscon
node itself. For usb, because it sounds like the syscon is only
providing some control registers and is not the usb controller itself, a
phandle is okay. It's a case by case thing, but if the syscon node
provides an entire feature then a phandle is not suitable and instead
either a child node of the syscon (which would make it a simple-mfd too)
should be used or the properties should go directly into the syscon
node. That depends on how complex the feature is and how likely it is to
be reused between devices. reset is very unlikely to be suitable for
reuse, for example.

> Three, In corresponding driver files, we can get the regmap pointers via =
syscon API.
> All right? By the way, How should we describe syscon in yaml file? Are th=
ere some files used to refer?

microchip,mpfs-mss-top-sysreg.yaml is one I wrote recently. Going to the
corresponding driver you will be able to see how the reset controller
driver is probed. You should be able to find it in linux-next.
sophgo,sg2044-top-syscon.yaml is another that works in the same way.

> Please show us your suggestions. Thanks
>=20
> Best regards
> Gary
>=20
> > > If you have any questions, please let us know. If make any mistakes, =
please
> > remind me kindly.

--gh+Gg8VtfZRPDihV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaS9eCgAKCRB4tDGHoIJi
0n2sAP4reHUmp3T6NsE1TClEamXkob6EerJdAxUtkD0eMsvyDAD+Jez1eImoaD9G
nEzfe/Orw7rOSIFtyfyd0mfOSrZBRAs=
=LWgG
-----END PGP SIGNATURE-----

--gh+Gg8VtfZRPDihV--

