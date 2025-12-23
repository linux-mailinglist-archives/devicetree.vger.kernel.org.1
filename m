Return-Path: <devicetree+bounces-249218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3168DCD9E42
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0AAF300A34E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EE025C809;
	Tue, 23 Dec 2025 16:04:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5118B27472
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766505864; cv=none; b=XjL3LcEEb0ta5x0ol8LRvySqbrpTHx4TEYHMy6LC/hMn6L+YPZQD6uGR5CZBehmdUj+zl/32Tvx/YU3FWZ2DCpyr8/rFuoOqJc2FAH+Vx0qWBs3gZfAQ9UqOfIbuTWOT5JZ542IYt9oDriPHMRnnqcPeY3YzTfO9zG4C8KQjye0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766505864; c=relaxed/simple;
	bh=tW8m0sz+TxMy7bagqa/CKCdA8ogTvNRf1HesjjfNDns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O8mDr39Vrtwfrfqx+5NzWSaKSQ/VHHlvQxrQpnNL1yLhCFpl1kGv7fx2+bcxnvX5rl/ltVCdN11dWfF1DqAY0XIg12RLCW5etLww1eEzoz5XJZmj1frveO3eqA68wxX2vNYuEBiym4SMRpNkYdKuoQi+O6aFz8ti63hxJR+Dujo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93f5910b06cso3115443241.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:04:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766505861; x=1767110661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUmrcjPrsJVbh8LyphvK5uHaAZlXwQPpsimX8t4O9kE=;
        b=xB+8AS3ucrGeEBr15U5VEYqqoZTcsvMoSP3lbM1UQFEjpL3IdckL2tvhcmGqQMlsd8
         PQfkWsPFbd4No8zSHjVuLvt2om9Nf+7Td81lIdLT6VEmg77Et3DnXfmbmOW5M/5BX5Iz
         b4Tc8mR3BEaQ//g2Umw4aLBIQgHESX4NRX0FThWcVNgtMKxZ5uhdZYGGQJAWAwWryYat
         0GjrBEHx5L7je/Vn6doxjqo4n0ST/dPVP+aGd+4LUDIbCjvtvzEqroglfWSsdKCie+8q
         dqa94GmgHNHxLcFT/4QZ7rOENNrmmr3opI5qVqSQEgKC5Vxk7sT3LvGOh/InJNWSjrFn
         zYcg==
X-Forwarded-Encrypted: i=1; AJvYcCXsTldrbtWRR3+WDI0r0XI1zXjCN6qBq+swmVOPp58hnGYa1DKGV7ux0Acr0UDljvIlH1p6GJJSbtpG@vger.kernel.org
X-Gm-Message-State: AOJu0YwdfZqI9MfBOS5lPuSqDTXevhpaHgip5xy54vL6cjXZ2WyfHE80
	LEaSinx5DSaiFi7LfLOZ+Pvut6uPSEmAo6IImlaG0k4akj9CpPOBQtyDUhPpscURW9I=
X-Gm-Gg: AY/fxX5IWL/Fhl0tC2QRxQdMqsmGNjGb9fQh+cqpYFDPuDNWVUH32cBecS/YuE4tm6F
	Cs4zibUcTSu+5a8GADhEcAgqsOertJEY6e4StfZXnBigR1FEXzEUPkOc48r6qINkC2UArmPqhm3
	MAfjEDtF/FPzLL51WANbRuN1YlSt8R4T5H5NVKpU7by6UDZC695g45xGmP4WrJzfjT/DkjPc++H
	KYo/eeYJJC3TVme8cP6nSfL/mfq7ta3HhTQR8RV84Mvm4GPg1baB001jkqLuX5N+N2yzZRvEtfd
	j+SHzWMPvFuaQthdePu317gA3AdaPo9MMo65PfqcagGO4BJFlBNyEciprBDQJMLRkGasLJrV/iv
	nAlDPUCWpjzckHFzfmuks9anFhN7QYx6nF5Wamh28LkV1ZxQANpt5S74MvMUdcNeGZrEDkrWDgN
	ZgvYANtCTvs0dFMdSraH+A8R638wVftc4MAgVsWvjvE0fOeXI3
