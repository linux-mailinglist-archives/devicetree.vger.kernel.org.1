Return-Path: <devicetree+bounces-248760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0DCCD59A1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C4EC30365B4
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9B332E69F;
	Mon, 22 Dec 2025 10:14:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D70032E699
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398493; cv=none; b=PrauaFjpIfncFeIRRTnfdi3VfS340dDVUd4oQUNaJWCSfHwDfk2guemI//vVPtp3hIvwsKP8b/8GgXi8IMWSt0LfV/yKePiKq8yue+E0LEv+jaGKRIXY994TZ8CpJTKMySmGPvpBEiI1Epn6UD1w5AhACcLp7Gz/lpUDG63lIOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398493; c=relaxed/simple;
	bh=pYxC0xGJLfaMlKM2nphME9JmmJ1biPNjHd+MZwrmnFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ozDujfvYpS3+LsAEmGVZoVhw3eO5aiu73ER/S68WZzIaTCCetVUWdHG4da2PpFOq/jv1N8aUL/I3uHiYe01k2HHeqpFySx6MP6etZ/mUZBV9FxjvIWDqMZygxXmhsm1/VPurHm5hjSUhLYK0GZ5K8a+WlpdVnziobfeUs2mTk40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-4507605e19aso2541687b6e.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:14:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398491; x=1767003291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEzlntz/A3Digs4sjukIlKb5qv62LH8yawTgFzZ88fo=;
        b=bqlwXDEcM78wrCkBQkQ8rdAup2FBAzgKAV4ts6vt9evk3BMKToR2O4/wprjV9OyRLo
         CElqb9xi7pV8ElXbWxtupXDPy/sTgho649oiAKWKzb95sgmZGbB/AzEJfoEEGicX3Uu5
         aoelWSuC5kEKEH/ltsh9eddMrQhvYngJLACCLtDDdDnvxoZvf/LIcPNxzrYtGFSEkVRr
         g6zB+4zFGpU5ha/5DBMnfTy1SA0PgsWx88nyVuB18vDjvWBbehNVt83Vm1Yn9647JUMJ
         spm3KQ/NJfPJAxLOUn2sTt9qLz/nSz+jDOS0vMv6fBMmcpRg3axklUUL+ItyN/3wq3VV
         ab9A==
X-Forwarded-Encrypted: i=1; AJvYcCWUBHCOsazhV40id5MEbWCnN9K0+98SQi2/IRaC+nmJow48Po9xmJa+rxwDa0JUplRDb5Gq6M0KG7ie@vger.kernel.org
X-Gm-Message-State: AOJu0YwxJxW3lzt9Mod5gYsUua2GSXofKE+iFztTwhP1BYQvhQM5FNNR
	Ua9HqDF8zkC1NMsZDA6xJjWNonSbUFJ2Ld+H+qXlKg5rT3WMYUBwBiXX/tGWTCv4
X-Gm-Gg: AY/fxX6NLJLBMNF94engmBBRORTRNpjY+VdI6/klJUDubf7nj1jIOQ/zsZ2PXh0DT/a
	y74ib+BVt4rNV8kw2yWWDYQrERAQjHpkJTcBnTWFp2sulbSdoYMpD0TF3PjEtY9EIxbXpioL578
	HS6h0w0qE5zhcCItd20ZG4zdymEBTWtcCpJi0lzIEUucpHQQYm/Fb630PVnPSGpv6sLFWragOKE
	T8CIoUQ2aqpnwY1gdA7ek1nZMty9QZXJyAPsIU/1gPsiYQd9kAzoG+uTybIipPvs4SGsXu3Of2K
	xlaio12HH489YzOAsvWHbWevyLTWqD3JzpocxDH8lkEHl/7ybATgEIND4DUIY+OfwsqmcSvtOG1
	2wA8WwtTOj1BNlgsZCD66fejxcqkUK7Wei0KjnMFu+J7Rg70CzfWdE/dB5JM+nQybxG4EuJ34Py
	iPbB7CS5W+9Jk8aSvLpAa/9biCP+fF/+08xaKDUqmw73OvPWaFG0RBIs4s9owcSCE=
X-Google-Smtp-Source: AGHT+IHtMqhLeZjgT2qeIsZbwkeW3YZv/g/ZUdKcsDGv5ssL24PP/TokRXb8wEDOFHXpYnpK6yjHlQ==
X-Received: by 2002:a05:6808:1b85:b0:450:3ff9:f501 with SMTP id 5614622812f47-457b1fc2580mr5405541b6e.7.1766398491026;
        Mon, 22 Dec 2025 02:14:51 -0800 (PST)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com. [209.85.167.170])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-457b3cbd567sm5145714b6e.13.2025.12.22.02.14.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:14:50 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-4507605e19aso2541678b6e.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:14:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV2gwc/Nqa1cBYytGCBITpNEYknEC9oGDQsmUz0dYm1mGwRiEfdcoWHLeNmyjd+tu+OISw8q03jMm49@vger.kernel.org
X-Received: by 2002:a05:6102:3a0e:b0:5d7:de89:8dc6 with SMTP id
 ada2fe7eead31-5eb1a616c74mr2760273137.6.1766398102025; Mon, 22 Dec 2025
 02:08:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 11:08:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
X-Gm-Features: AQt7F2qgJlv5WWEn-8R7_EQWn45G6An5kBRt8R2C89e3bKVxcY7XZ_y43fEdjFs
Message-ID: <CAMuHMdXjAS6HOYy5=uxcK0RZL5X6agRoHG67QUw4xh5+ovZaJQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Josua,

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
> In-tree phy-can-transceiver driver has already implemented a local
> version of devm_mux_state_get_optional.
>
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
>
> Add new helper functions covering both aforementioned use-cases:
>
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
>
> Existing mux_get helper function is changed to return -ENOENT in case dt
> did not specify a mux-state or -control matching given name (if valid).
> This matches of_parse_phandle_with_args semantics which also returns
> -ENOENT if the property does nto exists, or its value is zero.
>
> The new helper functions check for ENOENT to return NULL for optional
> muxes.
>
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
>
> The first error message covers the case that a mux name is not matched
> in dt. This is removed as the returned error code (-ENOENT) is clear.
>
> The second error message is based on of_parse_phandle_with_args return
> value. In case mux description is missing from DT, it returns -ENOENT.
> Print error message only for other error codes.
>
> This ensures that the new helper functions will not confuse the user
> either.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c
> @@ -542,11 +542,8 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>                 else
>                         index = of_property_match_string(np, "mux-control-names",
>                                                          mux_name);
> -               if (index < 0) {
> -                       dev_err(dev, "mux controller '%s' not found\n",
> -                               mux_name);
> -                       return ERR_PTR(index);
> -               }
> +               if (index < 0)
> +                       return ERR_PTR(-ENOENT);
>         }
>
>         if (state)
> @@ -558,8 +555,10 @@ static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>                                                  "mux-controls", "#mux-control-cells",
>                                                  index, &args);
>         if (ret) {
> -               dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> -                       np, state ? "state" : "control", mux_name ?: "", index);
> +               if (ret != -ENOENT)

I think the non-optional variant should still print an error message in
case of -ENOENT, else this has to be duplicated in all drivers using it.

This is typically handled by having a non-printing core helper function,
and having printing non-optional, and non-printing/ignoring optional wrappers
around the former.

> +                       dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> +                               np, state ? "state" : "control",
> +                               mux_name ?: "", index);
>                 return ERR_PTR(ret);
>         }
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

