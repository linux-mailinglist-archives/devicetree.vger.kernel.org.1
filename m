Return-Path: <devicetree+bounces-254901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A25AD1D995
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6140930D2D01
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FEA38759E;
	Wed, 14 Jan 2026 09:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C550A3803CF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383142; cv=none; b=kMPe1ooIoYCLBiVuL1DIIgzivg+/V4oPrduUt4BF19SlKU5gsgsn9Nn+nH+T/pJ+lzIljX5rDeV9EQApfU3erzD4m7dcd5cUqiQNBAh9uUaiCMs7K/7s49nVZJVAWGGRThe3xH2blmbt608YCNM5Xu7zmlrI6BdQZ8/UCJISArA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383142; c=relaxed/simple;
	bh=yoneIDgg3Px7HEZFC9PfXSJccPcj273iQf1nmWmPzLc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AVlG0edvgdLECbgfqWgmvEfYurFl5oMXLuC+cceGrz9/r4AfvRpk6gX6B6dBEGzYP1+inO6DrbSzt3FgrlOKxygjIaSInLIecYeLO23JzkUoIswUaIN/2uAaW+5LJ9NPtJHKkTK8QMS6U2GIFJnelwktX5RkEsijbnuKUqd7hw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55ab217bb5eso1396435e0c.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:32:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768383140; x=1768987940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zDJce+CzgnUUMSOqtY7/Bi9afy0UIdZaZUJnldMOyg=;
        b=Rm10GmixBkuijB2PTBxBDX7UEAtP39s93Vmg+VgghpDEFqrvJZ1sici05j1npzo5Sd
         ULDotkeXLgge4kClumFrkoaQuAiBo7Yx6tmDw5jdK8ZVb9tNPvOIUTVmkjBMUqQJkdxy
         DkBFVr35lG3EAaGsKoBVwKwfWf+PcPDpC5d2wqsfyle0LnqCYGQkNtQOVaoFSylLQttW
         o3sjyEtiOZnejxW8/0X9gpmEAVsmo3MAOFvPkMeROTJHq/BUT3E8PClH1cLMqbNIz87o
         1h8w6ftc46wgSPxhfbLg88vCoLphwmQM+YYe2a3WHEIMktTOQmmP4+GY3Vmcd3VUYC6k
         3nqQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6+rhLgEqYPzDprOIIMmGZrr32CLgcrJSaTqMzR4YPRVUGh6nTU339LUskc9mS+cne0pyCaygvLf6Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4OvuvbqUxL0As+PbGu2WuNtMm3xJJ6ekQqU46oEplSh6nR9FN
	AcA3rD5Q8ehGeIzdksaTQinMFHHDel/L0agZzaSwI2yJHg7r1yrHKWJ57Qe+A0Qx
X-Gm-Gg: AY/fxX4HFYl+6uQjX29UDGUkWvdxqXdB+HXtgjTxfEctpn2BpCvsVQCCoQwfvxvZxJe
	r7pm+DeTubYg4AsBlrNc5PeEIPnErAjAtHvsW9ira50VH1bPFBeBUTmYpebWcaDturpg6BoPvB9
	iB7omX6hROkOMyIDdKXdLNj+CGO9XcVzL7edfotcLg0OgMwdrNCYv2DxE4/WrLI4SE6ow/jNwyc
	YnbuZkem2q6x8cc7rFuPm4k1B2ZeZq3GnMIe2xfqeLJQnaQa6ljs18+80z6/z3AZu57RyFj14q/
	362tdRq3Y+yI2RGMUepe+/sG21LTsy7Bs7T+69vtzA/xVcuOJxTX5oe+5PezESM087P863y0i4r
	Uv/ZqzfM94En7HQq62F+jE2Usgk6TRSSEIJZSMqnuGCv0nvEQuvA9OntGNzeN1MksYNlqiOMZJv
	EVfhuSw9YjQ4+SnHe6wFPEB8JpjkONh3nce1IuPZLRk+Vxim3fkFCk
