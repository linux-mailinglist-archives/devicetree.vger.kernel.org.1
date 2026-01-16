Return-Path: <devicetree+bounces-255980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 092FFD2F457
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CB98303640F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAE2735EDA3;
	Fri, 16 Jan 2026 10:07:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B56031D393
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558039; cv=none; b=tJ0v61mpYQxwOOFqwExNOoaq6Ng69Z36eGTwKCgnC1RC59mBR3IJGSImuTUEswJGnGJx+U67aFbehrI14UazYG0ytJnYPw3rXu0hNgMk7Qb5AoTBHBsD/Nk+gG217Rnx4ySyhBQV6fNFa6xzWCZq/Oj7sFd6u+jLvCuQ/XU+5tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558039; c=relaxed/simple;
	bh=vFDSKDXTht/uJMvnTP9p1krfHXltHzGUh32WOHuB08M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k3OztkAeNnf7ZY65jk+mvoyBm7KTlG2gE1QObK6kaijGWrMImH7aQpqUVd5IlmDZcTGvNlCJXkTUhsgYbXWz3eHXXLWVc8IqVs519yeZ4au2a8tOTrRTcvniUgbepaefEROdY54c7RvAtEGQZgeLI1P0/XUqN3xH3WcVbhH+bXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5636274b362so688212e0c.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:07:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768558037; x=1769162837;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qn67cUMU39CUXsSSgwxUh1den8X1/rN7e8d6+1v2Oh4=;
        b=rgJqI0ansszY19Ic8X7OAr2FJ5B+xWyTjHIcjmTMcz2wLGk2mX/w9OSkMznfDBiC8d
         n51Ku/2bLv6Z0hegGRcCz4QNQFNJhcSPm/Kxvwv2JLjPMwlZZtb3qWC8pl9e+7Vt4GUB
         foQSmXQbUnOV47hpVgGBijLMu0FtSt9UQpglAKEfpZp6kOsA3mmbwkQE1VVMj3fkZ8LF
         dtHsZqbc6E9+V0MC3OE25ys4cfPgj1ClHEsqkMmZfMNuLX0cGruSyCcVfuLPuyXSaH9A
         wk/N7iWl2M7qbRLYq7UbAdN3YD5AU87d7KrqkTSVBovBow9HYZH7MMWdRZgIVG71s7K+
         xqhQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2zVUWf23xGeKx8aaKWRknXTa80ncNwvx9pL4sbJHYJisBpn1KjjL9FghWFXXxdkeaN9SkWVNZPltu@vger.kernel.org
X-Gm-Message-State: AOJu0Yww86R4xPTp9uQ6km7I9DL6/WjwnO50VEQO/fGMNGv0+5i7i/jp
	s6ql3kD5MFc+Q7tqnYPwKaw6PdYOSb4iy0RFrGSTs+lNujYDT1Vjvztn+MIcxd8WXk0=
X-Gm-Gg: AY/fxX4a7ZBzzTlHUklNw6xMCaD9JJjHmpPeKegzvJOJc18j9oQf2qO94Qpj4nrj9EN
	oIjbI20lMQMCn+ZMWZuLj7bW//EI8EeeV33df9cNAQEQfzvx3Znys71E+RRNPJ+LNSoDGoU8SnN
	rZ2qiiMjqRgZSOl4c63JDpDPd6hXU7nPK0BoNuwoD0cwVo9ZgRqYnau2LROwiP3h4hAnAFPup1T
	rGtObQ/BSmNk3QF5Ck8S3KLuwWlIfC5jMC6CDjXP4SARMHRFAuAXwAd8DKBjEDJPigtSziDyZ9J
	QQk9oD3I3la/taBwkFu6vYALd7AUx9Dca6z3F3G25Xwdx6jfb4hXYV7F4CCJn322LunkVtpxvQj
	wjPfhgrgJj+MgUzxmLSpaFCiqP5IyLph3XdOsaJQR4oSBpEGNLP/IeKeUS+RTd6YD+iL9bKGS0J
	1ehqEF83GxD6W0nCQg7zXqVWhcsmhWOACKisG66IAbzd3AVFGpjX0Q
