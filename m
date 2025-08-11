Return-Path: <devicetree+bounces-203072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F384B1FF6B
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DECD162C40
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 06:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD9726CE36;
	Mon, 11 Aug 2025 06:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO/VIzJk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1784B257452
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754894219; cv=none; b=WQa1aQfumIhE5hs4qRjaAQHtNR/aF7/doERoZ/Nl5y2TlJQ4HU5YUlmVplYOoo7tCHb3GCkEALMjuqb8eGjHads9TOezMgMEFtj5Dyf0e/y7J/NY00n4gKUIwvD3K1e8LeMkxSi2TB34O+WOmAVB0uI2Dy1hx/jZ4l1sEK+iGNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754894219; c=relaxed/simple;
	bh=TAkKb+GwzMVZEi3A6tp7zglmhPEKp9E9776BvdS2RkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FX7POAX/lVVChSNOTdfZcOwRWqLPQm/99RN3+k8qvX9Jqki0myjrj0KVS1nHoUNGKmEX6fhh1k0/qSq/jpxYtefIMymWb68wzGgRJqsHow3l2zhWGY1YzonP+lti4bSp1ZuClcoPAfclqCNJsR9m6Otfk7o2O/QeTsmgjBWl7C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO/VIzJk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF725C4CEF8
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754894218;
	bh=TAkKb+GwzMVZEi3A6tp7zglmhPEKp9E9776BvdS2RkY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EO/VIzJkanp53gB3fy90v9P9a9lc3ybLWhQoKtbQ0l8tYAkJn70bvY9DEdI+mlVOQ
	 9f40eDKq5osoHg+Co04YHithvcRtMsDsy82pK+9BF0w26FjTSZagzaGfh/CHs+dc1E
	 P2Aunmfk0bwdGoBLM65S7YEHwFD4W/tLKtggH2bV8TeGQKhvtuOdQnWu1Df/pCO35M
	 YO+4K9jvLLbYeibYEaZO46dnBxnNXw7YvhmSovbloeXBJcfdN+TC8iaIYGm4Cmi9GF
	 c4IJbOpXndxAqAU4TssXZRpAS74bKcBcoCzngYt25+gvWPTySY90PdLSAScHTESsV9
	 DqMUzSBipOhAA==
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61813e2fc73so2302969a12.0
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 23:36:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX8El61M69QFhBRCAKWjTtDKK21k46kuky543q6bgc8EK/256d7TXoQ8MAOTjBAd596n1xLV5QJ9mkm@vger.kernel.org
X-Gm-Message-State: AOJu0YwIVydNKE0yFv3+cYJSjOjXxShVe8/ZE9G+63Oh+LfCVrN/9Fxl
	5I6hwjnD/jz362IqjVT33xzXbjfFugBe7DK2jHYEQCmCzBrcJ4JOHm5N1H/MFpUxIQo+NdF9sQt
	mexBsUZ9+KmADlmMYWiJcdR/R/5zBDUE=
X-Google-Smtp-Source: AGHT+IH+K+psA1IClURB1rkm9587M1kJsBTT4nC9DIShwJ+z9EKZ/x4f8CpP9bm6bTiA0ekm74ibs0RbSFElzSLbGjg=
X-Received: by 2002:a05:6402:2801:b0:617:d155:bc94 with SMTP id
 4fb4d7f45d1cf-617e2e80dd9mr11588787a12.30.1754894217160; Sun, 10 Aug 2025
 23:36:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <47545b7ed4943a088b27021a0fdbeaf56947e833.1754890670.git.zhoubinbin@loongson.cn>
In-Reply-To: <47545b7ed4943a088b27021a0fdbeaf56947e833.1754890670.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Mon, 11 Aug 2025 14:36:46 +0800
X-Gmail-Original-Message-ID: <CAAhV-H4h5qZ8gCjoKMKd8wBYG+secmTrHdo+AY1A60rmhKrCoQ@mail.gmail.com>
X-Gm-Features: Ac12FXzwE_q2FIPFkdw9NNfcXNZKdKVnCriK7o66Fy-FNERs2XMBw-uOH0VYEz0
Message-ID: <CAAhV-H4h5qZ8gCjoKMKd8wBYG+secmTrHdo+AY1A60rmhKrCoQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] mtd: rawnand: loongson: Rename loongson1 to loongson
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Binbin,

