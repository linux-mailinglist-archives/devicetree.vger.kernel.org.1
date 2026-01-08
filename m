Return-Path: <devicetree+bounces-252724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118ED0235C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A7DA31133B4
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F2A42DFF2;
	Thu,  8 Jan 2026 10:10:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083B3410D03
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867013; cv=none; b=ruFJXhYtMFnd78hF/8DdQ4KLPAeFB1w5gOGVSlJexBd+V7seVtT8LxpQqUqGliK3mPxEF+ON5pJZjfgFqbwy1mPetR2DO+Usz1SIvLZxIniC5LL+dM3S/mX17AJ6ueGsMgXsws4Z0PJQdTp/ReUl3jZrXmKjdLb4IEc2CE2Cyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867013; c=relaxed/simple;
	bh=0Qoyg6zJTiDIb6UdJA4hodeaRzpEp1Nh0FPVN+IVrds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Llo61gsIeWoAdeap65nSoZHkOqTcEGMgLV5I2/KkVujlh8epYMPIllGSpEQfDnn1+0nrveNS6dEc8QhIkUn1JAQ8AqB0me5pfBJBXpanpzWKctfeIEqzDlU4WrXiJTQg0NKfFxGSr/98hianInlBgDu8qxgSCGaS1BLwdx8Z1Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso1747716241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:10:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767867009; x=1768471809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jeKGajEqxk3IRl+qaAEOKYHPYyjFHsiFRTDk6Rz2dpk=;
        b=GDCVJAIRjpgdMalmNeepHivUxW27StG/fclXUsNamwXfDVASNNqzsz/VGgWJ3oQUb3
         jqh40M37YZNV2+/PpeXYXdOgVQx9Dmuyz1NF3CZLN9WQLmr34/PaeHaAObbVFsdscHMf
         gl3fsAbsaVWV62gq16nDmSzhoix499PAfbN7RLCrRJzbRcqg64mROnjQ6BM+Msdsx4gs
         jReQNh82qwKWX01MWAgSPbbF9X0c36YNU/qTUebbW/Tdkm3Ejkl3aQeI7uIINAGrXnFB
         tsB98hph7PwPEvfWNS2DSiZ56n79NS4X8Jx9vPx8nYg/RDQG835qWMcLfdP3urYjK+6S
         EfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjYG+d2c1Zj3G0CVcblvpk2SODLbhmQTWjutgTSPfh/NvjAbLpdUtZBYYNA0YQVAweejFzCqfUXnAX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl1Tuar39T4vzY7cyxn2goaAJKIHLcbILABMdXhOTKdMq8n8h1
	VzeUqPVhXMBH3aLajcHtwTtRIXa31X+MND1e3LS/kACHi2GGDjOtE8uqUQjNi4cB
X-Gm-Gg: AY/fxX7qX99IPteGUEFWWQgaU37KG1sWNG8oLNWNsUDxrW/rSZCSlzP4h+WHrVggvol
	SsSQrTfMoV7xDJx3xTupvoygNBLR8FjfBtdL+/wdD4w7cXDQS2cnpaL23NvdQCm/c14KNUNbLYv
	Ol/ycUvPNz8oxa/fQyc+erbI5AFKce3MZc2ufA3SfaTwEr0MHCwTc5RNbQi+MLn0dSqtdvnN2Xg
	gdqKwKFVzi42VGQHB74wUY7E+7MdG02NmEChcSwMRwE6qFHwzzgSy87tf8aQnxNs/6aT2yRSTBB
	aY74wbzashFCJFqcCfscUjwwH23K2obmMmNzAHa0tC1h2XFyCfpjtCUMYo4+JHO2QZA4CfcCgVP
	nECgbEWHcLBUiu/qGeEsK+UtgxWxOVQUybJkYDhGlluurXqX0cPD224o5xC8iNehQ2FmoSWm8vc
	mS8Gix3K/dSVOBvQZzfgJXcAQiKSmS0jplBq4ro5pmzNyCdZIVPUlR
X-Google-Smtp-Source: AGHT+IE8SgYWnNadeKvdcyskfVMsnDJJOasgzWKUlDD1mefGDRMF5s/ktTvfM841BagbJSSg9VtPHQ==
X-Received: by 2002:a05:6102:6e88:b0:5ec:c528:4df9 with SMTP id ada2fe7eead31-5ecc5284f9dmr1930403137.42.1767867009174;
        Thu, 08 Jan 2026 02:10:09 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772af325sm5789287137.10.2026.01.08.02.10.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 02:10:08 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5634feea416so958821e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:10:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX99lrYGrSHdW6fXX6yhmIIJgpPzpLcFWRnp988dTcdoaYtWWT0SqHIgjfxJGwPyD2/MVIpEmP8SYGK@vger.kernel.org
X-Received: by 2002:a05:6122:421b:b0:54a:992c:815e with SMTP id
 71dfb90a1353d-56347d7096amr1637864e0c.8.1767867008306; Thu, 08 Jan 2026
 02:10:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 11:09:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWzypRKtdnWKO5iA3eHBr5dmP3ad4qCVK+h+JebqsfNCw@mail.gmail.com>
X-Gm-Features: AQt7F2qond9IwDeaTsZ0UoAL7PnIQMXQXYC2yxlGKQfALMGZUMy1_0YpeTthHy4
Message-ID: <CAMuHMdWzypRKtdnWKO5iA3eHBr5dmP3ad4qCVK+h+JebqsfNCw@mail.gmail.com>
Subject: Re: [PATCH 2/6] arm64: dts: renesas: r9a09g087: Add CANFD node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 18:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for the CANFD controller on the Renesas RZ/N2H Soc.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

