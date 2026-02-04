Return-Path: <devicetree+bounces-262716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C/jHPVvg2lgmwMAu9opvQ
	(envelope-from <devicetree+bounces-262716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:12:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC95E9FF9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B95230451B7
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 15:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74CB3D333A;
	Wed,  4 Feb 2026 15:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pBanTtoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF06261B91
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 15:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770219265; cv=pass; b=BAmQt4eoPshewRrHe3QnR7xuCkEiORrTsiXslZGEaIJJBEOurqBLP1+7qF2GcNtJ+TiFj9LInVmp9vOWydcETBNkyJb1on39dcT9h+z9wB5/HKYptAHEntQeDECq76seUKGjVRDDx5Y306hqNp3C94vtg8zCsCDDy04U/uLmJqk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770219265; c=relaxed/simple;
	bh=nlKsoL4i0v+dpEX8d/w92v6q3wSKthXMOjn4z01pwP8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nj3F2pV/vfsZzzlezksF+hsg/P6LdZMWC2WQ8piT/F6w/5vfVYQQM5ciz2t0N2DL+ASrOyyTihh+fR+h4h+zXpN2c6YshlWrPDn/ZjZwhfIsAzSeUkqQmwjUSSAhLzGpPhPIv4/TjDiJix4Iyo+8m5DCKO8SBEXwMnKRPU40gpc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pBanTtoM; arc=pass smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso10325107e87.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 07:34:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770219263; cv=none;
        d=google.com; s=arc-20240605;
        b=bXE4fPzQyr1VO4FIz4/d4yQumXp/C4F4Gh5SDHr38JYb4rRw27ggsm9TJoT2e1ANaB
         GEqj49wb/kMET9zgpfaX5y7NwIfkEbX6ngofMyjo/ZZ2QaXUk3SaBUIUMqQ1PnHfmijs
         cahGSLDASEv8sX04cW64XZJ7JjUZ4CAvH6/+obyWzv8jS0R81hZwGcWqTu9AnxkRYgXg
         8rwOJgLejXT5wLZmzRyLfpKj+UGyYV0+iKAj6McoSswGLXjKPnh9kV6BQbae9fUw5W0d
         W3s3j8vz/++nNgD/bFfQfYE1xKjmo1lcGfXgf444/rlpOhNF9g9AN1ZkmyRZKvBalZvO
         /4zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        fh=auo5DyqB90slSEUbROrEtiTGn4SjHufpiP25Lw62s4s=;
        b=b/t0DBuD0ofmxMYwRFdluan8MofFpptwRQUuRiF7t0V6eyaUjt9z55EMlTiiglASmV
         HQSjuyXdBBTotBbb6I5PAul9mbOnxj99+ivO2m0DmM94hK56U2ieVXI8IOonKFMuWiDM
         0DKoNhQ2t3AwQXhOvedZAjzliI8SzxNOElFF1qFXZrulrH/hyZuB8cRXAlBMdbQsWdGo
         k7DZaisrYizxZnFOsQ552p8rpvDyDwshWHnCewpGVSYsBzjn9MDAOxqNtjDNe7RfaY6f
         Ja0Du2+DjzZDOKamj3k0ZwnP7d4Y3EAtlIGBSfooFnV21gFzqYCvCNVS1lUJDighxyOw
         9qyw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770219263; x=1770824063; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        b=pBanTtoMvLNrPLrmbtThb+8EkALU8o+e1Rf1NK9EDF/mTIMxSG6WUsh5PHvLj0lVDd
         rLLYEJsTuk89Ikt4ESXLIRTjZjquPHEpd/OiH6cHB+9GsY94hRe+6ezqJBOKeSSlYnVY
         y9hAMGPC5gbROzcaBfGasf2Kp8QiBmAZt7+ctzhQt2hXOx49IEbV5aihVb69ER9ashR1
         sDu8zaF+L/YHX2sflPI1fJaVa9F/Ltz5wNRjpbe4qVoUkMkpaEFErL0xjKSKC18JmD4p
         VeimxaY3QXZfJhEoIpTasyUt3McSVTu+Vv4jB+uhNu+qzc1Mm6LKbye4ru/RuyZ+qOvu
         +Z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770219263; x=1770824063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        b=IU0+6t//zwU/pYfpRcPDhnbPLuT6QvKl7n9oX7pT2kHL9I11fDZb1vD6Qdr4kGoJTF
         13OdnhhqsE3o4g3pZnEQsk0BOw4UNEUopaPsd3K4WxqEDxcb3quCAJUY0JEaJ5xOsU5U
         V0VPQVHY1+DtBqWI2RPEewvWmx6bdAWNIu7H9f6LoG0orwmomxQhgETiYMZsxvjl5w1O
         c/u0Rn6fCzU9b3SeX57eiUY125u29QNmsOy+YHdvZ/f9XRTHG4/zhjZ3Zl7tcs8TLKM5
         vMH71xaNCldnKuUkwAU783WuhYapBrGtJcDPsdQSS2Xx+o1LN9yL0Ko4pX9kkQL+plow
         0bUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNH4KiM5j8PubnLo0P81ZkYlR97tYtP8pSdz2wiwg68V6j4C5UKuTOgFDDxC0EW5q77Ibg0oui7HaF@vger.kernel.org
X-Gm-Message-State: AOJu0YzXC6yuARDtyAjmQNN8+8f5YmsYHkajz5dJYC3E266pvuTzOvkV
	9UqXj7MDc+HTa/oj95QtpDoILHf/3LcOkTFB+JXo+e9MRnWq8E9tow2xzNzhRkQtmWJyVdwzIg+
	0V7h2R+iUr3FonGL8dpTQhmq2fxjwfxfD1uwAxv/EbA==
X-Gm-Gg: AZuq6aJFY5uVRJDmyfIN8zVEZldgSHh6mJD/W/yZjgZN1Tdb1CKt4/OCIiWweINkpK/
	WGd7ItWKU/h2iWigt14WjfnhdcZvBrB3dZWmk0/4kyjcjNbFz2G6+YQstkbPtzLLyGnwwFCi2dG
	PDG/RgLjZUEGDIzdW6GUy+5sVEwz/gX9K/uJPsVbAqvxYy5cjzvMCxjcXMZJn+TF8oqstrXPqwa
	xo38PQZUEMRpJUlzrZaI/67Nx8QhyaQbPZlOcgZxpNTS3zdvsYXE1nMKnvGNVgRTJ9jBD78
X-Received: by 2002:a05:6512:b87:b0:59e:161:652a with SMTP id
 2adb3069b0e04-59e38c27b46mr1376642e87.31.1770219263338; Wed, 04 Feb 2026
 07:34:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
In-Reply-To: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Feb 2026 16:33:46 +0100
X-Gm-Features: AZwV_Qh7tniAwClRnk-rPGRk4VKw9IxuzE_pomII0cTXEalWLMydXWCz4mlcfmk
Message-ID: <CAPDyKFoeKCPbsaRh+0t7=naO0pFvFCD3NV9nA7a4UOjxj4aDwg@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] mmc: host: renesas_sdhi_core: support configuring
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262716-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,linaro.org:email,linaro.org:dkim,intel.com:email,solid-run.com:email,sang-engineering.com:email]
X-Rspamd-Queue-Id: 8EC95E9FF9
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 14:01, Josua Mayer <josua@solid-run.com> wrote:
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
> ---
> Changes in v8:
> - Add defensive null checks for all non-optional calls to internal
>   mux_get function.
> - Document NULL return value on applicable functions.
> - Avoid IS_ERR_OR_NULL and ERR_PTR(0) to disarm smatch errors.
> - Link to v7: https://lore.kernel.org/r/20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com
>
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
>  drivers/mux/core.c                                 | 205 +++++++++++++++++----
>  drivers/phy/phy-can-transceiver.c                  |  10 -
>  include/linux/mux/consumer.h                       | 108 ++++++++++-
>  7 files changed, 302 insertions(+), 65 deletions(-)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
> --
> Josua Mayer <josua@solid-run.com>
>
>

The series applied for next, thanks!

Kind regards
Uffe

