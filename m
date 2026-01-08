Return-Path: <devicetree+bounces-252851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E85D0365A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D4FC313D844
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8094F1082;
	Thu,  8 Jan 2026 14:05:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E8A4F1074
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881111; cv=none; b=oWP9w8hL8slEFGC/qdMG77F8KDCPyPgjNfMp/CjgGJDBruG9E5qFmMvlGutk1mbEXS5+rcmMg+16OyR1OZcrjiIcdloe30YPuymMnQvMXg2rFEf0P7sydg9t2OWdi2anCGfGl10uiKLl6S4ccqA9BZOeiGUJ4LQkiK2r9YkYfHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881111; c=relaxed/simple;
	bh=HlrnZ8e7cEsDtIu1iGGmzbLViXvTPSBzBPsUVB4+7EA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T59I0cr5dAwm8imJtvBLFAFZBLSmyK/NCcC8H6WwsUhL20Sg3DFjYRQ0t6yunboS9jf+HLY8MtxaAeqHuAShzyL+jpVHHbc6BmhNJyma6UilayTx4Z0E52dWmDqY4uHulQvjcPg5LHY0tklAaKz+jk/yXEbN0Y8trIgrsTlMQ6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56021b53e9eso948664e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:05:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767881109; x=1768485909;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjOIXZ6fEDhVPcVriijkgDsDTtSfEVFEHTyea+pXJEc=;
        b=DWMxG8SGY+oG4S41tVkB7/C34dTkASacMe4dpWNxOjHCKphw0aQqmxhrL6k7CO/8E8
         MD7c0peNTVwQLX0gxAjcoKIwS7cPZoDNjsNmer6RIDREvYl9zcwR+JXZYIjnruBhZB7N
         OgVRlxFTiasW9pFFJT71GfrVD7aBJjnoH7Dik7u+TepiHStnvZR1Mt84kI1wgr/aotFV
         lAgGCeVqdpUyvCLjTPGHa4ZCNP+Lv/k5cvIVHJmHUK3ptknMhAxDOdDQrir5MGl415ty
         DhiAyNRQD6OX40ePbu1BIPX7TWKgMUFIigyoHRnSXdazsTmk+jXoiZhl+MGQsjy1G1zD
         Aeng==
X-Forwarded-Encrypted: i=1; AJvYcCXz7ifSvYPV2xbC1EWq0TYMUfaDwAcTrFyaN2UOWRuEu1bcnQTDumVT9BYlKBZfq8epgHlEgtFKfnIL@vger.kernel.org
X-Gm-Message-State: AOJu0YyVNdoawhA3I2lgQaxS7fu4zy7prBHCqeo8xIXOkGPWMkwuQSka
	FltBwrX69kGI2op7S/Tuk+4kMtmcN5AOSTPMbh57KtjI1YhKcuJc9QKbU9Ugb8RS
X-Gm-Gg: AY/fxX5Spg1SfRv1yTo9yTpiMPHHsXoL5irnZipEhDAcktw55rNL2Cn15F6f7OmO5uc
	CBIdzG4aDgJRCPFVtCA48zMQXz/1+5+ltnvdWfBQ/iNL2lFAIywBnSxjyqJgKgH7fiTS4vCCspT
	GJszu+t+yCT42hk6eqzQEFuCmSwa7HolepGwRkO0NfxTN+SN1tKUitbmbdWngeYb3Hryxj+bec0
	1OZ9taeFJCVlOLwnbz48Bsybm8v72ypDcPIZnjayLcihtsBPrDXSSfYtXkARgwfazsWjixU3fQa
	m4TJ5KYwEJfIoRuf5m3uyGqmXDD63szjxQjulzyNNjG7dw3xHj1ASOiDkDaGplsavADCCw27ZEs
	YIkdT7NLMn+nKJko8ZFZGJgg1iOBOz7IhEu7f6DitpGAz1URhQv6PQE2Jyv7OfuZV+srSRdGJZw
	dKkSxsfQ5n1v8OQEFOi/wwt3IaANk1rs7H5g7AWn65iy22YioTDJbj
