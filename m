Return-Path: <devicetree+bounces-223878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2FABBE8B2
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 637BC3BF2F6
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FDB2D8DA6;
	Mon,  6 Oct 2025 15:49:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32A72D5408
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765754; cv=none; b=NajVB5RmZEKIqxwFiHduIlupVAsxYY8KIgj5jd24K14GVm7CxjbR0tHc6TJjXwCmyT8Byo2LIsGTzP8SyIdqrnstIPbLum5gF7AWUJRHC9CU+bl93aMtZcRv/RKYMNdg4wiwmFqdFUTaAKHeZKXLKqg1AN815XP7fcKCje74Qu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765754; c=relaxed/simple;
	bh=PVdvCVE2eYWFiP3cR9c4GvqYb8gZt/OyTsTupK/w8CU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KDoonPOmRwfnpAtzSiJxkg9yBJoGY/gB+9D+aIfvd7Y7YHDJ6KrX8iN5UinZjA99z7U1n6iM0yHE5Z7Hgs/TRgHW0EQe8R3DbC42UyS6CxZc1mm3fBDlOCwoTsoMUBUTCxS9FhnctZt2zzS4aBL7fcSaGXjYIMsm4LV+LI9/BMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5523142df73so3690988e0c.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:49:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759765751; x=1760370551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z9cUjdoCYBcQFUwR15PiM4qDt/xHkJtXxPd5pO9yUZ8=;
        b=WyP7fXbASwbUb+n5THF0+hgPjKUR0wrObiTP9wKh/MGG04V1xnLYlyYkWuJnwYAmfR
         cX20A6f/g1fDiac+de3wVhlNO+0Kae4aamRAUT9olEljyL38a68exq1Z4UxkcIhqdGTq
         R3s9xr3q7ibZ3rRjJx+Y3+uXjLGfLlVJ87jR/m+0BuXhC2tv/cADMDzEyvcMKQwLFlby
         0kILR4o9ciuZh02TBhVPJfkY3ocmVB/qlQq3tLPbak5ASmRfl3+ikGmMV45vxPVmqRQ8
         iGx5fw5eZm6nEIKGyirFODIOehVTpEqzN6VlKieO+ZVWoAA1wINM7CDEIJF3GQojO0Rd
         PMuw==
X-Forwarded-Encrypted: i=1; AJvYcCWRUbM7roA2NRqbjd1spNY5SDFat98lP97oa/Ox8P3dTY7wTC4u6GHwuBHJ5Ks12mVESN66nFFBy4ia@vger.kernel.org
X-Gm-Message-State: AOJu0YzU9vWVy+kr3f7eNvhoDGttOMwDtvZITTCwWuQCCtYvHdThF2Rg
	/sajahuI/p1PVaTzgsfeD3zYREed3jCn5hx93VNNi6fPZmPmLq2CTNPw7sBURfLX
X-Gm-Gg: ASbGnctRT5Pd8oSSZAwIZ9EU4N0jiqvNGlWWwORoIGFcw80/9GR62xF6GCr/jktQ4Js
	VHx6uQMZ5lY/LpxxbRenR95U2fRtYbhICsICj2tuNRLaQgA1qx4x39Vv1wRkpAUcUMI1WzFZ+aW
	3QldjpqGA6PH1D4vJc/dUPZFTkYqx8BiWXFx0yWODb0Ql6nIdtzNbepSSNzEzWnWE3pwmErgjzo
	f+bDAwRmoqNbTq7ccJmbddmBUIrt07TetyjpLfECPeVcc3PWMIR0Q0merB3vx5R1Jf1EkR85J5t
	Bl7/hVrgNrDRJvh2NypNbytlj3AYQOjymESRhvJCxqc6CdmpYFrp8dQawbPJtMdamqrqxHw9LA6
	FSkB9BUgekQuBqBIBPgEnzabFQXIS/ZCnEVdYDsrGbgbveJz3SDoeCj0NBAG/a05tfI6uar5DGq
	ENxbSIgxG2qNbP3soOoJAooGL2+FbG6A8THg==
X-Google-Smtp-Source: AGHT+IEDuUwRbfWheIxvTvCaMYrrAk6t0CtMJe3yN10pbTUnAwOHc4TQkBOgsS1QuHZUbTMGil3SIQ==
X-Received: by 2002:a05:6122:1828:b0:54a:93be:46fc with SMTP id 71dfb90a1353d-5524e41594bmr4628970e0c.0.1759765751294;
        Mon, 06 Oct 2025 08:49:11 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55497ee3001sm808512e0c.6.2025.10.06.08.49.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:49:10 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-554a7e98e19so93122e0c.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:49:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXWiaKh9kIPb9+nfSCFNPV9HLV6qt4sO+v44piVVvI4ioT/R9ZU3/v9pzxqaDB3woLp2QUtX+7lwl+N@vger.kernel.org
X-Received: by 2002:a05:6122:1828:b0:54a:93be:46fc with SMTP id
 71dfb90a1353d-5524e41594bmr4628932e0c.0.1759765750015; Mon, 06 Oct 2025
 08:49:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251003215318.39757-1-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251003215318.39757-1-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:48:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX-arzDXgv-2gUs8uAt_APkoM3VnAvAYbp1N8oc2v84Hw@mail.gmail.com>
X-Gm-Features: AS18NWB5kY2B2y6TFB5oLhNDBm5KpJIF8LceyyLdhipcCtPerf86ByWEmMs2hLA
Message-ID: <CAMuHMdX-arzDXgv-2gUs8uAt_APkoM3VnAvAYbp1N8oc2v84Hw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: koelsch: Update ADV7180 binding
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

On Fri, 3 Oct 2025 at 23:53, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Use the more modern adi,adv7180cp compatible for the CVBS input found on
> R-Car Gen2 Koelsch boards. This aligns the bindings with the other Gen2
> board with the same setup Gose.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts
> +++ b/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts
> @@ -295,6 +295,16 @@ hdmi_con_in: endpoint {
>                 };
>         };
>
> +       composite-in {
> +               compatible =3D "composite-video-connector";
> +
> +               port {
> +                       composite_con_in: endpoint {
> +                               remote-endpoint =3D <&adv7180_in>;
> +                       };
> +               };
> +       };
> +

Moving this below cec-clock while applying, to "preserve" (sic) sort order.=
..

>         cec_clock: cec-clock {
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

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

