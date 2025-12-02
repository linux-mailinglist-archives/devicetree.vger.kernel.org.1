Return-Path: <devicetree+bounces-243730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A87C9BBCD
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 15:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 284DF4E3A24
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 14:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C31322A04;
	Tue,  2 Dec 2025 14:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4678A31578E
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 14:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764684813; cv=none; b=lYtwtVmb+trxD9O21gx0rO4PJ4FT2ZY8mrz8LwzdgOeApdsQn2TkHMn0HyESIefqDapbscNy47H7sAwR3bmHJXDlKPlWquXxKQnydPTbuX8yDhZhkNswycIwWlrmEYYnWPqMXwdwkhhUD+BGxLXqbqTWCLx+wb8h+X+503vA4zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764684813; c=relaxed/simple;
	bh=vHUrQ6w324fYnCNxiHl4mdFInNGEkkrZLMojf3dBXGg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TsaEmJV6KAqLpl5+SkjwEnbxTf8KCHXKy3JYz+tXy2PF6pKoc9DM/gyZcayKQfjsNY2Gag053K6d2B0aN8V7Qm4BpaxUgnCYoL9okknrbc49NDbMv6Z12B19OczX4zfmhyhxGMVEdhWuGOWIFBTQmGT4Du2+aii4fcDom0jStUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c6d1ebb0c4so3539686a34.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:13:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764684811; x=1765289611;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P35uIC8+DPfTCMfHgmdtX7Glr2h/6n9nJWKZMAhyHf0=;
        b=BNf6GLszzIaoMEESUNHzhE0dedAfaKChyzomW1hkOF0kUz737j/aCKlUXjLp9gIjkP
         912/Zhhf/vJfZRObJ7ZK5LgP2VGF6iQsudpNvK+mSi3Z7+hTeHqtGYMG3csDgDbZWt/q
         EDUOFMikwuTFqg/5NUEQtZj8znhk56ac/sMAeCBHb7RCmaZBMoUKT+6mVAClcdWslWqc
         289Ur9NFZhI7ddKbKMX8JaBWgXb/fQFBDLqhKHsou/PgS/oB5N+Z3+Qx76hGgwLekjmF
         KC2iSSd+oGBpsA0zStAUQmzh0Y0sWtUgR8izYxuJff+1yjvIar2nh/zU4jbLQON88h6R
         1rfw==
X-Forwarded-Encrypted: i=1; AJvYcCUzm4FTuXLEUb6DUYbMXo8L9fE0/SNOVYH0QIjFCOYGfkqXy0M770Ue0Melau2A1tkbZSNxItBTOI5e@vger.kernel.org
X-Gm-Message-State: AOJu0YwoMY/jwgl8dgG35LReJmC3y8XyK2/Y9ZOF3wIAc0PxKuRNg4qq
	V0KY8N9xXnisKIgJpegSiWYFfpmjJjXeSxLLE3ONUFn/G4DEM90Lo429dQg/RB+H
X-Gm-Gg: ASbGncu3bXvQp3mjj3IUIxBOmF4ih3xSiEBpl4F80Zq0vmV33zHdUdy5w4KQehf/YRG
	bYL5QLlDh+ZAAkt3rUyuuJm6eydrpKEGbfJl173SIqL97P3HOUPAv+CCJN3NgNNcGp7E1fQ4qsQ
	N/Ykm3UkGzzmppLiAfe8ryoEdXYOBI60sj1IOIcAbYb9zIiu5WgaWgc2DD0gABC6xUP5Mdiwb9G
	8n0qbLCfvA1DumL5cuAmSc6bcBNtreVvbi7KZu9y2iJ+MCch/dHJwH4A0ZvSycn3lEZaoMGe38j
	eTlRn3UxODmftyQL2smXnAAkbebc7CobMiJP2oWTflhl5+15dqki6G8bPI4k0F0Bep21MZ09BCX
	G0c1qGJYGiUhPZeSBgobBXj9EO95nzLExFziNfHHFvLKtrlPwY7FyKjunFATTcCHobvvw0ym7wD
	0FVla351URGbraUvM0gDWGIfJxEGd/pOPBUNeoGc92EZqqh2NIvvSH
