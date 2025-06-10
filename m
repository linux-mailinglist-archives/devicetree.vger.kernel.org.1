Return-Path: <devicetree+bounces-184041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ADDAD2DE1
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 707723AF46D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFE927935A;
	Tue, 10 Jun 2025 06:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="R73/pvEq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF297279354
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749536558; cv=none; b=DtphjdMyCgc0n4HP5iTVWYBDj2Tz/bm1ghjEIQKGnsNm8tBtBMiugoiGep4lLs3pwWaWBa7SU02gZtLGZFg0tx710ZOLRaYxjSzmMDx+m1rtJ72wd0jKkXAPoHniWwwjo7pbckIcPsMdzo7lysD7d5xrZyQujfMpk4MWUkJHx8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749536558; c=relaxed/simple;
	bh=43KLnRsyvO0tiWhgbqvJeLpm30esHdsuJEJIl1OCoag=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sl0Xed6Ni7wPpvopY++meVz34UABWy1NVQgVJ9/hHmXChi5MtCFnWtNzuz+QBzLXExaCCwIz0LQET8osrgHd3/+b5+XshJQztZY2JeRsjzcykdQhMKzSOBZPC0LloQHyAmGkKmEgVzIFYXNKUcguR8GHoA8t0iOJHu5ZedHVMeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=R73/pvEq; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5532a30ac45so4683761e87.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 23:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749536555; x=1750141355; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DB4ehjm6ObGiT+zk3hEYWsaNwCd4xVOzRB3uomCd3eo=;
        b=R73/pvEqh92z7pHc36U5/hkARSD64xR6HxV69eCUdFmvUei3t5IR0vdVMKxi6nN8Kn
         TO3ID1a3BeTSpCXGlCvgzw55oT3qiKChi8ah9z6YiQZ8kPPA23SqXYf0CnWXcup0qn6L
         GMI8Q19R/DN8XFSlV0uNAPw/ecQUzPHHDAchW+13WcyEKqtmMI3elAvh3ttUpUvidxZZ
         /3qG3DIvVZoy3ALyNjmGztBIr8oSu8qEyTlKvDLTt05For9g2qSb43zgCGvEyx+YSCSx
         pkX1ubAyFHtPX1LpWg011S85J4/icQPqbr6HzGaXng4r2v26ZNV6kLaQMD5OhgA4u24T
         2kAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749536555; x=1750141355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DB4ehjm6ObGiT+zk3hEYWsaNwCd4xVOzRB3uomCd3eo=;
        b=QymQpM+4YaoFNF12QXUQoN9NWqMhoxoLtsxuWN7UtKqDDmJ4qn+mFoKT2zQA5SPAif
         8LXbkkkJW0lf+adag4403uoNmFNi6IZDT8VOGZI8c1vN3NwvtoqsxVVCz2Kjo98ZTgpn
         cPGdx17ylqrRCq0VutXow0o7fwx+u+57S6IiH6gA0LeuLZdRvhdWeMYhkygAm4ALZq7o
         yk5NLPMf5S04fLg2+gVCN5wvQ80gybgVBpNluyxH0GMbiciAlZDAjjaYNkUTDizXFco4
         Wza8nbfoO8Es/4HINgkyMD6XYaZtvxnuiKYU1womsaMfHSo8sAU/ITalZYD12V+aVHcK
         95NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXnlxGQzOVOJrCU/zjtXOcpHjFmu/mYbY/uqzH95N/dR4Ws2OKGOAYbP/cVrbNuQyY9LaW5E/3JFMM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6tFoaJRU6Bj5yxWXHhqHsy95FDVDcSLLiR1358nbHatvfS3/d
	uOuKQcyRdf7c+IkY5tXbRnG+J2eTiGT0NG6RPLTb2FfLarCzJo4O7gKO0YSY1sqonu9HiUjQWwK
	AtTyJeZcULY47JSsXvrSRNa8rSV0HJV0el18fQW2IjA==
