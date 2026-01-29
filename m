Return-Path: <devicetree+bounces-260930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II2NBsCIe2mlFQIAu9opvQ
	(envelope-from <devicetree+bounces-260930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:20:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C478B2103
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C167304A64A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4738733DEE3;
	Thu, 29 Jan 2026 16:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HtWuaZii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BFC33D6C7
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 16:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769703349; cv=pass; b=UV7jvHQ+b3h/w4Q5ZwIIFWm+fzKwy3EuMvsFp1HZ5LNIQwwgQQ7t8jUuVTntac6ySxPUlb7LUQgW/1s5zmNy3C+xaiy7l+/Z5UN7lp3NXm9h6wkiWz6FuvQ0usQlYJpYtGBjina4m+hi+eOxGyd3WGCXYcSvdZ9/w+lIk27PWSY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769703349; c=relaxed/simple;
	bh=1a2qdSYst23Ql9WM1gLQFpUCuswuU/Q+CP4seG8rf9k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eUmDgUakq6Puy6ftPy3+/zPLFHxIus31aGb0TafB8KvMYsqF+fPs+EnaXOCOlLgsxQzCF6bPbw9JUP63LauUOLzq57ANjRH2xwV69xFzHF3ZHeLXn5rVMavdeXFauojbZqzyGrTzkD1Ge4iRqQZ/BPAwJe0ilOUG237pC1YIYGU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HtWuaZii; arc=pass smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59deec3d8dcso1476556e87.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:15:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769703343; cv=none;
        d=google.com; s=arc-20240605;
        b=g8GTC8XhmmrTnRc0wCa7dTDhxWFU8A/pr0+IBaHHma2ClQiSdOMPiVp8kcgPWzSgzW
         f+DkKgGjmB8O3j0F+FSfhSjDd1BejhkoSU0kzJh5R3YUum+lY94jQ+vkbVLMKUUSN37u
         51npj2zY89SHNc58zc8zShIwirEuY0ols3M13n1VM+cH5mXR9rQ259DtInn3i5Yc+0qA
         MIdVBtX4pKplO32sH5bsNcXXN1Zp4gOqIlXrKkmXT2QJQOWi/AlQg7JPnERTGsYE5aUj
         fnCxziFtVHil05USsuXDIrnQvQHR8kS/0JAh2CU8UKJHwbxgJfcWIJoeft/sGukd5Aj5
         y0MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        fh=W6J9gBY2sAHoRGOxS2HmrlFOa2rgMU0g3iGW9KrSXqI=;
        b=EDcir5+QliudG/VhVO5C+zHKyy/1lI1GZJ50eDXvm5kjw60yznsMX3V8R69ed79C3p
         mSBvNEzBDXh3d1eYR6jA0mx+NIkVNUoLjScZ+aKkbNqzVW9kRoiUF/I1cR4sKPT9F94x
         A/PZYXuYUdwHiJ/jip5b1ZC44UBmx2E1vYRJhmPzbPJHrR3Jq/5beaqtPG07K9rp+0HS
         RkPLK+u2nqjf2F3rLsE/Vc3hATkx6FRDW3w/Xgzltn4ODCW9sbEPgCGLbBbJgf9UH/Qy
         ToFa8s1Wkf4JV72IYK0qZmlP02p1R2dEu7YRhV79+n7tJVJmbsm+KObJx86QJzUkGrBC
         QUMw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769703343; x=1770308143; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        b=HtWuaZiiIIttIDYuqQXvc9JwVdhw1g13h/MSl3cj41S1Ogt8ICxBfGSlgrlqdHD960
         BA4uczgz+WwyE+jKg82BAqrG7+xkY3jnQhPuJcu1EbHIOFz/NefO6ITbSGDtcLkQns0V
         8NnF7OF/kM498AUmRBINnK6kcgVezpFtE+LVc6uTNltgMhkFWRsaXVde1To+VDiOcaPu
         qXmRD126R2sDHYcthUEeOtMneu39Rt3sXWal1Ru6EMPB9IE+DrCyQPP4s0ClxvopG0WV
         7m2sre1fmjyGS/satGxi76j/FH3N2DELjnvIXdj73O6/Y5HuzamIVdXU4VKEhdMFdboG
         Ugrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769703343; x=1770308143;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        b=Jmrd7C1HVvTM9ATRtT7U7vXMpexrAM4SOviFHWVuHzx3Wm0Cv3/xUwub86tJkJ7GH7
         vn9ar5jhRSwerZ1VWff9pAo8Dftu8L1Or4kFNi/dZZcnKwq6JQQvniMdzfuYvjTb+bXt
         RB7mfF63adrLwmpNk63RoQ+lZrW4CFC5kEn2bEN9+6qOlG9yMOFmwr/KqfcPgESOdcd3
         z95I1YqZrNqbWxxODkNj4UIGoYbos+p3OzFcyEo43WZrrVlIEzorutOzmmRFMR2ex60i
         PXjsWmlsw5cC/wZAUcWgibuayYWrZnqAweEsjBQ1MnVVraR4G2JogcHpxFRxouJT+1/e
         gOKA==
X-Forwarded-Encrypted: i=1; AJvYcCXvlO8qU9wRbzWKe32gYRWc4tCRnfXug4Q1AGjdVMGzp9o0oVX266Bn8TAVrcE6c54kPPjyw0Q6LjZh@vger.kernel.org
X-Gm-Message-State: AOJu0YxdM7fmnol9oasSHrwvb3YC5+rzHqwmKnZTmxGX52FK9rL4jUJL
	2Vkry07p5epSq8pX0lEUyxsKbz2eoaXZwTKwKvsnlJcTCWb+iHYQKEU3m3qhCH6Jm/YYWTvroCF
	anJCR/feeQrRSkNc9III3KWmgy2Y03OZAnkWUxuO8GQ==
X-Gm-Gg: AZuq6aJTB19Xo/Wif5qBsuMmKSK7DJnrkj7fkXuPlo4nQ5P2BnXXy6g+AJn/IZXXYG6
	LDPFCHPjg6b34lCp9jkr0iCn8bFDnF7FbL6qKwzPPBqd9m/rjbqLGatdrz4UgVWTdG0nG8Ht1y3
	0f80WOl+pVoepPnnB2a2VKUETQOcT+mubRgZkNcCx2+Gq/eMzvEmRc09IE8fgOdTt4lopRVAWei
	bNMSF5URp2BZb4U8z9EO3KXvXHbG/HcWhbhn3f8V1obGkyBRL9UsufGpCd5R3jpPgqNhooC
X-Received: by 2002:a05:6512:1394:b0:59e:15a:d704 with SMTP id
 2adb3069b0e04-59e04015669mr4368983e87.13.1769703343301; Thu, 29 Jan 2026
 08:15:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
In-Reply-To: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Jan 2026 17:15:06 +0100
X-Gm-Features: AZwV_Qg3mhJxcxsaaNM16DuqcQOXYrDFWwz2xcBsELVK6E8j4cCnjP0a7TG6aus
Message-ID: <CAPDyKFp9StNf1eLaSETxC72=7sXYBmGFmHnv0CXysUGcYma5VA@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260930-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,solid-run.com:email,linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,intel.com:email,linux-m68k.org:email,sang-engineering.com:email]
X-Rspamd-Queue-Id: 8C478B2103
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
>
> Some Renesas SoC based boards mux SD and eMMC on a single sdio
> controller, exposing user control by dip switch and software control by
> gpio.
>
> Purpose is to simplify development and provisioning by selecting boot
> media at power-on, and again before starting linux.
>
> Add binding and driver support for linking a (gpio) mux to renesas sdio
> controller.
>
> Introduce generic helper functions for getting managed and selected
> mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

