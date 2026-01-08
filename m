Return-Path: <devicetree+bounces-252653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63024D0266D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C08230A66DA
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837B134A3C1;
	Thu,  8 Jan 2026 08:42:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3133342C93
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767861717; cv=none; b=rDXRU1xlVoc5/WGQexcZogbqwmeIw5E7P0Ql2Rj+dLjJWp5yldweE6Yio4RqSrZVT5vkKPmGBIGET+6i5zxd55ETrfDXv4NVeVajzJsQlSLgz2Ki1j9i0HHa0zaqlyxE9CTgfSnbwvrQw5PO3OU6DEEHi0SzlPiQF+qI9upNj2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767861717; c=relaxed/simple;
	bh=9X/r2vj38C7ckuEFNFkLLoQCe9ZxM5qmA8RkRgtPHu4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kdo5nlPkoovBnhdto+qNzXPsNPBUW+ro1oBLrntYt9qmmIUL4gTvF8hqhVtS75HLrVnTYuLoZBu9tgRNfWjBcEVcaVwC3ekPsEcYNjCIeNElIz/KrZ/fT00ABawU3rTL9E/bZzVHBpbyTQLuR7BAXEpSY2M9lD9K85kj4hu+C7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-55ad466ad1eso1010047e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:41:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767861709; x=1768466509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xns/JPqML0qCztDyyCuldpapQdflbeNCjFZrnYmJiTY=;
        b=n0sw6tcW3LR4mVnE2bRpmTpMYRo0K3NP7O+W/304w2ltzmk1+uX9QyM6Jxx3s7xnyW
         8BuTc+eTmxbwN/uXSUwCG0b5JJlYSQjvdwqx2SVNcMu3ZVBEjUliTZeEN55JB75nLdjS
         IsiJqn+WOmykEx86I7CLOqD3pI0RVd6GbUP6fUpxASRGUK//vk6J1MRkrTqFj6Dnuvj9
         V9lUP68EosdfDyQ048/SxsfSh/umluEl19LtFtff+nItpVwbEhVXExI30uR73pjMpRUv
         IaGWroCfuGGsoz+tsao4ve+2tWsierpg36xo0ddOeWnCoZWRxAdOsBfIygRQMdsg7aja
         8TQQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7CrCQiYwu1zHWILppzCaQs6DG8jLSePKV3ZS0VENyPlKaCu5Ohfrm6wbv+c3/8U4QWr0J4C9L8Yai@vger.kernel.org
X-Gm-Message-State: AOJu0YzM49xEwMyjB6cAGdlIH9Mjyfx0H6nVQt0zOijvXcPG6F69KPqa
	JEcjZxfswridMtrkuK/jUtnlM7BKo/GVztPBWYFCjdIvna0Sq9s5yiIrDBnCxWp6
X-Gm-Gg: AY/fxX62JbtGExPkWg4K49AgnN6VCH/E1klYo3vi9ywOVtEhNOk/nXqz9g9fjZF/ap2
	mD/NTD3s0+FbRn32uTi3OrSa6XUDRGn8TGc3dMKFCwiSOc+/gyck+SyHlfop+maXX3YHdvJyIyZ
	XT51mNI6YkIJ6x5xARfmq2yisRaxRvlM2d/sbYMSXFyrxkIJtrYWIzjYTeqSMnSwJ85Xd+V73As
	Gw/pYKunmgyXP2DdSt8DvJ7WVLXnkSx5vDMA5fEbbyhyRf3dWvv5n6VSE2T5dPUmMyB8b+FhTjj
	X6MOh58Mcu2bJt+hTrRhTBrQMwqBeIaraOczQ6A0oFHvg3PS1MmUL926L7Bg/6AQNaxR/3IbHoJ
	OmBwqO9Bdrc5F/z4WVrxxJXaQ2gBRDer62o+xU10jNnA/a8h3Jqgd3hMyaUE7nPdAKaiUw6TkcZ
	P5F4H83FCY70JSikHDrz1Bgs4mfTGOHqdya/quBjUaRE/2Y6RA
X-Google-Smtp-Source: AGHT+IHgOWUbXexdSBQ9+Hf86EOJ8RANmIT5tCszDvcxUvZEeAgy4sq1JKPBf6AMLGtPqon5mceuYg==
X-Received: by 2002:a05:6122:ca9:b0:55b:305b:4e2d with SMTP id 71dfb90a1353d-56347ffa593mr1540503e0c.20.1767861709420;
        Thu, 08 Jan 2026 00:41:49 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634e959afbsm3473809e0c.1.2026.01.08.00.41.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:41:49 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93a9f700a8cso971060241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:41:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUOmlblCe6K695rGRxP05xaDOYis+DU8m2WjY2GOGgThhvjy97op689PKyy6TErU+QF3kUc/keD99dJ@vger.kernel.org
