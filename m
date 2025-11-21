Return-Path: <devicetree+bounces-241019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B5741C78B88
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35F494EC790
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48276349AED;
	Fri, 21 Nov 2025 11:12:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CEF349AFC
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723528; cv=none; b=LkAzHJNob2yUTNnxa6BkvIq564KYwUvk2nIXI5wjfBhm1SN6EAqUbOrwFOptSulm4KLi0U2Tw5/g9ONDXYjHVfpEZaNSuhJx3HFgCiksYouX4iNwkUELzrN1xzOTfwRbZ2UbFavZX7phlgvCOBntPsmE1ov07Lx3f+gDs9cz3yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723528; c=relaxed/simple;
	bh=jxb+itbVH2dTiDTYOdC3BavIvOa4wwWTs4TOMboUM3Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G1isCyQjhFUs4tmy+NOm/kAVlYcMsUtqc3icrygTkp6Y7YHlssbim0r76Vbl6r5nr/o00gU15sPwHY/PaGKTeorYb5A87aEvTx3hDyQkxyWjrYtr1C/GMBsiM9CEDK2qFBpco3nqais8DmbkGFEFafPvBSE0U2Hs1eXh48fID+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93526e2842dso512236241.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:12:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763723525; x=1764328325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3nrxvKnqxhW5sQVph+ix0KGm0P7f27OLumZSmSfLUQ=;
        b=aO1iYetVB19qXoYnddF7zjt/hUO6L2vq3KMxjlIMlifO/9VDex++jX43UMaj4SmFXu
         Iv1vX1ijmeuYbIwpZm0eUF/QDsUhWqmQyYL+/WvNjFOasOJ0rjzvWTvMt9A/Jze+FDwI
         IDR6b2SMEPx4jPoFLINB6lCsougWpT6AMEcBgccyw0BvRQMWzU46TGL+1Xh+Gzpd20i5
         miRDYybEnbyKkDoduTFITzuUYTErFhV2OgAXoCiavRifzldo+Jfcy3Z3ASfnVLSbNuWt
         tMQlCBeqLRU3N2Xl7cK1d7ARuMx4gf0wlhHx5jI+++BHxR3SzPh6XNWaPBtqJu3DNBia
         e86Q==
X-Forwarded-Encrypted: i=1; AJvYcCUn3fJOpSwXOgUce98BL1RysSDDSaOGvZdjVgOXr8qLBDkKOBRNyJhT8p6jJbR09DQgCZr3fRJHhesl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgm7wLXknOq7f02sPej9iI1AP4jiZ5/ycvVVJIYYTUL0YJR8Ue
	siyhvKobOyIjqbCHbr7+kmUpPPN6IGMvDI9kxMxT4IwNx7e9BVO78R0DYjUnzq9I
X-Gm-Gg: ASbGncsagIYvISQB8mqgiVrgfCxXAHJTXWaWPcJ/BlxA6I7gp/XzRaQGqbwc0OoxM2K
	MBQuzNIjZ9EqDWYb3nMIQ+leM5/660VG4EXZcQh/4uVyAOHvgLLxlXaSra8UVhOFfH13qHNxjT4
	69AuOIM3WnFygtgl/6zIVm4thO6OONASpFSKSNsErGv4A0lK1+zUaRJ6m3oGeGbzkadhmMf5MMD
	0FnK+Rrkx5ozNerAxF7ID2x3+mvbhouxE0DwsYET+l7nBTulcnbWkStBpWFG2GthwKav1CIETr0
	bdwdV/VbA1vX3StRM9hY4bPrBSp8naKcOrYc6VyQtl8hBaIBwQaVvd2gJv4/ILZV8PGVdKPxQxF
	W+a/cZbcnVNB5O4sIpwW6+gOrDfyldJb3OMdTnWVD+qQY45evr1K7Zw2QxOqWiq481q8xyyeDoC
	yOON7/K+EFOb0WLAbp+iiAw3x+HQfhuL47dAElL8myYe6tVJO4
X-Google-Smtp-Source: AGHT+IGtBHiqKS0eKH2RvPCrRkGhO8I32+IakbzReeHX3sp049AkdEwKqt+KMJ5lyOWGVxQNAcJwVw==
X-Received: by 2002:a05:6102:b06:b0:5db:f440:f1b7 with SMTP id ada2fe7eead31-5e1de4391a8mr361544137.32.1763723525191;
        Fri, 21 Nov 2025 03:12:05 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e1bd9687b0sm1997287137.6.2025.11.21.03.12.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:12:02 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93720fd0723so569731241.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:12:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX12lEsfSXYICJ/BjpKd6iquGKiET80IOoTpraskrS/gh7ZM6/2rxfiGyJthiuLmTzRqT/9mj1rwfzu@vger.kernel.org
X-Received: by 2002:a05:6102:9d9:b0:5db:3b75:a2aa with SMTP id
 ada2fe7eead31-5e1de1a0867mr343369137.18.1763723521800; Fri, 21 Nov 2025
 03:12:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_dts-v1-0-64f798ad43c9@ideasonboard.com> <20251010-kakip_dts-v1-3-64f798ad43c9@ideasonboard.com>
In-Reply-To: <20251010-kakip_dts-v1-3-64f798ad43c9@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 12:11:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUU66uJce8n9mg+NgQ=kbMx097hQm2BAtP--QC_XjQnDA@mail.gmail.com>
X-Gm-Features: AWmQ_bmQMhohJ2GYhhiLPCm3R815QyIL8HPupV7asma0bn7pHAzynSJr2uznrV4
Message-ID: <CAMuHMdUU66uJce8n9mg+NgQ=kbMx097hQm2BAtP--QC_XjQnDA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Add ISP
 and IVC nodes
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

Thanks for your patch!

On Fri, 10 Oct 2025 at 12:51, Daniel Scally <dan.scally@ideasonboard.com> wrote:
> Add nodes to devicetree enabling the ISP and IVC that are found on
> the RZ/V2H(P) SoC.

You are not really adding nodes.

    "Enable the device nodes for the ISP and IVC..."?

> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>

> --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> @@ -195,6 +195,14 @@ raa215300: pmic@12 {
>         };
>  };
>
> +&ivc {
> +       status = "okay";
> +};
> +
> +&isp {

Please preserve sort order (alphabetical).

> +       status = "okay";
> +};
> +
>  &mdio0 {
>         phy0: ethernet-phy@0 {
>                 compatible = "ethernet-phy-id0022.1640", "ethernet-phy-ieee802.3-c22";

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

