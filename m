Return-Path: <devicetree+bounces-173401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 294F9AA8602
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 12:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 887991786E1
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 10:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A32191484;
	Sun,  4 May 2025 10:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="AnZslsJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08310E56A
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 10:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746354657; cv=none; b=HmiBWGTKkYMhHdS9Bz/DlR28k4wMEEteWO4iiVVz68KEEaTDIrmbr//uA2MXMt1ESlIri1OYNNF3Srhiteqy8qTx5ORr+D8Aw7weGdBwUOCubBLQpZ4O3PxYWA+AIVTInyNUuMmn/wQmh5yauk3sAaW8xhN1iLghhNfamPtlmtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746354657; c=relaxed/simple;
	bh=5Vt32/mzW7To5gxktaMPYCwNX8VfOskPjy+4EUsg/NE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UDVKcDIuE27NA234Minyi/i3PLpUxjoTkR3Wvg47EFjKlIMSbc7AmpPAEfw/HXKlda56c7cOUR8HNhhZTD9JtS1LFLAJC6t++bXnPRqQLXUQm+dthlOmgIQ4NkReq0BKoHhG2j5hadpzEicQeL8IxAISjzr8Hk5Q9h1RBUyqT60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=AnZslsJ5; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30f30200b51so34680511fa.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 03:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746354654; x=1746959454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ctjHK3tz3fFaUotDjbzNh8QkxmVX8TEvt8HdzjtOs8M=;
        b=AnZslsJ5YPYZ3/fdOgSYi8SQ3uzfs9GiFMUeA8U2lSpTBsg50afeBlSDUbwhEzbLrq
         FYbTX80WvJg7TChPJS517n67kL0wsJG3XIhBDhrfmpp13b8Erd8bNrYD/qyCpsltBBk7
         R13umQR8wOspkUKF0CJDFAAi/qhJI6rO4uvSkUKWij8wS1p23wMTo/H2RyREGGByghl6
         /GgweOSG/hpfnuRXh4ZYJINocBWhC4u4tzMk/ACTSNbS16S3NCpSG7DJwznyI2hTypJ8
         1gsQSSKCWkmny+hGLex4MEQpJGtZ31k4VL8GOBr+Ffu9S7YUnsjfyr6B3szvGATUPwyx
         PHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746354654; x=1746959454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ctjHK3tz3fFaUotDjbzNh8QkxmVX8TEvt8HdzjtOs8M=;
        b=FSc5IgFzevaA4WoGjIwpX+TQwoev3qzmxww+nf+i6ymBMTHdYHeRCkOAPUpUpF/g2t
         o/IIZ7V/wnZTYKVOOt5nMKEXFP792eRq/Mk7C8+p1oKkRegk46r3x0fWz1v21IeF43C1
         ev5SlLeFXpMpQwgZVDFJwIzx7odfUWZAabI0PUEZSMggMZmUH8peB/CCdIHabn9iSeqk
         AAFaKG5oDPdyBKUGvr01xixrrr6ROBCnZKy3304dPiwsxGfgEi2pKboPi5T1yWd2JkL7
         sakyXvqa5/A2UdXKQGbunChJmv9M7boLU/LrPCJ5uH/HPdmaIVtd/DV/DQHm0YTgBrAm
         np1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWIgg+Ff1CYl3YmJs7Pxve8UCbuJzdJVr8nnBdvgHaeWyUAuL03csYbpHk8MoYRYtCGjwqKyytEZb30@vger.kernel.org
X-Gm-Message-State: AOJu0YwuuUKd/Sc/zVGiWGH+ahL7r/DuofatxpBgwbccAQfMwnTgydfD
	J5SVUnTFpzjce0A+72KXJ7jv1DzzbJe/J0hTpXp4mHd22oe7TWdb7d+aNwR8zytw1JB6KbeacEV
	4LKgdoI3DF8yHUKCAukV3A5ad35HMZ8HGULKgj79ininfx2uF
X-Gm-Gg: ASbGnct3qBRJ62H4/m0nF8xAOJI1CS1FXXft7tjHR0GV2dmT93NCQjgopZy6hKm18AI
	rKxaUJwNct3MGyV5pNfR9Y7P3oER0oM6c6uBojg3J3FFwvsRv6fjS6Gu9X2K0S4LpwMl7FP3KMg
	vuhyOuZ3w4joUQ6XMiSQJarYVJuqJ+aHQN
