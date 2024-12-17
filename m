Return-Path: <devicetree+bounces-131608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED639F41A9
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 05:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95AE016C99E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 04:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173751459E0;
	Tue, 17 Dec 2024 04:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Zu8s1fNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFF320EB
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 04:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734409192; cv=none; b=tH/gmKAh+0jfg0PVT4s9hEvS/l0Bhliac7Shuj0mHqFgLPWJwd0Cz3BDjsUbJ+jMwGAc+eXh3p61cGvCl48L5EsEntbnZfb092zAHalZBQscbMGmb1/xl+hEVt95G5xjUQnC19hO5rffN0aDkPym0WjH5Z4nxSF+LNHznorc2Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734409192; c=relaxed/simple;
	bh=QZmqhdVsAT2arRv5BiYh8G4Ca8gJY8A99rpA9VIjAxg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xbg8QlQRZfPXJTkgDXG+azX/FdXxBfr6cc2Beuhu5yVx3s8N8cDUlHnCvqDnFjLC8/hZm7SRa/lVcTa3xrVaWZTgtfGWTphrX0YSQX4moxJ29AkTBu4LjdpPh90OiDodLVcNpXHPLEvq5ksk+SVNZDUzDjj5XMoFHr0tefDB+aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Zu8s1fNY; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54024ecc33dso5232455e87.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 20:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1734409188; x=1735013988; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tMW0UeIvJI+AhemOmgTlEsEldsGeJG60ZjFykMIumKo=;
        b=Zu8s1fNYBZe+DfEScdR9ln5aEODn7OyiEoFr7iwdr33G+GWaMT501IMRrfENrpflCR
         WzJ5KPEVQB559LNJ6G9tDFQl60ybRefKeB0/m+ZATaFo8q+xNHk8HuXzyPAlTHhGB+1e
         eHJcyWJV9A1DeB8Pk8DyYPZGVmToLAYspbduqPJjSc6tDJcU/lDtIgvI+NGYikSJt1gn
         zDh9PmQ31xKTnp1Qaw6U0BFnv+kTXylfH+6lXWKg0VvhtqfIBY+5UCscLKUP4xm6TMsh
         26ZFEEjcE/iU4yIPywjFXYR85U1Zf8xt+vD9zW+SOLUiAmZcScHVFgtXX9ZdZYY2yT02
         wMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734409188; x=1735013988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tMW0UeIvJI+AhemOmgTlEsEldsGeJG60ZjFykMIumKo=;
        b=TbBfQlew5WsU9Xu6TMYSkoy0OENbmFTNB+P7fugrEJ9u8jytMde8GPrzSeQilQhIoD
         77BW1mf0OohsJgyUwjMQM5QC09ub+1KX3F2hZ2HQT/bqPFNgUujAMix0oRJW5O5+lPRZ
         HAxG7Eyoz5burIfqCZDPgzq7bheaqC4dgvitnU/eLIlN25HWShAy+i4AmYCi4rJ9iNmJ
         ANpqK9gCpABQhdbtWBA8mPRo95JP6nUkJzPVR/cZkg9pJrORepym3i/bXNX0iCrgELWI
         VYTZ/2Jb9y5BbqjP46rLhM7nn7XYq6IyKENID757Pru/stUGUrAX03A6ELkI1CNIaf4E
         XiwA==
X-Forwarded-Encrypted: i=1; AJvYcCXM898Uqg5D1wwQb+uGVammLKuK18iTK5YGbbRRQbocIBkynNKzBeUsMKlZ7NJdZJKsfNLXC8tYRrYf@vger.kernel.org
X-Gm-Message-State: AOJu0YyHnfy34PjjvJ20cfpNvMZ37ed1tHRpMyvoL/jVqg2h0GC/Szuq
	jsIOf8OIQjqvYvXu8yXzr6wt7eBye+F0aod/bNwzQuAPL97bJSkfdO6khwBoUELxYEgZPRyPG8n
	tSlcgBXXTPnMuqIo6fkVvOpzQo2H9AvNuXJN64A==
X-Gm-Gg: ASbGncswwtReTWE5Wsqj3ANoNoUUnn9QsU7x5OLcWVodfXxdh/oCfrqZy+lYTo4woeu
	hzjPk/h8Q2kpVgX56J51p3Y/ZbmUtjXLo2TxFP9+g
