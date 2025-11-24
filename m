Return-Path: <devicetree+bounces-241661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EE0C8092B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:50:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4773C4E5962
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEE030171E;
	Mon, 24 Nov 2025 12:45:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873D125D1E9
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 12:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763988349; cv=none; b=YpEoDX/CCI73YLvxvnyCE0RuMRXhab8ZEHbhGEjuLGiVnMugcT9t/R2m67TR+YRxE1neLCxo82kyq71kvL2DKYWA+/7r45bndmfKiq8uxiM6CMzDUMVU5IFfjYr2l64oSxOhPKQNIFAyIkqjY/IPa2SQD+4w3323ApP/sSoZ2iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763988349; c=relaxed/simple;
	bh=6ikZIvAH9OCQ6Wns4/V7XjJocQUcbG50xgS5dfJhh50=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q9KKd6Mpi1oWiJX0NgvT9euxEkE4yCG8tqtjULn+FMrOd8Sh1O8ZNzrfVIFDCcERVnz11rzPtk8ItFG0AdK8qhS3TMuc2Sy6G+DrEkyaJZUB+Fu2GytWbfFzksu6RtcKj2V0T+HNuH3CSO5SeEOcXX7yHMt/5NRPsg46I+usQH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dfc3c7de2dso2705575137.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 04:45:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763988346; x=1764593146;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD+BMZYNAgwSb9OdW8YWeL8m3yDdVApXfLl44Yo7CPA=;
        b=sVfLxYDUD2SaaWlbpXrxHE0/eEiwGKFkcB43oDV9duD+gIFqnNv9yUpcUQ7umly6YK
         aK0vbqTkjmta2mlEyfLiLrkuS/7fPs9LHqLc8I2IpnrfEO1fe0EoxNtJOqqShxqNb1EW
         yeovVPCr4S6ijWFLHmY9gfpd3dA+5k2C8++7okveEGy5z7suVeaTiTbbNXyq1vE7jUqU
         V4SWeLGUEa8DXU6ttP58ktU9AxLBDtR9WdyVBzAa56qGLxmez2swelvUtkzldfBtkW3p
         6fDUR3KPXiLY5gjm86mDlYcksxPp0hPlCufxtuOrSSfcNzy7Pe5Jr4npif74jSmLJsZk
         9KuQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4p3X1usKpRBYJmNNdCgXcmxZ3DIu5xEWm65Ik4teYn4PjSQRHxqI4gjCccPmyxnWS693d/7P7a8N4@vger.kernel.org
X-Gm-Message-State: AOJu0YwEjlV5fiZUqOIyNKbHzPLUWhtmT8wdx3V4GZaP8TCa79a6l40W
	xugyRwLyhmg/oA/yRfWWHb5IzQsHNFqlS54VJKIt0AYv4YH1B1l+RrYqeQrBDpJT
X-Gm-Gg: ASbGncsP/HD++yjP0ri1SlUOi7YA+ecxsZTbnw66rFPgtgy0DWsoTRE0tLjZX8XufWV
	YL8SxBzU1vf0UB6DOCqZOO0Bc9oX05AvnUhmtavxbC+ILgbUwwp6PXKdk3LFcFhCwQsY32Hrjzn
	/HG1HAhOtOly1XAWLnAh3Tk9G2RuyMrs3qlqpBP+y6B2z6J3vJjG91vK6L1qrbud6/FEvDvAvgZ
	c8YDeEOkZutc6D8iOqIhZ/sIXc7oFsD5zPexXjGA7SpOMwW4l5bLTGENA9NFNml3kQolgmBEMmQ
	WwoIjES4jeaD8F7edBcyMfAO+CfyFnVEVzVSNfuVp2huzwEiwVYzR0D7U7pG42euQ/qHZR4Qr07
	cd0T86Cz3s2D1mtHplPuM8TpkW2Snco64hJB75GzQCMjx+yug62UeRA99DCmO6eQ0568oSfJkj2
	ee3bl45ZsllF3Oxp/LD/FSOI+zN9otHEajGpwgtYFj9NbiRSYA
