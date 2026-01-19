Return-Path: <devicetree+bounces-256990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 627B3D3B360
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 381C330CC005
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BF23596E9;
	Mon, 19 Jan 2026 16:40:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484E235B13C
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840837; cv=none; b=ivUEDd5ca2u80potP7mdvG+4QWyVWIv1vMPEB8IXk9q6C6YE9OwxXTI0qgXdp6nmdt2D9Bf+NZAkQHcvwkcQRvqGiqGBIm1XmTVb4g/O5By/E2n8uA3LnWjtN9N3TnJ/GNIHWoU1lLi1PgNUpQdtcQAsG2sF9u78+yZIE437zbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840837; c=relaxed/simple;
	bh=hezZxiDsR/BDlnnj4LcPyEjaKpRFKEiIOROLZukg4h8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kZNozYig4F0tRupeM+Fa9U4Pjd7MmuZLc5BwHeeh7BcFQk3FGwBRwkTx2TFBEXsj5sHo/2IX8Ds0bUpKW/MuyCAmLQCL52B0a8SRfKjolvpGzd/ixbUvAQAd+MSm+M4n9VWzJClr6BIcaVbJeW0IfvQHeEL+KS9HYoqhvIQr3+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5f16fbbdf98so1455292137.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:40:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768840835; x=1769445635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F2MpEOmpeO4/5fw0E94NX631Or+ttCr7v6BCMV3w81w=;
        b=L9OxibwuN06+XwXpbwEdaCe/J6TsSd27oInvI2+b+RRiCrt6hQZUqGhoyJXU5q4v+s
         AyJMauVDfpTSiQvyf37FT62QUHGXbpF4bNUWnqXSXNIX2YYpg7fXEuR6B9b8ON9OdxZj
         tFFu6CH0Y8PKbkneNdzAdOJIJU8+Z0slirSBgtYtHa2FIBEiXUAeok8ue1evtqcKliPG
         xtVUN0v2Zs0nUILno8mBMApoc0kYv/QK9HcK+nSTVOk2NUZCFA7bcRutI5XxS1rvTumM
         GGVqBxlxLYsVcBCfkaQI/cT16TTrgz6nkL87NGO5lHKJn69mB/gQzOlIMy0Ezfvl4Qiu
         d5JQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk5c7GERsqzwBJxbKJ1Z5yZavmfvl6t6E4nf5w1j09KNWpiNgvIxizrlF9oYwq5+tzTOc/jQpwKv5q@vger.kernel.org
X-Gm-Message-State: AOJu0Yze+ozkA1F5eNMJR2m8T9fIWKhMYN+Js5b2L9QL5YyfBG+eUFl7
	aJRprDa+kLB18v+rUit3eEzvQT2b3UUAnUBvgwS6UPbLzfu/XK0h052UVjXvHtnQ
X-Gm-Gg: AY/fxX5CdPm2bkPzPaq92IFUnS6w7S/DjlOwONq8T73OxEkOgGd3wYkdrnATo05Oslh
	npZPwzfw3Tuzw3duhnDbF9aAYQcAx9lcbL/FRvtYMQAvd/qsVSWO8Wp86+3XCh2ELBC/WiehSaj
	lZZNrOOTl6TGa3YMsNQYWDIjKsg50fuHnWAdiLdixePu4PNnT8ms4F2/glTOPP/u4MnaIdTy/kS
	YPWBYW8Gbghays6B5dtAFi722PTGd3RlnsCwGZKsTehFPshZw9Ca3IqcqCXHJ4LA40kxgBZR+z3
	pitP6hnE1A8vnC0/xCo/QB+EHne1svv7XYzlC4E2s8h8ehDekLYDJuRmxuyRYm6x6e9CJlgApjN
	svd7mkJzPJ968J2oPIAoP7EN4G8LzelxfuT1gHPxbX0hSUxcv3f0vpgzYe3ICFI+d5Fn9/JQbca
	aauJL3mcRRC4YaxZMiGsXdDpm3BXvbZdc/TAVAxPxyaO+EMLvT5Jix
