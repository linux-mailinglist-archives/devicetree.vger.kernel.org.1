Return-Path: <devicetree+bounces-227004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 457C3BDD9EB
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 11:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CBB03A6519
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 09:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF3930B51C;
	Wed, 15 Oct 2025 09:10:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822FD30AACE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 09:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760519426; cv=none; b=QJI8pHQrf5nV1WQ5XwkG4M+xu1zP3NyyX3ykhacewJGjwLwyzYpHg6BBF9XNLys21VoxZswHpVS2hi8JW0KCc0wkZ74JjQkit0+mZgeHJK18IFMGewbPcGntr0o4ivlSycbgnVG/4zlVD4tCZPzz8hlTXBtcbV5ogQGMhHMvIaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760519426; c=relaxed/simple;
	bh=nozLRYQe8UdUB+yAdcgrpHH0NZNgUwItZr/cn1D4vEc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hGD/ZChsAdLXP4PYxIQjp1ocYfyQHB5paPXDfHFGqkSfv19jG/Xi5lPhexAsHh/PDG2Aqpzmh2hrK7yJF3o4yue4lCFgv0UDKPMcSWGAAVyd00+XOYwCRayLT2+cOaPoO0kJqDSztxUc8UAMTqktqO6TZcwkcGlZCpgsVoxhFME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5a46c3b3a5bso2815671137.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760519423; x=1761124223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJmRJlu9H8wURlz4KPU2uyoao6Y2zyTwzoAnkPT6lmM=;
        b=LPJd289ZD+fyrYAyfIaz3iy+Ccc4gQ1zXlpSOj6blde5UB8dBwxM/WNOpiCH53mSXJ
         dAbwSAUzvQC73QinNOVwUEq51ikqXBSwglELp+NO74AfLnDrIRQJjQl3CahBR0GHJxCA
         6vK/9L8twrzUpI+gJEIqTcPEHJOSruoO3s98l3Zo+t0Lgppk0Opvg0HWGG5SkxFsStCB
         7ztrWgAPYpCJJLjz39CaiIllggTgpQVReKQ23aVyqxwHOKNfmr8r45Q42SLaV6IKG12S
         wR7UQlaeam2/WoVEGY4IL34IJkWlBlE6NTUxd5tkYqlRhhTFbPEAJyiOa6l+fkjVmm8e
         UKYg==
X-Forwarded-Encrypted: i=1; AJvYcCWjxqDZgkFeUCAEhgcenDVh8Q2n7BMPw8EdWj8aNb8q0g+peLXWBTByl9C6Xzm79h7mQqKx7f3FMzMA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Vvb/0gSNayiX9qCabMLT2BKpIkIYNKGLBWPXNRo7H6ou4Ty1
	ovCYmQKE7PyvDj9oSDR/Gk8QIW4oq2HuEaFcozufhklignMW+563dehFviJ/8nQ9
X-Gm-Gg: ASbGncvOC/lpEF93UwKjrrYkeMvEl20EW2RoCHiYo9uyhCp4LV4eE+fUj4+GQn7aZh+
	mq/PFeHgKT03TKZE6YoLsYiiSAy6HD+LvXTT7uWpyeBwxhAXtJ8tAEKoLDuYTdtYptHG3k530Rk
	2wqi7xYJLSwRdHeASTHE1n+sSS/VyiZubsWuEPINUnBxI2bmKS52KniQ8gYbg4KctNHBAHslHn3
	6nL9WNg9YXsWmkeAG6fa+VzWwG4NisYR1gbatc+APo06ZQqxSDvLz3HxegNjFDekMHLLzPiriQX
	VgTRcnKlGDB9t+jLGpoLOT/u2SlYmAAvzGtyUoRWs83hlDbhNFNArfhRBlp5sT68A8+3gx8fNx8
	o6t3LE2nqS+TzrYwuLy4+uTLQIWwDqMBorqi1n0d7+KdnfGZuZ0Ud0h+0DZOqcDVQCTyiziEx7Y
	FfkuELdFZCpeHHoRd5DrMAfiBw
X-Google-Smtp-Source: AGHT+IHv4Fb4BuVwFu8Jhv3JpkU7g4hIveOQzcvTG26JiCMtX2laI6HnBwvlxfv55Ws2AvrOq5QLag==
X-Received: by 2002:a05:6102:1492:b0:5d5:f8f2:152c with SMTP id ada2fe7eead31-5d5f8f2199dmr7689536137.1.1760519422949;
        Wed, 15 Oct 2025 02:10:22 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5fc7126c7sm5338546137.5.2025.10.15.02.10.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 02:10:22 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-8e401b11bfaso1773179241.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:10:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXVvGO2zUCpm/v4cb0pucPuys4VoIc/Ghp2P3aA3rpUTikbrFJJfr/N1eekroJBKG8KOJzPO+E19Tmz@vger.kernel.org
X-Received: by 2002:a05:6102:54a7:b0:5d6:df4:4a9c with SMTP id
 ada2fe7eead31-5d60df44b27mr3945077137.38.1760519422390; Wed, 15 Oct 2025
 02:10:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013190210.142436-1-marek.vasut+renesas@mailbox.org>
 <c65950f5-010a-4d5d-88d9-60697eeddb46@imgtec.com> <f4e1897c-7073-4ab0-92b3-6f7d69382825@mailbox.org>
