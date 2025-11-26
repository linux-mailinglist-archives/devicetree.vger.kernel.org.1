Return-Path: <devicetree+bounces-242355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EC84EC897CF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 73CFE3563F0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E1F31B818;
	Wed, 26 Nov 2025 11:22:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9DA2D8773
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764156177; cv=none; b=YFMax4iVtE3ccVsasyDQQRODxtjwOiKYn+pagpeMZqy22xzFQ1asIlEMBJRvDWvi8Ul2KPXiDiKAxXGdpSQDi8KUpwZUyIiJzuHdWnh2WlAKPOgsuzr1QgopN7NNr+7naBQbYLqywd/zSPtbd6dypbXNdHDush3bn7Nf6r+atYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764156177; c=relaxed/simple;
	bh=tEYTMbsYK7ct2Fp0wE54TlfKQsCQQbQ8O0Cva3Vy/6s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NcE087Nrqp7Xfi3T4bGRxZuSHcSg+VVQd5WwE2d3O2Shradu+KRa41owTlU/dOHRzorrsI9qWFX2mONOhuTv8jNJaWX67yd17YvZQNXKRzDb2e5xeZNlAesll8wHQW+zkgNSVS0a2LiE50WdifF65v/soz+epPgE35yqu0mxIyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso4445493e0c.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:22:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764156174; x=1764760974;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8Ls8M39NeOXUwFAsWdHfYPcCU2t+MywIN4mgVtnMyg=;
        b=uoasutlqqhhlc/dPy2yw7J8MCMmxrFBh8+H3+517m23XnBwUYSIRmw2uwTH9DLw8eI
         hvuUG9DF9TTCTQMlXTF7b8NjXwgTs+yCzzpJxITHtkndsGYgcscP0xeh+hRbmPV0iud1
         AbTy16w/79PTPD3h5WXhOqz2TJBz4UmK7ZHFXultWIZJbcG2RYrP7r9O0VaPfI/ZSB3g
         IidAmgP+Qv5oeIjP0S8+8tIyIUfNjFnbFbj2XBOvbQo+DfdjyFg0VL5kTpiYN9KOYe5H
         bzHDDH1sNP8mui+7CN5Jp+iI/n8VkEshh6nyofiZg64Nn0fnecZp1DL99a61uPP8G1s2
         CMiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvd3/jLJNbeY6ENKLmyFNYBiwbMlktJNe+r9XUki0wiDV9BbKo1AQML3Ap+Z66pPgL+X6Sv6xTr/ik@vger.kernel.org
X-Gm-Message-State: AOJu0YzAiRKh78d3uRMgyAFjmePuV8izXw8BPd4OV737ScDxP1s3fb7y
	CvQiNqNB+0i3NxOaGi8/1vUjCd6S2Rb6dO3OERUlBc+wImhLrjUoRBsitPmAB6XJ
X-Gm-Gg: ASbGnct2GmQZK9foeYtrjat0cthxmf2aoVYoevysd9H58kjn8R1wioSwmYI2yDFkNI3
	86CwCPyRBQ25g/TO+QvCe6HIxfYllGrICTYwEvDsH2eCgHPzcbveeLJw8vhiK/y2H4ul41K/BKi
	sjI/AF/O63Y8nT8RVEGsdKVhUPpmpdP6BEvF0XFHTII1oOuo42hZoMNQ4wqjte6Cqnwmt3oQhVN
	O3IM8fZ1jQFRddY8poWIcUMwYfk3YBUBtKd0hRieAGDwUCUBnOkiGSFAmZuFtkMove0cNvPLf89
	qZvL2UcWot9SjqEFB4mI0gMGA25OZh078uzFL+eauxA2IO6cO2RFrSl6HOR7ikLx0Bq3T3yMqjC
	xjzn2xZkmSaUXgyBtiLE8J5GzRKhfw8xM/HxtL4/bHCunGUnpgmT5RiRaBZpyesH8k9fpwCmOz/
	Yu820VJB7ZIvk3LBj0VfzkEUM7DbtPfrQItyrKqRixHRav96ECRQiB
X-Google-Smtp-Source: AGHT+IEJrxdlD0F3rACGa8CS6Q/XesJdwKSR/2uUxKlA0t7mtCJsc0k1jupQiyD7pDDc6PguG8fevw==
X-Received: by 2002:a05:6122:d8b:b0:55b:f45:1874 with SMTP id 71dfb90a1353d-55cd773b401mr2114488e0c.11.1764156173632;
        Wed, 26 Nov 2025 03:22:53 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f60076dsm8445800e0c.3.2025.11.26.03.22.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 03:22:53 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso4445483e0c.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:22:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWxr7zTGXxukw1yXKKIAO83RLp6YMZEvMq4aTg34MG0CANQT/f//wrzwMt20Zsef+uE0jHKZNQ5aru1@vger.kernel.org
X-Received: by 2002:a05:6122:9003:b0:55b:305b:51b5 with SMTP id
 71dfb90a1353d-55cd77a507fmr2238874e0c.18.1764156173122; Wed, 26 Nov 2025
 03:22:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125213202.270673-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125213202.270673-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 12:22:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXKQc3kyT5e_juyMfWz64-oPHig840zAt5qrA+X8chYig@mail.gmail.com>
X-Gm-Features: AWmQ_bk0cEiVh2yimBZRbt8jG3N3VDZN3Okz16mggcQlgTn6rxZbjVlj052TfqY
Message-ID: <CAMuHMdXKQc3kyT5e_juyMfWz64-oPHig840zAt5qrA+X8chYig@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: renesas,rzv2h-icu:
 Document RZ/V2N SoC support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 25 Nov 2025 at 22:32, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the Interrupt Control Unit (ICU) on the Renesas RZ/V2N SoC,
> which is architecturally identical to the ICU used on the RZ/V2H(P)
> SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
> @@ -20,9 +20,14 @@ description:
>
>  properties:
>    compatible:
> -    enum:
> -      - renesas,r9a09g047-icu # RZ/G3E
> -      - renesas,r9a09g057-icu # RZ/V2H(P)
> +    oneOf:
> +      - items:
> +          - enum:
> +              - renesas,r9a09g047-icu # RZ/G3E
> +              - renesas,r9a09g057-icu # RZ/V2H(P)
> +      - items:
> +          - const: renesas,r9a09g056-icu # RZ/V2N
> +          - const: renesas,r9a09g057-icu

Given ICU on RZ/V2H has lots of extra registers compared to RZ/V2N,
I think it would be better to drop the fallback.

>
>    '#interrupt-cells':
>      description: The first cell is the SPI number of the NMI or the

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

