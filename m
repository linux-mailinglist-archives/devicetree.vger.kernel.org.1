Return-Path: <devicetree+bounces-227186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA47BDF6A5
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 458733ABBAF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68771306B2D;
	Wed, 15 Oct 2025 15:36:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73582305E28
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 15:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760542573; cv=none; b=Kf7kErB9wGunMdNJPsF5LUOT2ysomFMARdCCRXDP7XlTus6YUfCuz2+Mxu5fLE89IcBW5Qm3TYAwCVpuHSOQYi4MYkKnIyxDBAdAElKCNT2a/O7dCuTSt3NG9UfxppeASwm/PG53a+lZIEPdPP+IaCW4zmrb23RPUGcwKEsqmD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760542573; c=relaxed/simple;
	bh=I6P15+XhidIm4wEGq3EBOacS03cItxiFUaa6LkWs8hg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qcjRH5AwdovH/oortKtLXFcNZ9P6bHNl6Q8jjHt1j7Zgmjde+kQFd0Fj3P4lvu4GQmwWNyoFcHocEZrcwoDgkY/0mra+k3g7/LXqJAUru7jYiXo6HuWpbchpcrNFt3BY92zQ6XMhL5n8uWy+vE5p7kTIS+KrgbAnDD/vgJJ03oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5d42137abc2so6076243137.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760542570; x=1761147370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNmUCrYMJqR/KXnbLWdaSqa9Gxw7R7jjIcZiaJXQXIA=;
        b=vb4bdPOZW0bSBuJ2BBaKmHsm0a6oQVYwXwjihdiVpMWw04if+HRXVkbQUCxFe3gLoX
         v1t8CMVl0p6lAviWSUJ/h0E20YNw41m5Mio/FL0Ch9KDcCChNtemeqruFObNR+GxkeqK
         LRtbUn4EXW0pSPBY5DPt1tsXCRWGVwItkzmZs65TJVp60904+pyZGS6x3f5ueCitUd6F
         tYBksfzqhKVb4LKbURsfdKWpoUiUcMemTnD36vIMr7otaWPR0lpelZDArapgLz+5rUc5
         Rv+jCOEF71Jxh4rfEEeALQ+x4YngMUZIVIhCDVp1rxUsYAVtmECWuV9eFu/7ucjDcebx
         NCRg==
X-Forwarded-Encrypted: i=1; AJvYcCVNhUBNlGD6DzUwz+r4+25fgnB+I2/oBP41WdawzVyuevF93DpSHy2B3q43PMotOiXkY5skwMjlSxBF@vger.kernel.org
X-Gm-Message-State: AOJu0YzHz7cusA68MlGDw/Xti/M+YNUEvYKflZN6AoftFP6DIDDS7+W8
	UE3KI5vceErmxS6VwnjvIbWu5zx8uyUCA3NAc661oDqbSFnfx8AWjexQvU2osnpV
X-Gm-Gg: ASbGncsW93wqiLSK2my4sqQyWcXTcMhEnC6AvBZvVWE9q9AAFvtay7SuN9gUj0lRyur
	G6NGshunBn7uqReByLQXyinsCGWN1+dtvQk1C9Xaz9vnwxhY3xbVyaiWJi3FYgYjX69zmqjzO8M
	n6y0/9jMHWaria/ZEV8qiU7OOR5aDGSj5xb4FxxjlVuZF86O98+nQTopWc3dPeQ+E7sQ+vV0JDm
	17FNEsGPmPT6u3RcA2+Lzeg1NyqEfVrAadIjCW7FHuN3r9hGwDT8P09uv1cZMawD6v0h6xJFPzJ
	T89wl/rluvDuEUxbXoCw7XAwHNwYMqZcU+Ta6TwofrR4Wz5D4yLBuWHzYGif7ZtOgduw7OKcQ/i
	NneRUpx1CuWUbdfDkz76VapMsurdO7NYVDONbzW4FwuSJ/ccKOMSY2mUw5ZzDVKhvPXISsAgN7L
	UpbdP62go=
X-Google-Smtp-Source: AGHT+IGw5dkh5+dVE7fr1ptolgwswCbtpK8TbZY6VsHfBKRTBz0zVut3p17uAEziYRADcqEiXrNnbw==
X-Received: by 2002:a05:6102:41a2:b0:5d5:f6ae:38f8 with SMTP id ada2fe7eead31-5d5f6ae3e17mr9500166137.37.1760542569963;
        Wed, 15 Oct 2025 08:36:09 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d7f28f51sm5186256e0c.11.2025.10.15.08.36.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 08:36:08 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5523142df73so4409018e0c.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:36:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXVdAaiYa4o2y9hO3SH1409v7qJ2BYnS2DZx7Ga7fZ4qWLiw9PiYxYOptYNVTzl1oi25KEQaHsX8tWf@vger.kernel.org
X-Received: by 2002:a05:6102:3f8d:b0:5d6:254f:4e24 with SMTP id
 ada2fe7eead31-5d6254f4e58mr4448769137.32.1760542568340; Wed, 15 Oct 2025
 08:36:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014153314.177300-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251014153314.177300-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Oct 2025 17:35:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUBthNYYOg4WHjt+gJRL=g00wmiqCsx+La_3NCUrCJ9gg@mail.gmail.com>
X-Gm-Features: AS18NWC2xZ5k0_H_MwKSUXMl7-yjZeX_uMDf4r_eO11t9puIMof4gvI7VNM2V8g
Message-ID: <CAMuHMdUBthNYYOg4WHjt+gJRL=g00wmiqCsx+La_3NCUrCJ9gg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzt2h-n2h-evk: Add VCC supply for EEPROM
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Linux I2C <linux-i2c@vger.kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

CC at24, regulator

On Tue, 14 Oct 2025 at 17:33, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> The R1EX24016 EEPROM on the RZ/T2H-N2H Evaluation Kit is powered from
> the 3.3V rail. Add the regulator phandle for the VCC supply to reflect
> this in the device tree and avoid the fallback to the dummy regulator:
>
>     at24 0-0050: supply vcc not found, using dummy regulator
>
> Fixes: 0176c9e82e10 ("arm64: dts: renesas: rzt2h-n2h-evk-common: Enable EEPROM on I2C0")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> @@ -160,6 +160,7 @@ eeprom: eeprom@50 {
>                 compatible = "renesas,r1ex24016", "atmel,24c16";
>                 reg = <0x50>;
>                 pagesize = <16>;
> +               vcc-supply = <&reg_3p3v>;
>         };
>  };

"vcc-supply" is not a required property, according to the DT bindings,
and I believe the 3.3V supply can be considered always-on (but see
below to encounter dragons).
I was always under the impression that these "supply not found, using
dummy regulator"-messages are just informational, and can be ignored,
but they are at the KERN_WARNING level.
So should we add real dummy supplies to DTS, or not?

Thanks!

P.S. Actually the 3.3V supply is controlled by an SLG7RN46899, which is
     an "RZ/T2H Power Sequencer with IIC".  From a quick glance at the
     documentation, it is not clear to me what is the purpose of the
     I2C interface, and whether it can be used to control the outputs
     or not.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