In-Reply-To: <f4e1897c-7073-4ab0-92b3-6f7d69382825@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Oct 2025 11:10:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVpb-0TJ4AoqjAGbdErw65193+j1-HbXCyvvwf8MT6yLQ@mail.gmail.com>
X-Gm-Features: AS18NWC0NtvnYK5U9YXJyT8uG9UQFbJEFgUG9T-bnGHWW0_GW4mwUzABObId4Tc
Message-ID: <CAMuHMdVpb-0TJ4AoqjAGbdErw65193+j1-HbXCyvvwf8MT6yLQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: gpu: img,powervr-rogue: Document GX6250
 GPU in Renesas R-Car M3-W/M3-W+
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Matt Coster <Matt.Coster@imgtec.com>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <Frank.Binns@imgtec.com>, 
	Alessio Belle <Alessio.Belle@imgtec.com>, Alexandru Dadu <Alexandru.Dadu@imgtec.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

On Wed, 15 Oct 2025 at 00:48, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 10/14/25 1:52 PM, Matt Coster wrote:
> >> diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.y=
aml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> >> index c87d7bece0ecd..c9680a2560114 100644
> >> --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> >> +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> >> @@ -13,6 +13,12 @@ maintainers:
> >>   properties:
> >>     compatible:
> >>       oneOf:
> >> +      - items:
> >> +          - enum:
> >> +              - renesas,r8a77960-gpu
> >> +              - renesas,r8a77961-gpu
> >
> > I think this can just be renesas,r8a7796-gpu; most of the devices in th=
e
> > dts for these SoCs appear to use the same pattern and the GPU is the
> > same in both.
>
> Not really, the 77960 and 77961 are different SoCs, that is why they
> each have different specific compatible. Of course, most drivers match
> on fallback compatible, since the IPs are mostly identical, see this:
>
> $ git grep compatible.*7796 arch/arm64/boot/dts/renesas/r8a77961.dtsi
> arch/arm64/boot/dts/renesas/r8a77961.dtsi:      compatible =3D
> "renesas,r8a77961";
> arch/arm64/boot/dts/renesas/r8a77961.dtsi:
> compatible =3D "renesas,r8a77961-wdt",
> arch/arm64/boot/dts/renesas/r8a77961.dtsi:
> compatible =3D "renesas,gpio-r8a77961",
> ...
>
> $  git grep compatible.*7796 arch/arm64/boot/dts/renesas/r8a77960.dtsi
> arch/arm64/boot/dts/renesas/r8a77960.dtsi:      compatible =3D
> "renesas,r8a7796";
> arch/arm64/boot/dts/renesas/r8a77960.dtsi:
> compatible =3D "renesas,r8a7796-wdt",
> arch/arm64/boot/dts/renesas/r8a77960.dtsi:
> compatible =3D "renesas,gpio-r8a7796",
> arch/arm64/boot/dts/renesas/r8a77960.dtsi:
> compatible =3D "renesas,gpio-r8a7796",
>
> I can turn the first entry into renesas,r8a7796-gpu to be consistent
> with the legacy 7796 name for 77960.
>
> Geert ?

Please use "renesas,r8a7796-gpu" for R-Car M3-W, and
"renesas,r8a77961-gpu" for R-Car M3-W+.

> >> +          - const: img,img-gx6250
> >> +          - const: img,img-rogue
> >>         - items:
> >>             - enum:
> >>                 - ti,am62-gpu
> >
> > You also need to add img,img-gx6250 to the appropriate conditional
> > blocks below here for the number of power domains (in this case, 2) and
> > clocks (that's more complicated).
> >
> > These older GPUs always require three clocks (core, mem and sys), but
> > it's not immediately clear from the Renesas TRM how these are hooked up=
.
> > I can see three "clocks" connected (fig 23.2 in my copy, clock details
> > from fig 8.1b):
>
> Which revision of the RM is that ? There should be some Rev.M.NP at the
> bottom of each page.

Rev.2.40.

> >   - Clock ZG=CF=86: Appears to be a core clock for the GPU (3DGE). That=
 would
> >     make it our "core" clock.
>
> This should be 600-700 MHz clock on M3-W , so that sounds like a GPU
> core clock.

Agreed.

>
> >   - Clock S2D1=CF=86: Appears to be a core clock used on the AXI bus, m=
aking
> >     it our "sys" clock.
>
> This should be 400 MHz AXI clock, but wouldn't that make it "mem" clock
> ? I think this might be the clock which drives the AXI bus, used by the
> GPU to access data in DRAM ?

Agreed.

> >   - MSTP ST112: Appears to be a whole module on/off control of some
> >     description, and definitely doesn't align with the missing "mem"
> >     clock.
>
> Maybe this is the "sys" clock, since it toggles the register interface
> clock on/off ?

Probably.

Note that both ZG=CF=86 and S2D1=CF=86 are always-on.
MSTP ST112 is the only gateable clock, and it is controlled through
the PM Domain and Runtime PM.

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

