Return-Path: <devicetree+bounces-249147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBFBCD9829
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5EF93084F02
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E6D2D24BD;
	Tue, 23 Dec 2025 13:50:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0114028C854
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497856; cv=none; b=p6pGzZO+lM4R+f9PwGqFbi3aF2G40YNsEhhgVsYq8G2CBnD/MFGjBYmuDv9A/4oQ9JZSHSoYFddZQR/D/g2GZoyN2TOMH+P9wcYIAuo807Nlye2aX58cjqgZKlHrGb/LqOAJ9A65JwYobML9hOIscdc8+psGVzKH/qfSFqd7p2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497856; c=relaxed/simple;
	bh=5muInitChGsMSj6kPp99AfFHw72VmyRJFeeekTtjmcU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Uuam2ZjOynIZdW+QlPv1wnDo6I42Hn4pYy89kq39XARqfDCbTRWzvZLo2TuglNvGSNrtxbnc8S5ZY9EDfCtG9u3CdFWQmoXz0ssIDM0G0feJy1GQ59Dt6nzErglzOhEOHArXOFgV4cSpOehCcbP3swn1eTfQSIcJvu0IBXdCOWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64951939e1eso7641347a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:50:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766497852; x=1767102652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AxgwuYv1GqkX/JgxOxMK1IynEvwBQ0HN2CK1BOB0UKY=;
        b=a2b9yXLnUMSbP3AjiSyprd634xTjhL4I7P23LBusxBdKEBRNthGKlS/oZpEUTgAfZ7
         xHi13qw25/9WUVKZ0KH6nno/R1Xq23hapyKPNi9T+SoahkviNEqIABmCPJuPqWwyLNqy
         etMsvve7xfAQVthPUhDAfS4iLQ6DCd1w69LOOtN1+NPtXP2L6pL7YUdqZdisaTpz1Ilx
         6YzIWiDlWRT53pC3g4tGoiBcQaoliEW+V95XL1L5wjNXQgFDw7rIpymLaAq8uTaT+IVq
         mSklryk2OYljvCd/DVYBNeY+YGR37i28E0xdYl5JbE55Jzx1UB0zUK0qOV3VYasDBeOX
         BdJg==
X-Forwarded-Encrypted: i=1; AJvYcCX0bdnUyUHsoyOvRZhtC5+30NfAzmx8nG+csZojfjOIDA72uHg+pIz100vYMKmlrUzBxkQUMiYjeP1t@vger.kernel.org
X-Gm-Message-State: AOJu0YzrpWSTePgEYjopDWvKkaKN1ALdolWvh9mgyEmigeDdudeJ1KA9
	zkwB2+MPIuyvmezRuPBtbEVXOwVvN8wj8tohUTg00/oTarVj1jRg4a8bhVPOZE3Gf+M=
X-Gm-Gg: AY/fxX5mqORCnk1o5Yimo3LLZ1qdBoT+pwZihP8bPuEp392KUSbAGkIa/COC6vpfdaF
	5HXaR6iCyOiXMH6zkqgljk1WkAa7S1VKAPtyJo39MSwE8EAVfCUEylQnT+oHgfjr3xfOu1IJ/DT
	4qjPZ4ShKf6KksIzyoeE9hHZa3fdgNkbLCRlrmDMH3QklCGjtDTeIIsz25kMWsEGxGLL6hq2XtO
	xuiquMPmDyYPVPGb0Qx3l0H3WZZLcnutbQ0PKWt3NiuOBaDf5mToQWvVYWQC0/jNrKZn4DM2nCY
	xk53O6AmSdDyaVQQrWZB6c9sQBy1RXjN7TFYN4C70MccSwxj7cq7ciS3zKiuWdaAUf79ARoBxCE
	gI7vYi5oIYwvu3sJDffdgsU31Y33QjsypSoilMU3lEYiBI9/YEhb/7OMop6vpRXuMl78t7EBugA
	hdmrghl6hqDu0YtZKLkZCMnyStwYZRBibF2Ao+sjlLpxY9pXkI
X-Google-Smtp-Source: AGHT+IHlFQjrsuX1OlnmKf21RYNDacr1rbwjODR6Uv5AyTVgpWcMmQBeB9zO7RMAcSu0SHiFfkPcWw==
X-Received: by 2002:a17:907:608c:b0:b76:d54b:849e with SMTP id a640c23a62f3a-b8037153924mr1383931566b.34.1766497852076;
        Tue, 23 Dec 2025 05:50:52 -0800 (PST)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ddffd2sm1350296266b.33.2025.12.23.05.50.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:50:51 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64951939e1eso7641308a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:50:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU0zIOijadHwypGv2nx2/tgFYjOrp6US5HJXN07TO7DBJApnW3dFmvKEFvvtc3g8WPvMMFYz1ixIIVV@vger.kernel.org
X-Received: by 2002:a05:6402:13ca:b0:64d:e1c:4c0a with SMTP id
 4fb4d7f45d1cf-64d0e1c4d98mr11290130a12.0.1766497850916; Tue, 23 Dec 2025
 05:50:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:50:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXDhi9KqE5hS=z_UqWQ8Hzhy82NaqBMOm7c2q15=M=SBA@mail.gmail.com>
X-Gm-Features: AQt7F2pBYW6Az37iaIR_8IHqN4poQvGi9qJio54afeSNgWx41VFy7kVT0EKlhFU
Message-ID: <CAMuHMdXDhi9KqE5hS=z_UqWQ8Hzhy82NaqBMOm7c2q15=M=SBA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dmaengine: sh: rz_dmac: add RZ/{T2H,N2H} support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

CC tglx

On Mon, 1 Dec 2025 at 13:50, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs use a
> completely different ICU unit compared to RZ/V2H, which requires a
> separate implementation.
>
> Add support for them.
>
> RZ/N2H will use RZ/T2H as a fallback.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/drivers/dma/sh/rz-dmac.c
> +++ b/drivers/dma/sh/rz-dmac.c
> @@ -15,6 +15,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/iopoll.h>
>  #include <linux/irqchip/irq-renesas-rzv2h.h>
> +#include <linux/irqchip/irq-renesas-rzt2h.h>

As this has a hard dependency on commit 13e7b3305b647cf5 ("irqchip: Add
RZ/{T2H,N2H} Interrupt Controller (ICU) driver") in irqchip/irq/drivers
(next-20251217 and later), Vinod cannot apply this patch without
merging that dependency first.

>  #include <linux/list.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -1073,12 +1074,18 @@ static const struct rz_dmac_info rz_dmac_v2h_info = {
>         .dma_req_no_default = RZV2H_ICU_DMAC_REQ_NO_DEFAULT,
>  };
>
> +static const struct rz_dmac_info rz_dmac_t2h_info = {
> +       .register_dma_req = rzt2h_icu_register_dma_req,
> +       .dma_req_no_default = RZT2H_ICU_DMAC_REQ_NO_DEFAULT,
> +};
> +
>  static const struct rz_dmac_info rz_dmac_common_info = {
>         .dma_req_no_default = 0,
>  };
>
>  static const struct of_device_id of_rz_dmac_match[] = {
>         { .compatible = "renesas,r9a09g057-dmac", .data = &rz_dmac_v2h_info },
> +       { .compatible = "renesas,r9a09g077-dmac", .data = &rz_dmac_t2h_info },
>         { .compatible = "renesas,rz-dmac", .data = &rz_dmac_common_info },
>         { /* Sentinel */ }
>  };

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