X-Google-Smtp-Source: AGHT+IFWFm0SIAm5jzEy7bOPbpXKKkjgn6Q3mnFXYCMr0Dhlpl8DP2JiGu9Fckz5C38DD0950EbtIA==
X-Received: by 2002:a05:6122:4d03:b0:559:6663:8b1a with SMTP id 71dfb90a1353d-56347c34dfcmr1934998e0c.4.1767881107243;
        Thu, 08 Jan 2026 06:05:07 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124e906esm5793112241.14.2026.01.08.06.05.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 06:05:06 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b265f5122so909192e0c.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:05:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUQvQ8bGOhDh9Tu8TveTT4Xa/if28Lig3wsOJAhTGqkNY5Qr5MocAUs7iHswvHhOgdTRdK8WHaxtxeK@vger.kernel.org
X-Received: by 2002:a05:6122:d15:b0:544:75d1:15ba with SMTP id
 71dfb90a1353d-56347d61e20mr1818171e0c.8.1767881105589; Thu, 08 Jan 2026
 06:05:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106131319.643084-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260106131319.643084-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 15:04:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUrQR2rSHw-n2_CYCtRqF6JtHoguWWpxxVb=Sc6VoujBQ@mail.gmail.com>
X-Gm-Features: AQt7F2rafNUyBmgIwD2Yf6vBHnotvexE9agKVZAsYDW5ipRGhdmreE715xYNYLo
Message-ID: <CAMuHMdUrQR2rSHw-n2_CYCtRqF6JtHoguWWpxxVb=Sc6VoujBQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzt2h-n2h-evk-common: Use GPIO for
 SD0 write protect
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

CC wsa

On Tue, 6 Jan 2026 at 14:13, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Switch SD0 write-protect detection to a GPIO on the RZ/T2H and RZ/N2H
> EVKs. Both boards use a full-size SD card slot on the SD0 channel with
> a dedicated WP pin.
>
> The RZ/T2H and RZ/N2H SoCs use of_data_rcar_gen3, which sets
> MMC_CAP2_NO_WRITE_PROTECT and causes the core to ignore the WP signal
> unless a wp-gpios property is provided. Describe the WP pin as a GPIO
> to allow the MMC core to evaluate the write-protect status correctly.
>
> Fixes: d065453e5ee0 ("arm64: dts: renesas: rzt2h-rzn2h-evk: Enable SD card slot")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

In light of commit ef5332c10d4f332a ("mmc: renesas_sdhi: really fix
WP logic regressions"), this LGTM so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> --- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> @@ -380,8 +380,7 @@ data-pins {
>                 ctrl-pins {
>                         pinmux = <RZT2H_PORT_PINMUX(12, 0, 0x29)>, /* SD0_CLK */
>                                  <RZT2H_PORT_PINMUX(12, 1, 0x29)>, /* SD0_CMD */
> -                                <RZT2H_PORT_PINMUX(22, 5, 0x29)>, /* SD0_CD */
> -                                <RZT2H_PORT_PINMUX(22, 6, 0x29)>; /* SD0_WP */
> +                                <RZT2H_PORT_PINMUX(22, 5, 0x29)>; /* SD0_CD */
>                 };
>         };
>
> @@ -491,6 +490,7 @@ &sdhi0 {
>         pinctrl-names = "default", "state_uhs";
>         vmmc-supply = <&reg_3p3v>;
>         vqmmc-supply = <&vqmmc_sdhi0>;
> +       wp-gpios = <&pinctrl RZT2H_GPIO(22, 6) GPIO_ACTIVE_HIGH>;
>         bus-width = <4>;
>         sd-uhs-sdr50;
>         sd-uhs-sdr104;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

