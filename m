Return-Path: <devicetree+bounces-242995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C97C9229B
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C3BFE4E3878
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9700C32E15A;
	Fri, 28 Nov 2025 13:41:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03CB30FF39
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 13:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764337281; cv=none; b=fkbOY9z0IQRPrdUlCaWJIR+h1lqgPe5ES4gMHSmM9SQbd4Zm/+yJ4q9sVweb0QTGbYAmaIg9fZ6/fDK2a3rW633FojJjazbBk+fmde6i+FnaD6LjRo5MeDvTOwoWYL1G6SNxbn0elK6/Nb+E8rzVjpkXbOc4gte9SKnFa+uaw1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764337281; c=relaxed/simple;
	bh=/1wVI+iuc0gFZ8+A7nHo4n1BMQMwbsV9wxbEtR/EQMU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mvIOUo7SsRIuZeAc5D8Rv/TPd9VHeLQQXZEvRZq2TFtV1Nq+d6LXbkSuHPma+Hs/7HvfK2BplOWG4mmPXfojfaArvTJJUbSgi4JYztMJTQa5RQueu7/X2IRe2/kBLWsh0ncrL9utT24lWLe734mWhQzW8bOqgtbXec0VTz3uNzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-935134ef989so1112506241.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:41:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764337277; x=1764942077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvQV5mJknlf/F/i/hi54Q0gVHnAOGRFZnf6lqryPBFQ=;
        b=jVuaK2z58MUV1LVljjcff4rtNib2Yv89ZrJeW8wvCEPCkK9Tr77UUZWexIumajUT9i
         wWpzGfoXXZO8yZwpgWNt39r/8KeXOTOnvYGtw9+2jO82RMBZv/iKgSJyCAwLqd7Xagj1
         IE4xM/aY5pWYqdVnds5UyNahtMXplviur24uLqDcpHpYBDP9AqDG36mXfghnuGx8lCfU
         jJJqBk/MXP3y45q0yuerQM1EQJHOZOYhGYW68ZQ2lnvIEVoEqBxdZe8IG03QoR0iJoMS
         vLwkEQnXJYvgJojrblqYn6itSdsWlwD0IlNKQSEMVPL5bSVNNOUa24WhUFblmY/klA35
         ZDbw==
X-Forwarded-Encrypted: i=1; AJvYcCVpxShRnCxCixoGmUuChv2qbybdmsgdFAv0vz9O26B2KcyeRYmk52Lp8nKSUAuwrBaaJn+6zLxkmKUN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt8kSidNvdnSgYK46mxSjJAAO4FB3NI22XUjvKP6LtCh06uWZV
	bcw6Fz23blqj3bJtFKhRLI1okhd39EFlKQDW3EImfDwOx4RxVy5p7t469suu1Him
X-Gm-Gg: ASbGncs7y2MUeTsLyTVlJXFtSqFryQp6CLXNxomIzwwSvU+bfYLHCZqFEi6SwOAOw3X
	S8GjBlo/Z1jIyQ4aaqOo5J1HEkfU9DQnUTWVghHKZapyxjuwgE+qp5ZfNXxWnS67nE1PgST3w9j
	ZlxZDYQdaM1OgdXJ6ow9JbrPrL3mOoK7+QSynO88XOx7JPnQ2w2uRluE1QdfU6WMO07aujZqzEP
	qZrQVFeKlZffjnb1QDhkYC9QE+XxF5sej2pc02CfGCumoSCEeqilYoq1Y0UkMhQb+2DJLhlTORA
	rDjpPzqlNS6hWP2cP5UdwDrJ7ZaFQVWse9c9Bcy75AKx4s7RlhCgBIa7lIruoKXG4y9sKBp5C3R
	D9nzO1nAV6R/g1gR4aWqzJko2dLLb3Fgco/FxNAoTr7GpKDwGOn0C+GhWvpRPRxhXjsQAsnWHSH
	GCjqfLIFAbDGGAPekndMvLGUvpdzYEHPQZgM99IPVfpaFtZas4A4yj1f7KHyw=
X-Google-Smtp-Source: AGHT+IF2CLeijnYmTxYxrPOH4+knNJ27Zmkqhqj849CdS+jf9s9ns4HWd3rdnPg6+shXCm+nC8hV4Q==
X-Received: by 2002:a05:6102:5113:b0:5dd:8992:e38d with SMTP id ada2fe7eead31-5e1de009870mr9471430137.7.1764337277524;
        Fri, 28 Nov 2025 05:41:17 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d91798csm1688790137.3.2025.11.28.05.41.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 05:41:17 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-9371aca0a4dso1087668241.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:41:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXqeVFq1XHOZ0SJ3MJLbxxH9l4MCem3wKLhOsKd75iuGQWXuOoErYQ5SWMJOiapepnawW/ouFjGH82A@vger.kernel.org
