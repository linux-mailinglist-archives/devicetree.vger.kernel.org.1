Return-Path: <devicetree+bounces-20310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F937FEC60
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 10:57:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BD22282102
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721233AC16;
	Thu, 30 Nov 2023 09:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abovv0qw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55074125CC
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 09:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8F54C433C7;
	Thu, 30 Nov 2023 09:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701338248;
	bh=At+gyQ/xlCRkksDXB0AhXb0mnnG01bKhfjPTqRTzZXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Abovv0qwUCZwPg8D/kLwSak9MM+KwQp+Imy7tTEjlQI4TY8Oj1MxhxXO/s1kfuj82
	 +iNWONY+mKsQeZqsGsTjxZ78vbWI0QJNgET64WHrdMtNUEX1F1XHhHp/K4kQb+vfPl
	 c3UMMRIvwhJVmfxykZmFGThLgoz1F2g2t400stCNhVt3YEK01lSqI8nrmPtYRfBuO0
	 cHyQ2OHF+Bpf2/T9Y7a65VBDx9Bfl0EzNrLepERg6lfZLglPRu8z7IU7mtQUsN1E6k
	 fGAFjaDM5ImkJBgXkNe8tTaU13bG5G1zA4VcbvgiFcgj72sJ/dLqa0TYu92+klwKcd
	 YZWwy67I+TJZA==
Date: Thu, 30 Nov 2023 09:57:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Inochi Amaoto <inochiama@outlook.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Anup Patel <anup@brainfault.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
Message-ID: <20231130-decibel-passenger-6e932b1ce554@spud>
References: <IA1PR20MB4953C82499C5D81D2C6A020BBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <CAK9=C2WAv5jJBt56xBea268DeyUA+YvbU7i+ahVjueafCi-r6A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MkvK8Enbv+3r7NNr"
Content-Disposition: inline
In-Reply-To: <CAK9=C2WAv5jJBt56xBea268DeyUA+YvbU7i+ahVjueafCi-r6A@mail.gmail.com>


--MkvK8Enbv+3r7NNr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 03:01:24PM +0530, Anup Patel wrote:
> On Sat, Nov 18, 2023 at 12:39=E2=80=AFPM Inochi Amaoto <inochiama@outlook=
=2Ecom> wrote:
> >
> > The timer registers of aclint don't follow the clint layout and can
> > be mapped on any different offset. As sg2042 uses separated timer
> > and mswi for its clint, it should follow the aclint spec and have
> > separated registers.
> >
> > The previous patch introduced a new type of T-HEAD aclint timer which
> > has clint timer layout. Although it has the clint timer layout, it
> > should follow the aclint spec and uses the separated mtime and mtimecmp
> > regs. So a ABI change is needed to make the timer fit the aclint spec.
> >
> > To make T-HEAD aclint timer more closer to the aclint spec, use
> > regs-names to represent the mtimecmp register, which can avoid hack
> > for unsupport mtime register of T-HEAD aclint timer.
> >
> > Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> > Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer=
")
> > Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693=
=2Ehtml
> > Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
>=20
> The ratified Priv v1.12 specification defines platform specific M-mode ti=
mer
> registers without defining any layout of mtime and mtimecmp registers.
> (Refer, "3.2.1 Machine Timer Registers (mtime and mtimecmp)")
>=20
> The "thead,c900-aclint-mtimer" can be thought of as is one possible
> implementation of "riscv,mtimer" defined by the Priv v1.12 specificaiton.
>=20
> If it is not too late then I suggest making this binding into generic
> "riscv,mtimer" binding.

We could definitely reorganise things, it's not too late for that as
implementation specific compatibles would be needed regardless, so
software that would've matched on those will continue to do so.

That said, does this platform actually implement the 1.12 priv spec if
there is no mtime register? The section you reference says:
"Platforms provide a real-time counter, exposed as a memory-mapped
machine-mode read-write register, mtime." It seems to me like this
hardware is not suitable for a generic "riscv,mtimer" fallback.

Am I missing something there Anup?

It doesn't even implement the draft aclint spec, given that that says:
"The MTIMER device provides machine-level timer functionality for a set
of HARTs on a RISC-V platform. It has a single fixed-frequency monotonic
time counter (MTIME) register and a time compare register (MTIMECMP) for
each HART connected to the MTIMER device."

But I already said no to having a generic, "riscv" prefixed, compatible
for that, given it is in draft form.

Cheers,
Conor.

> > ---
> >  .../timer/thead,c900-aclint-mtimer.yaml       | 42 ++++++++++++++++++-
> >  1 file changed, 41 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/timer/thead,c900-aclint-=
mtimer.yaml b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mti=
mer.yaml
> > index fbd235650e52..053488fb1286 100644
> > --- a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.=
yaml
> > +++ b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.=
yaml
> > @@ -17,7 +17,20 @@ properties:
> >        - const: thead,c900-aclint-mtimer
> >
> >    reg:
> > -    maxItems: 1
> > +    oneOf:
> > +      - items:
> > +          - description: MTIME Registers
> > +          - description: MTIMECMP Registers
> > +      - items:
> > +          - description: MTIMECMP Registers
> > +
> > +  reg-names:
> > +    oneOf:
> > +      - items:
> > +          - const: mtime
> > +          - const: mtimecmp
> > +      - items:
> > +          - const: mtimecmp
> >
> >    interrupts-extended:
> >      minItems: 1
> > @@ -28,8 +41,34 @@ additionalProperties: false
> >  required:
> >    - compatible
> >    - reg
> > +  - reg-names
> >    - interrupts-extended
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: thead,c900-aclint-mtimer
> > +    then:
> > +      properties:
> > +        reg:
> > +          items:
> > +            - description: MTIMECMP Registers
> > +        reg-names:
> > +          items:
> > +            - const: mtimecmp
> > +    else:
> > +      properties:
> > +        reg:
> > +          items:
> > +            - description: MTIME Registers
> > +            - description: MTIMECMP Registers
> > +        reg-names:
> > +          items:
> > +            - const: mtime
> > +            - const: mtimecmp
> > +
> >  examples:
> >    - |
> >      timer@ac000000 {
> > @@ -39,5 +78,6 @@ examples:
> >                              <&cpu3intc 7>,
> >                              <&cpu4intc 7>;
> >        reg =3D <0xac000000 0x00010000>;
> > +      reg-names =3D "mtimecmp";
> >      };
> >  ...
> > --
> > 2.42.1
> >
> >

--MkvK8Enbv+3r7NNr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWhcggAKCRB4tDGHoIJi
0kn8AQDqzj5sPhrTZ4MnXUrint8opq95zpJJFvIiNf7BO7n8lAEA1WQHbj11P6xz
RHWuZ9KBckPhPthVbmqyHo6rJmIi6A4=
=YOvF
-----END PGP SIGNATURE-----

--MkvK8Enbv+3r7NNr--