X-Received: by 2002:a05:6122:d8f:b0:563:5f68:7a75 with SMTP id 71dfb90a1353d-563a0a677ffmr630940e0c.20.1768383139596;
        Wed, 14 Jan 2026 01:32:19 -0800 (PST)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea810sm21922072e0c.5.2026.01.14.01.32.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:32:18 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5635f6cb32fso1800924e0c.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:32:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXO6tCQ9tnY5pJvF/iUHbKdjt0YCqCivf8Fectho6wVfIy9iIKEGve7Kfx8G5niHSS5N2aUSjnjKSp6@vger.kernel.org
X-Received: by 2002:a05:6102:3f11:b0:5dd:b2a1:a5a4 with SMTP id
 ada2fe7eead31-5f17f3f0042mr733928137.5.1768383138240; Wed, 14 Jan 2026
 01:32:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112234834.226128-1-marek.vasut+renesas@mailbox.org> <20260112234834.226128-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260112234834.226128-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 10:32:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUJBKnqU_HtF1KpZY-75iTWjZwedLbFSYLpgDfVHGsW1g@mail.gmail.com>
X-Gm-Features: AZwV_QiKgVRnWvbmqW5MDnkyAYhxg5wrvIwNyBPnn7EJexnd8UAobHHJuJB4uzo
Message-ID: <CAMuHMdUJBKnqU_HtF1KpZY-75iTWjZwedLbFSYLpgDfVHGsW1g@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/bridge: waveshare-dsi: Add support for 1..4 DSI
 data lanes
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Joseph Guo <qijian.guo@nxp.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Tue, 13 Jan 2026 at 00:48, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Parse the data lane count out of DT. Limit the supported data lanes
> to 1..4 which is the maximum available DSI pairs on the connector of
> any known panels which may use this bridge. Internally, this bridge
> is an ChipOne ICN6211 which loads its register configuration from a
> dedicated storage and its I2C does not seem to be accessible. The
> ICN6211 also supports up to 4 DSI lanes, so this is a hard limit.
>
> To avoid any breakage on old DTs where the parsing of data lanes from
> DT may fail, fall back to the original hard-coded value of 2 lanes and
> warn user.
>
> The lane configuration is preconfigured in the bridge for each of the
> WaveShare panels. The 13.3" DSI panel works with 4-lane configuration,
> others seem to use 2-lane configuration. This is a hardware property,
> so the actual count should come from DT.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/drivers/gpu/drm/bridge/waveshare-dsi.c
> +++ b/drivers/gpu/drm/bridge/waveshare-dsi.c
> @@ -66,7 +66,11 @@ static int ws_bridge_attach_dsi(struct ws_bridge *ws)
>         dsi->mode_flags = MIPI_DSI_MODE_VIDEO_HSE | MIPI_DSI_MODE_VIDEO |
>                           MIPI_DSI_CLOCK_NON_CONTINUOUS;
>         dsi->format = MIPI_DSI_FMT_RGB888;
> -       dsi->lanes = 2;
> +       dsi->lanes = drm_of_get_data_lanes_count_ep(dev->of_node, 0, 0, 1, 4);
> +       if (dsi->lanes < 0) {
> +               dev_warn(dev, "Invalid DSI lane count %d, falling back to 2 lanes\n", dsi->lanes);

"Invalid or missing"?

BTW, I doubt the kerneldoc for drm_of_get_data_lanes_count_ep()
is correct:

 * Return:
 * * min..max - positive integer count of "data-lanes" elements
 * * -EINVAL - the "data-mapping" property is unsupported
 * * -ENODEV - the "data-mapping" property is missing

1. s/data-mapping/data-lanes/,
2. of_property_count_u32_elems() never returns -ENODEV?

> +               dsi->lanes = 2; /* Old DT backward compatibility */
> +       }
>
>         ret = devm_mipi_dsi_attach(dev, dsi);
>         if (ret < 0)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

