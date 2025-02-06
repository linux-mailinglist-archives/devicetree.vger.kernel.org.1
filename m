Return-Path: <devicetree+bounces-143604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDDFA2A88C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:32:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3DEC3A6A73
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A843622DF86;
	Thu,  6 Feb 2025 12:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Rqsta/t6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07B722687B
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738845165; cv=none; b=CLAT1Dk4D8D424gHzG2bVWjqzWi7d10A/YjfY5K9xDs/LHMX20pzm+i8krUrZa7bW+Rwu7aRAMf9qpy48ST2scdvqQNjIRvAkSTYh6M1hYfU0FB6b1Bka6959FNXUWkCVHdEMpeLYEK+KFDO4pE2Fq4mbnN02JmhxcLnv9tAE8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738845165; c=relaxed/simple;
	bh=dvdVwTK9ToyFCwd3FDpliJ5Z5+oj52zc7BeNYcjGMUo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B7JVyuLpGR8CSlNxYHVSimXmyrcPaE171M+VmEwdX/LEhtQj6CjT28U/d978v+ekI6O8IEcNUYflUHZTTeNdZ3+wmO70y21xILCpUVIhIcWMLKyl0nUC0ETPsH0Jf5Zcf6BFSJ8itiBgLmQsY5mAoX38GDjJHXa8xwL5W0oeonA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Rqsta/t6; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54025432becso881474e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738845162; x=1739449962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWRkn692xu3fndHgX/PtDqTVcXyCxVQh1w1lZ4iFLSw=;
        b=Rqsta/t6V1nx/SEg5Xj8LMvVz1MYDcpZ6HZduE/Igu82Y27KGCV87WXsmCERQejKUi
         PjsMoSZiNU5wd4pfHKpic/mLuDHweNjVsyuyrznwHjwSdkYgpe6fDsXLxuMq8byktCPg
         q5IZyuUCqZCNMGvnp887A2ljtqUDijNPJ922AU1RCXvS8zqFDhF7NL/gR+ZAo2v2rFZQ
         SA5xz1J1MZkYruqK10hRlmvs7bv4IWJmFWUP5rzK32yPc0nBw8iRof/r78CjJjgh+adT
         N8Bc9sTbKIWIO8ksverufKWD1eNKX8AKz6UOqBie5qjy01go28PGPoKD+iSPznikEtlS
         Zufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738845162; x=1739449962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWRkn692xu3fndHgX/PtDqTVcXyCxVQh1w1lZ4iFLSw=;
        b=OJwyMvCmhOR0RNedTfJpD9WoBIhJx+WQIj4cCmuZZHWpaAHpaJ+W/GWFW+WozrPseV
         AZavnqGSPXqidT9lJk0Ef5KJ41Vyk57wjEdkx6kSeK4nEXZnUfrTpPk4J8xP5wfD78LT
         NPf2JbpnxCGfu0n4lmuc0FAZyerZ+I5Z9offYLl4HwSGG+mLeM0srqKQ1/XuLEsG9ebp
         vhrQdhsGdHIQ141PgpkP+pXxM0uj4DaQiEXU512WhgVCLwh+Yd70v1sQOdwf0nQrwAFA
         fFduKroJ9vnbDOOAxO+nOoLE4kyEXHzpIOeq7htlAzIj0fXX5xRMsMZayaO3kG7tkOUc
         Tkog==
X-Forwarded-Encrypted: i=1; AJvYcCVOjnI6x3NQRVd/L5QA0MniNV7JJLWtLjZuH5pWGqSuar5AoymjPuRjZ86bU5hCMNSwDO7wZo7W5i5u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw40f+RH7H+c7EhKkLhVbB/xSIqAfPO4l1z1vkM08AtPHgazFiN
	pLD5cIfORcIve6Jpp2ZvMzWo8EdZMQb0l+2sKdr2hmcdkeHsthohO51lL3KY4MMLfHW9swfh+dj
	DR/5/770TBc3Kfe+w3cYxj5gNT0P9qKD7q8jWuQ==
