Return-Path: <devicetree+bounces-248893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B632ECD661C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 416B530358CE
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F9A2D23A8;
	Mon, 22 Dec 2025 14:35:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05BD299A81
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766414113; cv=none; b=nqAnhYdCeBTaxvrRKCcmXHBgLZIGaOW6HRIIVEGgp1iZyoVjmSaK9BDfCwGC6a6FsGU2DtIWjM3zQ1LIdspLUBjbumN1e7aCx5PY4c15FQ0USvBrq4GEhghIeLSU5w6plxfWMAmxgmqE2LMCQX18D4EZullBcZG0/EpIA/C2hNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766414113; c=relaxed/simple;
	bh=tA0sTALuO56vvABuHYMRS7BncP3lkmrEmL6Nk8GJCa0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kq83hGrDcCGdiFc4zGM6/48l0vpNAcvPJ8Z6RDmah/FDZTGPD0oQsJefh/b5C+dyXtH9sBIbPeE8ZmFU4odRCFsS2/B8To0rVpPnosmUAlqwv97/wgM8Czf1sLiGcOwHYLa8CuPbIH+R6UfJX9XXJKA9ebKD+3vOUFgC/yQOuPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-55ad466ad1eso985996e0c.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:35:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766414111; x=1767018911;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H9D4XeQv03MY1UFCjCbOzOZrrwsw53mZKzI1psvzYSw=;
        b=m2Mw6B4XoiGHpDKPHW7GU486otw2wzGx3aGwHpPfAUU/OnCoZT/5LXaMlxwy9R/9bS
         NKB5qapagtaVDy0n9GHEc0LrNWYskzcEGWxbMxhNf8k96Nqj7SQ7/eyQVRcRtS6GB1OM
         nlBBGPSIICSV3q4y5zNwuwE0qbYDF5TJgtu6kZteGIC8Z32hL1NFMkqAoZcOa6Yq6dxY
         FOZZkIAzd5vYcjPumI/4qHfNsDqdyW8hWxzXFM2w1ua5WjDX70JJn23LprsHrIQPUSF+
         XpaoNkMufPPWPfk4bCyc6+uTnEZJF05aNEW3FK5QrwSTUP52bTZ5lExaJk2G4Nyx1s0q
         HkcA==
X-Forwarded-Encrypted: i=1; AJvYcCWNSC3dJrNV/vrdC4Gr2BRSmDvUqdnhxot28eAUkB3PW9Xx09UD7aXQQva3jwBsugd4sciR1XXQ7GDn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+qHjAq8VkAGzhm/TUIILY4mzSaOujgP5rFersO3chQU/vXQFb
	kpzXYyk7Ad5uQgkW+R6Z/DIUutu6DNU2tq/h3pRPxNEkhpLmEaGGTWE0uC+oJ+Jt
X-Gm-Gg: AY/fxX5O9JaEPuhV1eaqQ5hZSpLYZNZj0CNOgKFyzPVzrOh+Y6GYTPOjsxRqoBy4Ina
	12Z3yTgDnV8nkiZfv+snDqYOWc9ZSdsRsHp4FkzvA0QZrujyr5w7Tqi7nXEL3LADnha0xjR7kYI
	+v570Fs0nWoTiH7e0YzwI/jdO7qAhu38zdSOJwbN+MI+YPPd6FneC1jLnP6vJnNPQSg55hxZ4eA
	AejXHWw6fdGglx0eI2vH+WnM4lECA6ZrjhxzhThbLQQZb5zcFhjh+w+ZVa9ud0HIBhnSgeCpRZA
	Uh/24K3Xc9fuMgFpRkZqSSNYUnk0U/a1qns8Tkz4v7SZihWtspjtZl/AhpQVQ+c+fqc2KfZFgBv
	LmHicAQQiCNjzlGRQbAilH1yWW4VNlXifX/3OZqm/u380WFkqOGdd0XWcnXOooeXGZiT2IwqAyM
	JIblRXh9bx5IiWSmA6n//ZsyebAmknb2Xe14o6/6bxpnNrK0nd
