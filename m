Return-Path: <devicetree+bounces-249171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AAACD9A4C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:31:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C02F730115C7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDD7341653;
	Tue, 23 Dec 2025 14:30:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB28734104E
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766500239; cv=none; b=mBwWQD410TwRnbhlxA1HRw52brU9cEAW4Xb0y+J4PPj5Q6hkfprNT2gnJfESHP4uXgi+uf9I+oaDH6fxqoW06eN+/Ze1GAGtvl6NQQW1o6vL32Ir5DGgwrUyjLD2hUTAEu1T6r7qr78i2vO28shXp5bwwe1MLKJXvtcDjbRhOuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766500239; c=relaxed/simple;
	bh=xRHgi78/9TJa6RE/uf2fUH6wEG9F+YXSAx9KnXSZTx4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bmmdZmsQ4aBLvOL6qeqRAB6oLvqEiE6Agsup2VRF80mk3tuE4OhekB+j4fsz/cDb/Lm5+QwPE0RppZOrLC3/bmfu8mG5IMz2auBckylXH9dOWz0zQAeMcPs+j5w/WheZK82yv/eY+x+0IPd7pvWnFP5T7z6uFCwxSGnObtMAu6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso2703525241.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:30:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766500237; x=1767105037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9KRWI7ek4fDakJL55ErZIsshqTMY6fNujiPa5ZpWhI=;
        b=Pbbh1KuNr5/bFlFpaCYHr62dOalyMm+h1WHnoxXLoETJKT+mlFxMyVp6OBts1uIToI
         MPFdCaUBHkDGPzlbyW5lyucQasWZLrU2xVRae2geoOa/vpCweZuQe36IhLF8v86FjPXn
         IJMFoOvZvUUm7UpLBcYyn4ymbAdkXxwkZIicVb/aVonGfWBdhBuGsb4i3R1lUGxhYAmh
         pJmbmRKK1fK1skTzdwyWl00IJXWSId21a5PUwY/u6i+ZGmcI5MIcSX1+vY5wxMJRinyS
         f9YVCWE6aTBL3gtK9xRxi072ZKgE/yqMfgCWUUHfwvBhSUvjOo7ek4+uefQbFUr8Q9xL
         RHxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrWV4ZGEVFK5ZJxVsqxhXqjXfznqj5E8kXoQjvKWV11RFZJSbPXAwIxh2W32JlvoUX8LhQI2o0LviD@vger.kernel.org
X-Gm-Message-State: AOJu0YzaBd57eixlvjLMIVvtHSqo/pWwpH9FQaR1ZNoLuvXNkaOoM/Oh
	1LCFclHmuSVAiiGScFyhdYjDsBQ3jzQxM4mhMeoTxC7XY9Pw3//aCyGvR5Yr/wUwx1s=
X-Gm-Gg: AY/fxX68ug5LBFVynyp+SeRIjiaygan9UbyBPNV2Akwo7phX1idl9ne8EdFj8RGhpkg
	UteLmUcdpQL33WAmU6JWCuIPil//ZP7OILFL/+WScPhVnSEOtjl7m6AM86GcKDO2YDhC3jk+kGD
	pJrnexsX5dQsJJHx4f4dylSdr8AZJpOGzU4F5B1saSA3ORVJ8BzvDQ5vnNTWf+O23U6o0yec+Pe
	dVgQa4MqZLs/mynjvUAxB8/dewNQfsttzv9oZHJb/WrTfyJHEBrW5tBJFXtAzbH6fm9/3R9vaZS
	VK5XSCBJIckdYBF//3rZEflJ+iy4Tjt6XPJoOhqhzO0BIXSY4j5UTb6DDQqehNDgUFzZS7sUFwE
	nGQavKw6xGdA/1UBTmV8HJY3fXiFmxfYqxHsStopeUlHcC45gD4RRzPdj89YUYJR1E10HPfJgTc
	PI4uJROELRArhmKY+IW2F5NiDqN0FwtxVbkOQbZoVgEkUC74Ctxu/X
