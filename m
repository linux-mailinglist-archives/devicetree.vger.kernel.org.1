Return-Path: <devicetree+bounces-221820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75456BA3359
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:45:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ED3E1683C6
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD20B299957;
	Fri, 26 Sep 2025 09:45:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4147F26C3AE
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758879941; cv=none; b=Wt0OwSHqN0ND8TdLX/KY1s2/cciDsPXVi76Fka8Hn9jlS8jbHjDzgieemW0om5tEru0DYYjOr5MoIt216efXIn4qm2YyT6nGwaFNyhA/bcMcdaEExL9qWZCHofOHGzDDtJU/vmnAmkl60zP7WGN8No0AAuVeDJxImVKjyTEt7Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758879941; c=relaxed/simple;
	bh=yNpF3gakBewbf4gWfzySUblL/HPEFTHdWDap5s8c2rw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G/epJtwTq0VhvBtENmzCEwjVWRG0SVO48rosMLmnWMfqDDyt3yrDJX5xQZQaZcmB90o2d97IfM1hwipDUdmxfCfSaIqwyVIT4tn6QQ6sXsI2sGZs8jzB/ByYHeQjC3D+al6N5oyg+9SRKTJ5ZvdQaMjS3QBeC2KMLnrb+8cpytE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-8e286a1afc6so1140583241.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:45:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758879939; x=1759484739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wz1Y2OO7aX1FKDkec9bCJzTd14gDBikA8iaq+l9tIyk=;
        b=FS2D/0TfQwb4FtbgzoNTug8BLWmuFlVTRT/BlxI1P5byMm7FLPdBclWjrcLda3qlCE
         4usKkFDi+bdK+gch0rr4bnu46QQlSE6E53ifYB725slzh3eDEXBenQzOHJYLS2iy8TX3
         hYrTaIXjskyKZmQWFXibdOJe7A4K4fqskbL1nfqCeOLO9dUsFTE+APKD1YaGeTbAf/Jj
         fq9G8UPoliN3QDRcg8gGzHFTLs3nIgZPQxL+UcKzOKhCGh0N64u1dLj9nbNLvhhINFKv
         ZCvxYEsyhWFsv5FyfnfanrK1XqPzHAkxCO5WxD/6HPW5xmAbNiFH6IRS7O8mkeLIKFxM
         uwCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKxZZ1dxxt35VqmZiQMNdUybnTfLdQgol8nr8IzMzkVvnsZIJae2IJoW3sYFu9+MmSrpj1XlXYQhLv@vger.kernel.org
X-Gm-Message-State: AOJu0YzOrOP8DebdxGheb+Il/Vi5GdOpcYjXITa4PRIwmf6ckar4/5cP
	3WlP6GxRZdbYF131DoMnnco39b+rkIpaalIMFWcdVol4ARrxquXmPPn3Zrz0SIh/
X-Gm-Gg: ASbGncs5Y57dDYYeDtrNPbmpayI+ntgl1Lmkri9rjWQZF0f7E8Nu9HeC5b2M3mXWvT8
	akyX+73AEfC/t2ME1siSDnU7Y1kcwYkOr8c4wEisdloUlaCwyVj/KsJxcMqgCBt67FDaO9b4Voz
	kG1u7zsthtuzh7CEparcyEgu7vJBAKkMGnevy5j6eFmlGGxEbl8EnxSVFffNyB+PXUT/rtQ6tGT
	wIxhZaVoo+J3TIPOL9NPOtrAGf9tXB9gjJ9t+sKcRYPCdfzI07wYnqBNkLqtSTWct68m4oMzVxS
	EcykxWdRwO9n+E1NGVFYjQcsPVx3HrozS6zYA3a6r/SZJ49x00X/9FcyN8kOAYV3tTlvSvR80zC
	sdrY/ZqnboG9gx8X5OWu9fTRVHkUswX57RrQvUn97QYZWLSbsIQ4db5QDB2v8OK3UW5QV6Z0=
X-Google-Smtp-Source: AGHT+IGp67LMu3Ekv20QEJdEQ79QDrNhpdPhHKXg3E20HSA82fzJnGjntJ1HCbVMGN1CI88LEUid9w==
X-Received: by 2002:a05:6102:3a08:b0:52a:1104:3029 with SMTP id ada2fe7eead31-5ae1e69598fmr2748113137.17.1758879938847;
        Fri, 26 Sep 2025 02:45:38 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae305d0c44sm1153125137.1.2025.09.26.02.45.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:45:37 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-528a601a3cbso1692910137.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:45:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXUBO0z7Dc+cOMYct/esbMQBG8JAAfSuR2MOOMLjirKM2XxOmmquh6gN2jycluDbrOlLs4lTuntiLTY@vger.kernel.org
X-Received: by 2002:a05:6102:1452:20b0:58f:1e8b:a1c1 with SMTP id
 ada2fe7eead31-5ae14991836mr1929645137.2.1758879937242; Fri, 26 Sep 2025
 02:45:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com> <20250912122444.3870284-4-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250912122444.3870284-4-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 11:45:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWmjj_bKhGqhWcRvWap1U5izT347Ffo5wqs6OP9BvO8PA@mail.gmail.com>
X-Gm-Features: AS18NWDiRHr7QXCMqaoImEEYFri-rFsQBU5GFbqAD2ZmUrWNkjrXvGfEFMFxCMM
Message-ID: <CAMuHMdWmjj_bKhGqhWcRvWap1U5izT347Ffo5wqs6OP9BvO8PA@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Clausiu,

On Fri, 12 Sept 2025 at 14:24, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The RZ/G3S SoC has a variant (R9A08G045S33) which supports PCIe. Add the
> PCIe node.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v4:
> - moved the node to r9a08g045.dtsi
> - dropped the "s33" from the compatible string
> - added port node
> - re-ordered properties to have them grouped together

Thanks for the update!

> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> @@ -717,6 +717,72 @@ eth1: ethernet@11c40000 {
>                         status = "disabled";
>                 };
>
> +               pcie: pcie@11e40000 {
> +                       compatible = "renesas,r9a08g045-pcie";
> +                       reg = <0 0x11e40000 0 0x10000>;
> +                       ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x8000000>;
> +                       /* Map all possible DRAM ranges (4 GB). */
> +                       dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x1 0x0>;

I would write the last part as "1 0x00000000", for consistency with
other 36-bit addresses and lengths.

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

