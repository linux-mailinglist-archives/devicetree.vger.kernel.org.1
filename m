Return-Path: <devicetree+bounces-249142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 648E3CD9796
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1E83300E3FA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B9073B1BD;
	Tue, 23 Dec 2025 13:45:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DC0A945
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497535; cv=none; b=UN9rtQTViI+BpKTy6WvibZRLbGsh+vUuRG+uuu+Z6h/oXw7g/H/BE90bRe1LNlDLr5zhRRYQqxBZ3bhJXlAX16360mxzoTnZFTGdiBhZkE76jYmXz5Lh5pSq4uLSruClmwZefEycCou0/BBTdplVrwuGDSG1hHw50nedp5HX//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497535; c=relaxed/simple;
	bh=+vgDq4lQzhcJ/PmjToagAIXB+7UjAyqauVh2qc4S2YQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a6dll5qQFN0mcRWDg30bdjQK11goB/TF8Fn/B03MRpQxDUcgJFhkZQ3PcOtIa4Wiz0W4/OkLlq+g/qsnT4CTOAuC3Qw84Jtdo8UCV7HRG6H6xvTc/RalG2HlyrROH0MVE4WKzp3Z2YOmTTSv/hmMUVd0/UPgb7gepNsxu/NCdzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b7277324204so785361166b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:45:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766497532; x=1767102332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U258/dz1ml2wi6XM7goSRHkqu3ww0wtWLKndOq5PViQ=;
        b=drz7rlFsJyt967p2wdRtwvTJbFMFiKn1spcT2tZBh8y+fLuHnmjGMP/RdFr+FA/UQf
         EEyRtDC+Z5ttBCe5ibcA/rMMrneNACNJtVyYylzcuzM/Mw04lEZSiCkbMclpNnVM4NYJ
         dJfHbN/u++6LU6yloZwMnHpo77FxMsD7iXLB76C1eRhGlRYE4ydKFLw/E6wrFvuF1wIX
         giJ534F2aU4aHd/74RmEE4bJPOACSHqlX5Xdo7G9phHrd/ERQEHUmryD6rJ85/jtMQFx
         5XaKlTXHF+bWcDHGcPxmTL+v57B9gg1OgbTWTcDxv+1W1KPPzxT2gJF2FFDuaH4cNWfE
         EBUw==
X-Forwarded-Encrypted: i=1; AJvYcCV3e1NqftyJSngzweCdjN5xR+jYV8IN7EA4T6g8vBgNkuF8oOUlq3ErlUXxZ1ZVCWSJx0/0psghyQaV@vger.kernel.org
X-Gm-Message-State: AOJu0YzM3IHP3F5sqaXrh9eJBhJ4Rt+mP5BgoWa/2YIA709K0g4onwwF
	41x4zSQJ4qCiU2rBP4aVVqE/l7YO5ecDLQDmgMVOgZ5B/TKrWMmce2g0vSrT7X0JCo8=
X-Gm-Gg: AY/fxX7Uaaf+PQtDDozDQ+nWw377xLq15/xLAmKzF3+DAlgWGkTC21IGjazvUPRylAU
	uojhBdmBqB0Xg7jis1fbyZmml660E57Tem7qO9F1FFffmqKk4M44vcDRf4d0AQFsYhBk7vouzg3
	c1KEHQAvR0lEdR5OhcH23NKkkaqIoRPgCuuotT5oWgit9jaJxEbr5G2tfmolouHh30mbCnH0dBg
	PQVXC2ltKVryXl21P9FV13GKKiaovjNjaJtR5va+B2MswjrTgazCoHZwbriy8+F6hd4WyyNtQrX
	DWg4z2dXY7Yv55nuAewXZVTGPJTVcvAQV2S2g7q4tdkDbR46PuUMp/GSstcQQSzD2velDLfYExT
	4mSSPA6iEQMnDedSD1A6zdSJpjd9P+ze1gp4vOBVRxTtOm8jitn5b3/3gXLQwQxxaETPM+yJBjf
	0fO6YLQ3SERr/cpAfiS4s6JO5dYMS6153ZKL21qmGQ5OThDmZX