X-Received: by 2002:a05:6102:cc8:b0:5df:ac57:b0ea with SMTP id
 ada2fe7eead31-5ecb68565afmr1696181137.10.1767861708843; Thu, 08 Jan 2026
 00:41:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-2-shorne@gmail.com>
 <CAMuHMdUaO_PwWygW8qss47W_ErB4pm1Z2HQ+edvw1-x7ce7oKw@mail.gmail.com> <aV9o1LL0Ahip0O3-@antec>
In-Reply-To: <aV9o1LL0Ahip0O3-@antec>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 09:41:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXYCNR0ANn152ghFExpWY_yZ5+kyFGGRwA+X-EFUvxZXw@mail.gmail.com>
X-Gm-Features: AQt7F2qP9J__FZqrZLV9_WL7FjGfkbxAjWs5PQwA8dHfLG4zYdATwoLKEBlozis
Message-ID: <CAMuHMdXYCNR0ANn152ghFExpWY_yZ5+kyFGGRwA+X-EFUvxZXw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio
 to gpio-mmio
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

(reviving linusw)

On Thu, 8 Jan 2026 at 09:20, Stafford Horne <shorne@gmail.com> wrote:
> On Wed, Jan 07, 2026 at 03:35:45PM +0100, Geert Uytterhoeven wrote:
> > On Wed, 17 Dec 2025 at 09:15, Stafford Horne <shorne@gmail.com> wrote:
> > > In FPGA Development boards with GPIOs we use the opencores gpio verilog
> > > rtl.  This is compatible with the gpio-mmio.  Add the compatible string
> > > to allow as below.
> > >
> > > Example:
> > >
> > >         gpio0: gpio@91000000 {
> > >                 compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > >                 reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > >                 reg-names = "dat", "dirout";
> > >                 gpio-controller;
> > >                 #gpio-cells = <2>;
> > >                 status = "okay";
> > >         };
> > >
> > > Link: https://opencores.org/projects/gpio
> > > Signed-off-by: Stafford Horne <shorne@gmail.com>
> >
> > Thanks for your patch, which is now commit f48b5e8bc2e1344f
> > ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
> > in gpio/gpio/for-next.
> >
> > > --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > @@ -18,11 +18,16 @@ description:
> > >
> > >  properties:
> > >    compatible:
> > > -    enum:
> > > -      - brcm,bcm6345-gpio
> > > -      - ni,169445-nand-gpio
> > > -      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > > -      - intel,ixp4xx-expansion-bus-mmio-gpio
> > > +    oneOf:
> > > +      - enum:
> > > +          - brcm,bcm6345-gpio
> > > +          - ni,169445-nand-gpio
> > > +          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > > +          - intel,ixp4xx-expansion-bus-mmio-gpio
> > > +      - items:
> > > +          - enum:
> > > +              - opencores,gpio
> > > +          - const: brcm,bcm6345-gpio
> >
> > What is the rationale behind using brcm,bcm6345-gpio?
> > Given brcm,bcm6345-gpio has 32-bit registers, while opencores,gpio
> > has 8-bit registers, I doubt the latter is compatible with the former...

> I was following what we did for uart, where we have
> "opencores,uart16550-rtlsvn105", "ns16550a".

I assume the former is a 100% compatible plug-in for the latter.

> I am using brcm,bcm6345-gpio to match the drivers/gpio/gpio-mmio.c driver.
> The opencores,gpio is compatible with the same driver as brcm,bcm6345-gpio but
> not 100% the same as the brcm,bcm6345-gpio.  Since the device tree allows
> configuring the gpio-mmio driver to make it compatible with opencore,gpio I
> thought this would be OK.
>
> I switch the size from 32-bit to 8-bit using the reg = <* 0x1>, <* 0x1> setting.
> Also the reg addresses of "dat" and "dirout" are different for the real
> brcm,bcm6345-gpio.
>
> brcm,bcm6345-gpio. Example:
>
>        /* GPIOs 192 .. 223 */
>        gpio6: gpio@518 {
>                compatible = "brcm,bcm6345-gpio";
>                reg = <0x518 0x04>, <0x538 0x04>;
>                reg-names = "dirout", "dat";
>                gpio-controller;
>                #gpio-cells = <2>;
>        };
>
> vs opencores,gpio Example:
>
>        gpio0: gpio@91000000 {
>                compatible = "opencores,gpio", "brcm,bcm6345-gpio";
>                reg = <0x91000000 0x1>, <0x91000001 0x1>;
>                reg-names = "dat", "dirout";
>                gpio-controller;
>                #gpio-cells = <2>;
>        };

Exactly, the register space and register widths are different

> The opencores,gpio setup does work.
>
> Now that I think about it, would it have been better to just add opencores,gpio
> to gpio-mmio.c compatible list?

I think that would be better.

> If so I will can revise this patch and add patch to gpio-mmio.c.

DT maintainers: Given gpio-mmio is that generic/simple, is there a
specific reason there is no generic "gpio-mmio" compatible value that
can be used as a fallback, avoiding the need to keep on adding new
entries to gpio_mmio_of_match[]?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

