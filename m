Return-Path: <devicetree+bounces-35760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5D083EA9A
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 04:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD24D1F2595F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9720A111BD;
	Sat, 27 Jan 2024 03:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BMlWDhsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B701119B
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706326253; cv=none; b=deHt12KnFceX/PEwzWDCM0GLlslL6G7isSk+YFG3BRGHw+K/XSttlzBAD4LLMIJ24d3FIAROvIUf+PZqAPV8RFpE3XnXehx2Wkf+WrlM2ebM3tWV0cuO1Kh/sUl3p/GmHxYAjid5CyQ5RxP/EHyDzdevdF0/LYb6YrvKD2Jl7nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706326253; c=relaxed/simple;
	bh=aNSzS04qe0yO9uVSBf+xB3LBSciHwdDNy8DvoRgzDCI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FnxsMnopqMJHZxn/FKR4Cys2WV3nLV3uONu8VGx033S/JhBaniP3kvmU/Z7zjkLjjyu595NjfXx/XKR/66qlLF/2vxbVKz5zBt8JnLdo/EzzrHPXArgoH0XXoh0RjDXIA+54A1clzso7kuOFQ06Tzu7WuZoJauBrcG7CrYqqBpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BMlWDhsz; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3be05826fa1so412818b6e.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706326251; x=1706931051; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LwufZi6Iml/bJxFpxvqKLH9Wj+mV23/lQ8KIGY9NXxQ=;
        b=BMlWDhszrIPCB4EHDJylskswpJ6QUVNfCC5pZpdgvBffjGLdx4elrv9jTVqjp6tup3
         +cNkKNrxdvojpALfDe17aAUL8eDNQsko1Nd8Fk8TT+sIX/jFLlQLAtGAsgbrpI4PLeYR
         Fx9jE+BCM7NXKa0b04nmFWm8WZ43Oi9AbPPL2lPqUQ2TBnNV5kmP82S3oqIYKGzrL2GB
         V6jhMqVE2aoo6TVhnvJsyoyZXVy9eC0+kMJ170jS0R2pYFZWqD1bNutaHl2XD/U1zcWC
         y5fi4v487OyH8sv2mZ0RtTeia7ATeTwVAgj2NZYCQpkmqMl9SEJzqHfNqNCa82DnQiRY
         iGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706326251; x=1706931051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwufZi6Iml/bJxFpxvqKLH9Wj+mV23/lQ8KIGY9NXxQ=;
        b=FJIZEbK5PAdN/9T5v2x90dpEaW/ZJYZ0DxaH1wVEFFnizihBSW35FPgarsqFis7q2Z
         iqE/2gZCaw5qZVqbUBVlr7cdElJHxXyphAUA1FwvMR+ZjnN9OmP6zTfBojdyCrIG9twd
         0cchn/L+JrDgVA5fsGLdxGyN82XqU9w7GlNRb/X2L4yKZNYEBIJHG5DgnjZocu+uWnbi
         VSFzfr/+/B8m9R7yxJV4IHnkt27AocRidYLCXro2NxLWdQfXarTwbYgh0qQ3vAwqeBxB
         vNFbqS/udnBNA+C5XkpKAJXUj1j/l2ELxqcs+eY6yBp35nmPybRNj+4N6PKlgtzC8xl6
         gjHw==
X-Gm-Message-State: AOJu0Ywuupv2pBCwxbahuxAlIf7ik5FoMUHpSsojX1hNQCtGHh64rxVo
	MufhBwQomWqtJNGhIlaCFMvc6BB2LqW7Pdxdd1ZUYv0BGLg7J3u+D5EQLVBjRahsM6mHBSzVQGI
	AYKNmjiZUkPP1TzvuaknYZ5wKXyZ18BUjN00E1Q==