X-Google-Smtp-Source: AGHT+IHyK+mw23qpzIhlfzINr96jeNO9WPtM0PzlLDactp6qfqkuCgRWv2w0xmnc8ShqOqNRch3wwQ==
X-Received: by 2002:a05:6830:3984:b0:7c7:6a17:ba35 with SMTP id 46e09a7af769-7c798d04591mr23144852a34.31.1764684811221;
        Tue, 02 Dec 2025 06:13:31 -0800 (PST)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com. [209.85.167.182])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c910026bacsm6665893a34.30.2025.12.02.06.13.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 06:13:31 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-45358f9df20so627303b6e.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:13:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW+QAGyGXRQqIA16JP0RuCmU/T+fwWfSNkhAUNUDOw/Cj+y/s+ns0JkbC1HH5bzOl9JmFMoeP/znFU3@vger.kernel.org
X-Received: by 2002:a53:dd48:0:b0:63e:17d8:d977 with SMTP id
 956f58d0204a3-64302abbb9cmr22209916d50.41.1764684434875; Tue, 02 Dec 2025
 06:07:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-b4-of-match-matchine-data-v2-0-d46b72003fd6@linaro.org> <20251112-b4-of-match-matchine-data-v2-1-d46b72003fd6@linaro.org>
In-Reply-To: <20251112-b4-of-match-matchine-data-v2-1-d46b72003fd6@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Dec 2025 15:07:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVAZpp7M+pp27+kHZwoet2Q8Rm-Y4ePu7=W_1oXhebLmQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnQtK_C28o8ts-DX6QMHSfgR5FWBqGmuyp3cjxdu41cx4XkoPs5W_lQhYE
Message-ID: <CAMuHMdVAZpp7M+pp27+kHZwoet2Q8Rm-Y4ePu7=W_1oXhebLmQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] of: Add wrappers to match root node with OF
 device ID tables
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for your patch, which is now commit 4a93adcbd201aad5
("of: Add wrappers to match root node with OF device ID tables")
in dt-rh/for-next.

On Wed, 12 Nov 2025 at 11:30, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> Several drivers duplicate same code for getting reference to the root
> node, matching it against 'struct of_device_id' table and getting out
> the match data from the table entry.
>
> There is a of_machine_compatible_match() wrapper but it takes array of
> strings, which is not suitable for many drivers since they want the
> driver data associated with each compatible.
>
> Add two wrappers, similar to existing of_device_get_match_data():
> 1. of_machine_device_match() doing only matching against 'struct
>    of_device_id' and returning bool.
> 2. of_machine_get_match_data() doing the matching and returning
>    associated driver data for found compatible.

Shouldn't the first function be called of_match_machine(), and return
a const struct of_device_id *, cfr. of_match_device()?

>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -434,6 +434,53 @@ bool of_machine_compatible_match(const char *const *compats)
>  }
>  EXPORT_SYMBOL(of_machine_compatible_match);
>
> +/**
> + * of_machine_device_match - Test root of device tree against a of_device_id array
> + * @matches:   NULL terminated array of of_device_id match structures to search in
> + *
> + * Returns true if the root node has any of the given compatible values in its
> + * compatible property.
> + */
> +bool of_machine_device_match(const struct of_device_id *matches)
> +{
> +       struct device_node *root;
> +       const struct of_device_id *match = NULL;
> +
> +       root = of_find_node_by_path("/");
> +       if (root) {
> +               match = of_match_node(matches, root);
> +               of_node_put(root);
> +       }
> +
> +       return match != NULL;
> +}
> +EXPORT_SYMBOL(of_machine_device_match);
> +
> +/**
> + * of_machine_get_match_data - Tell if root of device tree has a matching of_match structure
> + * @matches:   NULL terminated array of of_device_id match structures to search in
> + *
> + * Returns data associated with matched entry or NULL
> + */
> +const void *of_machine_get_match_data(const struct of_device_id *matches)
> +{
> +       const struct of_device_id *match;
> +       struct device_node *root;
> +
> +       root = of_find_node_by_path("/");
> +       if (!root)
> +               return NULL;
> +
> +       match = of_match_node(matches, root);
> +       of_node_put(root);
> +
> +       if (!match)
> +               return NULL;
> +
> +       return match->data;
> +}
> +EXPORT_SYMBOL(of_machine_get_match_data);

These two functions are very similar, but look different.  If the
former would return a pointer instead of a bool, the latter could be
built on top.

Even if you still prefer returning a bool, they could share a common
private helper returning a pointer.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

