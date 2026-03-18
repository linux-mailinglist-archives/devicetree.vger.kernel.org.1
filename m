Return-Path: <devicetree+bounces-277324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJi8BqTGumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:37:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8462BE5EC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4153A332D82B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA2413E5580;
	Wed, 18 Mar 2026 15:12:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0A3E1208
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846739; cv=none; b=Rt4Cy0xtmIRZSXh94JTidtravlktZ4150xi1XaWNn0aYfvBdkMHn3c0w73K3mPBaJ5ivbPXFSaepk4wsXYQVdJfq0vTp+TZaisEsczZhGKTm71onyMC5DLi8tTWOxYPU2AHuNV2yS7+U9J7uPUVcyhYew8pMAsK0T212sW351XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846739; c=relaxed/simple;
	bh=u4mw1mnxsE2xaHpeKnafIrg+HVlfFWM9FQywR1Yp/94=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GO/N3dVQ0VMWyrXbZXZLgj4kgfKuCAUHMUTPrEU0D7BHvMqgQJcL6UiJesFRL/h6NFdw9dpICtDNO26WS0WVyqSKfEIMsGEJqzbpRTcoNWm/rOuM7yXpADcVGaa/zx8ZztRAXWD/0osnj5bFROWal/dj2lIXcs5IJrGgRFpOz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5ffd57b6fc6so211376137.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:12:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846735; x=1774451535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBetpwbPiNwfNeNZijFKkbGHgEIzzYw66eC/Gkn7kCo=;
        b=cGFArs9cp80mkIDPt1/1M9Ys3Fh6JEwF8HR1bEHuBuUqeE+x0txc2+Blv5NO2QMGRm
         A39/D6y09jxssBMdGTYZSGIUCivCBFOyvwp1w3/a6s+63LrJWAaEZNdKMvfmCychBMD/
         uxhXJezEg88+P1i2l9I/hBYDyiujzNwqZQEV54XAUtS7ka5Mlw/CW5IZ1EPEubAjiON7
         TOUwr6EzbaLNcIevP8Ay9n0fcEm3oFutB4Ihy7ud2kJvDlIicUYeQz1mGfvPaLYPuYLQ
         Dune4XkrDSOpEFncJPXYdPDsJoUQesGzmYX3g5ZeBx7SwKwT4V9mD1dKbvIzAaD+/VBC
         1rNw==
X-Forwarded-Encrypted: i=1; AJvYcCUQe8Nzz270+35xbL7WLGBtIFZs2gVDb0510FGfvSZA1vEp9mZwm5D1uf5d02NSkRNSNxOY84RoyIJe@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb/X6VxOs4vfSgDUbjG+onRBS4PIToY3qsFdqVnzA7wg2Nn+1V
	9MTFB0EmKYJudwymhEcP18BrEDxAbkDHXIpBA7R9SuXqr6GQzVktke6aXSkFi90g8N8=
X-Gm-Gg: ATEYQzxi5jnSlmN/1YUYY53fEU6hBBUbr7fKeEPqHvzRXpZgPXdeFZ0Uq6b2xzFlnIq
	uzWlBVBvF+sojFMCeAcIsQqUdZnayVBkEbHEYcYOQxXjdKTK9tCUl63Bu8qhbLGgSeJ6n4UF+Ij
	5CjQwenoPXNuVQrOV1TkukbJMkNfFjF02eDUYYbWsRafRb88o8Fz3Lj9I3y/8cVJFSAQxVWXXcY
	IvibOXPz6tZ0gExwqq9anTccXS73ZfdLoC9lJjvXktYIbvPI84MgAq9aBqpXkY7GwPR06qYWLct
	GaaeGq28NeL7Dj/We3C/5gg3zceAQgXNFbHtS4RPkNDNjuEWnVoTuP+UljnLm0M9iiS7Szp5ifR
	q5KpD7vVVue1S3vNVoSrOFvDwUIuAZcmKs2qKw7AqInLqApkbuqdsn5bIgffPSEq3LPLrvKi+m/
	BbVD6RRqBjq2aBEkAVQfYZ57pGrb4LpZiEXh0QI+9e//4WNKQ+Jj0ehbppfUN+LBtePAmNQ6tr9
	Ko=
X-Received: by 2002:a05:6102:a4b:b0:602:7a74:fbbe with SMTP id ada2fe7eead31-6027d1088efmr1624923137.9.1773846734855;
        Wed, 18 Mar 2026 08:12:14 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6027ee44686sm1507722137.11.2026.03.18.08.12.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 08:12:14 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56ba039eecbso246904e0c.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:12:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU4/Xcq14IgO6OPYdi//0uItPxK8b2hIcKsETKGrk9uSRl7A0HFie8zw8iS70u6+bFKY8q5VVd1jYbE@vger.kernel.org
X-Received: by 2002:a05:6122:134d:b0:56b:982f:1265 with SMTP id
 71dfb90a1353d-56ba7079b27mr2156520e0c.7.1773846734329; Wed, 18 Mar 2026
 08:12:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318084151.122674-1-biju.das.jz@bp.renesas.com> <20260318084151.122674-7-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260318084151.122674-7-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 16:12:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVv7rjMfp=53i8iKUSDgTs3ppFW_Q8XJ+KciJnzsHg3Gw@mail.gmail.com>
X-Gm-Features: AaiRm50lR9Zd74d8Uv5dWajd_dqV84YCpjvE8cwPo39SJAzSMjiI0zCUocu_kts
Message-ID: <CAMuHMdVv7rjMfp=53i8iKUSDgTs3ppFW_Q8XJ+KciJnzsHg3Gw@mail.gmail.com>
Subject: Re: [PATCH v5 6/9] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277324-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.454];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[11e40000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,renesas.com:email,0.0.0.0:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 8D8462BE5EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Wed, 18 Mar 2026 at 09:42, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add the initial DTSI for the RZ/G3L SoC.
> The files in this commit have the following meaning:
>   - r9a08g046.dtsi:    RZ/G3L family SoC common parts
>   - r9a08g046l48.dtsi: RZ/G3L R9A08G046L48 SoC-specific parts
>
> Add placeholders to reuse the code for the Renesas SMARC II carrier
> board.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v4->v5:
>  * No change
> v3->v4:
>  * Fixed typo R0A08G046L->R9A08G046L in commit description
>  * Dropped R9A08G046L46 from commit description
>  * Dropped unused audio_clk{1,2} andcan_clk device nodes
>  * Reordered i2c device node and updated reg entries by using lower-case
>    hexadecimal number
>  * Added placeholder in pinctrl node
>  * Dropped unused DMAC device node
>  * Added pcie node with placeholder

Thanks for the update!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
> @@ -0,0 +1,215 @@

> +       soc: soc {
> +               compatible = "simple-bus";
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;

> +               pcie: pcie@11e40000 {
> +                       reg = <0 0x11e40000 0 0x10000>;
> +                       ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x08000000>;
> +                       /* Map all possible DRAM ranges (4 GB). */
> +                       dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 1 0x00000000>;
> +                       bus-range = <0x0 0xff>;
> +                       device_type = "pci";
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +                       /* placeholder */
> +
> +                       pcie_port0: pcie@0,0 {
> +                               reg = <0x0 0x0 0x0 0x0 0x0>;
> +                               ranges;
> +                               device_type = "pci";
> +                               #address-cells = <3>;
> +                               #size-cells = <2>;
> +                               /* placeholder */
> +                       };
> +               };

That's a rather large placeholder. Do you need all of that now?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