X-Received: by 2002:a05:6102:3914:b0:5ef:a6e8:3143 with SMTP id ada2fe7eead31-5f1a55c4ef0mr3649327137.37.1768840834948;
        Mon, 19 Jan 2026 08:40:34 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6e5ed53sm3457387137.13.2026.01.19.08.40.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 08:40:34 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5636227a6e6so1243077e0c.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:40:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnardiFHIX7evJrcGW0KUXNUY7Uq8n3cwtp6uZ2IMj2XSY2QZKw8B97JoiUrxSkQc8wl24K2xrAYAk@vger.kernel.org
X-Received: by 2002:a05:6122:168a:b0:54c:3fe6:627b with SMTP id
 71dfb90a1353d-563b5b56009mr3875991e0c.3.1768840833719; Mon, 19 Jan 2026
 08:40:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116114852.52948-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260116114852.52948-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 17:40:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW24pRL4Ujqvbwjv7edMpHRzOGpjEJ8k0m62tN3zcsa4Q@mail.gmail.com>
X-Gm-Features: AZwV_QhAuEIutjR_12DUTSQHjINgIxncNQEL6V2RP_w-8AA2IPTzsGxx6mo8cPg
Message-ID: <CAMuHMdW24pRL4Ujqvbwjv7edMpHRzOGpjEJ8k0m62tN3zcsa4Q@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-db: add QSPI
 node including NOR flash
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Fri, 16 Jan 2026 at 12:49, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Enable the QSPI controller to access the connected SPI NOR flash. The
> NOR datasheet may suggest faster tuning parameters but those did not
> work on my board.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> @@ -300,6 +300,84 @@ pins_mdio1: pins_mdio1 {
>                 pinmux = <RZN1_PINMUX(152, RZN1_FUNC_MDIO1_SWITCH)>,
>                          <RZN1_PINMUX(153, RZN1_FUNC_MDIO1_SWITCH)>;
>         };
> +
> +       pins_qspi0: pins_qspi0 {
> +               pinmux = <RZN1_PINMUX(74, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(75, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(76, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(77, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(78, RZN1_FUNC_QSPI)>,
> +                        <RZN1_PINMUX(79, RZN1_FUNC_QSPI)>;
> +               bias-disable;
> +       };
> +};
> +
> +&qspi0 {
> +       pinctrl-0 = <&pins_qspi0>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +       bootph-all;
> +
> +       flash@0 {
> +               reg = <0>;
> +               compatible = "jedec,spi-nor";
> +               spi-max-frequency = <62500000>;
> +               spi-rx-bus-width = <4>;
> +               spi-tx-bus-width = <4>;
> +               cdns,read-delay = <1>;
> +               cdns,tshsl-ns = <200>;
> +               cdns,tsd2d-ns = <255>;
> +               cdns,tchsh-ns = <20>;
> +               cdns,tslch-ns = <20>;
> +               bootph-all;
> +
> +               partitions {
> +                       compatible = "fixed-partitions";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       partition@0 {
> +                               /* 64KB */

KiB (everywhere)

> +                               label = "qspi0:spl";

Is there any point in the "qspi0:"-prefixes?
AFAIU, RZ/N1D supports only a single QSPI instance.

> +                               reg = <0x0000000 0x00010000>;
> +                       };
> +                       partition@1 {

partition@10000 (reg address, everywhere)

> +                               /* 64KB */
> +                               label = "qspi0:pkgt";
> +                               reg = <0x0010000 0x00010000>;
> +                       };
> +                       partition@2 {
> +                               /* 512KB */
> +                               label = "qspi0:u-boot";
> +                               reg = <0x0020000 0x00080000>;
> +                       };
> +                       partition@3 {
> +                               /* 64KB */
> +                               label = "qspi0:env";
> +                               reg = <0x00a0000 0x00010000>;
> +                       };
> +                       partition@4 {
> +                               /* 128KB */
> +                               label = "qspi0:dtb";
> +                               reg = <0x00b0000 0x00020000>;
> +                       };
> +                       partition@5 {
> +                               /* 1MB */

MiB (everywhere)

> +                               label = "qspi0:cm3";
> +                               reg = <0x00d0000 0x00100000>;
> +                       };
> +                       partition@6 {
> +                               /* 6MB */
> +                               label = "qspi0:kernel";
> +                               reg = <0x01d0000 0x00600000>;
> +                       };
> +                       partition@7 {
> +                               /* Remaining */
> +                               label = "qspi0:data";
> +                               reg = <0x07d0000 0>;

reg size should be 0x1830000.

> +                       };
> +               };
> +       };
>  };

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

