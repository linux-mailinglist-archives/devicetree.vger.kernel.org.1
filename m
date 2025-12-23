Return-Path: <devicetree+bounces-249000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2337ACD87D1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EFEF301A1C5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 08:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551ED30B524;
	Tue, 23 Dec 2025 08:49:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D912D592C
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766479782; cv=none; b=mvpKAyBgaK1JhkRntrx21pXLlCpGQC3rHeDYj31F5pEU6B5DE3TSzvZESbImL3EIka/Y4Bt+MS7lZ56Cu87gQSFtdV66Ivw7ln3ESYjqCnjP7BemzU6EGMFAj3XRBnzjpvyBDDKWste8TGONRBlZW4NG4XXGQ3bpOEKMakZ9oCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766479782; c=relaxed/simple;
	bh=s+kmYwgNL6OctNt2MMcD157g/Z2oIhSUMl95Uz9ZpL0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F1+PfakiQ8dVZ+l2eiasU4U1lfQRS+FoObZ8UvqUobKnHY2S5FgxYQLTnsjPWzRBO6T2n/GTUsh3qe3NkpJKKwg8LtLsc8vGWCuswVeb/S1fTJcKE0kMakiEfkwAXH+pPO1YUtGCXTUXFcjl/xdTvx3iSxMoE7ESQcktUgglZHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f69720a7cso2475629241.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 00:49:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766479779; x=1767084579;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aLyOBznGkxSR7Tg42fsvJfxJ85vAIxzqX0Myddf1pK4=;
        b=MDHqOHAgoyMdDKHISjFOfq2oe9RLwWo2k3ymNJkN0untCGHGpSNxxdZW4ZBoVjC2ck
         t/abutQ/W9evzBa9sqaFdkcZYYKJklN9WyrWoaHfruIv6ZiHmGzjIHHCfkY5Ad8vw/Ll
         arhEZvcPGAaDsFRb2GTLVcMbewTOYNKl1ibufjShuRAkOvhu6eUGqMkayQbhP6+5gswG
         7v96MlABxd8wB85Ukcr5hq+wUWZxCZVIEHNRvqs1pRBwmJ+jgENGL1FrwA8HQaJsjI9S
         V6okXgP5ocURkvxP++hPnc0i0W+YaErMvenASFNZfbwsRVYKJWaFqJhbRLTBb5CtC0/O
         y9yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkAkSbSUQgNNlEL9NqEmKCb6eGsA++K2+VZRkI04CIWl0Opz4SZ456/VCsVrJ3FXwIg62Y5xqwC+7c@vger.kernel.org
X-Gm-Message-State: AOJu0YyLm6b6rJxGn2o6Tf1bttfFy19Mtk60BBKw9xgk5CcyuC8xmdMJ
	OcU0j66OqFDtmFzNdcpN3fXSzzoDRJXELsiP9gXFOvYoRASnY4wBY4l0CMK0KM17
X-Gm-Gg: AY/fxX5NRORmjmyrM+g9Ju58EuAPV6OvWfwILLuodyKp4rkhl063xtyKn6g9jk6IDi3
	nZ2pDMznVM6YaleZJw2Pq+sGHnn5YNc+dQ2GWZ4o+pf7ODKBvrvQCn+UUH/EZTIpNYYHN/Z2v11
	akonZYDdUQ7qrL++pcqwW+jxTDY+5in73JOFS5Vdy7vGLgERRM9uBPY3UFBg/oRluz6vjOIDUkC
	Ge7540w4N2GyJIOAATvani4NwDsL6HZRBQVhC/DvKd1WGOu9a4gkIxF6EhZZCnmcsvd7Hhp/iRc
	t0xgZHFW3TWEucRgaxeszxbp/n+xnaLGVp+u//FSQP4cBVSb1+SnfsZXIan29RjE7P6urdRxsB2
	H9YErrkrRloh4y5jGwJY+AHOys95RxwjndlQr8N06RCTHj1YDVmuEqg8n4SXgN9+oDJbH71awEM
	7CxL5o8bs1JbT3D+rxqfuoaWrRnMP1FI08DPymJ7EqpIqgQkSN
X-Google-Smtp-Source: AGHT+IGEh7GEeZGR+/9BnmaHJzjCTkUzVCR8Oy/1rxCpAX2LlvivtBUGSahKF7112KnYVE4497euQg==
X-Received: by 2002:a05:6102:2d0c:b0:5dd:b61a:a9c5 with SMTP id ada2fe7eead31-5eb1a41029bmr4797483137.0.1766479779256;
        Tue, 23 Dec 2025 00:49:39 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1ac62fd0sm4242652137.9.2025.12.23.00.49.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 00:49:38 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dfae681ff8so3243963137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 00:49:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXcHBaHyO0vvRZ5IAFKkrkzVZEX9hBtaHIV11wCxLbnyIFK/Dbognj7d3Gb3ACHlMq3fKC9Z5gr4Xxr@vger.kernel.org
X-Received: by 2002:a05:6102:2b8c:b0:5df:ae62:fc25 with SMTP id
 ada2fe7eead31-5eb1a617d68mr4392367137.8.1766479778295; Tue, 23 Dec 2025
 00:49:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com> <20251129185203.380002-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251129185203.380002-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 09:49:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW5vhJTCjg6AtxDk3Okgzj_b5=8RBSNAR4at389oh-O_A@mail.gmail.com>
X-Gm-Features: AQt7F2rfbZMnGQeE-0yZRBi-ZG9yvNXdAG7YgQRv4iDUsC2iI5PptrCYLCh8KHE
Message-ID: <CAMuHMdW5vhJTCjg6AtxDk3Okgzj_b5=8RBSNAR4at389oh-O_A@mail.gmail.com>
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
> ---
>  arch/arm64/boot/dts/renesas/r9a09g047.dtsi | 220 +++++++++++++++++++++
>  1 file changed, 220 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> index d1bf16c6ff6b..824da0b7b85a 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> @@ -823,6 +823,226 @@ i2c8: i2c@11c01000 {
>                         status = "disabled";
>                 };
>
> +               rsci0: serial@12800c00 {

Moving below can@12440000 while applying to preserve sort order.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

