Return-Path: <devicetree+bounces-216743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 681F6B55FC3
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90FCB1B25C86
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D242E8B7F;
	Sat, 13 Sep 2025 09:09:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318181B5EB5
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757754561; cv=none; b=DONbcNb52K476L0q4jdpOByP2dKTqvagPwg1ddFvG3+QY4gtkZ5kLzmklzYfjmORSwARWKnYUhvqv55iVd2iadBqxG7nWg2SpP7F0vDeLPtx9EJ/Cc6AGGXbGHTJZF4JiZamdZHd7bbHfba+S/OQJGo0pSv5sR7F6FITtw+2nU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757754561; c=relaxed/simple;
	bh=3axRdzUJe+dWuKW8fyKBAG7j/3hD2bAE41+RVxf3jAo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Eo2BYbfKo/TXfGgoDZauCi1cBEp+S0idLCE7PtTGdoHDrvgEIdX6ijtOwor8625RP83z51aDQK1orVo/sPNRtLpgMcjwaaMLWh+/yHue0Tq0AKfzYd2thT64cmTN5XVCvxEw5cwWqNbd+fXO0KkiIHabvhTL/OM2qqSsIToL02w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55f6bb0a364so3411025e87.1
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757754558; x=1758359358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4M9q1sBtoJdbch2HX+0f+gEgUbmufQuxtOpAtokmLRw=;
        b=u9Ipx1BxDDvVmkiXdioSkY6lEkPBzU5ngqDvsRMJy8MtnYmg24QvoPRYzKDoXLXfPn
         l116ybI40wmFYR5A6VqaUabCgVXllxma2PJp67czoOffBJglgkWkQ9rHMPX0YKCz8hH/
         /HkuAxDGahCjaDefjIxDURldkhk/LvZ6+gXef9evnDIRtHkxqdusxE8fHasURN67mfcD
         gDbO0mFenP+camel6rcod1XmwD7eXjbXmdoodJZTRMCwEzi9yLU3VlOodYgOhmAPOVlH
         BcpRSw0PV5B5z/7jB/ZdxSveI3mJ+MUzOVc6jczwW7x0OGA23hsWMgtFFj2QX6ws+KVQ
         k8kg==
X-Forwarded-Encrypted: i=1; AJvYcCUmV5m0PIlX1f2CSIQygchiqrfBv1QOo1pZNHP1WhWG2DRWW4HXAyBOcFdWD0DpRh8mHZ2V5to/D845@vger.kernel.org
X-Gm-Message-State: AOJu0YyRG7WEAtjoKa3XbhtwfroRu6j0xYaciNv8Lh1TgmRIJi1kumYM
	Day15IrPktgP8ma2vEgwsk7LQE9r5sMcstSIYsTQZQu0bu8DGC1XZf2i7fc+N6b8
X-Gm-Gg: ASbGncuS0pkv5uEEBzk3dcOlHAEpFCHYaDKecMAgQiwmlWjI4lJDx0NCENgPt1TpCKv
	dsFy57FeNPYl22FrEaVKI3rhPG4ddqTUDxjEQTx/Tuuce9ag3MrNpvXfQIXouEkwqb1OOad8ohF
	d9tGFKHy9DiBVHzNmay7rQrd2p9v5GdVAqf9+4Cvil2NaAopesphFELym29d86G1d2fsL63Owej
	K/Wkzp8puCSSqj2J1JvfL8kcG9d4hOIlBiREu5fWoR07iArFS8I9z9yLZPv4BfKjHUlrZ4QiehG
	le+XfnMfalGQD1TWv+x8oEoJkbXXMWBNSVlQwqx77r73Oiobp+gEoGx2JNXuuY29EbvOvbQBrCP
	uq9+yNmrIxZeemj8McyI0kOgGHVAYKvctRXMqDXMllzB/Qr7Xgpp9Cwv/j8ttxLxzqg==
X-Google-Smtp-Source: AGHT+IFf3xZ9AgVeLS3Q4sHq7Q5FosMQ9EfmsnIljTDRzJZJYtxslfaedVChL0Zxefesogp5/G1poQ==
X-Received: by 2002:a05:6512:2513:b0:56c:687e:8fa3 with SMTP id 2adb3069b0e04-5704d1f427fmr2244590e87.30.1757754558196;
        Sat, 13 Sep 2025 02:09:18 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64fa7134sm1808568e87.122.2025.09.13.02.09.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Sep 2025 02:09:18 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-336ce4a8bfcso20765361fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:09:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU1qOeY+ptyrPAv5vJxHPBVQI/k/pKBon4uq2em9ceyQ570U+yai+o79FaEiE0LBU1Y0/awK7/FgQby@vger.kernel.org
