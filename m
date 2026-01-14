Return-Path: <devicetree+bounces-255118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D91D1FD0E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0DC61300E412
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B5439E19C;
	Wed, 14 Jan 2026 15:36:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4162E1F02
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405000; cv=none; b=mUJ0NLnpTzYAECRsu7R4szniWUNNEddoV7WaEoTnJb8PkH3EoyD1KbITRHZNXu0nEmHNSZ92SuKlAta01+/x3QkAgVLw6BXPBKIfxEEavBGeM0Nsuoh8MsfE/i8UstedRu3m/xn0MEl4DLJdthx24/n3/HYoB2uMxtDcbuXi4AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405000; c=relaxed/simple;
	bh=O8YhrdqWvzZyoq4CqxqmbkpSRKVqDxU7IFcj9d6kka8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MXSnUGDjCkQkpCkeEi67FVt9OGIqOOf2RQeHa4aBJbxeFLVAY09Nk06+lmwEwv2VwKdJhRNm/23Qie2/Bu0Pg5lBUZEzyVz2vc5LtOIFvg6ZzQpTUfe4/KeKAdKCkoQeHSfbm8tWcAnDaLe2IU7d50SpykOKHPFUQkBq5LFGbXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56379cb870bso1169845e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:36:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404998; x=1769009798;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8vpeO0iETHWaHO53ExF9TcMHcv+dXCbwCEeIoUj/6s=;
        b=rduFz2r3LJZ1KSLndl+dNCwoJllEF6UZa0iJax4yooEs7WxSvaj9GR/Z2c7JetGK6f
         UjmG0d48nCxs/QB5XBjv9zt3hy15dVDf10pnkmPBCOkI58/bKGtbs1tY+d1c9LlDORQy
         4rTVnD1lgYYbK8CSEsQ7I3Q1FohBjIwfdVuGq/rw0UhIVNP/RWU82IDfo/av7pFu9KEf
         dfZuWjFOazKC4A3NFDgjFbgvFlQqITem6sVryrmwceaL979J2Zp2MIgIJIur4pZqqD/n
         rOaF+jvK0dQc6yNhZhegx26rfgRKIuhass2ZyhIpnv+JhzQYOCfHAW63iUupIaggJlOC
         yUkw==
X-Forwarded-Encrypted: i=1; AJvYcCUCrD8+NFF6Sm/0OKNlQJPptea70ggILYNRSI5dDuvre/igspw4bW3obYm/Airb2FEcdNVWbF6D4UZR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf4f3d0EKCWVK5zrZfjcFjaDkethShcmYge8wbuEkBhfBBzXPw
	MAnuu0Da9TJsXITbaQT0xtRF6USM2cYjGMmVl/8sbKC2cAOWaeB8QSthYQdrnitM
X-Gm-Gg: AY/fxX6qupP3WTytpI868TQ63bU2fAufVeYRqEjsUU5Fm6EmVIW4Cniah3VwkRqq5qx
	364MmfqwhiDsPvPQqnLfnydVxxrG0H3x8Jg0zYDOSjozlZOuAlR7pR1HdOCSmblTO8AAH0Kx0xi
	1z0C2urvHzCb7xBhDML3//ia3tf2M60moP4HtRR6IqEN+72ME1W+UpskNLyEPcuu7AScKWlijy4
	eH+O5eo/o9i7Pqqmt3m6YH/HFjEPak0Avbeo7ePfp/HgCwzEfdCnTA2oDGaHDjx2+r0ATa/+rIi
	l2In/rlJZRH/lW33dpnsVljgbntB2oOS5dCn020AzxFUH/uI1CSXMvjf9XIWZJosJBi8c3geR8S
	ZkpbZkNp7Bm87Gupe4MMtN3EZNIeHR4T41A7M94+aaM611Qs+6cU6nXED7j1M7wsIDlZx0t04em
	CBvGG6RHsl6tNhZ7YYjHDbh7gT1S49sgbQgjsWHlrCVcuPTAiXY36d7XHvkYg=
X-Received: by 2002:a05:6122:3c81:b0:55f:c2cc:50a6 with SMTP id 71dfb90a1353d-563a2286f04mr839217e0c.20.1768404996851;
        Wed, 14 Jan 2026 07:36:36 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56367b7dc8fsm15823173e0c.21.2026.01.14.07.36.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:36:35 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-93f573ba819so3529975241.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:36:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUTyg6x0pq4vv3o6+vvXQTbs7eGWbIceVZ5llfgOMMVTVnpG020LFzHejDFdq9ODgdWc23xhIVERPUE@vger.kernel.org
X-Received: by 2002:a05:6102:a49:b0:5db:f615:1819 with SMTP id
 ada2fe7eead31-5f183896f48mr869822137.3.1768404994347; Wed, 14 Jan 2026
 07:36:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114151328.3827992-1-shorne@gmail.com> <20260114151328.3827992-2-shorne@gmail.com>
In-Reply-To: <20260114151328.3827992-2-shorne@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:36:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVdeepsCSMBrzUvhAFXj4zjA7VwRpxn+xVuZ0d1+9mTEA@mail.gmail.com>
X-Gm-Features: AZwV_QgYklX1dY-yBai_t1Hmyb0_GhAlHmkB-BntyC-t8YeO5tJVXZ8WCzYpBkQ
Message-ID: <CAMuHMdVdeepsCSMBrzUvhAFXj4zjA7VwRpxn+xVuZ0d1+9mTEA@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

Thanks for your patch!

On Wed, 14 Jan 2026 at 16:14, Stafford Horne <shorne@gmail.com> wrote:
> In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible
> string for opencores,gpio") we marked opencores,gpio to be allowed with
> brcm,bcm6345-gpio. This was wrong, opencores,gpio is not hardware
> equivalent to brcm,bcm6345-gpio. It has a different register map and
> is 8-bit vs braodcom which is 32-bit.  Change opencores,gpio to be a

broadcom or Broadcom

> separate compatible string for MMIO GPIO.
>
> Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> ---
> Since v4:
>  - New patch.
>  - Rebased old patch and rewrote commit message.

The actual patch LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

