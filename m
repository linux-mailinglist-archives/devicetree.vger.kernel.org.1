Return-Path: <devicetree+bounces-7306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 019D67BFF9B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32A541C20B5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF5F24C60;
	Tue, 10 Oct 2023 14:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExMTOBAl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40963DDA6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C18FC433C9;
	Tue, 10 Oct 2023 14:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696949417;
	bh=JhuQXBSPj6aFMuffNqgpC/hPfXH0KhfFsBRMiiFK1go=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ExMTOBAlCjDHwV1o41MulJQH3Uo0HoyZQ+8rQ0siqRitFLCVCY/Im8GUZ7ZQbrmUB
	 NrZKOZCyTkGnhNgmm0YhnRyxQ2xIQmB83+bBoZfZhOs4Z2yOyRZ2Y5GqTNlYGJnvac
	 o75MFHwEPpekK8GESRLiX0BOcKlly9rc36svv+D+IpHUl1ejMvGqUirRW9exqsunOX
	 h43r5xJ08xA1ewNQhEu2V8MEJiCA2nmdjEKwmziLTRLQqTXEsSZ8IkHBq50O0HRMFn
	 e5fRg5173sgDZEsEquTd+j0VbWXQI+ZD8hCDC4iPXEEdw3nRG0/SDSctoi1HcKW7qR
	 4qAXTcoONi+qQ==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50308217223so7216909e87.3;
        Tue, 10 Oct 2023 07:50:17 -0700 (PDT)
X-Gm-Message-State: AOJu0YzDO9Ut1cH9Q6L6BmbHnxXjptGDI175QTIdjqYL46JoJBdUiFEv
	AyrgLAxaLPvoEdTib8fOrp/+jEFzT/5HfWOa1Q==
X-Google-Smtp-Source: AGHT+IGoRh0JfkTjF6Rgd+yngHQANrwoY5g/RAu+mkpwCwhIs43wUG5v2Wv6X2UpqlhBgbTJEqSp9iqWFCSxal6azAg=
X-Received: by 2002:a05:6512:3e01:b0:503:3453:ea7a with SMTP id
 i1-20020a0565123e0100b005033453ea7amr19326327lfv.66.1696949415802; Tue, 10
 Oct 2023 07:50:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004063712.3348978-1-alvin@pqrs.dk> <20231004063712.3348978-2-alvin@pqrs.dk>
 <20231004143937.GA3091822-robh@kernel.org> <mkeegnnfuxmutdkun7tprz27miyeisvhppsdp5mxmeq4kykecy@b576w45hwcbd>
In-Reply-To: <mkeegnnfuxmutdkun7tprz27miyeisvhppsdp5mxmeq4kykecy@b576w45hwcbd>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Oct 2023 09:50:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKrGM1KFPxECXM49KZ-CYxhBShODk0TQeEMx8r-ztSh6Q@mail.gmail.com>
Message-ID: <CAL_JsqKrGM1KFPxECXM49KZ-CYxhBShODk0TQeEMx8r-ztSh6Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: si5351: convert to yaml
To: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <ALSI@bang-olufsen.dk>
Cc: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Rabeeh Khoury <rabeeh@solid-run.com>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 4, 2023 at 4:40=E2=80=AFPM Alvin =C5=A0ipraga <ALSI@bang-olufse=
n.dk> wrote:
>
> On Wed, Oct 04, 2023 at 09:39:37AM -0500, Rob Herring wrote:
> > > +      silabs,multisynth-source:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +        enum: [ 0, 1 ]
> > > +        description: |
> >
> > Don't need '|' if no formatting to preserve.
>
> I thought the line would be too long otherwise.
> Column width is 80 in dt-schema as well, right?

Yes, and up to 100 is fine as an exception.

> >
> > > +          Source PLL A (0) or B (1) for the corresponding multisynth=
 divider.

But this doesn't look like it is over 80. Maybe if you put after
'description:' on the same line, but that's not what I said. It can
still be on the next line. No '|' just means the line endings aren't
fixed. Not important now, but if we were to generate pretty
documentation from the schemas, then it would matter.

>
> [...]
>
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            enum:
> > > +              - silabs,si5351a
> > > +              - silabs,si5351a-msop
> > > +              - silabs,si5351b
> >
> > Isn't this just the 'else' for the next one? Or more parts are coming?
>
> Not sure if more parts are coming - these are the only ones I am aware of=
. But I
> have not checked thoroughly. I thought it better to be explicit, but I wi=
ll
> change the next one to an else: in v3 unless you change your mind.
>
> >
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          minItems: 1
> > > +          maxItems: 1
> > > +        clock-names:
> > > +          items:
> > > +            - const: xtal
> > > +
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: silabs,si5351c
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          minItems: 1
> > > +          maxItems: 2
> > > +        clock-names:
> > > +          minItems: 1
> > > +          items:
> > > +            - const: xtal
> > > +            - const: clkin
> >
> > Define clocks and clock-names at the top level and just use
> > minItems/maxItems in the if/then schemas.
>
> I was trying to imply here that it is invalid to specify clkin for the fo=
rmer
> three part types - only for the si5351c. If I specify both in the top-lev=
el
> clock-names:items then it would allow something like this:
>
>   clk {
>     compatible =3D "silabs,si5351a-msop";
>     clocks =3D <&ref25>;
>     clock-names =3D "clkin"; /* not OK - Si5351A-MSOP only supports XTAL =
*/
>   };

What I'm saying will work. There are lots of examples in the tree. The
top-level defines the full array and then the if/then schema just sets
the max size to 1 so that the clkin entry is not allowed.

properties:
  clock-names:
    minItems: 1
    items:
      - const: xtal
      - const: clkin

if:
  properties:
    compatible:
      contains:
        const: silabs,si5351a-msop
then:
  properties:
    clock-names:
      maxItems: 1

(and then "minItems: 2" for the cases with 2 clocks)

Rob