X-Received: by 2002:a05:6122:8286:b0:544:93b6:a096 with SMTP id 71dfb90a1353d-563b5bb9dbdmr777690e0c.8.1768558037089;
        Fri, 16 Jan 2026 02:07:17 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b6ffd215sm516763e0c.6.2026.01.16.02.07.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 02:07:16 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5636274b362so688200e0c.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:07:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU8viV41JOH9UbWcO2kjPUTf7pqvDWeQS+YqCzwmnl0y6gMyrbUHwDsYA+lI0YT4ruPaz6sd6Y/jcnL@vger.kernel.org
X-Received: by 2002:a05:6102:6d0:b0:5ee:a8c4:18f2 with SMTP id
 ada2fe7eead31-5f1a552a486mr757624137.26.1768558035521; Fri, 16 Jan 2026
 02:07:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-schneider-6-19-rc1-qspi-v2-0-7e6a06e1e17b@bootlin.com>
 <20260115-schneider-6-19-rc1-qspi-v2-13-7e6a06e1e17b@bootlin.com>
 <CAMuHMdUHwqBrNMQTO-g7yUA_owWXxT6bPi34Oxjt-J7N0Q2CXQ@mail.gmail.com> <87ldhxubt5.fsf@bootlin.com>
In-Reply-To: <87ldhxubt5.fsf@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 16 Jan 2026 11:07:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUqWUriQHR8UY631HZfVNsejgXE64jrChi=k2=5E6Hi-Q@mail.gmail.com>
X-Gm-Features: AZwV_QiKDKKs-kGw2MFPAKLM-ZDRg69LJFyTkD_IY3NAlTAe2l416xADsDXNbp0
Message-ID: <CAMuHMdUqWUriQHR8UY631HZfVNsejgXE64jrChi=k2=5E6Hi-Q@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] ARM: dts: r9a06g032: Describe the QSPI controller
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Vaishnav Achath <vaishnav.a@ti.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Fri, 16 Jan 2026 at 10:49, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >> +               qspi0: spi@40005000 {
> >> +                       compatible = "renesas,r9a06g032-qspi", "renesas,rzn1-qspi", "cdns,qspi-nor";
> >> +                       reg = <0x40005000 0x1000>, <0x10000000 0x10000000>;
> >> +                       interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> >> +                       clocks = <&sysctrl R9A06G032_CLK_QSPI0>, <&sysctrl R9A06G032_HCLK_QSPI0>,
> >> +                                <&sysctrl R9A06G032_HCLK_QSPI0>;
> >> +                       clock-names = "ref", "ahb", "apb";
> >> +                       #address-cells = <1>;
> >> +                       #size-cells = <0>;
> >> +                       cdns,fifo-width = <4>;
> >
> > <4> is the default, right?
>
> It is the default in the bindings indeed, however the driver does not
> imply that default and errors out if the property is missing. The
> property is also marked required in the bindings, which is kind of
> incorrect I guess. Also, all DTS explicitly set this value to 4.

OK.

>
> However looking into the RM I found "Transmit and receive FIFOs are 16
> bytes". I haven't tested that, I will.

Oh, that bullet is not present in the docs on the CD I looked at.
It is indeed documented in newer versions.

There's also cdns,fifo-depth, which thus should be 4?

>
> >> +                       cdns,trigger-address = <0>;
> >
> > Where in the RZ/N1 docs can I find if these two properties are
> > correct?
>
> This property is mandatory. Maybe I could just discard it for my
> compatible, because it is only relevant for indirect modes, which are
> unsupported.

OK.

> >> +                       status = "disabled";
> >> +               };
> >> +
> >>                 rtc0: rtc@40006000 {
> >>                         compatible = "renesas,r9a06g032-rtc", "renesas,rzn1-rtc";
> >>                         reg = <0x40006000 0x1000>;
> >
> > The rest LGTM, ignoring my comments on the bindings:
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Thanks for the review, but I guess if I end up changing the DTS snippet
> I might drop it. Or would you like me to keep it anyway?

Please keep it as long as you don't change the (SoC integration)
things I typically focus on (address, interrupts, clocks), and don't make
too wild changes ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