X-Google-Smtp-Source: AGHT+IE4WGSqZi/gpxX7yhuAHe5iSqT/x1A4bVt45VkgotfxHWWf4b7WOZPPzXtry/pOUrXrcUS5yW49UEDWenDscJ8=
X-Received: by 2002:a05:6512:b8a:b0:53e:3aaa:5c7c with SMTP id
 2adb3069b0e04-54099b72a81mr5673404e87.51.1734409188244; Mon, 16 Dec 2024
 20:19:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216084817.373131-1-apatel@ventanamicro.com>
 <20241216084817.373131-3-apatel@ventanamicro.com> <20241216-untrained-scarce-211d99984416@spud>
In-Reply-To: <20241216-untrained-scarce-211d99984416@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 17 Dec 2024 09:49:36 +0530
Message-ID: <CAK9=C2UtxKm_38SVzUZoe_OSqcU5Q6k87cZvGyPTozkVR8YoFQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/8] dt-bindings: mailbox: Add bindings for RPMI
 shared memory transport
To: Conor Dooley <conor@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2024 at 12:19=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Mon, Dec 16, 2024 at 02:18:11PM +0530, Anup Patel wrote:
> > Add device tree bindings for the common RISC-V Platform Management
> > Interface (RPMI) shared memory transport as a mailbox controller.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  .../mailbox/riscv,rpmi-shmem-mbox.yaml        | 135 ++++++++++++++++++
> >  1 file changed, 135 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,rpm=
i-shmem-mbox.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem=
-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbo=
x.yaml
> > new file mode 100644
> > index 000000000000..8d713ba7ffc7
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.y=
aml
> > @@ -0,0 +1,135 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mailbox/riscv,sbi-mpxy-mbox.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V Platform Management Interface (RPMI) shared memory mailb=
ox
> > +
> > +maintainers:
> > +  - Anup Patel <anup@brainfault.org>
> > +
> > +description: |
> > +  The RISC-V Platform Management Interface (RPMI) [1] defines a common=
 shared
> > +  memory based RPMI transport. This RPMI shared memory transport integ=
rates as
> > +  mailbox controller in the SBI implementation or supervisor software =
whereas
> > +  each RPMI service group is mailbox client in the SBI implementation =
and
> > +  supervisor software.
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
> > +properties:
> > +  compatible:
> > +    const: riscv,rpmi-shmem-mbox
> > +
> > +  reg:
> > +    oneOf:
> > +      - items:
> > +        - description: A2P request queue base address
> > +        - description: P2A acknowledgment queue base address
> > +        - description: P2A request queue base address
> > +        - description: A2P acknowledgment queue base address
> > +        - description: A2P doorbell address
> > +      - items:
> > +        - description: A2P request queue base address
> > +        - description: P2A acknowledgment queue base address
> > +        - description: A2P doorbell address
> > +
> > +  reg-names:
> > +    oneOf:
> > +      - items:
> > +        - const: a2p-req
> > +        - const: p2a-ack
> > +        - const: p2a-req
> > +        - const: a2p-ack
> > +        - const: db-reg
> > +      - items:
> > +        - const: a2p-req
> > +        - const: p2a-ack
> > +        - const: db-reg
> > +
> > +  interrupts:
> > +    minItems: 1
> > +    maxItems: 1
> > +    description:
> > +      The RPMI shared memory transport supports wired interrupt specif=
ied by
> > +      this property as the P2A doorbell.
> > +
> > +  msi-parent:
> > +    description:
> > +      The RPMI shared memory transport supports MSI as P2A doorbell an=
d this
> > +      property specifies the target MSI controller.
> > +
> > +  riscv,slot-size:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 64
> > +    description:
> > +      Power-of-2 RPMI slot size of the RPMI shared memory transport.
> > +
> > +  riscv,db-mask:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Update only the register bits of doorbell defined by the mask (3=
2 bit).
>
> For an untested RFC, the bindings here look mostly fine. I'd suggest
> renaming "db" to "doorbell" in properties etc, since we can easily
> afford the extra characters. Please make sure to actually test the
> bindings next time around, looks like all 3 bindings produced warnings.

Okay, I will fix these issues in the next revision.

>
> General comments like not needing to provide minItems: 1 when maxItems
> is also 1, and not needing a | unless you have formatting to preserve.

Okay, I will update.

>
> > +      If this property is not present then mask is assumed to be 0xfff=
fffff.
>
> Also, things like this should be handled with a `default: 0xffffffff`,
> rather than describing it in text.

Okay, I will update.

>
> I'll give the !rfc bindings a proper review when they appear, but before
> that I'll give the code here a go too - thanks for sending the patches.
>
> Cheers,
> Conor.

Regards,
Anup