X-Received: by 2002:a2e:bc13:0:b0:336:ed88:f3b1 with SMTP id
 38308e7fff4ca-3513a042fe1mr16058841fa.7.1757754557881; Sat, 13 Sep 2025
 02:09:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250831162536.2380589-1-lukas.schmid@netcube.li> <20250831162536.2380589-3-lukas.schmid@netcube.li>
In-Reply-To: <20250831162536.2380589-3-lukas.schmid@netcube.li>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 13 Sep 2025 17:09:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v67fwg0x8HNE6Dp-M-LDyon1YipeonqvSvSY-BFH+f4E9w@mail.gmail.com>
X-Gm-Features: Ac12FXypVtt3w9R-5_aPJlDVL7mEoeRUisSDiiTl2jorYCCDiG8XoTwLb6M_2sQ
Message-ID: <CAGb2v67fwg0x8HNE6Dp-M-LDyon1YipeonqvSvSY-BFH+f4E9w@mail.gmail.com>
Subject: Re: [PATCH v8 2/5] riscv: dts: allwinner: d1s-t113: Add pinctrl's
 required by NetCube Systems Nagami SoM
To: Lukas Schmid <lukas.schmid@netcube.li>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 1, 2025 at 12:26=E2=80=AFAM Lukas Schmid <lukas.schmid@netcube.=
li> wrote:
>
> Added the following pinctrl's used by the NetCube Systems Nagami SoM
>   * i2c2_pins
>   * i2c3_pins
>   * i2s1_pins, i2s1_din_pins, i2s1_dout_pins
>   * spi1_pins, spi1_hold_pin, spi1_wp_pin
>
> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
> ---
>  .../boot/dts/allwinner/sunxi-d1s-t113.dtsi    | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi b/arch/ris=
cv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> index e4175adb028da..c00996d6275c5 100644
> --- a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> +++ b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> @@ -78,6 +78,36 @@ dsi_4lane_pins: dsi-4lane-pins {
>                                 function =3D "dsi";
>                         };
>
> +                       /omit-if-no-ref/
> +                       i2c2_pins: i2c2-pins {
> +                               pins =3D "PD20", "PD21";
> +                               function =3D "i2c2";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       i2c3_pins: i2c3-pins {
> +                               pins =3D "PG10", "PG11";
> +                               function =3D "i2c3";
> +                       };

Because i2c2 and i2c3 have multiple options, they should be named
appropriately, like i2c2-pd-pins and i2c3-pg-pins

> +
> +                       /omit-if-no-ref/
> +                       i2s1_pins: i2s1-pins {
> +                               pins =3D "PG12", "PG13";
> +                               function =3D "i2s1";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       i2s1_din_pins: i2s1-din-pins {
> +                               pins =3D "PG14";
> +                               function =3D "i2s1_din";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       i2s1_dout_pins: i2s1-dout-pins {
> +                               pins =3D "PG15";
> +                               function =3D "i2s1_dout";
> +                       };

Should be *din0* and *dout0*, since you have din1 and dout1 on the same pin=
s
but swapped around.


ChenYu

> +
>                         /omit-if-no-ref/
>                         lcd_rgb666_pins: lcd-rgb666-pins {
>                                 pins =3D "PD0", "PD1", "PD2", "PD3", "PD4=
", "PD5",
> @@ -126,6 +156,24 @@ spi0_pins: spi0-pins {
>                                 function =3D "spi0";
>                         };
>
> +                       /omit-if-no-ref/
> +                       spi1_pins: spi1-pins {
> +                               pins =3D "PD10", "PD11", "PD12", "PD13";
> +                               function =3D "spi1";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       spi1_hold_pin: spi1-hold-pin {
> +                               pins =3D "PD14";
> +                               function =3D "spi1";
> +                       };
> +
> +                       /omit-if-no-ref/
> +                       spi1_wp_pin: spi1-wp-pin {
> +                               pins =3D "PD15";
> +                               function =3D "spi1";
> +                       };
> +
>                         /omit-if-no-ref/
>                         uart1_pg6_pins: uart1-pg6-pins {
>                                 pins =3D "PG6", "PG7";
> --
> 2.39.5
>
>