X-Google-Smtp-Source: AGHT+IEB+bj+tr1qJ10I+LLBTbzVGgxtTCSUZqkUPTUGpBIVkigTrlDjIG/B4FmbhvTKOZ06FN8qsA==
X-Received: by 2002:a05:6102:d87:b0:5b2:d28a:8937 with SMTP id ada2fe7eead31-5eb1a663bb5mr4799322137.12.1766500236607;
        Tue, 23 Dec 2025 06:30:36 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9434176bf72sm3961724241.10.2025.12.23.06.30.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 06:30:35 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-55b24eedd37so3509606e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:30:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWJhSYwU6+y6B6zWmL9iFcxXA7DYPBOjlY7v4Yw18rBWHLhnICZvYrsNXeb4fnHb+X1ZpCWbZV7E4XM@vger.kernel.org
X-Received: by 2002:a05:6122:4f97:b0:557:c697:a30c with SMTP id
 71dfb90a1353d-5615be24746mr4492855e0c.15.1766500234851; Tue, 23 Dec 2025
 06:30:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20251201124911.572395-3-cosmin-gabriel.tanislav.xa@renesas.com>
 <CAMuHMdV=EW4YbEBiXH2p0SeC5Kw-YmYWuQwsudpGgM63pgqcfw@mail.gmail.com> <TYYPR01MB1395515AF65F8522AED6B591885B5A@TYYPR01MB13955.jpnprd01.prod.outlook.com>
In-Reply-To: <TYYPR01MB1395515AF65F8522AED6B591885B5A@TYYPR01MB13955.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 15:30:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU1+-o7AOjdJe7yCgU+4x3Kn6d8B5P-EWk6P5_qXsCOZg@mail.gmail.com>
X-Gm-Features: AQt7F2qE2AtxEG2BOxgdP_v34Yp6lChJ9ZLcTByA9b4yF0Q7ASGmqWvId4Nax_Q
Message-ID: <CAMuHMdU1+-o7AOjdJe7yCgU+4x3Kn6d8B5P-EWk6P5_qXsCOZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dmaengine: sh: rz_dmac: make register_dma_req() chip-specific
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	"dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Tue, 23 Dec 2025 at 15:08, Cosmin-Gabriel Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Mon, 1 Dec 2025 at 13:52, Cosmin Tanislav
> > <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > > The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs use a
> > > completely different ICU unit compared to RZ/V2H, which requires a
> > > separate implementation.
> > >
> > > To prepare for adding support for these SoCs, add a chip-specific
> > > structure and put a pointer to the rzv2h_icu_register_dma_req() function
> > > in the .register_dma_req field of the chip-specific structure to allow
> > > for other implementations. Do the same for the default request value,
> > > RZV2H_ICU_DMAC_REQ_NO_DEFAULT.
> > >
> > > While at it, factor out the logic that calls .register_dma_req() or
> > > rz_dmac_set_dmars_register() into a separate function to remove some
> > > code duplication. Since the default values are different between the
> > > two, use -1 for designating that the default value should be used.
> > >
> > > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

> > > @@ -1067,9 +1068,18 @@ static void rz_dmac_remove(struct platform_device *pdev)
> > >         pm_runtime_disable(&pdev->dev);
> > >  }
> > >
> > > +static const struct rz_dmac_info rz_dmac_v2h_info = {
> > > +       .register_dma_req = rzv2h_icu_register_dma_req,
> > > +       .dma_req_no_default = RZV2H_ICU_DMAC_REQ_NO_DEFAULT,
> >
> > Since this is the only remaining user of RZV2H_ICU_DMAC_REQ_NO_DEFAULT,
> > and this structure does specify hardware, perhaps just hardcode 0x3ff?
>
> In my opinion we should let the macro live in the ICU header as the
> value is more tied to the ICU block than to the DMAC block, even if
> the DMAC driver is the only actual user. But if you think this is
> worth changing, I will change it.

I have no strong feelings about this.

If it is really more of an internal ICU thingy, an alternative would
be to remove all public *_ICU_DMAC_REQ_NO_DEFAULT definitions, and
just pass -1.  Then the ICU drivers become responsible for filling in
the appropriate default value.

> > > +};
> > > +
> > > +static const struct rz_dmac_info rz_dmac_common_info = {
> >
> > rz_dmac_classic_info, as this is not really common to all variants?
> > I am open for a different name ;-)
>
> rz_dmac_generic_info? I don't have a strong opinion, but I agree that
> common denotes that it would be shared across all variants, which is
> not the case.

Fine for me, too.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