X-Gm-Gg: ASbGncs8x7uTBWhJTD3s+rZZIahlN8efF/s8rFCws56iJM4uLdwKcj/hbTJJR0w1k7C
	3K33Pkeke0+guhNK3l5lzZ9N1nEpcYoLTBEOePCWIe2bYecvgXPpM7y/+6qB3gEULKSN7kMPgU4
	s+y5esnDMUfYPwKnxxL/pru3tIj7p6mrdN4yXOp030GEb4
X-Google-Smtp-Source: AGHT+IFgemJZ7kG2F8XgEhfvR0SOkaw84uYimQM0ic6wTdIsKvJiAdX6chuiGxpnG0pLj9VEVULnGD9buu+lY7bXnsc=
X-Received: by 2002:a05:6512:3d88:b0:553:29cc:c49c with SMTP id
 2adb3069b0e04-55393181e5emr633542e87.7.1749536554598; Mon, 09 Jun 2025
 23:22:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
 <20250525084710.1665648-13-apatel@ventanamicro.com> <c691cf5e-695e-4a29-b31a-76b3376442b2@linux.dev>
In-Reply-To: <c691cf5e-695e-4a29-b31a-76b3376442b2@linux.dev>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 10 Jun 2025 11:52:22 +0530
X-Gm-Features: AX0GCFvoavACeRUD8FpjiBKHCKwOiwWVItSFykOssn8ajeKua3l6UtUtY_QL-G4
Message-ID: <CAK9=C2U-oFe6QpJZ36yqCzbvv0x6+m8nBYfPOjd61hRaW1cxZQ@mail.gmail.com>
Subject: Re: [PATCH v4 12/23] dt-bindings: Add RPMI system MSI interrupt
 controller bindings
To: Atish Patra <atish.patra@linux.dev>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Andrew Jones <ajones@ventanamicro.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 7, 2025 at 4:33=E2=80=AFAM Atish Patra <atish.patra@linux.dev> =
wrote:
>
>
> On 5/25/25 1:46 AM, Anup Patel wrote:
> > Add device tree bindings for the RPMI system MSI service group
> > based interrupt controller for the supervisor software.
> >
> > The RPMI system MSI service group is defined by the RISC-V
> > platform management interface (RPMI) specification.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >   .../riscv,rpmi-system-msi.yaml                | 74 ++++++++++++++++++=
+
> >   1 file changed, 74 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/interrupt-contro=
ller/riscv,rpmi-system-msi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/ris=
cv,rpmi-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-contr=
oller/riscv,rpmi-system-msi.yaml
> > new file mode 100644
> > index 000000000000..ac13cec0666e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi=
-system-msi.yaml
> > @@ -0,0 +1,74 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/riscv,rpmi-sys=
tem-msi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V RPMI system MSI service group based interrupt controller
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
> > +  The RPMI specification [1] defines system MSI service group which
> > +  allow application processors to receive MSIs upon system events
> > +  such as P2A doorbell, graceful shutdown/reboot request, CPU hotplug
> > +  event, memory hotplug event, etc from the platform microcontroller.
> > +  The supervisor software can access RPMI system MSI service group via
> > +  SBI MPXY channel or some dedicated supervisor-mode RPMI transport.
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
> nit: Same comment as previous patch.

Like mentioned in the previous patch, I will add the spec version to the te=
xt.

> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    description:
> > +      Intended for use by the supervisor software.
> > +    const: riscv,rpmi-system-msi
> > +
> > +  mboxes:
> > +    maxItems: 1
> > +    description:
> > +      Mailbox channel of the underlying RPMI transport or SBI message =
proxy channel.
> > +
> > +  msi-parent: true
> > +
> > +  interrupt-controller: true
> > +
> > +  "#interrupt-cells":
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - mboxes
> > +  - msi-parent
> > +  - interrupt-controller
> > +  - "#interrupt-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    interrupt-controller {
> > +        compatible =3D "riscv,rpmi-system-msi";
> > +        mboxes =3D <&mpxy_mbox 0x2000 0x0>;
> > +        msi-parent =3D <&imsic_slevel>;
> > +        interrupt-controller;
> > +        #interrupt-cells =3D <1>;
> > +    };
> > +...
>
> Otherwise, LGTM.
> Reviewed-by: Atish Patra <atishp@rivosinc.com>
>
>
>

Regards,
Anup