On Mon, Aug 11, 2025 at 2:02=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> The second step in preparing to add Loongson-2K support is to change the
> names of the driver files and Kconfig options from Loongson1-specific to
> Loongson-generic.
Is it possible to merge the first two patches? If not, it is better to
use loongson1 rather than loongson in the subject line of this patch.

Huacai

>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  MAINTAINERS                                                 | 2 +-
>  drivers/mtd/nand/raw/Kconfig                                | 6 +++---
>  drivers/mtd/nand/raw/Makefile                               | 2 +-
>  ...ongson1-nand-controller.c =3D> loongson-nand-controller.c} | 0
>  4 files changed, 5 insertions(+), 5 deletions(-)
>  rename drivers/mtd/nand/raw/{loongson1-nand-controller.c =3D> loongson-n=
and-controller.c} (100%)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4bac4ea21b64..cc502582c9f1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16722,7 +16722,7 @@ F:      Documentation/devicetree/bindings/*/loong=
son,ls1*.yaml
>  F:     arch/mips/include/asm/mach-loongson32/
>  F:     arch/mips/loongson32/
>  F:     drivers/*/*loongson1*
> -F:     drivers/mtd/nand/raw/loongson1-nand-controller.c
> +F:     drivers/mtd/nand/raw/loongson-nand-controller.c
>  F:     drivers/net/ethernet/stmicro/stmmac/dwmac-loongson1.c
>  F:     sound/soc/loongson/loongson1_ac97.c
>
> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> index 4b99d9c422c3..d9e3f13666ac 100644
> --- a/drivers/mtd/nand/raw/Kconfig
> +++ b/drivers/mtd/nand/raw/Kconfig
> @@ -462,12 +462,12 @@ config MTD_NAND_NUVOTON_MA35
>           Enables support for the NAND controller found on
>           the Nuvoton MA35 series SoCs.
>
> -config MTD_NAND_LOONGSON1
> -       tristate "Loongson1 NAND controller"
> +config MTD_NAND_LOONGSON
> +       tristate "Loongson NAND controller"
>         depends on LOONGSON1_APB_DMA || COMPILE_TEST
>         select REGMAP_MMIO
>         help
> -         Enables support for NAND controller on Loongson1 SoCs.
> +         Enables support for NAND controller on Loongson family chips.
>
>  comment "Misc"
>
> diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefil=
e
> index 711d043ad4f8..c182b9703a9e 100644
> --- a/drivers/mtd/nand/raw/Makefile
> +++ b/drivers/mtd/nand/raw/Makefile
> @@ -59,7 +59,7 @@ obj-$(CONFIG_MTD_NAND_ROCKCHIP)               +=3D rock=
chip-nand-controller.o
>  obj-$(CONFIG_MTD_NAND_PL35X)           +=3D pl35x-nand-controller.o
>  obj-$(CONFIG_MTD_NAND_RENESAS)         +=3D renesas-nand-controller.o
>  obj-$(CONFIG_MTD_NAND_NUVOTON_MA35)    +=3D nuvoton-ma35d1-nand-controll=
er.o
> -obj-$(CONFIG_MTD_NAND_LOONGSON1)       +=3D loongson1-nand-controller.o
> +obj-$(CONFIG_MTD_NAND_LOONGSON)                +=3D loongson-nand-contro=
ller.o
>
>  nand-objs :=3D nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_=
ids.o
>  nand-objs +=3D nand_onfi.o
> diff --git a/drivers/mtd/nand/raw/loongson1-nand-controller.c b/drivers/m=
td/nand/raw/loongson-nand-controller.c
> similarity index 100%
> rename from drivers/mtd/nand/raw/loongson1-nand-controller.c
> rename to drivers/mtd/nand/raw/loongson-nand-controller.c
> --
> 2.47.3
>
>

