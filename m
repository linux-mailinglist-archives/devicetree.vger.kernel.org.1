Return-Path: <devicetree+bounces-235714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C3CC3BC8E
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 15:36:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF92E3B63FA
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 14:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136FD31195A;
	Thu,  6 Nov 2025 14:28:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FD4331A48
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762439326; cv=none; b=J44EwyxsWci3tNkHfg6VcOBcSIX+JUk6DRPzn5JyPNZ3eBdXnCneEm+7IFu4P5/VWZbIMQRdJToh/8TdGUOJ0R22G8ifg4wjjM3NX+OIELdOn3kPj3tjrxbTvDuvEss/wNLdp43FFvZjqftpO26OPYP/cwPBVmY69tPjYC/esYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762439326; c=relaxed/simple;
	bh=3lgjqrw9oTLBZNzeCWRnYqfLBcostxc+8B8DcxRaSTo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MmeCkUFrhSgi4wN9q08uC0a2xehPAJcvtgL3F72tOKxPDrSwb4akkcWh7hFY94UwSDV77d3zz7kwBXAb0Nn6gnD8Wbq0d1RlMJ9mEG4+RL1aqGy+U5y4DnoK67hJoVFdRuTDnScWn6RLdRqQuSt1T42JHqx4Fg+zqzaiTdrtVoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b710601e659so202115066b.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:28:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762439319; x=1763044119;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFuhrM5Zx5faMXjiCvShw5ZF0br2pRJWjGUrf3CbngU=;
        b=NXdJyXg/23aXE+UV8rR7f3iDTGnb8M0PuydUZ/zYZQZ33dyj8t9B+vA1S7SYSgmEOJ
         sQQbkbN+bqr9+a95GQt4EyMVPznv97/hJsEUTyd+RSBIQQwGEB6tDKl6+KujJWIqO1xJ
         ZmqiuJQWCdIOkuhuEaw8AFVvZBqKBrYhS3GKGxhAh7JK8nkzP5wZ/8zaItVv351q8oYq
         +xweWzqDDfmJNW6qnrLuP5grRSk2Gaur3/22iExnkTNQW9CUCyyZ9TnCoSKQuQ5wa7Ut
         dVjdiPbJqVyo7yOCNVEDwLbbPZcxGh6epy7cNfF4+5vHNbT6uN5cKtdeSV/LJlWLNywn
         ciAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz+Ee+oF26vHbKEJ5am+uDwjkEPekEv/IYtMQ7Mv+agh+Lt84JeHZC9pQXseaT3x5+rU9kZB7Z7kaO@vger.kernel.org
X-Gm-Message-State: AOJu0YzoyVG3lDC/ZTa6abSsfPOegqnsC9CjryD+pseiEPQ+6sBfZrwl
	AixBbBpFKeDXszZtSMlFw0/vBs64UbyP8huW+yW9/sw4vVNCCVpaJvtsAgBkRXz77iQ=
X-Gm-Gg: ASbGncv1Di4beeC7L5SVW5QkwTCSH9UNRNbRIWC1Nk15KIDfGq8ppNPHDxJxDUPd+z0
	DEe3vJC9cxzGjmxIKN0MqZF3huF6JKLnt8x+zUDtZ/cyWgqxFwE+QnSoDcbdFQOgzIkWt5vMOVi
	KpAbYzQO5a1eKNoeS2iwMemwOqHZX2Z1VNVWvcO685Gba6Hz0u7YWuQYu2WLDUDmehELB0Xd30I
	lKWCpeiV005trkWeK6FkrFDVABWUS2Ji3EBDOUNs21/GNNPO1i26+VuTciz43XPnmm2OfdEZHTm
	saTSXN6b7VZLgxAKu7p2memZxsmzeSf3fuZuFfkAJhXI8mDRc/+HkVR3P5cgCyO+HHEIYLkqkic
	Unxxv0CB7SlMTfw+uS+5wry1FEf7KJH3fMDOz4yXxgevFoe3NvQvWPtMwe9H83bK0a2HP0dh6Xn
	dxEbCI3qG0rWnBAEZ9Co6ALZgg2NOaPEsn5Z5lrQ==