X-Google-Smtp-Source: AGHT+IG6ETtDkYmCETmdBRuReLi7R1UzKGOUAS6TaqTWYJcI65Tz9DTExlWxstK63RZRLQhC2fsjHMAlxKEO7QNiGZY=
X-Received: by 2002:a05:6808:2f18:b0:3bb:f5a8:3d63 with SMTP id
 gu24-20020a0568082f1800b003bbf5a83d63mr1137703oib.57.1706326250938; Fri, 26
 Jan 2024 19:30:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127003607.501086-1-andre.draszik@linaro.org> <20240127003607.501086-6-andre.draszik@linaro.org>
In-Reply-To: <20240127003607.501086-6-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 21:30:39 -0600
Message-ID: <CAPLW+4mL1gb_R8PhKaMhwOUTa0GDqat_9W=348ScYj+hBarQJg@mail.gmail.com>
Subject: Re: [PATCH 5/5] clk: samsung: gs101: don't mark non-essential clocks
 as critical
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	mturquette@baylibre.com, sboyd@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:37=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> The peric0_top1_ipclk_0 and peric0_top1_pclk_0 are the clocks going to
> peric0/uart_usi, with pclk being the bus clock. Without pclk running,
> any bus access will hang.

Empty line is missing here?

> Unfortunately, in commit d97b6c902a40 ("arm64: dts: exynos: gs101:
> update USI UART to use peric0 clocks") the gs101 DT ended up specifying
> an incorrect pclkk in the respective node and instead the two clocks
> here were marked as critical.
>
> We have fixed the gs101 DT and can therefore drop this incorrect
> work-around here, the uart driver will claim these clocks as needed.
>
> Note that this commit has the side-effect of causing earlycon to stop
> to work sometime into the boot for two reasons:
>     * peric0_top1_ipclk_0 requires its parent gout_cmu_peric0_ip to be
>       running, but because earlycon doesn't deal with clocks that
>       parent will be disabled when none of the other drivers that
>       actually deal with clocks correctly require it to be running and
>       the real serial driver (which does deal with clocks) hasn't taken
>       over yet

That's weird. Doesn't your bootloader setup serial clocks properly?
AFAIU, earlycon should rely on everything already configured in
bootloader.

>     * hand-over between earlycon and serial driver appears to be
>       fragile and clocks get enabled and disabled a few times, which
>       also causes register access to hang while earlycon is still
>       active
> Nonetheless we shouldn't keep these clocks running unconditionally just
> for earlycon. Clocks should be disabled where possible. If earlycon is
> required in the future, e.g. for debug, this commit can simply be
> reverted (locally!).

That sounds... not ideal. The ability to enable earlycon just by
adding some string to bootargs can be very useful for developers.
Maybe just make those clocks CLK_IGNORE_UNUSED, if that keeps earlycon
functional? With corresponding comments of course.

>
> Fixes: 893f133a040b ("clk: samsung: gs101: add support for cmu_peric0")
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---
>  drivers/clk/samsung/clk-gs101.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 61bb0dcf84ee..5c338ac9231c 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -2982,20 +2982,18 @@ static const struct samsung_gate_clock peric0_gat=
e_clks[] __initconst =3D {
>              "gout_peric0_peric0_top0_pclk_9", "mout_peric0_bus_user",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP0_IPCLKPORT_PCLK_9=
,
>              21, 0, 0),
> -       /* Disabling this clock makes the system hang. Mark the clock as =
critical. */
>         GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0,
>              "gout_peric0_peric0_top1_ipclk_0", "dout_peric0_usi0_uart",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_IPCLK_=
0,
> -            21, CLK_IS_CRITICAL, 0),
> +            21, 0, 0),
>         GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_2,
>              "gout_peric0_peric0_top1_ipclk_2", "dout_peric0_usi14_usi",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_IPCLK_=
2,
>              21, 0, 0),
> -       /* Disabling this clock makes the system hang. Mark the clock as =
critical. */
>         GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0,
>              "gout_peric0_peric0_top1_pclk_0", "mout_peric0_bus_user",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_PCLK_0=
,
> -            21, CLK_IS_CRITICAL, 0),
> +            21, 0, 0),
>         GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_2,
>              "gout_peric0_peric0_top1_pclk_2", "mout_peric0_bus_user",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_PCLK_2=
,
> --
> 2.43.0.429.g432eaa2c6b-goog
>