X-Google-Smtp-Source: AGHT+IG9AbifyzZiwgESsXOJXF+K1KbVEPRWCHqSsJacyfsdO0ZPGIKkuqqptFdiQtHFXm5Ur+yrEA==
X-Received: by 2002:a05:6122:1796:b0:552:2c5a:c057 with SMTP id 71dfb90a1353d-5615be0493dmr2928055e0c.13.1766414110565;
        Mon, 22 Dec 2025 06:35:10 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d04b90esm3432282e0c.2.2025.12.22.06.35.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:35:10 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5dfb5fcf063so1283447137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:35:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUZLeLux6tewhyB8n/mQuPLj57hkdkIP0xT1Py+B4jNkTcFVn27Pv1IT0IZnTXwRQR/swMnG41jvc0z@vger.kernel.org
X-Received: by 2002:a05:6102:3053:b0:5db:ebb4:fdcf with SMTP id
 ada2fe7eead31-5eb1a697bdamr3032517137.17.1766414109800; Mon, 22 Dec 2025
 06:35:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
 <20251129185203.380002-5-biju.das.jz@bp.renesas.com> <TY3PR01MB11346098C68AF3DC9147F0E5C86DDA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346098C68AF3DC9147F0E5C86DDA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 15:34:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXkn=i9Vr0d94X6bnVQguNJC7FCD-NyVQ8erngY8mEaOA@mail.gmail.com>
X-Gm-Features: AQt7F2p4TVtjKEmQpE77u-WEYcG5SiMF-x1Uk6OyGFJ8hMSi7xvBk_43SfOFyhU
Message-ID: <CAMuHMdXkn=i9Vr0d94X6bnVQguNJC7FCD-NyVQ8erngY8mEaOA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: renesas: r9a09g047e57-smarc: Add
 support for WIFI + BT test
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, "magnus.damm" <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Sat, 29 Nov 2025 at 19:53, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Add support for WIFI + BT test M.2 board [1] [1] https://www.embeddedartists.com/wp-
> > content/uploads/2021/05/2AE_2BC_M2_Datasheet.pdf
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -1910,3 +1910,29 @@ CONFIG_CORESIGHT_STM=m  CONFIG_CORESIGHT_CPU_DEBUG=m  CONFIG_CORESIGHT_CTI=m
> > CONFIG_MEMTEST=y
> > +CONFIG_BRCMUTIL=m
> > +CONFIG_BRCMFMAC_PROTO_BCDC=y
> > +CONFIG_BRCMFMAC_SDIO=y
> > +CONFIG_SERIAL_DEV_CTRL_TTYPORT=y
> > +CONFIG_BT_BREDR=y
> > +CONFIG_BT_RFCOMM=y
> > +CONFIG_BT_RFCOMM_TTY=y
> > +CONFIG_BT_BNEP=y
> > +CONFIG_BT_BNEP_MC_FILTER=y
> > +CONFIG_BT_BNEP_PROTO_FILTER=y
> > +CONFIG_BT_HS=y
> > +CONFIG_BT_HCIUART_NOKIA=m
> > +CONFIG_BT_HCIUART_BCSP=y
> > +CONFIG_BT_HCIUART_ATH3K=y
> > +CONFIG_BT_HCIUART_3WIRE=y
> > +CONFIG_BT_HCIUART_INTEL=y
> > +CONFIG_SND_SOC_MTK_BTCVSD=y
> > +CONFIG_SND_SOC_BT_SCO=y
> > +CONFIG_CRYPTO_RSA=y
> > +CONFIG_CRYPTO_HASH_INFO=y
> > +CONFIG_ASYMMETRIC_KEY_TYPE=y
> > +CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
> > +CONFIG_X509_CERTIFICATE_PARSER=y
> > +CONFIG_PKCS7_MESSAGE_PARSER=y
> > +CONFIG_SYSTEM_TRUSTED_KEYRING=y
> > +CONFIG_SYSTEM_TRUSTED_KEYS=y
>
> Please don't apply this patch. Added here for testing purpose.

Doh, I had already started reviewing it :-(

CONFIG_BT_RFCOMM, CONFIG_BT_BNEP, and CONFIG_SND_SOC_MTK_BTCVSD can
be modular.
CONFIG_BT_HS was removed in v6.9?
CONFIG_SYSTEM_TRUSTED_KEYS is supposed to be a filename?

And please use "make savedefconfig" ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

