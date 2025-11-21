Return-Path: <devicetree+bounces-241017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B63FDC78AF1
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 43211349516
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E928533373B;
	Fri, 21 Nov 2025 11:08:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089BA26D4DE
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723305; cv=none; b=O4X1M2IbrwME1uThmdMwWr6uhSv0YchdYNyTlSuqXY/CMxlKFBdQu18/czM86oTvR08xI9JAKrbCdRQdkBWbl2t81N9UNzBXrIzFU42j+zSIDsrPQE8VwxYEiTKWGJXsV/18MGlbyNvvDWYH8/rBnIHHNnyqlWYSEfPH26cnig0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723305; c=relaxed/simple;
	bh=lhjh2LMQtplN5PbrfBoNy8Am6IisO8ndBVlW+XHl/Kk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GyGUopDAqc5t1YtXqygxI6w76z8/UIgQXFiCiEaSVzrTb5WAc+uoA9S88K9/uh/p29iwDanYtcLshW22mC0e8iII02mmnjIZ08uwFkYQetSiRp1kR+yur3rWhGaRGHPXz2jDNKm543wJciSUKSYTYnrYjUn6/UMCu9Strc6aaEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93720298f86so1118622241.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:08:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763723303; x=1764328103;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6C10540oJIBgBZAD7smcrJ/23zk12hUyvYhHZYCZ5Ys=;
        b=Q2fUD4nIT4CY3ekHzOXqqY6ZsuOW6+zQGYKSp6nZsLv+UhrKrV88I1pA9POVB/0+QW
         6CTqr1KIltQ8Sv6ldu7FRyLTWomWnleBI12BuGY2VuLQ0xtbJezKq1gRxXM2u4Y01wtL
         7Xb8RKM1dr/ErOIAlBf8c89XibMqqaqubgrjlh8AZbQNm9kN7aXbLzQnSqaTDBFmPXmk
         xM013mRsbMO9T8U2Sb0t7EmKxHlwYkEvRGiUah5pPJM8ZtnVzln5oIXFELEc3J+Opt5O
         i5Ny9+t9DnTiMHPUyKEEHSNSgyJD7Jq4XQnOqn/hTif+fL6fq+1iXpd5tP7lpgzt46zC
         jPaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmSW3Q7TGu2VXsxIHOxm0gDfPQNbrBQDi9f9z5V29ci1iQzxpxsmg2L4YgzgHtlqx8w68glRhjlwx2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6R7sIE0tvyUKpy+mhZ2cuKpzTRI6uUwQslYl26VaXUx+KW6cC
	jFM3ZWfbsUNRF0hQOMMs0XoX1xILAqfx3zG+Os+BOiQPeKAbYhSAcIRgL3fzJtv3
X-Gm-Gg: ASbGncsmALiwTDA8AbtUVpSZp9MEbWV0ZlgAJ21HgA2921nctOz3BLI7eaTgDZzUr/g
	CLLG4z2f2aL1RtOeLSwbde44O8mY/2AHe3lLVgLsnNdEu2dEfIj+9NCH4BrslxzHt73whMyls1D
	GFQI1Erd5ogv5vQL+cyZwqoso+gtqfnbSegtMA9ZqBXLH8zH5k4nvQBII6NgDxkzERFyokabuNg
	RVKHpE9FDkRz759gDWwv858oaU8EBTipYl22WxPQ4ldSXigUl8PqPjeiLT1l1MbyH3m0kktmtTE
	TbPmH8DIsNGPr/EU2R2EUojsKb/Yq+zinMcbiAR/g6nJ4m6IjOKJLQpbhYxsF69nuEa17ss6Njb
	a1jrlTpEZjFDWGzUvwv/gkoJM2hqlcbhiZqRS/fBYXXa8qD9B978SdeH7opQJkT/hOJQSL/2lGj
	9x+rousLTVFSeiaHMsQS9bmamcEcycdmeCarpfPBrVC78gpyX4
