Return-Path: <devicetree+bounces-256960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBC4D3AFD2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:00:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0B8F309282B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D654C38B7D9;
	Mon, 19 Jan 2026 15:56:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D19B38E102
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768838194; cv=none; b=jjAS4Zc728b+KcPo4ygo+DnXpgJdx/d19xezCN6R70U6sTYz2LIkR1K+GxVl20wbphI7+mlhSvA73VXXhyWSqbBU3ZY5mRmd6kWW1/LgVlCKrGVw3JXmkp+kv24X7Z2iW+1XuCwvGYg5JNFXtuGIKiH22vuqYuAwl3MmIx6ZTMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768838194; c=relaxed/simple;
	bh=Dp97EfgvlxD7c5USj7Zd8TdA26s/fLAuRxZfKhDVn8k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MYbzNd5thMjK0aZaxkDGDzLqNa6Q27sj5a+qIv/2jHGCkFL3wZfNfObEjdbgtOITIlkUAw00tD+FFNsZMMO9zIkOLcM/oNOhRUH7jGrRJoXjMFS9Uq+8rxsltfW5ujfJYF1aJUDVHw4WR/vfjsU2iiqQ7fnzCQjeTY7BQpKE8F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-947fcfc81aaso154990241.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:56:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768838189; x=1769442989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lIG0R7dTQh7juPXtId/WkTt26c5+hMUHXl8ZjoaDDHE=;
        b=liI8xqA5EKLeubf2pIWBMpatNTBB6LkaOQSY7W360qHvTVdPfoUlNetmMzeJZkdM+H
         bIDnVWxJzCX64uB/r0G6O9Kj8wQZuoToab1swMjdp6aQM+WgJs0p0f4kxWW7RKubR2q9
         Qcwaszgbg4XxSWgt48+Q5ET5uypGbGEll35K7nUlYxDkq3PIFGqrDZ57XyHp/i0tQcOu
         p1BjnT/yjOVmLLDXKHo9fJm+wZJj3JinY2dOa8c5Fcl/knypXpA1at7CTpQFBdsjSudT
         R00Sr9cmqARGrRs4qvV3jaYTjufK3Z1o+n0ymrL2mqPh51T6em+Rzl2Ed/ozMVCdOcJF
         CFAw==
X-Forwarded-Encrypted: i=1; AJvYcCVOKvRvh+rsxJjOLMHCnv9R+cr+bpYtCaCFolyK0W1MQCC9bBKvCFI6pTrBAW6KuzSmz9jr73Ks7afB@vger.kernel.org
X-Gm-Message-State: AOJu0YwX/MWJ6Clq4ohAafi/mS11uXCPnRx1GT2JdRGCBwr70zpMn2pN
	pKqfH0YuBGNJrMmm/6jyyjyDvxHv0JwblQ7qpufV5qePiJE0ctR/NNmGVgA8xim7
X-Gm-Gg: AY/fxX6oaM+OaYYpkS2pAqkahmLmtcIcOASAHN1Gv3x2vwAHMXvAXXWWhy+UNTxOnfl
	ygn6vXcVOjOC7jDSkbHRXi6ElUDcOk1B2T75dq/2Ww7+8HWnrxdOG/8zb+oafsd238+ETnNyq28
	9H5daLZ3jh636aYRhoBlD0gyV0ZnAevzXVZ7MR6Jd+q+zFLGHhhpcYgQsXa+ZwNHSo0ICgizBfw
	PPrxdOgi3/hfFnLjoebKTBvkJzeWhJZB3Ku/IuWzUZfmnSSNOoK7tciOeaaUwFvB8N1hYo7tBvS
	TjOevtjVY2NjJG8W6TioWlX2mXlPRexQVnQSdxFSLQngILGzsZKyGTVIMu6A2Jsmi5JkjHCvz43
	nm816Pam63hKRULCoS6axXEgPIVW5TN1NNYx/WAznk49E219T4iF07qirHD1mF6Op0GfP44OZ8C
	V0AzlNugum0IRH57WXYaIpG+UZ6bfsaroeKWV0SF9xd7EUjzBu
X-Received: by 2002:a05:6102:38d1:b0:5db:ca9e:b57d with SMTP id ada2fe7eead31-5f1a53b2748mr4267297137.19.1768838188687;
        Mon, 19 Jan 2026 07:56:28 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6e60c9bsm3471946137.14.2026.01.19.07.56.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:56:26 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso2704163241.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:56:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVGQ9QkdrsGhWnbIBvJyWH+hLnzgSLmCE/rUKTLFe14TcRuACa5DGI7b+O6WwgsT5ukllmr67UMrOPl@vger.kernel.org
X-Received: by 2002:a05:6102:d92:b0:5ee:a04c:7ea8 with SMTP id
 ada2fe7eead31-5f1a4dbb696mr4034214137.11.1768838185442; Mon, 19 Jan 2026
 07:56:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260117005028.126361-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260117005028.126361-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 16:56:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXHKJYcP78WLUfGrN8v+PmChj7jEsjhnVXYnSOzZ7mkpw@mail.gmail.com>
X-Gm-Features: AZwV_Qi7XL9IrXJqTbj9Y3MASXIhOVDU833eXHPX6YIuUQHpjkdHjq-l7kFo-k4
Message-ID: <CAMuHMdXHKJYcP78WLUfGrN8v+PmChj7jEsjhnVXYnSOzZ7mkpw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/panel: simple: Add Waveshare 13.3" panel support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
	Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Sat, 17 Jan 2026 at 01:50, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add WaveShare 13.3inch 1920x1080 DSI Capacitive Touch Display support.
>
> While the panel is described as DPI panel, it is part of a larger unit
> in non-removable metal casing, so the actual internal configuration is
> not known. The panel is attached to "waveshare,dsi2dpi" bridge via DT.
> It is likely that internally, this panel is an LVDS panel, connected to
> ICN6211 DSI-to-DPI bridge and then another unknown DPI-to-LVDS bridge.
>
> Current device link is at https://www.waveshare.com/13.3inch-dsi-lcd.htm
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4998,6 +4998,33 @@ static const struct panel_desc vl050_8048nt_c01 = {
>         .bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
>  };
>
> +static const struct drm_display_mode waveshare_133inch_mode = {
> +       .clock = 148500,
> +       .hdisplay = 1920,
> +       .hsync_start = 1920 + 88,
> +       .hsync_end = 1920 + 88 + 44,
> +       .htotal = 1920 + 88 + 44 + 148,
> +       .vdisplay = 1080,
> +       .vsync_start = 1080 + 4,
> +       .vsync_end = 1080 + 4 + 5,
> +       .vtotal = 1080 + 4 + 5 + 36,
> +       .flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_PHSYNC,
> +};

That looks like the plain standard 60Hz Full HD mode.
Is there really no other copy of that structure available in the kernel?

auo_t215hvn01_mode is almost the same, except for .clock and .flags.
drivers/video/fbdev/core/modedb.c has the same mode, but in a different
structure.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