X-Google-Smtp-Source: AGHT+IFFjT4EzUUzqpFGc0CI4eRD5MKs5Tm79PsNtZzmxiq1vq2vuTZAjtY3rqAGFjro3gHesyUqJQ==
X-Received: by 2002:a05:6102:b0e:b0:5df:236f:c28f with SMTP id ada2fe7eead31-5e1de4241c0mr3634080137.37.1763988346207;
        Mon, 24 Nov 2025 04:45:46 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5621d03asm5114924241.6.2025.11.24.04.45.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 04:45:45 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-937268fe284so2274730241.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 04:45:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUiQ4OoEKVhgYjZVeDNQ2HDt7V2N97ZRMemsKWBdm0tE4X2nHx5OXuAcQFzzLeUCW65v4zr0w4q0eb4@vger.kernel.org
X-Received: by 2002:a05:6102:3594:b0:5db:23d0:65e7 with SMTP id
 ada2fe7eead31-5e1de3b25d5mr3839254137.27.1763988343849; Mon, 24 Nov 2025
 04:45:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 13:45:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXrkt0MXOBSvpdJwNVmGrnmt03mSGqj7EhqF16tf4i5Pg@mail.gmail.com>
X-Gm-Features: AWmQ_bkVR2IR-2-tuIChhhpMAiosiEEmcPQoTdpPEz707calSo8UIsTYAGe2Ino
Message-ID: <CAMuHMdXrkt0MXOBSvpdJwNVmGrnmt03mSGqj7EhqF16tf4i5Pg@mail.gmail.com>
Subject: Re: [PATCH net-next 06/11] net: dsa: rzn1-a5psw: Add support for
 optional timestamp clock
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simon Horman <horms@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Fri, 21 Nov 2025 at 12:36, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for an optional "ts" (timestamp) clock to the RZN1 A5PSW
> driver. Some SoC variants provide a dedicated clock source for
> timestamping or time synchronization features within the Ethernet
> switch IP.
>
> Request and enable this clock during probe if defined in the device tree.
> If the clock is not present, the driver continues to operate normally.
>
> This change prepares the driver for Renesas RZ/T2H and RZ/N2H SoCs, where
> the Ethernet switch includes a timestamp clock input.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!


> --- a/drivers/net/dsa/rzn1_a5psw.c
> +++ b/drivers/net/dsa/rzn1_a5psw.c
> @@ -1243,6 +1243,13 @@ static int a5psw_probe(struct platform_device *pdev)
>                 goto free_pcs;
>         }
>
> +       a5psw->ts = devm_clk_get_optional_enabled(dev, "ts");
> +       if (IS_ERR(a5psw->ts)) {
> +               dev_err(dev, "failed get ts clock\n");

I think the error can be -EPROBE_DEFER, so this should use
dev_err_probe() instead. Same for the existing calls.

> +               ret = PTR_ERR(a5psw->ts);
> +               goto free_pcs;
> +       }
> +
>         reset = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);
>         if (IS_ERR(reset)) {
>                 ret = PTR_ERR(reset);

> --- a/drivers/net/dsa/rzn1_a5psw.h
> +++ b/drivers/net/dsa/rzn1_a5psw.h
> @@ -236,6 +236,7 @@ union lk_data {
>   * @base: Base address of the switch
>   * @hclk: hclk_switch clock
>   * @clk: clk_switch clock
> + * @ts: Timestamp clock
>   * @dev: Device associated to the switch
>   * @mii_bus: MDIO bus struct
>   * @mdio_freq: MDIO bus frequency requested
> @@ -251,6 +252,7 @@ struct a5psw {
>         void __iomem *base;
>         struct clk *hclk;
>         struct clk *clk;
> +       struct clk *ts;

"ts" is only used inside a5psw_probe(), so it can be a local variable.

>         struct device *dev;
>         struct mii_bus  *mii_bus;
>         struct phylink_pcs *pcs[A5PSW_PORTS_NUM - 1];

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

