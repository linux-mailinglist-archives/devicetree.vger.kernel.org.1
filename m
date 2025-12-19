Return-Path: <devicetree+bounces-248244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BA777CD03A5
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3CC930337F0
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD3026056E;
	Fri, 19 Dec 2025 14:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ithLvDdD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164172036E9
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766153916; cv=none; b=Sw+Oq7PBii9MjYHEkQtXLc8wUD0j4z40+iJbLDHFwsE7NqhBjyejhCVjn1aTPMqpbAt53j0dUyEgz7S7caJbUOjraN4WnA7sX4Jzyqru9I06Tnnh4sR8EiKiUM1AFz9YcXpqseum+Rp9lkupxtAIaMcji+Bxyhk26na4m5AB2x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766153916; c=relaxed/simple;
	bh=fO8t7Sm9Y1Qo6OHm39adR17nTQQJ8cEqJE3nal0AYR4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ur/yP4axBFnz2jdXOW/9TYEiqttwKYST/BY3T00BoY8JlmwKrlaBKODgwRgCEr6S+ilowWSBKtyi+JFC01tPt0l5ajjJ1YMhjm1Q0q2vaaWtJ1rLmka0ovkdBdzExSQRMcMsZBjLh5mtA1iQnjfijKVt7car8aLR42pJ10k/EUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ithLvDdD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E26B6C116C6
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766153915;
	bh=fO8t7Sm9Y1Qo6OHm39adR17nTQQJ8cEqJE3nal0AYR4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ithLvDdDWHHVZcbBoulzCOVCb39zdUQOhRzvH/icM8QcPQPbQr81ld3dzwaRkef5t
	 sHu/ghMBpSnqhJp4oq/JlOLwe8msqaynphbuBm1uVIQQgiAI1qCWgCd0MepKZnRp8i
	 Z5HwpvCCLKFf+vnuMRmJTumAbZ2EbA6H1YdPBr1cXMuzvFCupn1vmKvh/PRTGwY6PH
	 Mq+r7SrjoBN9Xlu23bbwlFGoYAfEIr/ii97C0ywOyo7JLi5AowtCoBLBGDiwu0nsej
	 Y8xP7QZcysoZ2lALrW8IuxbJNuuN0Uzc+/UbF1EL4+mb7n6JeE8ZxbjEx3RIj2a6OV
	 Ka8pRfhQGBjSA==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b7a6e56193cso315392766b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:18:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUFKhBTiDIwb6psKL62+ErndoeoJcqatdB9aWzXktuHQPR7B2XUj+kr1I1EWKehS4aDIj4h1NZQguyu@vger.kernel.org
X-Gm-Message-State: AOJu0YxcMyiiyvTxezzEOvPb1956Y2C6CE1jKxIescAVuy27P+UsGneN
	q8o/tPKK/QEyznkngtXCT+C+Khv/XoMisyD5BEV37fuko7eaU5AL64kEM+SC9qCDTJqq6HqHHf7
	62Sfa3UCPznuZXCtA22ITttKUW25cNw==
X-Google-Smtp-Source: AGHT+IE0JVCOzVeghjlQwq4bSjRT/mzylIXu5jvhEHj0Wy1Yf8r4CUon41LaR3OHtNSfD9HYK81AaBD+mR5oVoRBCjE=
X-Received: by 2002:a17:907:3d03:b0:b76:f5d0:5df4 with SMTP id
 a640c23a62f3a-b80371d8c6dmr350551166b.31.1766153914451; Fri, 19 Dec 2025
 06:18:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219121811.390988-1-linux@rasmusvillemoes.dk>
