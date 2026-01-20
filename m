Return-Path: <devicetree+bounces-257249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54220D3C4B7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B3A6E703E16
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B353A9DBD;
	Tue, 20 Jan 2026 09:45:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5466633EAFE
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902346; cv=none; b=pQqVwmPVdlD3+c6j17OfM1Xl7ppSl0CmM7u2nvEpXvtQfAvk52g7YbacjDdEOrhUQt7YbY+y262qrw9OJ8ddavRkhDpo7XDWgZDCMja7zEAawPtgf425bd9aIHPMN/Iw9qnALRoqnqDhH3dhx3OjuTlp4fKOu9YvLMZMQ5jdC4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902346; c=relaxed/simple;
	bh=Y2e+JbZ5geFsLrIwdXvR6J7aoCBZ+QeMG1PGfBHkwC8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lBMQaM1Rj+cjoy1CgFvbMvWgCtxIgs1nQ7svqRj58BQ/TYuGOmGNQPyMKHmk2K/xSt+uAnyVwsHtjhvfcYtAxzVokh9a8mceTHzqFcvtdiglYmwCHycd2NymEY9V09jIUNPx2qtXJPgp9IBe+DGV6PVT28VRlkaXG1RCwS1UwFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5636274b338so4223372e0c.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768902343; x=1769507143;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l18hDtqu7l45yo1vlmek39RB1c0Zv/I56SgfcgBEbBk=;
        b=n7rEZWSoujJsN1dZFopzIUXBGyRm1SIXtnNqfGnNQE4Wa6UrRPSoTO1F017td7qUfI
         UTVJ58gPoY+JIJtu+ZQy+Xbzln6DslJ3zxNSsfgnNUumcLm57fBpRO0zxKskEsjVhV55
         GgifODK7CVFMPnmv8WoOETp+zwW83ZJHPxmolgHKGLIOSUNypYCqgXkfa/k0+EMTVlCd
         l2KxLXiTfF4uNXvNnn2af5AJscphq7kWFxT04/xaolSucpMSGKVKL9P1MLa9bxXflrIT
         1JuoWnsHT09QC7ThMi/rLXivcmh8wiNNdYU/YK5OpduwhF/lQaRlthbJFqAPfbMN6Hq7
         Bz2w==
X-Forwarded-Encrypted: i=1; AJvYcCXYeoM680/GNcsOAlX2vuLFupI4rNo7cZ4DKk76lfZv9LdIQ/XlLfgCBrcz0oLhj29G2njwZWWLXJnw@vger.kernel.org
X-Gm-Message-State: AOJu0YxqN6WHmEQ4n5FVxEE5inqKEZcaq0Vpd7raKssKAQ4PRXkhizEc
	6Jkj0SASV0hWf4nrUNYsclMeLxeA+EzIirvlSYfr7fbzt9Q/rfYJltIX2vppQRdV
X-Gm-Gg: AZuq6aIjuZ6sbPzE9vVmwXL2i52PFaQGsck7JBjGfBkaWyPqgWC3yYbKqhRsuUYbYL7
	Dil2a08L9rmBS61tBXm1WB9jOU18RfPybIl/gUImLlyHtM2/jj2yb4aIrseEVqRUnBI3vGBWJ7G
	FtZxp23l2uFZSH3kBEI92GCqWuwRIDNoZLs7mbSmrr3HO+cQl1Bbw2rmZinbX1M9gKd/OV5kQqY
	wRLY8eAhHspMP3LYkusdao2v/RKuPpWVD8viXVZc49kQDyyx2U4ePyh90gUhyBnVehZvBx0LlJr
	Bxfi0KCnlb6mxXgovusECC9ofThTFhu0QkP8lYrK3K+A4tD9W7PhkTv4gxQx7vwYZ98jd49bSZN
	eEzbqPJohj79fU5klEtsk1ENdyIqrh7YnKI2OkQULziu1BD6nDHt11l/XOpRoz407JIyKIl9xjq
	48y+ay6n4bu9qQQdfoBvitvNVJFLK4e6aSxqufbu4Gp9C58kIbxKqi
