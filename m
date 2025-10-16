Return-Path: <devicetree+bounces-227607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C826BE2D9E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A731C1A6347B
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA0B2D46D6;
	Thu, 16 Oct 2025 10:40:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A9B1D5CC6
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760611247; cv=none; b=VLC6qUy7uB6SWlchBYdqdn7qBIbUoks6ibXGgUTCnpG8ELFMwz8Wr4FmeYR4aowCwoU0HkFKlZJKT1t6aemDeS6/TxVBqc3vdWFG826az+h7nDjgbVkJHcdrZEqllvr3/i7Es0IIhwuwDuEXYyl6Mb6CAx3zXl+zPNJQ5qni5M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760611247; c=relaxed/simple;
	bh=piuGvvOfHYKguiEZW7O40NVeDxi8MR4Ntno3Ky8oHBQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NCfZqs6fbZLzpApuz4OPSBbdhKR2KaYU6Z4iXhzzYHRR3j8LfIXFsElNNURXe2D72EElnPinJz8LSGUWkok9yJwy3uGHznn3k0ocKOx5xeCe1pwp4vLVcXrXzf+NgWOlv8PrE8cHhdabIjJ2xaZCz/RcB0hc3fHJaVxC37VbqGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d42137abc2so472141137.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760611245; x=1761216045;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knJGO9EraQPquYGUUvWl6Sq1Kcv7y9Q9RdqSweYlpKs=;
        b=Gby6ABeD2aGIwtm+o1U5Tra61v9lW+MWyhQeDELEXaeLlIcw39SY8gLAhum3erxGZn
         aYtMPM/AiLgEgotL0JG1//JCBT9E/f1HpfKxJdBb/yrt8PABfQQ5FupDjVOmuQabNSE1
         USWx4R2XiZ6CzU7YpCqJQ5/btw0Smqon99eXTbQ9zRHMCDgTRPaUtjfHKm+eVEZH9ZAs
         C9rHn4lHnk+/cBI1Xn1uE2dJxdYQmuxoRpJ5bhcYbWAei4QcjTeVsyIkrv5prdnHlkb2
         gf194Wlnma/FsOoGm2URFFnzBorcMp4qIiPqIO39rmsyvXcfJ7h2husL7+0E3ro1XABS
         1eBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVIihLi6DxwsOsGeQee7TAAVcLo8hLjJidh1pu0q/4YDEakXDWsEAkAF7WixCpXAyB2qw7a3zB67QB@vger.kernel.org
X-Gm-Message-State: AOJu0YxF7jYqiuK43RG5RvftArq0iR3Oz4s+L/4/Ds9HOBHFFPA6XJoU
	lubi4+XFVUv1BuvuJnv6OvMjYl8+8kCM6QI6FZkfpmXl1Cx0QCIGB7unHTvQod+F
X-Gm-Gg: ASbGnctGJ0vzNuXSFMwtQcPyasLMzEEvPFneRBvgsHaeNlATsYWuuN5Ag2FOIG6jXxL
	87ZMwl1yGsWBl6rAwIkh21//Ne+w+82NwoBBGkeOmYLgWZkZeHCd0tzbWZ8XFdDM200wv95Vl5m
	Ix0qEm+STV4y1p13iTpATvxjDYaddruwVzm/uJBu6r+4cnI6oJ3OlKyKZuraXOQreHczBSzfNPY
	kjsFAtt4rz2Rs28QQv9xzuE4vUdbjr4eyFe5tnzIAwv4AnhKG+EfVzq8/4bNHn8ky4znTyZFTiE
	kCsB0ghfPj7Q83GbNz7qxfyrvmKolzvr6IQgxQCEtj/7tMFZabAXKCRCHhKhryPOXG46X59EuX7
	pWqyP0IajU5zM92k6tnMVYzkuank/KHQt74Y0xLkW5q4GLkDNR5BafSBaE32gY/WBAMqQWtWjGs
	wOV72/tNzoVv4Y/Dg9lmkkTGGna+dUTTnydULyoTHZENjAs/1o
