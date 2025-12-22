Return-Path: <devicetree+bounces-248900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D147FCD66EB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DB143014623
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9722F83B7;
	Mon, 22 Dec 2025 14:52:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882052FCC1D
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766415170; cv=none; b=L/EdFymf8K5lJ9hWcK/3tTVcxfJOjbKymOALLVj+BrzKoR3EfuE+7IPVBDUWSjCR6SV4n3iOL+Orr/jVTvo6JXSC8EGR+p09l9tylYat0Qag8v7jBcclN7bvwbXpZE3cLRFAHQU3lJ5+BIFxf7Q9kMDZjjuo/5oXZwcTNqCUQmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766415170; c=relaxed/simple;
	bh=r8vXFdNw344kZAqQkVG3TwDFifA5ML7Go2yVV4yCefA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pEcuQIcQkduSM4WIrYaib+RVpsAgqV4vwEId9OqHLFjUsl/sCyI5YXJeP77f4zG8AlsVJ4aCYyEdnEkFs5URVsK+pVHSWeV4A82UEB0UbxDvD3fqUw51JifCa+60NAb0YgOLhZs/k6UwOq6bQgd85fDphe6v01ko+qNLmsNnBtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-55b09d690dcso1380355e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766415166; x=1767019966;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGCklX6nhk27ftO3qYq6hWy6cA35KSKoGjf3nv6Hh2Q=;
        b=l0bEC0Osxfl5nIA1C1oovG5oHQZ42+BFcCUopa518Ri0DxwLaOlnUZivVlDuJ1ogm1
         II/bUa5uGeTTe+BxjcprbYIEsgX/D/D3bQ75KYYERuyEImsP5SsYyeft2V0nYuZWBn7X
         GQDzzJ2lZtPyNEyUfaS5k0ceYFctRXlQuwn+eYP8TB307TH1MOp45iAoW8PunWuIEFLQ
         zfJTBV2h/AyAOINaCiZIkLjrvr04LXWDS7/AB1ZZuzOyWqWVt3kt52IL++81Jn+RDdPZ
         ZM3a4X+F11eKfXOAeRwxAypcmyHdSMLcWGJY1LtNauqpJP76md5/RSsBBLk+0Jx+S6/W
         /urg==
X-Forwarded-Encrypted: i=1; AJvYcCUpSwrDlYB1vMA9i2QcAVRD0GROJYkS+tkm0qF7RllacgFgniO8QxXQBy7zddjKvkqVBqTDKA4QtmTv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy+a/4L+xc9Rmxvb5LJkEHDKwZZuVLynEjk6UJYJyXd30dz7Aw
	ImyOKiwVx56Rio1+CaTIWG23r17DRHnrqTPb59KJWx2NBHUdch3p4d3z1/HvMbTz
X-Gm-Gg: AY/fxX4f/TkE9/u2DofSDiErd9mdwBUE/zTWeWeEI37VYuuo17h7BTY9m944Md3GQse
	VcqKRAQPND+h12C0ysDPSESrCc6xHc4fBV0HbPMdWOqF0tF7syhPKjk4z1cUf78/HKeF5TaPVle
	XL2rCHHUK+kl99TEkx54SKxDOg8wkTy5fUmf8ftZFgc7rwj0mrUvj2d/6zF0UOWPQJWPicIPOup
	WqM4F4Lxlx7TpaT/dmBhsNhNRaG52ghp3IAH3zJlesrVTLgIj52N4AlmHpF6kXwPABcCLR32mMH
	+c0Nl4esFEh/HoGtQQsdfNBkdEhp8tfRhkZnJNRBF1MeXistoRDJvH6XVu8ROr1B5d90iN5+Jke
	wc7D/6vDAIZyROXUs082jFCgDxlKEdsZh8Y5jLBExNGCiTfqrVbpftZ+q4MSrZuygYz12vjRp0Z
	/vU7zKLSGaq4IOSmbTx8Iyli+tyM1bB+71t5nDHPhriOJ3KZiB
X-Google-Smtp-Source: AGHT+IHBFzpzmYsuid/bqzTGB5HbX4T9WfaVw2n5GEyr6mdh8TbyDklz5Skm9yavRv8966WuJmVPLw==
X-Received: by 2002:a05:6122:3d04:b0:559:dc01:8cd9 with SMTP id 71dfb90a1353d-5615be63348mr3701379e0c.12.1766415165921;
        Mon, 22 Dec 2025 06:52:45 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d1518d5sm3479654e0c.16.2025.12.22.06.52.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:52:45 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbdb139b5bso3359452137.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:52:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVd1DJw37R1PxZ2PvKPv4NOYTsA7jS+3QcTdgMFkJIvyT3UrxMZGEDIOAfpHgtOLyot45xWOKyPbjGn@vger.kernel.org
X-Received: by 2002:a05:6102:5e94:b0:5db:e2c2:81a1 with SMTP id
 ada2fe7eead31-5eb1a680ed5mr3966383137.14.1766415164900; Mon, 22 Dec 2025
 06:52:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com> <20251129185203.380002-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251129185203.380002-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 15:52:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXQza6zqvkwB5YNe=aQXVn-EmVzTMoZN2+sry6pBKB=tw@mail.gmail.com>
X-Gm-Features: AQt7F2pKMpdMjUiZR04D73IrP2c0AaqXRibSGSZwR5IkFpPnDOUz7u7qRlrurXc
Message-ID: <CAMuHMdXQza6zqvkwB5YNe=aQXVn-EmVzTMoZN2+sry6pBKB=tw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: renesas: r9a09g047: Add RSCI nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 29 Nov 2025 at 19:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add RSCI nodes to RZ/G3E ("R9A09G047") SoC DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Updated the compatible from r9a09g047-rscif->r9a09g047-rsci.
>  * Renamed clk from bus->pclk
>  * Rearranged tclk{4,16,64} clks.
>  * Added missing irqs aed and bfd.
>  * Used hexadecimal numbers for module clocks and resets, for
>    easier matching with the documentation.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