X-Google-Smtp-Source: AGHT+IFMpA5MVskZFO3l5p9XSGm6ObTNzNyVB/uNqpLLcaUxJGd1FZ6dqvud6odUxwIW8VU3MkN0fA==
X-Received: by 2002:a05:6122:1d42:b0:55e:82c3:e1fb with SMTP id 71dfb90a1353d-5615b931653mr4486660e0c.10.1766505861055;
        Tue, 23 Dec 2025 08:04:21 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d15509dsm4499132e0c.17.2025.12.23.08.04.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 08:04:20 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93f523bba52so3004900241.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:04:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVe0l/6U4yLGLKe0Cw66FOsB7ciWzP4TDtKZ5B3msei9/HeviHkz+lcxGQIyN5iDQPIfiBNJukFAVBx@vger.kernel.org
X-Received: by 2002:a05:6122:1d91:b0:559:6b7f:b0f4 with SMTP id
 71dfb90a1353d-5615b851ddemr5491694e0c.5.1766505860287; Tue, 23 Dec 2025
 08:04:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201134229.600817-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20251201134229.600817-13-cosmin-gabriel.tanislav.xa@renesas.com>
 <CAMuHMdWUPM=q7J_S_x7=CZoYxKm-v=7GGGkq9Nv0T14b8MBtpA@mail.gmail.com> <TYYPR01MB139556681F53AC66A668F7E4D85B5A@TYYPR01MB13955.jpnprd01.prod.outlook.com>
In-Reply-To: <TYYPR01MB139556681F53AC66A668F7E4D85B5A@TYYPR01MB13955.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 17:04:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUeoC7OefbLd+0WihUtvV7zMtFREeor+V3efUitzcgiZw@mail.gmail.com>
X-Gm-Features: AQt7F2r8FcJNMBmChD_xiGNEJI2gOR_iQl7z1azyYjzKxdOKv8tEtQ1DkplXGqY
Message-ID: <CAMuHMdUeoC7OefbLd+0WihUtvV7zMtFREeor+V3efUitzcgiZw@mail.gmail.com>
Subject: Re: [PATCH 12/13] arm64: dts: renesas: r9a09g077: wire up DMA support
 for SPI
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Tue, 23 Dec 2025 at 15:42, Cosmin-Gabriel Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Mon, 1 Dec 2025 at 14:44, Cosmin Tanislav
> > <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > > RZ/T2H (R9A09G077) has three DMA controllers that can be used by
> > > peripherals like SPI to offload data transfers from the CPU.
> > >
> > > Wire up the DMA channels for the SPI peripherals.
> > >
> > > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> > > @@ -200,6 +200,8 @@ rspi0: spi@80007000 {
> > >                         clocks = <&cpg CPG_CORE R9A09G077_CLK_PCLKM>,
> > >                                  <&cpg CPG_MOD 104>;
> > >                         clock-names = "pclk", "pclkspi";
> > > +                       dmas = <&dmac0 0x267a>, <&dmac0 0x267b>;
> > > +                       dma-names = "rx", "tx";
> >
> > RZ/T2H does not seem to have restrictions about which DMA controllers
> > can be used by which SPI instance.  Hence shouldn't these point to
> > all three DMA controllers?
>
> It does seem like there's no restriction about which DMA controller to
> use.
>
> >     dmas = <&dmac0 0x267a>, <&dmac0 0x267b>,
> >            <&dmac1 0x267a>, <&dmac1 0x267b>,
> >            <&dmac2 0x267a>, <&dmac2 0x267b>;
> >     dma-names = "rx", "tx", "rx", "tx", "rx", "tx";
> >
>
> I was not aware that the DMA core supports this. I will add the other DMA
> controllers to the list.
>
> > Note that this requires updating the DT bindings, as they currently
> > restrict dma to two entries.
>
> dma-names:
>   items:
>     enum:
>       - rx
>       - tx
>
> This should work fine, right?

Yes, dma-names is OK.  But currently dmas has "maxItems: 2".

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