This series needs to go together in some way. If you like, I can
funnel it via my mmc tree, unless someone (Wolfram for the i2c part?)
has objections to this of course.

Kind regards
Uffe

> ---
> Changes in v7:
> - picked up reviewed-tags
> - fix Kconfig change to add the missing prompt for CONFIG_MULTIPLEXER,
>   and enable it by default when COMPILE_TEST is set.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - fix another kernel build robot warning: undocumented C struct member
> - Link to v6: https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com
>
> Changes in v6:
> - replaced /* with /** for devm_mux_state_state function description.
> - collected review tags.
> - fixed checkpatch warnings (space-before-tab, void-return).
>   (Reported-by: Geert Uytterhoeven)
> - fixed use-after-free in mux core mux_get function.
>   (Reported-by: Geert Uytterhoeven)
> - fix mux helper error path uninitialised return code variable.
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v5: https://lore.kernel.org/r/20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com
>
> Changes in v5:
> - implemented automatic mux deselect for devm_*_selected.
>   (Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>)
> - because of semantic changes I dropped reviewed and acks from omap-i2c
>   patch (Andreas Kemnade / Wolfram Sang).
> - fix invalid return value in void function for mux helper stubs
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v4: https://lore.kernel.org/r/20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com
>
> Changes in v4:
> - added MULTIPLEXER Kconfig help text.
> - removed "select MULTIPLEXER" from renesas sdhi Kconfig, as it is
>   not required for all devices using this driver.
> - added stubs for all symbols exported by mux core.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - refactored mux core logic to silence ENOENT errors only on optional
>   code paths, keeping error printing unchanged otherwise.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - picked up various reviewed- and acked-by tags
> - Link to v3: https://lore.kernel.org/r/20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com
>
> Changes in v3:
> - updated omap-i2c and phy-can-transceiver to use new helpers.
> - created generic helper functions for getting managed optional mux-state.
>   (Reported-by: Rob Herring <robh@kernel.org>)
> - picked up binding ack by Rob Herring.
> - replaced use of "SDIO" with "SD/SDIO/eMMC" in binding document and
>   commit descriptions.
>   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> - Link to v2: https://lore.kernel.org/r/20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com
>
> Changes in v2:
> - dropped mux-controller node from dt binding example
>   (Reported-by: Conor Dooley <conor@kernel.org>
>    Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
> - Link to v1: https://lore.kernel.org/r/20251128-rz-sdio-mux-v1-0-1ede318d160f@solid-run.com
>
> ---
> Josua Mayer (7):
>       phy: can-transceiver: rename temporary helper function to avoid conflict
>       mux: Add helper functions for getting optional and selected mux-state
>       mux: add help text for MULTIPLEXER config option
>       phy: can-transceiver: drop temporary helper getting optional mux-state
>       i2c: omap: switch to new generic helper for getting selected mux-state
>       dt-bindings: mmc: renesas,sdhi: Add mux-states property
>       mmc: host: renesas_sdhi_core: support selecting an optional mux
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml      |   6 +
>  drivers/i2c/busses/i2c-omap.c                      |  24 +--
>  drivers/mmc/host/renesas_sdhi_core.c               |   6 +
>  drivers/mux/Kconfig                                |   8 +-
>  drivers/mux/core.c                                 | 178 +++++++++++++++++----
>  drivers/phy/phy-can-transceiver.c                  |  10 --
>  include/linux/mux/consumer.h                       | 108 ++++++++++++-
>  7 files changed, 277 insertions(+), 63 deletions(-)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
> --
> Josua Mayer <josua@solid-run.com>
>
>

