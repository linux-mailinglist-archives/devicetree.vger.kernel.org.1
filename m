Return-Path: <devicetree+bounces-153242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 747F3A4BAF6
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9053D1692D7
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29C091F0E5B;
	Mon,  3 Mar 2025 09:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e23NUqv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FF71D63C0;
	Mon,  3 Mar 2025 09:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740994902; cv=none; b=HFEgYudIxrTJ0toGxnjL10716WhNsBUdaa9Zzl5nDA1xzbcxtJ3nfkrJxnFbQ+VUn0fiQeZ0gMSDrYgjntjwk35rEbTPthHfy3mxO76MPp9oGKzkBVW3lbpvbUK+8PFT57be8fgy9CXc7dwx9IJkCbROdajqhxffTSpHphelhKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740994902; c=relaxed/simple;
	bh=1mp2vKUVmI26A70dQBo01Ou2eZQLjU6l6l5xA0GYKQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D/1tEdHkwAgX6M7YfXtWJ88bTsLlMsWpIhOjOihlnkgvzmJxLOG0VkuYi3GsJDktSerDPn55v9XMggpZbnpMYiRfGvWC7gI5L8ICTgj48YNC5pEzUlPJTPjWm4hxr3n5h7Wl/Q5p50sSg5XLq2LCRn71w+0L6IB2l64wu0CgNYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e23NUqv3; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5209dad13b5so1394227e0c.2;
        Mon, 03 Mar 2025 01:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740994899; x=1741599699; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dvPWkxqEAPTqlH2pKr9aYcT3uHD6wZBraLPueGfEY2M=;
        b=e23NUqv3PaQdtRqQ66YNwuqoHITzvKHJFR6SBIVoxScFhIs43QHpRpnptIuD9k30OQ
         wbgsB94PiAgHt/6U8u3aCrVanBwEL19M7ZFAABcgDyQJ04lsp9K3203frC23MGo0ozC8
         fmxHQzMTvJz9DhYfHgheB3GuQoGIr8LEY7WwrbJ0iN7Ll6O0HzgFqdfLmsWFNRW5SuLR
         KJZI3tGaRWH445bZwrDeDfr2aSB5A2PteveDD7h4HjQg4oqCZMwBP+5oGktCCNyTdLBA
         cICF9bYZ6Jm59U1KEKiHQTgit/8GkaTwZ8Ly8P4C4QHaHuEbf/iPOjXPjTu9vXdsZVUx
         Fmtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740994899; x=1741599699;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dvPWkxqEAPTqlH2pKr9aYcT3uHD6wZBraLPueGfEY2M=;
        b=j6F+ebVI+yqYpk6cHax8fysfqlFVtC49VZ/xok/0FF866Y3BEb6WGy0xY/2omiWjMc
         r22P9v3xRtj2QGGiMpey9qIgmeYk+44SkVK9gU0E6kJ1tLOViu0lb6DDkupRWjPyCWQk
         JCjvqgWrNZ4RQIrTlLlJBAWXkaU9ePGPBWsE151KB/V5jf/w0s3kkVEcmPVQN+FDlxEp
         O4syBTAMRbBFagxaRkonswzSoCBo2XTPkmNeqgbWX9A0bb3dRDFCMWsKMLkV/JeGRnV7
         mc3LQ5SOjk+f8iBzI7CGDd3b1f/B3IutOjmoAkHZhIXvc8ZPUP0p0AkUgLPUAYDut0J9
         M3Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUQYHFaWUAOgM1lLouuZRSAze+phKtPR2tY2lwANycZ+eaYFXKtFDbwE8wbxdUtamL9ChSjni/IK1jq@vger.kernel.org, AJvYcCV8gj2y+HR2MIPHf46MMVHCuUWMHvpOwD0i1ScaM/4AR759FsrWJMYCT0GXLi0HpwSDnB+WJJVgIEX2tJsyR1K8DE0=@vger.kernel.org, AJvYcCWHsGF+4fYlLLdSmJdGziXmyDTdB8Ot5HXAt5AqUoRze68b1hlbOcFz9yQA1Gr7ZN24w411Dq0/@vger.kernel.org, AJvYcCXw9s2nRc5VkobJKBUon/hQtyoh7KW+VitNh5xXBFvevLZzyWe/5tVnWxo8qjJkWmiJG8iMG72GkGSuxCER@vger.kernel.org
X-Gm-Message-State: AOJu0YyN+rJeQ+RRJFLSMwzNTO/eFMXdihjsXR/ugruOD8JDmRRMtTLT
	lUCY464sSFqt+HTC3O0PTwzzwd0K2PnVCYkcJ7JhVbsXPgJAhTnd0y84Mbm9QeSqZHiy0jyE0/S
	r1VuPrGqWj5j8EbS6I09GycRiSDs=
X-Gm-Gg: ASbGnctLtOIS8pW4zqk6sqMOXOcEn3frbG1Y9qs602jfcs2KYyKnDg26Ev8h50wpRQr
	Q/lNeKDxyVBGuSAuzxWsMge39Vt0nb0Lo+AMmj8Czar8DWh/dlE5y8/bUcbVYvp1ZLN0Ix5e2nu
	+qVr1vXVjyvvRLk/+RnJN+sRteSA==