X-Google-Smtp-Source: AGHT+IHNddMh1MAEdaXyMhFUP3hPex+9ap5FzT1qAWDbC5vR9D0r3RQgxeM0Z7vpOyFKStYTnjvZBtG4mnuesFckMjo=
X-Received: by 2002:a05:651c:1511:b0:30b:ad2c:dfe4 with SMTP id
 38308e7fff4ca-3235211023amr11830601fa.30.1746354653993; Sun, 04 May 2025
 03:30:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250203084906.681418-1-apatel@ventanamicro.com>
 <20250203084906.681418-9-apatel@ventanamicro.com> <20250203225140.GA483650-robh@kernel.org>
In-Reply-To: <20250203225140.GA483650-robh@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Sun, 4 May 2025 16:00:43 +0530
X-Gm-Features: ATxdqUGUPU3OFwgF9F3HEI1t-oVp4wPJkT1-hzjaASNwyPdtsiItmeAO9QQEekY
Message-ID: <CAK9=C2WKjDUGc5Se1nG=XTp3wn5ZytUcnghO_u85bSoqGiwmvA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 08/17] dt-bindings: clock: Add bindings for RISC-V
 RPMI clock service group
To: Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 4, 2025 at 4:21=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Feb 03, 2025 at 02:18:57PM +0530, Anup Patel wrote:
> > Add device tree bindings for the clock service group defined by the
> > RISC-V platform management interface (RPMI) specification.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  .../bindings/clock/riscv,rpmi-clock.yaml      | 77 +++++++++++++++++++
> >  1 file changed, 77 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-=
clock.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.y=
aml b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
> > new file mode 100644
> > index 000000000000..c08491c04926
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
> > @@ -0,0 +1,77 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/riscv,rpmi-clock.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V RPMI clock service group based clock controller
> > +
> > +maintainers:
> > +  - Anup Patel <anup@brainfault.org>
> > +
> > +description: |
> > +  The RISC-V Platform Management Interface (RPMI) [1] defines a
> > +  messaging protocol which is modular and extensible. The supervisor
> > +  software can send/receive RPMI messages via SBI MPXY extension [2]
> > +  or some dedicated supervisor-mode RPMI transport.
> > +
> > +  The RPMI specification [1] defines clock service group for accessing
> > +  system clocks managed by a platform microcontroller.
> > +
> > +  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +  References
> > +  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +  [1] RISC-V Platform Management Interface (RPMI)
> > +      https://github.com/riscv-non-isa/riscv-rpmi/releases
> > +
> > +  [2] RISC-V Supervisor Binary Interface (SBI)
> > +      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description:
> > +          Intended for use by the SBI implementation in machine mode o=
r
> > +          software in supervisor mode.
> > +        const: riscv,rpmi-clock
> > +
> > +      - description:
> > +          Intended for use by the SBI implementation in machine mode.
> > +        const: riscv,rpmi-mpxy-clock
> > +
> > +  mboxes:
> > +    maxItems: 1
> > +    description:
> > +      Mailbox channel of the underlying RPMI transport or SBI message =
proxy.
> > +
> > +  riscv,sbi-mpxy-channel-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The SBI MPXY channel id to be used for providing RPMI access to
> > +      the supervisor software. This property is mandatory when using
> > +      riscv,rpmi-mpxy-clock compatible string.
>
> That constraint can be expressed as:
>
> dependentSchemas:
>   riscv,sbi-mpxy-channel-id:
>     properties:
>       compatible:
>         const: riscv,rpmi-mpxy-clock
>
> Please double check that works.
>
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +    description:
> > +      This property is mandatory when using riscv,rpmi-clock compatibl=
e string.
>
> Similar constraint here.
>
> Though the only thing the 2 compatibles have in common is 'mboxes'. I
> think it would be better to just split this into 2 docs.

Yes, it is much simpler to have 2 separate docs. I will update
in the next revision.

Regards,
Anup

>
> > +
> > +required:
> > +  - compatible
> > +  - mboxes
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    mpxy_mbox: sbi-mpxy-mbox {
>
> mailbox {
>
> > +          compatible =3D "riscv,sbi-mpxy-mbox";
> > +          #mbox-cells =3D <2>;
> > +    };
> > +    rpmi-clk {
>
> clock-controller {
>
> > +        compatible =3D "riscv,rpmi-clock";
> > +        mboxes =3D <&mpxy_mbox 0x1000 0x0>;
> > +        #clock-cells =3D <1>;
> > +    };
> > +...
> > --
> > 2.43.0
> >