X-Google-Smtp-Source: AGHT+IGvIvfDOhmu6HJyGSXcnC+gsaz8lEN6dby9ny8tjctsDlNqTvM/BqM94EwoEUIvFbYEBXcIjQ==
X-Received: by 2002:a05:6102:5493:b0:521:ed06:1fc7 with SMTP id ada2fe7eead31-5d5e1fe4587mr12437609137.0.1760611244630;
        Thu, 16 Oct 2025 03:40:44 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9310a61e326sm137813241.7.2025.10.16.03.40.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 03:40:44 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d613937df1so446939137.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:40:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXQRkcLIu7pabBjuUDLU6iSRbwmyJIwJUU/oXpfmi+5R/EzQUJlLAWka1d/fKSRIoYrTFVxi9JiXjbS@vger.kernel.org
X-Received: by 2002:a05:6102:c8b:b0:5d5:f6ae:38ff with SMTP id
 ada2fe7eead31-5d5f6ae3e01mr10107830137.44.1760611244201; Thu, 16 Oct 2025
 03:40:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_eth0-v1-1-0d8fdcbceb9a@ideasonboard.com>
 <CAMuHMdWZD1m6t8MnYTA83RV=h9G9o6M3KSZjO32rRjOpz6px+w@mail.gmail.com> <bcdc9a86-bda1-4646-9ccc-1dc00a710b44@ideasonboard.com>
In-Reply-To: <bcdc9a86-bda1-4646-9ccc-1dc00a710b44@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 12:40:32 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUDuuXncX4sbd6oa+8KcS8x+1Sp-ahmvyh8fRdQt1GqKA@mail.gmail.com>
X-Gm-Features: AS18NWBFQD_sktM9PiZ_iC8uRHAPFwDek8zekF1FbFM9hBNLqZ_UopO9JosomNU
Message-ID: <CAMuHMdUDuuXncX4sbd6oa+8KcS8x+1Sp-ahmvyh8fRdQt1GqKA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h48-kakip: Enable eth0
To: Dan Scally <dan.scally@ideasonboard.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Dan,

On Thu, 16 Oct 2025 at 12:23, Dan Scally <dan.scally@ideasonboard.com> wrote:
> On 15/10/2025 13:32, Geert Uytterhoeven wrote:
> > On Fri, 10 Oct 2025 at 13:11, Daniel Scally <dan.scally@ideasonboard.com> wrote:
> >> Enable the eth0 node and define its phy.
> >>
> >> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> >
> >> --- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> >> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> >> @@ -50,6 +51,33 @@ vqmmc_sdhi0: regulator-vccq-sdhi0 {
> >>          };
> >>   };
> >>
> >> +&eth0 {
> >> +       pinctrl-0 = <&eth0_pins>;
> >> +       pinctrl-names = "default";
> >> +       phy-handle = <&phy3>;
> >> +       phy-mode = "rgmii-id";
> >> +       status = "okay";
> >> +};
> >> +
> >> +&mdio0 {
> >> +       phy3: ethernet-phy@3 {
> >> +               compatible = "ethernet-phy-id0022.1640", "ethernet-phy-ieee802.3-c22";
> >
> > The first compatible value corresponds to a Micrel KSZ9031 Ethernet
> > PHY, but according to the block diagram and the picture in the Kakip
> > H/W Quick Reference, the board has a Microchip LAN8830 instead?
>
> Ah, my bad...I thought it was the same as the EVK so I copied from there. I think then that this
> should be "ethernet-phy-id0022.1652" (based on reading PHY registers 2 and 3 with phytool) and the
> other properties look to be KSZ9031 specific so I'll drop them and re-send

Hmm, include/linux/micrel_phy.h has:

    #define PHY_ID_LAN8841          0x00221650

drivers/net/phy/microchip.c has:

    .phy_id         = 0x0007c132,
    [...]
    .name           = "Microchip LAN88xx",

I haven't found the ID in the LAN8830 datasheet yet, it seems to be
buried deep...

Which PHY is actually mounted on the board you have?
Can you inspect it visually?

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

