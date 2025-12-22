Return-Path: <devicetree+bounces-248854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B95CD62D0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFA283009F4B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EA5830C619;
	Mon, 22 Dec 2025 13:37:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0FF309EE2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410655; cv=none; b=a1xU042D4gt3e9G/+hmWtjhQ19tnIcfaQV1OxQYWsMxLZ4xrutp6PqclV8WQaPH5e4agZIuuE/5Q3IVDYinzVjaR6NwaM3TVcLhznw05kSZRClQfnMwIy+EhTEtTNbfeCfAZ2GVrAsFGV8jLxNLMZSspWRsqa/2fasA2KxXkrh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410655; c=relaxed/simple;
	bh=kmiOttyYIjYm7xyTUQY+lGKL/xfSLPWV0w1j0JJ2lw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jj/yB8wsnDKnJ5ewUQsaO6gP7byUkvchiVCcPJv2XWGSMsfee+wVDVwlPqrVbFdI8oxBh41radVkAbX5/skXKgZqM9TzO/kBGwsGgDvETNRbQVwm3+IbdZhDrpr8F58LLPD84SRSBcfSh9/tra1BFTaxinvlb15OELLzHKd5CZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-55b219b2242so2198146e0c.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:37:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410653; x=1767015453;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziPTnFwCBRDCM+hgwI03QmPTuxViV3RQXwnH1A3smg0=;
        b=XkCYu1FZ8U2LJrUi5uqC5zcOicbYUyEGCoAYvaIF1llia/Utz4ErnFXwwuvO26Ub5Q
         cmNqa8zSKsoPhKg6M/VJhNEEIt7B+ipSNCn9DW+p4vvHGMwofJUZVmEMuh5RS4PWe7bs
         WUfnz/edAa5Lq0IG2iZZ5fDABv0xq/N79ptqRsXIiUUo62J19UfxIrgB5wecKm6A2uPd
         sVfej+DGX4hXXXUQIS8c+URWp1mYXUfhlV0pBgDShsKNzWiu9QWllPR4snPK76nO0JiD
         d7U150ueglqvaQV0gAMcnNUKpv0rZuKZi13T3bshXD04yZDlD7QwJnA9Y+0tEM86Bdz1
         QU0w==
X-Forwarded-Encrypted: i=1; AJvYcCVDgiFzT4siloRGBNkg6caFXwAaucd80qjU6lBjWVHkkczRHwdio4RWhGTAIZknMerlyYS+5pr/qmRK@vger.kernel.org
X-Gm-Message-State: AOJu0YwH0mS2jN+/Ze9Ui6xYQbgyh9hwJJlyFU47bSONYe5ze3Nhd4QQ
	KdN7aAHTxISNxs8G4x4Z9JWXSPSKkC2Lb38OexFKqMDYwxl4Bu+Z5tZ5MrxLFI5w
X-Gm-Gg: AY/fxX5lmco3NLDa0rMxIVHe9tO6mGAg6H5vboOkAQxVKMuysmiphNJwtOBWMiAQLVC
	4b2WChZxB3fF3eFULQGTA0FkFo8QmzF/g+0ajpE92yewZBLrfahs6y8h9M3Mu/tPAt+AwR4hBsY
	yiBGktFyt6/WpT4RktZGbMJM24UtT1jX6Ovh241GAJiHQ/qrkUdgiK28jH6QG7xRHRN3fBghWM4
	jNC3+nL4kFX0uVacNbXXAXKZG3HKTpM9fsSjggUa3kvKh5+Jgta1PBC/7iXmb3Q4jTRGU/+RUIM
	HqxuExDbvonqepeg2U/ddSiclgoiYZmxP8bXW6sF4GhNadvgtZQtnQLvLcYD7dz4cgfCQp/8Mar
	QCB1ZZ9uCxpta3zYmIO1OA4IiJKxRVY/GWTFyBWm3s6MMwHQAJVM6ggecEQs6u6kP6UUXx5XFUd
	mwm30HNY2vB0RQx0tV50PUN9XPUrDPLzrYUEFzzll9QGBenOUW/uQF
X-Google-Smtp-Source: AGHT+IFpy9zzQcDdIdi/5ey+yE+Ce569yGyxt0l26JAOSZfAoRb4SZCFbxTjm/gfSnesyCRVuH6K5g==
X-Received: by 2002:a05:6122:510f:b0:556:a243:8a72 with SMTP id 71dfb90a1353d-5614f75d27amr3708583e0c.5.1766410652731;
        Mon, 22 Dec 2025 05:37:32 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d1665f2sm3545774e0c.21.2025.12.22.05.37.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:37:31 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55b4dafb425so3202413e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:37:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWFRrPSauJXD3gC84NIiTS1dSdMVQYiHLXKslgpp0bfGElyr6cqszHyH8ik5PpSv8QbLxJtYGT9H2KW@vger.kernel.org
X-Received: by 2002:a05:6102:580b:b0:5e8:1f33:bb17 with SMTP id
 ada2fe7eead31-5eb025ae57bmr5007226137.21.1766410650837; Mon, 22 Dec 2025
 05:37:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251023212314.679303-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251023212314.679303-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:37:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVp7PRfmMTpEAi5VrYby-HHJyMUZkseVJ2UcKSrcocwPA@mail.gmail.com>
X-Gm-Features: AQt7F2q9Egs9uxnX4tQZBDWDuKM3dnSLVxUrvzIK0fXdF4dO9tZ83CCxYckYpeg
Message-ID: <CAMuHMdVp7PRfmMTpEAi5VrYby-HHJyMUZkseVJ2UcKSrcocwPA@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: renesas: r9a09g057: Add DU and DSI nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 23:23, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add DU and DSI nodes to RZ/V2H(P) SoC DTSI.
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