X-Google-Smtp-Source: AGHT+IFkzTOvg1StdoRevOwpjNzsRI/Q2X+BE9OauGRyzSuhYy6a54+mE6glMYApbRVFVfi4TY89VQ==
X-Received: by 2002:a17:906:d554:b0:b72:7dbd:3bf with SMTP id a640c23a62f3a-b727dbd0f61mr555176166b.43.1762439319050;
        Thu, 06 Nov 2025 06:28:39 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7289331d34sm224696966b.4.2025.11.06.06.28.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 06:28:36 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-640f0f82da9so1803811a12.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:28:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVh0DvftihEEtZeQuoUwcdPqNoB4P508BwY9y2aymapjJmO4y0Hi6a32BZLXBF1xt8wWHXDXYrnTFNX@vger.kernel.org
X-Received: by 2002:a05:6402:510a:b0:640:c918:e3b with SMTP id
 4fb4d7f45d1cf-64105a58158mr7216116a12.26.1762439315884; Thu, 06 Nov 2025
 06:28:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105231815.1927239-1-niklas.soderlund+renesas@ragnatech.se> <20251105231815.1927239-2-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251105231815.1927239-2-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 15:28:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUZCakYhCCZGW5Z8-GrfNR5QYAGHSEZD1PvkBt+5SjbLg@mail.gmail.com>
X-Gm-Features: AWmQ_bmsJvzm6kKqBB7MkT_bl8ohnK3R2hPjSvFu5w5eS7KUaBTh6zw_38RYicg
Message-ID: <CAMuHMdUZCakYhCCZGW5Z8-GrfNR5QYAGHSEZD1PvkBt+5SjbLg@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: renesas: r8a779a0: Add ZG Core clock
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

On Thu, 6 Nov 2025 at 00:18, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe the ZG Core clock needed to operate the PowerVR GPU.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Thanks for your patch!

> --- a/drivers/clk/renesas/r8a779a0-cpg-mssr.c
> +++ b/drivers/clk/renesas/r8a779a0-cpg-mssr.c

> @@ -35,6 +35,7 @@ enum clk_ids {
>         /* Internal Core Clocks */
>         CLK_MAIN,
>         CLK_PLL1,
> +       CLK_PLL4,

Please preserve sort order (see CLK_PLL5 below, out of context).

>         CLK_PLL20,
>         CLK_PLL21,
>         CLK_PLL30,

> @@ -98,6 +103,7 @@ static const struct cpg_core_clk r8a779a0_core_clks[] =
__initconst =3D {
>         /* Core Clock Outputs */
>         DEF_GEN4_Z("z0",        R8A779A0_CLK_Z0,        CLK_TYPE_GEN4_Z, =
       CLK_PLL20,      2, 0),
>         DEF_GEN4_Z("z1",        R8A779A0_CLK_Z1,        CLK_TYPE_GEN4_Z, =
       CLK_PLL21,      2, 8),
> +       DEF_FIXED("zg",         R8A779A0_CLK_ZG,        CLK_PLL4_DIV2,  2=
, 1),

ZG is not a fixed clock, but has a programmable divider through the
FRQCRB.ZGFC register field.  Hence it should use CLK_TYPE_GEN4_Z.
As currently drivers/clk/renesas/rcar-gen4-cpg.c:cpg_z_clk_register()
supports only the FRQCRC(0) and FRQCRC1 registers, you will have to
extend the offset-to-register mapping support for that, too.

>         DEF_FIXED("zx",         R8A779A0_CLK_ZX,        CLK_PLL20_DIV2, 2=
, 1),
>         DEF_FIXED("s1d1",       R8A779A0_CLK_S1D1,      CLK_S1,         1=
, 1),
>         DEF_FIXED("s1d2",       R8A779A0_CLK_S1D2,      CLK_S1,         2=
, 1),

> --- a/include/dt-bindings/clock/r8a779a0-cpg-mssr.h
> +++ b/include/dt-bindings/clock/r8a779a0-cpg-mssr.h
> @@ -51,5 +51,6 @@
>  #define R8A779A0_CLK_CBFUSA            40
>  #define R8A779A0_CLK_R                 41
>  #define R8A779A0_CLK_OSC               42
> +#define R8A779A0_CLK_ZG                        43
>
>  #endif /* __DT_BINDINGS_CLOCK_R8A779A0_CPG_MSSR_H__ */

This should be a separate patch, so I can queue it in a branch shared
by clock driver and DT source files.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