X-Google-Smtp-Source: AGHT+IERFURjF0V9F0i1tRz0H80BBN4R7Ys/R93IoEJy+8aSzvVdJt+dIzm4nbyT8QIBFSDwiQIBvXRfbn+jqUG07wE=
X-Received: by 2002:a05:6122:3a11:b0:516:230b:eec with SMTP id
 71dfb90a1353d-5235b76fb2dmr7208938e0c.5.1740994899107; Mon, 03 Mar 2025
 01:41:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250302181808.728734-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250302181808.728734-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <Z8SydsdDsZfdrdbE@shell.armlinux.org.uk> <CA+V-a8vCB7nP=tsv4UkOwODSs-9hiG-PxN6cpihfvwjq2itAHg@mail.gmail.com>
In-Reply-To: <CA+V-a8vCB7nP=tsv4UkOwODSs-9hiG-PxN6cpihfvwjq2itAHg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 3 Mar 2025 09:41:13 +0000
X-Gm-Features: AQ5f1Jrg3u1RD4DQIf154BLRkJoky_ylNQJKg3RlaLUEp-AprMu8LUDXet_01JA
Message-ID: <CA+V-a8un7Oy9NtfDUfs0DSwRVAFn52-vWj1Os=u_1dqijJhbMw@mail.gmail.com>
Subject: Re: [PATCH 3/3] net: stmmac: Add DWMAC glue layer for Renesas GBETH
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Russell,

On Sun, Mar 2, 2025 at 9:20=E2=80=AFPM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> Hi Russell,
>
> On Sun, Mar 2, 2025 at 7:33=E2=80=AFPM Russell King (Oracle)
> <linux@armlinux.org.uk> wrote:
> >
> > On Sun, Mar 02, 2025 at 06:18:08PM +0000, Prabhakar wrote:
> > > +     gbeth->dev =3D dev;
> > > +     gbeth->regs =3D stmmac_res.addr;
> > > +     plat_dat->bsp_priv =3D gbeth;
> > > +     plat_dat->set_clk_tx_rate =3D stmmac_set_clk_tx_rate;
> >
> > Thanks for using that!
> >
> Yep, it shortens the glue driver further.
>
> > > +     plat_dat->flags |=3D STMMAC_FLAG_HWTSTAMP_CORRECT_LATENCY |
> > > +                        STMMAC_FLAG_EN_TX_LPI_CLOCKGATING |
> >
> > I would like to know what value tx_clk_stop is in
> > stmmac_mac_enable_tx_lpi() for your setup. Ideally, stmmac should
> > use the capability report from the PHY to decide whether the
> > transmit clock can be gated, but sadly we haven't had any support
> > in phylib/phylink for that until recently, and I haven't modified
> > stmmac to allow use of that. However, it would be good to gain
> > knowledge in this area.
> >
> tx_clk_stop =3D1,
>
> root@rzv2h-evk-alpha:~# ifconfig eth0 up
> [  587.830436] renesas-gbeth 15c30000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
> [  587.838636] renesas-gbeth 15c30000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-1
> [  587.846792] renesas-gbeth 15c30000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-2
> [  587.854734] renesas-gbeth 15c30000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-3
> [  587.926860] renesas-gbeth 15c30000.ethernet eth0: PHY [stmmac-0:00]
> driver [Microchip KSZ9131 Gigabit PHY] (irq=3DPOLL)
> [  587.949380] dwmac4: Master AXI performs fixed burst length
> [  587.954910] renesas-gbeth 15c30000.ethernet eth0: No Safety
> Features support found
> [  587.962556] renesas-gbeth 15c30000.ethernet eth0: IEEE 1588-2008
> Advanced Timestamp supported
> [  587.971420] renesas-gbeth 15c30000.ethernet eth0: registered PTP clock
> [  587.978004] renesas-gbeth 15c30000.ethernet eth0: configuring for
> phy/rgmii-id link mode
> root@rzv2h-evk-alpha:~# [  591.070448] renesas-gbeth 15c30000.ethernet
> eth0: tx_clk_stop=3D1
> [  591.076590] renesas-gbeth 15c30000.ethernet eth0: Link is Up -
> 1Gbps/Full - flow control rx/tx
>
> With the below diff:
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index aec230353ac4..68f1954e6eea 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1100,6 +1100,7 @@ static int stmmac_mac_enable_tx_lpi(struct
> phylink_config *config, u32 timer,
>         struct stmmac_priv *priv =3D netdev_priv(to_net_dev(config->dev))=
;
>         int ret;
>
> +       netdev_err(priv->dev, "tx_clk_stop=3D%d\n", tx_clk_stop);
>         priv->tx_lpi_timer =3D timer;
>         priv->eee_active =3D true;
>
> > > +                        STMMAC_FLAG_RX_CLK_RUNS_IN_LPI |
> >
I got some feedback from the HW team, based on the feedback this flag
depends on the PHY device. I wonder if we should create a DT property
for this. Please share your thoughts.

Cheers,
Prabhakar