In-Reply-To: <20251219121811.390988-1-linux@rasmusvillemoes.dk>
From: Rob Herring <robh@kernel.org>
Date: Fri, 19 Dec 2025 08:18:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJimYgXBurnEQR=Bjtx4NhfeCA+rBoK_2jvz_x7NTE3VA@mail.gmail.com>
X-Gm-Features: AQt7F2pgh_7FUBkNFlJc0SrSCuw_OgH3l-wjr6LOf9JYgpD44sEmL6P7n9itXJc
Message-ID: <CAL_JsqJimYgXBurnEQR=Bjtx4NhfeCA+rBoK_2jvz_x7NTE3VA@mail.gmail.com>
Subject: Re: [PATCH] of: property: stop creating callback for each pinctrl-N property
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 19, 2025 at 6:18=E2=80=AFAM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> While not a lot in the grand scheme of things, this eliminates 8*2
> pointless function calls for almost every property present in the
> device tree (the exception are the few properties that were already
> matched). It also seems to reduce .text by about 1.5K - why gcc
> decides to inline parse_prop_cells() in every instantiation I don't know.

Presumably it is still doing that with all the other cases? Perhaps we
should add a noinline attr.

> Supporting double-digit suffixes would still require tweaking, but it
> does match pinctrl-9.

Looks to me like double-digit suffixes would work. Even pinctrl-0foo
would work (which is fine IMO).

> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  drivers/of/property.c | 32 ++++++++++++++------------------
>  1 file changed, 14 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index c1feb631e383..7c6fe4529d73 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -21,6 +21,7 @@
>
>  #define pr_fmt(fmt)    "OF: " fmt
>
> +#include <linux/ctype.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_device.h>
> @@ -1358,15 +1359,6 @@ DEFINE_SIMPLE_PROP(extcon, "extcon", NULL)
>  DEFINE_SIMPLE_PROP(nvmem_cells, "nvmem-cells", "#nvmem-cell-cells")
>  DEFINE_SIMPLE_PROP(phys, "phys", "#phy-cells")
>  DEFINE_SIMPLE_PROP(wakeup_parent, "wakeup-parent", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl0, "pinctrl-0", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl1, "pinctrl-1", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl2, "pinctrl-2", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl3, "pinctrl-3", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl4, "pinctrl-4", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
> -DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
>  DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
>  DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
>  DEFINE_SIMPLE_PROP(leds, "leds", NULL)
> @@ -1380,6 +1372,18 @@ DEFINE_SIMPLE_PROP(power_supplies, "power-supplies=
", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> +static struct device_node *parse_pinctrl_n(struct device_node *np,
> +                                          const char *prop_name, int ind=
ex)
> +{
> +       if (!strstarts(prop_name, "pinctrl-"))
> +               return NULL;
> +
> +       if (!isdigit(prop_name[strlen("pinctrl-")]))
> +               return NULL;
> +
> +       return of_parse_phandle(np, prop_name, index);
> +}
> +
>  static struct device_node *parse_gpios(struct device_node *np,
>                                        const char *prop_name, int index)
>  {
> @@ -1503,15 +1507,7 @@ static const struct supplier_bindings of_supplier_=
bindings[] =3D {
>         { .parse_prop =3D parse_nvmem_cells, },
>         { .parse_prop =3D parse_phys, },
>         { .parse_prop =3D parse_wakeup_parent, },
> -       { .parse_prop =3D parse_pinctrl0, },
> -       { .parse_prop =3D parse_pinctrl1, },
> -       { .parse_prop =3D parse_pinctrl2, },
> -       { .parse_prop =3D parse_pinctrl3, },
> -       { .parse_prop =3D parse_pinctrl4, },
> -       { .parse_prop =3D parse_pinctrl5, },
> -       { .parse_prop =3D parse_pinctrl6, },
> -       { .parse_prop =3D parse_pinctrl7, },
> -       { .parse_prop =3D parse_pinctrl8, },
> +       { .parse_prop =3D parse_pinctrl_n, },
>         {
>                 .parse_prop =3D parse_remote_endpoint,
>                 .get_con_dev =3D of_graph_get_port_parent,
> --
> 2.52.0
>

