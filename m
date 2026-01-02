Return-Path: <devicetree+bounces-250994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE737CED9F8
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 04:39:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D5E630053EB
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 03:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74EA283FEA;
	Fri,  2 Jan 2026 03:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="pWzM53yM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9870E1A254E
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 03:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767325139; cv=none; b=Q4dkDEgLnGLNIjgEnwlBkAgifpNrW3iT2R4Udy4CrvQ11ZTULn0j4F8QsA0c6ieWty8E3kS9+j1AHfBCPaHMO6Zo2OfskS3IC+sA7Db1RRijAm0NwRzcSvHF+JYsDmqC5AqkNY98sf6FxwfAAYDNfRD3HBVPDxX63RCkjrrnSIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767325139; c=relaxed/simple;
	bh=9MZ+CrLdoqnE3KQixl5VjApaKdzUXFq3dJVwhzoQPos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o9OhS1OiM0L88MhuMC7+CBP8hj8P+/0GwSn6qYJtppkC8aFUjuDiRI6POr2o0Z2KXmQx8ZBoKtWTw1BUGvi/fazC2o2HOPDGLaiIfva8Bq6RISen9yRHwqvUqqyPmknRpIWc8poGYAn+0il2eN7yrsU3fsOhrED843M+jqsNWn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=pWzM53yM; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59584301f0cso2582505e87.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 19:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1767325136; x=1767929936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ekrtQRRLGLXEelflBuetfwrb921FLgqd/BoiKYMjwXM=;
        b=pWzM53yMgI+s3HRRDzVgRGKE8h8JlJhpa9M8Mz0Xg4SDV32tVar5eXJMUIsCN+EzBy
         2aghVh66AUgqlwjBJq/yrRGqLJhgSoUYDnNc21k6oR6N4IYZWTS+DHOUPhHfQM8yw1mz
         hbN7dcwhsnAK0E2dXwIKqdF+Nxearzki7jZ/+mvE9QvNinjj6pvhFBCooTNUe/OIj94f
         5UWVnEAozTlcidTMJqDK4ub8dHId1c1xB0hpwPrZCW0XkTSw10EjZJShCrc//791ECCq
         NMp5SaF6M2GisNZXN314HNCEc9ynnHdM5cjIV9fIg6nPF6R3bnJKjN1hGvHjdSrHpHPM
         nXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767325136; x=1767929936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ekrtQRRLGLXEelflBuetfwrb921FLgqd/BoiKYMjwXM=;
        b=SPpstITPhubKcXJ+atohQMoRR8PowDmgWv9GZNYgqH4hKA8rAXuIj00LYf1nNPAkIp
         tURNutmgReWclRx04Z456F7tyMxgjfyh5cVEZUtQuy4+mM1A3TmhG7XAA7aT7zv0PfyY
         9PnaVJY7ZD0O2hRvDSlUCNT5ylj/dlDa0WLEiJqjyZkFy9ig0k0th7GvdHeqN7Mbn1fl
         NqW4rBEX3lNziiWIGdwbwN7FEqMd1ppDQDraJzGfjLRN8ZKr9w5gzDRBCyMAVKjctbTn
         Lrl/CObRXTG1hLqgtR54ypvWmbjBbijR59qHZcSWlTK0gj/tnUVjBVyOgpaUyM6c5LZl
         hrZw==
X-Forwarded-Encrypted: i=1; AJvYcCUn9fYGkM+NDmy35uQSSYt9NQz3SubrP+SUqGRPheXaYQIbRql2E+D6K4yFoWnmOC/ntdiySWy/eNyM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5JbR3HzcEUO/21QWGS0wBkwelOxKrea3HfzkqkgEYdpb+uZD4
	cp/ggWOgDAEr4z1PUs9Ba+JbPG0Tv44Wq/V2JyhsjfH0+uYNYArS66WIpPKOBK16z575YCHk8mc
	IfRRXlEK7khuz1lq7E0h1Y/29me2xf7Kyxg0EmAJq9w==
X-Gm-Gg: AY/fxX5QoVBABF47ZklEiuPmfTR5tvozdd4U6Rf02HEpuzSQPxJ4309aZgwYkj9sxCi
	MVsc4pYrGUAaVapBlI4OqisMQBkt1t4F953RV4fbLQnYbdU9c7ByaTS0zv9qarUGUHse1PDJt6c
	Mp191O0gdHiOSDYCrRTlbQHgSaFZWRccTHm9sJdchgwcokgxfQosbVadojGxwdqhyJAsMTkY0uj
	xevyW3TiIapO+SrLLwrKLfAXdI6OWYmICsVpqHFHYKzNiBnVpkAYVPkkxe3696oHKdMCTi6DIXL
	/HLLbzPmHCoMAAa2DZoKhh9JG7aJ
X-Google-Smtp-Source: AGHT+IEU0W/Byk2CEQA1P8tKcGxz+ScuXDHfZr5Xxq56aX1LeEsjkOwe93LcHwW5oBNnJ6TEwytUSyZTNOt6CHhVdNw=
X-Received: by 2002:a05:6512:3f09:b0:594:4e9f:98ec with SMTP id
 2adb3069b0e04-59a17d253ffmr15991375e87.20.1767325135062; Thu, 01 Jan 2026
 19:38:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-2-apatel@ventanamicro.com> <20251120163905.GA1484818-robh@kernel.org>