X-Received: by 2002:a05:6102:a4a:b0:5d6:12fc:76e1 with SMTP id
 ada2fe7eead31-5e1de088f11mr10211448137.17.1764337276827; Fri, 28 Nov 2025
 05:41:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027154615.115759-1-biju.das.jz@bp.renesas.com> <20251027154615.115759-20-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251027154615.115759-20-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 14:41:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVWMMaUV92mGF8u4E+FsyKQ5_JbQhm9pbUwzSr58ZgNHw@mail.gmail.com>
X-Gm-Features: AWmQ_bmVZy7Igy0rQiiUUnku2WyRTS7pf9zUlS2EAWatubJ3zFTBdy-9_bBU1nU
Message-ID: <CAMuHMdVWMMaUV92mGF8u4E+FsyKQ5_JbQhm9pbUwzSr58ZgNHw@mail.gmail.com>
Subject: Re: [PATCH 19/19] arm64: dts: renesas: renesas-smarc2: Enable
 rsci{2,4,9} nodes
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Mon, 27 Oct 2025 at 16:47, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Enable device rsci{2,4,9} nodes for the RZ SMARC Carrier-II Board.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> @@ -38,6 +38,9 @@ / {
>
>         aliases {
>                 i2c0 = &i2c0;
> +               serial0 = &rsci4;
> +               serial1 = &rsci9;
> +               serial2 = &rsci2;
>                 serial3 = &scif0;
>                 mmc1 = &sdhi1;
>         };
> @@ -141,6 +144,26 @@ nmi_pins: nmi {
>                 input-schmitt-enable;
>         };
>
> +       rsci2_pins: rsci2 {
> +               pinmux = <RZG3E_PORT_PINMUX(1, 1, 1)>, /* SER2_TX */
> +                        <RZG3E_PORT_PINMUX(1, 0, 1)>, /* SER2_RX */

Why not order by port number?

> +                        <RZG3E_PORT_PINMUX(1, 2, 6)>, /* SER2_CTS# */
> +                        <RZG3E_PORT_PINMUX(1, 3, 1)>; /* SER2_RTS# */

These comments reflect the board signals?  Usually we put the pin
functions ("TXD2", "RXD2", "CTS2N", "RTS2N") in the comments.

> +               bias-pull-up;
> +       };
> +
> +       rsci4_pins: rsci4 {
> +               pinmux = <RZG3E_PORT_PINMUX(7, 7, 5)>, /* SER0_TX */
> +                        <RZG3E_PORT_PINMUX(7, 6, 5)>; /* SER0_RX */

Why not order by port number?

Pin functions are "TXD4" and "RXD4".

CTS4N and RTS4N seem to be wired, too?

> +               bias-pull-up;
> +       };
> +
> +       rsci9_pins: rsci9 {
> +               pinmux = <RZG3E_PORT_PINMUX(8, 3, 5)>, /* SER1_TX */
> +                        <RZG3E_PORT_PINMUX(8, 2, 5)>; /* SER1_RX */

Why not order by port number?

Pin functions are "TXD9" and "RXD9".

> +               bias-pull-up;
> +       };
> +
>         scif_pins: scif {
>                 pins = "SCIF_TXD", "SCIF_RXD";
>                 renesas,output-impedance = <1>;
> @@ -172,6 +195,23 @@ sd1-data {
>         };
>  };
>
> +&rsci2 {
> +       pinctrl-0 = <&rsci2_pins>;
> +       pinctrl-names = "default";
> +
> +       uart-has-rtscts;
> +};

Shouldn't this be wrapped inside an #ifdef controlled by new defines
SW_SER2_EN and SW_SER0_PMOD?

> +
> +&rsci4 {
> +       pinctrl-0 = <&rsci4_pins>;
> +       pinctrl-names = "default";

uart-has-rtscts?

> +};

Shouldn't this be wrapped inside an #ifdef controlled by SW_LCD_EN?
The port seems to be available irrespective of the setting of
SW_SER0_PMOD, which merely controls routing to either the PMOD or the
M.2 connector.

> +
> +&rsci9 {
> +       pinctrl-0 = <&rsci9_pins>;
> +       pinctrl-names = "default";
> +};
> +
>  &scif0 {
>         pinctrl-0 = <&scif_pins>;
>         pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
> index a296c2c1c7ab..305215cdaeb3 100644
> --- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
> +++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
> @@ -89,6 +89,18 @@ &i2c0 {
>         clock-frequency = <400000>;
>  };
>
> +&rsci2 {
> +       status = "okay";
> +};
> +
> +&rsci4 {
> +       status = "okay";
> +};
> +
> +&rsci9 {
> +       status = "okay";
> +};

Given "[PATCH 18/19] arm64: dts: renesas: renesas-smarc2: Move aliases
to board DTS" because RZ/G3S does not have RSCI interfaces, why are
these added here instead of to r9a09g047e57-smarc.dts?

> +
>  &scif0 {
>         status = "okay";
>  };

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