X-Google-Smtp-Source: AGHT+IEVPV7xQIbKEt89R7mH437OvPJ9oYblVmw0cHc1ABIPyXDmpzL3QU3UW28R5aJU0P1Bu1FMOg==
X-Received: by 2002:a05:6102:5ccc:b0:5df:c10a:6683 with SMTP id ada2fe7eead31-5e1de40a17emr453441137.35.1763723302855;
        Fri, 21 Nov 2025 03:08:22 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c564c7dd3sm2121599241.9.2025.11.21.03.08.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:08:21 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93754419e10so1071574241.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:08:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXEoui+5DtU1AKWTcbdErndL5/FXuTsGK+MYa2LR/Hr4ETqgL78Jk/jU4I89vBFZxU1txApxE8hazs7@vger.kernel.org
X-Received: by 2002:a05:6102:3f4d:b0:5db:25b5:9b4f with SMTP id
 ada2fe7eead31-5e1de396e6amr495946137.26.1763723301428; Fri, 21 Nov 2025
 03:08:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_dts-v1-0-64f798ad43c9@ideasonboard.com> <20251010-kakip_dts-v1-1-64f798ad43c9@ideasonboard.com>
In-Reply-To: <20251010-kakip_dts-v1-1-64f798ad43c9@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 12:08:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVCeMaQ8yFnMgr1Nko+0yQxn69BR9fGJ2WPvADMc2gvRQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnwDIiJeuhqmzUxwprZB8_pFywEdtxsj34DqffzmCdoEYSocQxOmPBXGTU
Message-ID: <CAMuHMdVCeMaQ8yFnMgr1Nko+0yQxn69BR9fGJ2WPvADMc2gvRQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: renesas: r9a09g057: Add IVC and ISP nodes
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

On Fri, 10 Oct 2025 at 12:51, Daniel Scally <dan.scally@ideasonboard.com> wrote:
> Add the Input Video Control Block and Arm Mali-C55 ISP to the device
> tree file for the RZ/V2H(P) SoC.
>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -1298,6 +1298,58 @@ queue3 {
>                                 };
>                         };
>                 };
> +
> +               ivc: isp-input@16040000 {
> +                       compatible = "renesas,r9a09g057-ivc";
> +                       reg = <0 0x16040000 0 0x230>;

Size should be 0x10000, according to Table 1.8-1 ("Detailed Address Space").

> +

Please no empty lines between properties (everywhere)

> +                       clocks = <&cpg CPG_MOD 0xe3>,
> +                                <&cpg CPG_MOD 0xe4>,
> +                                <&cpg CPG_MOD 0xe5>;

Fits on two lines.

> +                       clock-names = "reg", "axi", "isp";
> +
> +                       power-domains = <&cpg>;
> +
> +                       resets = <&cpg 0xd4>,
> +                                <&cpg 0xd1>,
> +                                <&cpg 0xd3>;

Fits on a single line.

> +                       reset-names = "reg", "axi", "isp";
> +
> +                       interrupts = <GIC_SPI 861 IRQ_TYPE_EDGE_RISING>;
> +
> +                       status = "disabled";
> +
> +                       port {
> +                               ivc_out: endpoint {
> +                                       remote-endpoint = <&isp_in>;
> +                               };
> +                       };
> +               };
> +
> +               isp: isp@16080000 {
> +                       compatible = "arm,mali-c55";
> +                       reg = <0 0x16080000 0 0x200000>;

Size should be 0x80000, according to Table 1.8-1 ("Detailed Address Space").
Or is GPV_VIDEO0 part of the ISP?

> +
> +                       clocks = <&cpg CPG_MOD 0xe2>,
> +                                <&cpg CPG_MOD 0xe4>,
> +                                <&cpg CPG_MOD 0xe5>;

Fits on two lines.

> +                       clock-names = "vclk", "aclk", "hclk";
> +
> +                       resets = <&cpg 0xd2>,
> +                                <&cpg 0xd1>,
> +                                <&cpg 0xd3>;

Fits on a single line.

> +                       reset-names = "vresetn", "aresetn", "hresetn";
> +
> +                       interrupts = <GIC_SPI 859 IRQ_TYPE_LEVEL_HIGH>;

According to Table 4.6-23 ("List of Input Events"), the ISP has 6 interrupts.
One of them is used by the ivc above.  Do you know what is the purpose
of the four other interrupts, and if they should be listed here or elsewhere?

> +
> +                       status = "disabled";
> +
> +                       port {
> +                               isp_in: endpoint {
> +                                       remote-endpoint = <&ivc_out>;
> +                               };
> +                       };
> +               };
>         };
>
>         stmmac_axi_setup: stmmac-axi-config {

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

