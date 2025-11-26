Return-Path: <devicetree+bounces-242383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2ECC89CC7
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9ACF24E54ED
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91FA328252;
	Wed, 26 Nov 2025 12:31:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F28322A00
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160285; cv=none; b=b8s0udHZUwwQnk6s1VVkZW3+z+2tPWiUyKr0LAF7sxWSXTymQ0CIarr1woVOmCf47P9IMVuwYQetQa/ZWa5X44ddoSQdEDdtVE/JklQ1NCmewq3TK8TfWTbBU4jvVEsUsSyoI8vnZRqrhCNzFHkqmQNlX3WP+85hYjxTfr57Zw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160285; c=relaxed/simple;
	bh=n72+LqBciqZ8qXv8XKxHQzFcQ/xEgnqQaVpiyP9J89U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SszAOJlfsmrFS0xmRjHikZtqi8C11Rhr0Q3a3Ox+TJBCksvOBvcNfDqkycprgF8aMPtPhOPM8xYRy9Z6EQbavnBmCppHzG3FuooB/CZ5bSi/F5XxAv0ObT76aYoqh/CRCDuta7Msxe9eK+MK+2qLKUrd80IddxjTU6jMPEYn/gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5599688d574so1814003e0c.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160283; x=1764765083;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IebHBTGSBZDf2bN+LDoDCtbDaHZ5HR00nyG3SMmY0/Y=;
        b=dAaEJ2w7pslHdsDExKoqtYQIKWvi6LQd8qEkTofcCHwzOc4NbiEZGazESdJU08vd1K
         jmOlYydB5SPEsFdBI8BaC6VDWQux8UOlMOW8xuFa4QAdEw0rckSdnuQDyskbwGHVrcS5
         MyA0YVi8QRKEaAIIkLNAzs9oXTVlW8ychdR05u5BtmJazGnOvRCtlAQ50T3gOMo3YOT1
         UTpvj+pwBRtv5H7wx74SFmdaA4ehQpKBMUrtQIoHMpqJC6oX6Hvpa5ElW9u9vsfjdfzJ
         aHlCPlMTrHqdUlmWCUoBm52YSSqpiPp4i/+6w7UQm4FMomnvF5oAh8goMMab0gc8QnBc
         SL/A==
X-Forwarded-Encrypted: i=1; AJvYcCX6eoOQMo8UABN74ekQlQ/Gj8hqsxp3otKrZbwlc8R/SZkqmfmBRcZmBHQkI/gSVXLT0iuChn6Dnv3C@vger.kernel.org
X-Gm-Message-State: AOJu0YyK9OllUx3qJImyW8tzQcsxW1eeQpjIYzhIMT9uHmGFkOSm+BeY
	py204kZn6r3BOM/S2v4TW/Fr+hEJwGPBPUveIVPVrlZrFUaem/J6O2fgv84Q27LG
X-Gm-Gg: ASbGncuxInbNn8zhQGTkF7SOxDCfM+2U6SpAQiTroorI/RwclfLamoUzxMOINo1AKfJ
	Q/JsGaVbSCxWq7IySLllKgHswPqp3SzvKPkv69WA/qDIhnv9cgOTWkFbrYJ+9WBannBvv+pNIrE
	boCKn2iCE2orsMPRMnOU4AsF8Y7uoboXUPx4bxC7qTGe6zx0tYBVw2rTbgbR6qU61tNObPCf3FR
	Xtv06WRIB0sAgxgACCuXYk+Yc0UBwDyGFCKUkWH63/gebN5f1D4Zf/TIQOZxSFgAYIID3rmNCc5
	12XjdVR5gCWZ7Zd6IZ+EYEHeSmC1zGz/y/SbVNl8rwcVjeIWGysY16romrDX6YlgAMO3k4C3RXv
	aU1DfEl/dR4PlcbSFh0ty9TjfJMH2OWKbTHUlHlCO1iEKhehPTFuiqwN8VqS2pGvhbp0tqPQUbJ
	AVFhctVPc3fiAvuVv5b3aCqpPtZeZDJzqbOSzQBBbRQPHleAuQ
X-Google-Smtp-Source: AGHT+IFQ07E9Vni01/p+g/WDjZ0MgASfXdl8ILuf0q95i7OBScL4IPPEnd4E1/EgIQqxOd+yTxCiGg==
X-Received: by 2002:a05:6122:3c43:b0:54a:721a:e4db with SMTP id 71dfb90a1353d-55b8eefedb1mr6515817e0c.3.1764160282831;
        Wed, 26 Nov 2025 04:31:22 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7a07e1sm8388218e0c.15.2025.11.26.04.31.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 04:31:22 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-9352980a4f2so1947376241.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:31:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXC+bxN5Hpi3Rbyy6/Qh0DI5wrcY02rBXlkgcc0gsC5UgEi+URxVbYAE5XBRJX/bH61KZiyunf+lMD3@vger.kernel.org
X-Received: by 2002:a05:6102:b06:b0:5df:8f4:61e6 with SMTP id
 ada2fe7eead31-5e1de4306d4mr5874535137.32.1764160281205; Wed, 26 Nov 2025
 04:31:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com> <CA+V-a8vDzG3_CKUPRLmFv9Z3qjqcgAp8vhpBHkGs=EA3o3Zxkg@mail.gmail.com>
In-Reply-To: <CA+V-a8vDzG3_CKUPRLmFv9Z3qjqcgAp8vhpBHkGs=EA3o3Zxkg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 13:31:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUM8hN0xM2Q-Y_oGb+u=+ONabO-M-Wg+_5A-SStHm4pdw@mail.gmail.com>
X-Gm-Features: AWmQ_bmlFD-VTRpd9QpSsyXpi_cI3W3wmlQ-DQEzT-MkMb8_VH0lcb9MT1A0uEc
Message-ID: <CAMuHMdUM8hN0xM2Q-Y_oGb+u=+ONabO-M-Wg+_5A-SStHm4pdw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/V2N SoC support
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Prabhakar,

On Wed, 26 Nov 2025 at 13:11, Lad, Prabhakar <prabhakar.csengg@gmail.com> w=
rote:
> On Wed, Nov 26, 2025 at 11:38=E2=80=AFAM Geert Uytterhoeven
> > On Tue, 25 Nov 2025 at 22:45, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Document the RSPI controller on the Renesas RZ/V2N SoC. The block is
> > > compatible with the RSPI implementation found on the RZ/V2H(P) family=
.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >
> > > --- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> > > +++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> > > @@ -12,6 +12,9 @@ maintainers:
> > >  properties:
> > >    compatible:
> > >      oneOf:
> > > +      - items:
> > > +          - const: renesas,r9a09g056-rspi # RZ/V2N
> > > +          - const: renesas,r9a09g057-rspi
> >
> > I am a bit intrigued too read that the initial value of the SPI
> > Transfer FIFO Status Register indicates 4 empty stages on RZ/V2H,
> > and 16 on RZ/V2N, while both variants have a 16-stage FIFO...
> >
> Both SoC variants report a value of 0x10 for the RSPIm_SPTFSR register.
>
> Rev.1.20 for RZ/V2N mentions, 16-stage
> Rev.1.30 for RZ/V2H mentions, 16-stage

My RZ/V2H Rev.1.20 says 4h (Section 7.5.2.2.19 SPI Transfer FIFO
Status Register (RSPIm_SPTFSR) and Table 7.5.2.1 List of Registers)

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