In-Reply-To: <20251120163905.GA1484818-robh@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 2 Jan 2026 09:08:39 +0530
X-Gm-Features: AQt7F2qdQ6mbf-zJ09J9whWJtEKkafZOw5WFR2pX5ragkLNPbOysXfUzX8lh30U
Message-ID: <CAK9=C2Uh5oMERkf9hX7ZH77pOjecx4iHDJNySa+c+frsxfqV1w@mail.gmail.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: Add RISC-V trace component bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ian Rogers <irogers@google.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Liang Kan <kan.liang@linux.intel.com>, 
	Mayuresh Chitale <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 20, 2025 at 10:09=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Sat, Nov 01, 2025 at 09:12:34PM +0530, Anup Patel wrote:
> > Add device tree bindings for the memory mapped RISC-V trace components
> > which support both the RISC-V efficient trace (E-trace) protocol and
> > the RISC-V Nexus-based trace (N-trace) protocol.
> >
> > The RISC-V trace components are defined by the RISC-V trace control
> > interface specification.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  .../bindings/riscv/riscv,trace-component.yaml | 112 ++++++++++++++++++
> >  1 file changed, 112 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/riscv/riscv,trace=
-component.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/riscv,trace-compon=
ent.yaml b/Documentation/devicetree/bindings/riscv/riscv,trace-component.ya=
ml
> > new file mode 100644
> > index 000000000000..7979af3d4174
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yam=
l
> > @@ -0,0 +1,112 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/riscv/riscv,trace-component.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V Trace Component
> > +
> > +maintainers:
> > +  - Anup Patel <anup@brainfault.org>
> > +
> > +description:
> > +  The RISC-V trace control interface specification standard memory map=
ped
> > +  components (or devices) which support both the RISC-V efficient trac=
e
> > +  (E-trace) protocol and the RISC-V Nexus-based trace (N-trace) protoc=
ol.
> > +  The RISC-V trace components have implementation specific directed ac=
yclic
> > +  graph style interdependency where output of one component serves as =
input
> > +  to another component and certain components (such as funnel) can tak=
e inputs
> > +  from multiple components. The type and version of a RISC-V trace com=
ponent
> > +  can be discovered from it's IMPL memory mapped register hence compon=
ent
> > +  specific compatible strings are not needed.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - qemu,trace-component
> > +      - const: riscv,trace-component
>
> 'component' seems a bit redundant.

The RISC-V trace control specification refers to MMIO trace
devices as 'components' hence we should keep the 'component'
name in the compatible string.

>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  cpus:
> > +    maxItems: 1
> > +    description:
> > +      phandle to the cpu to which the RISC-V trace component is bound.
> > +
> > +  in-ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    patternProperties:
> > +      '^port(@[0-7])?$':
> > +        description: Input connections from RISC-V trace component
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +
> > +  out-ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    patternProperties:
> > +      '^port(@[0-7])?$':
> > +        description: Output connections from RISC-V trace component
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +
> > +required:
> > +  - compatible
> > +  - reg
>
> Is no in or out ports valid? If not, you need:
>
> anyOf:
>   - required: [ in-ports ]
>   - required: [ out-ports ]

Trace component with no in or out port is invalid
so I will include the above "anyOf" snippet in the
next revision.

>
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    // Example 1 (Per-hart encoder and ramsink components):
> > +
> > +    encoder@c000000 {
>
> trace@...?

Okay, I will update.

>
> Node names should be generic and a given compatible should only have 1
> possible node name. (Yes, we failed to do this on Arm coresight stuff.)
>
> > +      compatible =3D "qemu,trace-component", "riscv,trace-component";
> > +      reg =3D <0xc000000 0x1000>;
> > +      cpus =3D <&CPU0>;
>
> blank line between properties and child nodes.

Okay, I will update.

>
> > +      out-ports {
> > +        port {
> > +          CPU0_ENCODER_OUTPUT: endpoint {
> > +            remote-endpoint =3D <&CPU0_RAMSINK_INPUT>;
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +    ramsink@c001000 {
> > +      compatible =3D "qemu,trace-component", "riscv,trace-component";
> > +      reg =3D <0xc001000 0x1000>;
> > +      cpus =3D <&CPU0>;
> > +      in-ports {
> > +        port {
> > +          CPU0_RAMSINK_INPUT: endpoint {
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +    encoder@c002000 {
> > +      compatible =3D "qemu,trace-component", "riscv,trace-component";
> > +      reg =3D <0xc002000 0x1000>;
> > +      cpus =3D <&CPU1>;
> > +      out-ports {
> > +        port {
> > +          CPU1_ENCODER_OUTPUT: endpoint {
> > +            remote-endpoint =3D <&CPU1_RAMSINK_INPUT>;
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +    ramsink@c003000 {
> > +      compatible =3D "qemu,trace-component", "riscv,trace-component";
> > +      reg =3D <0xc003000 0x1000>;
> > +      cpus =3D <&CPU1>;
> > +      in-ports {
> > +        port {
> > +          CPU1_RAMSINK_INPUT: endpoint {
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +...
> > --
> > 2.43.0
> >

Regards,
Anup

