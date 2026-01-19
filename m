Return-Path: <devicetree+bounces-257080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B98D3B740
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E95BB300E464
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F31E2BE031;
	Mon, 19 Jan 2026 19:25:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E55296BCB
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768850743; cv=none; b=ikqKHEJW442mg8+JpS3tWlz4arJPGIiGQx9DWAxH11ioesXpKoqg/hiAZfpdR8yO9IaF5DYM77owTu7YMGu4SydUa2sHwWqwe619WqlKu6x4KjxR50AqIIhWkVdr7M0FghPBONhHBFQzH8XhFvLNuiM3yQxOmyAFZQBzYFhJY00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768850743; c=relaxed/simple;
	bh=6w5YfztAxp+kt70NlhcKY/Kkm11Las2qp371F9dYbyM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bU81gSlWJOGlRNl+/Rs+tKnJxmbaUzMEYAHByf2HRWp0k8WIAEM6A++7o5bySWOnDcKyjHRvyS5Q1LE/QscTP4fSuxDxdHSVnb0W4DUYFUMEWTaWopTGVIUSiebxxjcVyq8xQOqLeNdnzdHk17yAy66SZFLLa1GUUhgKQxoIpL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56367b39e3eso3957867e0c.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:25:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768850740; x=1769455540;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Y1wTxdZLJ7XhSQYYR0Ku2EXGP2C5XG02vKe6+mSL78=;
        b=cQFQA9CpscAanfYlTvMpXZFKRsjw5lod99KGByXpHwH4XsLbprH+vO9v4w88YqW2Wb
         ggfS736Gd/1hna/rI+McvQR/SkskSrx3KrVu3FNtx5mQXqf7fzolenNrjrrQhLxZ8uek
         r/XY5fCqlM+uiOM4MTS1OVIgBLTBcNvXy/m8tZLmRkQXpRbjh8QETjdtUe7cwamLvEKh
         qAhJbQ7JorVKdr3fl1L/6h3rA3FVC6GW6ERY8JQp+rGe9kCoyu4juvCSh96BdjrDljM2
         ko5TMSroGdd/889xYe3P1xbQTPI1Hf0bi5eIPY3ZpBdgBIXOIyjs+iOluYqpfDMKOZSV
         FZaw==
X-Forwarded-Encrypted: i=1; AJvYcCXSzL+9/g/o2100ZBdIMzdiXoKkWFVkU2CIbYZAvKktbJH664/x5enTz6hNCY9LIDA3LcJTx0pkylgl@vger.kernel.org
X-Gm-Message-State: AOJu0YzAlsm6gf9ugxQm8AF1UmUHkhrlw0g2QbWgOdPrj1WIrDGhFJ2a
	ZATwRhlL1OM2WOV8bWQGe8wkKNyfxHS4YJQcDE0LNfL57m7aoWvpkd3D0iNfea2U
X-Gm-Gg: AY/fxX5BXZIEtVnqCE87JYAiJebgWUOZ4c8l7iJfDyEjlXwdAeL4/OmnWrWrXYivKpP
	gUsP0T1wd5DhB7dRnopVCS1L++HrGYWWw+bOrYbkBog6SYnSVNqMJdPBKRcC5aBcjhnqr8dt7wO
	nsVWA0iFXhvHocTvvVT8GJ8ERjqFpyDUpExLGCnU8dEe5hd8oiyRAOAaBkPIDsIxpQILhz5L/Sv
	7a8JCBFpWCTjuw0Qa53KzQMxvMT85ZadXTxPn3YloWg9igT3xf32MH876sUBltRd8mkO3GFolCn
	z55oR5ytkVupglRmg4NpZRdSfeIVRRgWSop9EWN1+v9xlnfE2Zv5/Et1F6oF/rDZfxFYSnpRF+z
	Yr5eFB0OXMqsp/45EWzN/1gyg+5iaCZ61lqx7/f5lbHW47FxNbH8ZC6w9bd/NyelnrG9UE/gkLx
	s34O9onvQ4Xx818I3Hm5eoSGcSbyXJwgX7wUCA19xfWx26euFm
X-Received: by 2002:a05:6102:2ad5:b0:5dd:c53b:75cc with SMTP id ada2fe7eead31-5f1a553654emr4216292137.13.1768850739959;
        Mon, 19 Jan 2026 11:25:39 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6925726sm3841360137.5.2026.01.19.11.25.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 11:25:38 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5eea75115ceso4081118137.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:25:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUjesBOo1y9KG82O4Olfn0DOBQXE0zI7v4Pjexk/uhE88EE182ngPrni7Wq571m1FkVXt/WvXZsphy9@vger.kernel.org
X-Received: by 2002:a05:6102:3e96:b0:5ef:b32c:dff8 with SMTP id
 ada2fe7eead31-5f1923fb2c1mr5826988137.5.1768850738083; Mon, 19 Jan 2026
 11:25:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com> <20260119-soc-of-root-v1-7-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-7-32a0fa9a78b4@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 20:25:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU56p9jH8OZ5bpwKq8Q31C-8X85YAjiXZm8amYdo+Xotw@mail.gmail.com>
X-Gm-Features: AZwV_QjRSaQ_qXyXNZN9OqtIjEIE6rAZwNcvdO7jDgxqMH0vtYkLnv2_hmzs9Y4
Message-ID: <CAMuHMdU56p9jH8OZ5bpwKq8Q31C-8X85YAjiXZm8amYdo+Xotw@mail.gmail.com>
Subject: Re: [PATCH 7/8] soc: renesas: don't access of_root directly
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Bartosz,

On Mon, 19 Jan 2026 at 11:40, Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
> Don't access of_root directly as it reduces the build test coverage for
> this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
> to retrieve the relevant information.
>
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Thanks for your patch!

> --- a/drivers/soc/renesas/renesas-soc.c
> +++ b/drivers/soc/renesas/renesas-soc.c
> @@ -6,6 +6,7 @@
>   */
>
>  #include <linux/bitfield.h>
> +#include <linux/cleanup.h>
>  #include <linux/io.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> @@ -468,7 +469,11 @@ static int __init renesas_soc_init(void)
>         const char *soc_id;
>         int ret;
>
> -       match = of_match_node(renesas_socs, of_root);
> +       struct device_node *root __free(device_node) = of_find_node_by_path("/");
> +       if (!root)
> +               return -ENOENT;
> +
> +       match = of_match_node(renesas_socs, root);

I am not so fond of these of_find_node_by_path("/") + something replacements.
What about adding an of_match_root() helper?

However, in the previous patch you used a different strategy:

-       if (!of_match_node(imx8_soc_match, of_root))
+       if (!of_machine_device_match(imx8_soc_match))

>         if (!match)
>                 return -ENODEV;
>
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

