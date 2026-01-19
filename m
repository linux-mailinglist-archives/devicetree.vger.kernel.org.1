Return-Path: <devicetree+bounces-257073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66771D3B717
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65143301A1C5
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B33C238C1F;
	Mon, 19 Jan 2026 19:17:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0C3145B27
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768850266; cv=none; b=kyyUYNMkdluZpR1bcEOVBM54IN848lpzOcCH7XNA6DEI+URHN+2Zl+7KQgJLHNTSM33lUyqZNJKd1PEvpFmTWNqxuGI+iBBM1fUdyHjevKrAgoJJNPLKfRpZt2hPjWQFwufJNXouKr7K7reRI22Wl4fwGimnj36jJvqf2GakuDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768850266; c=relaxed/simple;
	bh=/6iwuNMZc5kIHFz9+eHrkjYu4KucuYpwvc1o9G18MMw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rd2n0i+Q9dZBYaMOT3rZJAEU8+b85vXWC7Ajc32K0+MglxZaKpYxbFkfhmtmfThkMb+99HsPvlV/sX4j1X0fsEjSu88tOvPp2o0PzK5Z2EVIeShszhxSI4g8mh/5TZETIjldxvZbsmCib1aq0nSDG2Tp5ht71VD9HkCOHbYdPBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-9371f6f2813so1314290241.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:17:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768850264; x=1769455064;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/ksvhxDAHEK6GRShjDfoLa3UE0f58CuM5UI6afaKhU=;
        b=kQ+oBxLe8HHUTjXUgwzgOZn2B3WZp5zdBsUKTc3f0YDiJB6GCzp4HG6FEvinAefQM2
         y9/JSoCdokoGAOmdx9C1T1UJx58py+7Xyfv6I4U0HE/St04VzGJJarhGrr+wkADvGRgy
         ftMThf1g2u9WC+lAcR7inLqeUCP1RXjITjGUUTpzeyB3bOC+h+QrWzusxCUlR450+rTW
         DwQDrMQF/pwsTfYQPCywuhS/Nbsu53xM1EUn4ePYVR+QuyWJMfcv/LN9QQ+DjIqeNBbS
         fjpWZml2IcIcdST+sbTX0Ryg8urY3075PAKUI7/2CUjMnmogBlkHEHxxCSwbEgcFjLGS
         EOIw==
X-Forwarded-Encrypted: i=1; AJvYcCXDpq6zbyz7scOQQWyEQ/lpF+XsNz2cxk/M4qIQJPeUN6sSCG1o4blBUUoJg1ekYkYdJ83FslxToh2K@vger.kernel.org
X-Gm-Message-State: AOJu0YzmMy/bHxWjRF34E0otPak7onmWNyMkEYjSMQVEVr/B/469jdIY
	0qbe2DuGimV51paJ1ji6mEgSiKgtrW04j42rzYMY2wmroohYySun0dWkaWUIjSRM
X-Gm-Gg: AY/fxX6DR+pnArLMBitWvXTDBygXXgtXQ2qYRfo5gapjsDuhLMvpNXmaDbb3EKutixv
	H4Ok/j31GIFKEY4ypxkJaFp3U1mGOOPuBocYvOwUw49Md3LMz0zbw7uooZ0umuwUTKG6T2d6o+N
	O5hDLGds7Y3BUCuNsuaseB4TtpbDKtaV2eLnLf4vPHN4fPR67DUzNt4EL9h3MxtEaZ0iYN85paD
	PahkSkfkdGoM4Ppr0TWIdhToc8TbChpcsA25QKY/V+0jinXQD5yBgs782JjadMZ1s/6DYbcy08Z
	Vdy3qShfmTPz4LycHAd03uK0wjrDsYQpRC4ycNYZ/p9wurVjPgvL2VIF/etbNxEJAn1uAKyHBrJ
	fVSp1X1UeXkuoZJWwlz1AxVAAdvZkqI/XhtovNu0ODPQVSMoHIBVlBO29tOz0Y6Owy2jM1fWabR
	lJGL/gtr44Ibv/L1jSznKe+0aWCQxoMI0ocEoj8s9nCeLICkfr
X-Received: by 2002:a05:6102:d8f:b0:5f3:6a26:1277 with SMTP id ada2fe7eead31-5f36a261408mr1177905137.14.1768850263688;
        Mon, 19 Jan 2026 11:17:43 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6e5ed53sm3581018137.13.2026.01.19.11.17.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 11:17:42 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-9412cb281acso1417531241.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:17:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMc1qxJSQ1I2QvxwDCDwuY/Itj7xclFa69JyDGTgvTsT51upjULZ2iW59+/B8/FPGPCZ6P3v1rz7g1@vger.kernel.org
X-Received: by 2002:a05:6102:dcb:b0:5dd:84f1:b51a with SMTP id
 ada2fe7eead31-5f1a720e344mr3315725137.43.1768850261678; Mon, 19 Jan 2026
 11:17:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com> <20260119-soc-of-root-v1-1-32a0fa9a78b4@oss.qualcomm.com>
In-Reply-To: <20260119-soc-of-root-v1-1-32a0fa9a78b4@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 20:17:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVG-2qucH5dB40CO=8Haw080NqxE-zg=GyVmD2njs-ibg@mail.gmail.com>
X-Gm-Features: AZwV_QiDYUVl5G1JTvUBamxzE_5VCyogXoHB30dVWIYjGOrIgN6mvoOLoE2_KFA
Message-ID: <CAMuHMdVG-2qucH5dB40CO=8Haw080NqxE-zg=GyVmD2njs-ibg@mail.gmail.com>
Subject: Re: [PATCH 1/8] of: provide of_machine_get_compatible()
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Bartosz,

On Mon, 19 Jan 2026 at 11:40, Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
> Provide a helper function allowing users to read the compatible string
> of the machine, hiding the access to the root node.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Thanks for your patch!

> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -434,6 +434,19 @@ bool of_machine_compatible_match(const char *const *compats)
>  }
>  EXPORT_SYMBOL(of_machine_compatible_match);
>
> +/**
> + * of_machine_get_compatible - Get the compatible string of this machine

... the first compatible string...

Do you see a need for adding an index parameter?

> + * @compatible: address at which the compatible string will be stored
> + *
> + * Returns:
> + * 0 on success, negative error number on failure.
> + */
> +int of_machine_get_compatible(const char **compatible)
> +{
> +       return of_property_read_string(of_root, "compatible", compatible);
> +}
> +EXPORT_SYMBOL_GPL(of_machine_get_compatible);
> +
>  /**
>   * of_machine_device_match - Test root of device tree against a of_device_id array
>   * @matches:   NULL terminated array of of_device_id match structures to search in

> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -426,6 +426,8 @@ static inline bool of_machine_is_compatible(const char *compat)
>         return of_machine_compatible_match(compats);
>  }
>
> +int of_machine_get_compatible(const char **compatible);
> +
>  extern int of_add_property(struct device_node *np, struct property *prop);
>  extern int of_remove_property(struct device_node *np, struct property *prop);
>  extern int of_update_property(struct device_node *np, struct property *newprop);
>

Do you need a dummy for the !CONFIG_OF case?
This is only used by drivers/soc/fsl/guts.c, and FSL_GUTS is selected
by MMC_SDHCI_OF_ESDHC, which is OF-only, but can be enabled
when PPC || COMPILE_TEST.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