X-Google-Smtp-Source: AGHT+IFXEaNaw8HLlS8k4O72eVSU1LZfysP7Fqm7viKkQod0/pFTSUlAz/F+ybgh2V/n7NzHzrhwcA==
X-Received: by 2002:a17:907:9307:b0:b7a:1bdd:3314 with SMTP id a640c23a62f3a-b80372aa03dmr1238150466b.65.1766497531626;
        Tue, 23 Dec 2025 05:45:31 -0800 (PST)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f09149sm1396417866b.47.2025.12.23.05.45.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:45:28 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b61f82b5fso6546674a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:45:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTMMIGppVytMJrJ0gfiU9KoHQIdvK8YRCsbb43da4GOJtU1aKjzxeANFJPmVHqjQ5PAOe3CqxojTr+@vger.kernel.org
X-Received: by 2002:a05:6402:1e90:b0:64d:4894:776b with SMTP id
 4fb4d7f45d1cf-64d48947948mr7064838a12.27.1766497528286; Tue, 23 Dec 2025
 05:45:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:45:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV=EW4YbEBiXH2p0SeC5Kw-YmYWuQwsudpGgM63pgqcfw@mail.gmail.com>
X-Gm-Features: AQt7F2oX7CMa_8FU9LCOCZqrziankMeMXgDYxBV-ZhAtoMZJ9gqMth9qd4a31zo
Message-ID: <CAMuHMdV=EW4YbEBiXH2p0SeC5Kw-YmYWuQwsudpGgM63pgqcfw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] dmaengine: sh: rz_dmac: make register_dma_req() chip-specific
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 13:52, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs use a
> completely different ICU unit compared to RZ/V2H, which requires a
> separate implementation.
>
> To prepare for adding support for these SoCs, add a chip-specific
> structure and put a pointer to the rzv2h_icu_register_dma_req() function
> in the .register_dma_req field of the chip-specific structure to allow
> for other implementations. Do the same for the default request value,
> RZV2H_ICU_DMAC_REQ_NO_DEFAULT.
>
> While at it, factor out the logic that calls .register_dma_req() or
> rz_dmac_set_dmars_register() into a separate function to remove some
> code duplication. Since the default values are different between the
> two, use -1 for designating that the default value should be used.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

You can find a few non-functional nits below...

> --- a/drivers/dma/sh/rz-dmac.c
> +++ b/drivers/dma/sh/rz-dmac.c
> @@ -95,9 +95,16 @@ struct rz_dmac_icu {
>         u8 dmac_index;
>  };
>
> +struct rz_dmac_info {
> +       void (*register_dma_req)(struct platform_device *icu_dev, u8 dmac_index,
> +                                u8 dmac_channel, u16 req_no);

icu_register_dma_req, to make clear this is ICU-specific?

> +       u16 dma_req_no_default;

default_dma_req_no, to avoid confusion between literal "no" and an
abbreviation of "number"?

> +};
> +

> @@ -1067,9 +1068,18 @@ static void rz_dmac_remove(struct platform_device *pdev)
>         pm_runtime_disable(&pdev->dev);
>  }
>
> +static const struct rz_dmac_info rz_dmac_v2h_info = {
> +       .register_dma_req = rzv2h_icu_register_dma_req,
> +       .dma_req_no_default = RZV2H_ICU_DMAC_REQ_NO_DEFAULT,

Since this is the only remaining user of RZV2H_ICU_DMAC_REQ_NO_DEFAULT,
and this structure does specify hardware, perhaps just hardcode 0x3ff?

> +};
> +
> +static const struct rz_dmac_info rz_dmac_common_info = {

rz_dmac_classic_info, as this is not really common to all variants?
I am open for a different name ;-)

> +       .dma_req_no_default = 0,
> +};
> +
>  static const struct of_device_id of_rz_dmac_match[] = {
> -       { .compatible = "renesas,r9a09g057-dmac", },
> -       { .compatible = "renesas,rz-dmac", },
> +       { .compatible = "renesas,r9a09g057-dmac", .data = &rz_dmac_v2h_info },
> +       { .compatible = "renesas,rz-dmac", .data = &rz_dmac_common_info },
>         { /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, of_rz_dmac_match);

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