X-Gm-Gg: ASbGncupuE+cC4tlRR+LsthgSxGlSHe0XQT65r/jm9TRNprHZrSrNGy8Y+s61CHi5On
	DpOzD6k3qhSi75XXekOjpNJXPxhJidROWSapdtqvu9pBSlsFD6bDyJcbqbgm7q5wLvaMv0qAoKA
	==
X-Google-Smtp-Source: AGHT+IHOno/KZ+CGEGcrQMo7/996cTTP2DtCCzvVKfHVrOt05I06XEuaoQXc/ObdS2ENzYO5jwzIxEyk9zg2zQOd/6g=
X-Received: by 2002:a05:6512:b90:b0:542:19ef:95c2 with SMTP id
 2adb3069b0e04-54405a225f3mr2321112e87.23.1738845161587; Thu, 06 Feb 2025
 04:32:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250203084906.681418-1-apatel@ventanamicro.com>
 <20250203084906.681418-4-apatel@ventanamicro.com> <20250203224436.GA363790-robh@kernel.org>
In-Reply-To: <20250203224436.GA363790-robh@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 6 Feb 2025 18:02:28 +0530
X-Gm-Features: AWEUYZkAxRNuUmU_XWz__RY8mc4lXIPtw0_-vRmYJbJRtQCbjrwJyHKjevCNgIg
Message-ID: <CAK9=C2WTbkT32ERGZBGHyu0R1OSjTpHBswbBvsxygoycfr_2Fg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 03/17] dt-bindings: mailbox: Add bindings for
 RISC-V SBI MPXY extension
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

On Tue, Feb 4, 2025 at 4:14=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Feb 03, 2025 at 02:18:52PM +0530, Anup Patel wrote:
> > Add device tree bindings for the RISC-V SBI Message Proxy (MPXY)
> > extension as a mailbox controller.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml | 54 +++++++++++++++++++
> >  1 file changed, 54 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi=
-mpxy-mbox.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-m=
box.yaml b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.ya=
ml
> > new file mode 100644
> > index 000000000000..8a05e089b710
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yam=
l
> > @@ -0,0 +1,54 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mailbox/riscv,sbi-mpxy-mbox.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V SBI Message Proxy (MPXY) extension based mailbox
> > +
> > +maintainers:
> > +  - Anup Patel <anup@brainfault.org>
> > +
> > +description: |
> > +  The RISC-V SBI Message Proxy (MPXY) extension [1] allows supervisor
> > +  software to send messages through the SBI implementation (M-mode
> > +  firmware or HS-mode hypervisor). The underlying message protocol
> > +  and message format used by the supervisor software could be some
> > +  other standard protocol compatible with the SBI MPXY extension
> > +  (such as RISC-V Platform Management Interface (RPMI) [2]).
> > +
> > +  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +  References
> > +  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +  [1] RISC-V Supervisor Binary Interface (SBI)
> > +      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
> > +
> > +  [2] RISC-V Platform Management Interface (RPMI)
> > +      https://github.com/riscv-non-isa/riscv-rpmi/releases
> > +
> > +properties:
> > +  $nodename:
> > +    const: sbi-mpxy-mbox
>
> 'mailbox' is the defined name for mailbox providers.

Okay, I will update.

>
> > +
> > +  compatible:
> > +    const: riscv,sbi-mpxy-mbox
> > +
> > +  "#mbox-cells":
> > +    const: 2
> > +    description:
> > +      The first cell specifies channel_id of the SBI MPXY channel,
> > +      the second cell specifies MSG_PROT_ID of the SBI MPXY channel
> > +
> > +required:
> > +  - compatible
> > +  - "#mbox-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    sbi-mpxy-mbox {
> > +          compatible =3D "riscv,sbi-mpxy-mbox";
> > +          #mbox-cells =3D <2>;
>
> Is there an SBI node? #mbox-cells could just be part of that along with
> anything else that SBI is a provider for. And we already have the PMU
> SBI binding. It's all one thing, so there should be one SBI node. Then
> we can debate about child nodes of it.

There is no SBI node for any other SBI extension.

The PMU bindings for "riscv,pmu" compatible string is for the firmware
driver (M-mode) which implements the SBI PMU extension not the Linux
driver.

The "title" and "description" of
<linux_source>/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
needs some clarification.

Regards,
Anup