X-Received: by 2002:a05:6122:3b81:b0:55c:be5e:e9e9 with SMTP id 71dfb90a1353d-563b6307edamr4527064e0c.1.1768902342941;
        Tue, 20 Jan 2026 01:45:42 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b70e58cesm3479200e0c.11.2026.01.20.01.45.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:45:42 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56367b39e3eso4334300e0c.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:45:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVT0V6OCH1B13m6YErUzGVIqyxzcVptyjW+aTmVsbv+vr2E4r4Qcxx0BjFlwgTAmY6Rfvv77SPjFRR1@vger.kernel.org
X-Received: by 2002:a05:6102:cd1:b0:5ef:233e:6b25 with SMTP id
 ada2fe7eead31-5f192508654mr6479996137.13.1768902342092; Tue, 20 Jan 2026
 01:45:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:45:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
X-Gm-Features: AZwV_Qh1sWLkk903wC1dLdg8mLxjiEBVkYZdOb9H2O-Zh60PCWOHx0RPYuQB8LA
Message-ID: <CAMuHMdWnpci1v1oQb34_QRtU-P3S8TSormmNudajT0e34EO14w@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Josua,

On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
> In-tree phy-can-transceiver driver has already implemented a local
> version of devm_mux_state_get_optional.
>
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
>
> Add new helper functions covering both aforementioned use-cases:
>
> - mux_control_get_optional:
>   Get a mux-control if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_selected:
>   Get and select a mux-state specified in dt, return error otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
>
> Existing mux_get helper function is changed to take an extra argument
> indicating whether the mux is optional.
> In this case no error is printed, and NULL returned in case of ENOENT.
>
> Calling code is adapted to handle NULL return case, and to pass optional
> argument as required.
>
> To support automatic deselect for _selected helper, a new structure is
> created storing an exit pointer similar to clock core which is called on
> release.
>
> To facilitate code sharing between optional/mandatory/selected helpers,
> a new internal helper function is added to handle quiet (optional) and
> verbose (mandatory) errors, as well as storing the correct callback for
> devm release: __devm_mux_state_get
>
> Due to this structure devm_mux_state_get_*_selected can no longer print
> a useful error message when select fails. Instead callers should print
> errors where needed.
>
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
>
> The first error message covers the case that a mux name is not matched
> in dt. The second error message is based on of_parse_phandle_with_args
> return value.
>
> In optional case no error is printed and NULL is returned.
> This ensures that the new helper functions will not confuse the user
> either.
>
> With the addition of optional helper functions it became clear that
> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> Add stubs for all symbols exported by mux core.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/core.c
> +++ b/drivers/mux/core.c

> @@ -677,7 +707,7 @@ EXPORT_SYMBOL_GPL(devm_mux_control_get);
>   *
>   * Return: A pointer to the mux-state, or an ERR_PTR with a negative errno.
>   */
> -static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
> +static struct mux_state *mux_state_get(struct device *dev, const char *mux_name, bool optional)
>  {
>         struct mux_state *mstate;
>
> @@ -685,12 +715,10 @@ static struct mux_state *mux_state_get(struct device *dev, const char *mux_name)
>         if (!mstate)
>                 return ERR_PTR(-ENOMEM);
>
> -       mstate->mux = mux_get(dev, mux_name, &mstate->state);
> -       if (IS_ERR(mstate->mux)) {
> -               int err = PTR_ERR(mstate->mux);
> -
> +       mstate->mux = mux_get(dev, mux_name, &mstate->state, optional);
> +       if (IS_ERR_OR_NULL(mstate->mux)) {
>                 kfree(mstate);

mstate is freed here...

> -               return ERR_PTR(err);
> +               return ERR_CAST(mstate->mux);

... and dereferenced here, leading to a use after free.

>         }
>
>         return mstate;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

