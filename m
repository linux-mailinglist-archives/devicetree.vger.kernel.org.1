Return-Path: <devicetree+bounces-232786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C249C1B9C2
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:21:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 535325A97C8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49863358AE;
	Wed, 29 Oct 2025 14:53:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F12B2E8E14
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749619; cv=none; b=h4dre+NDMGSDosSDs2gc5l2zuZ+6Zwe14awRMfdGaD2BuKuwPaFp5lzFaiPjF9j5NHhF55NdaCeFdPtxy4iQvAQQG9FJ8fFkfoRUXo0a2IY7cTLQ3KhS5bI11jrpLu4zR7vSjmNQWz75WRk38sLr4lHDlmqAlZJRjF0Bt7SQVwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749619; c=relaxed/simple;
	bh=lRTzqMm3C1CC3agOInFaKAmL647Ck5UdtxGzBQeuq/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pqN7YsRJLROh0JEOHhdBi+0NgHRACi66nOWoupSvOqWxXnuSUoX88qirFgMuEQ2Mv2xVn5/97Tap7BBHU1PyOryVYu+vrOgItN8N0+v9OmhcfeXfjwy2gdc5VKrH6jxSx1E1eOj9BeYc8EnFEgetaKJuj59VdsEunr0l9ZPEGMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-934e0a174d2so1246058241.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:53:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749617; x=1762354417;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PQw8srW8sZp+NW7sFJ0wHastT8WjOnxgYbS0cHBnNRA=;
        b=AaG6tluP4IZwDGr024zbrgqQflicQAgyLLHmftQtRBlGU2khqiOqVGea72a4Jz34vB
         d3JEPS7lk0At3Cg0B0WWGuNsKnvdZZrlhDK+0rZQNlI1zrnCGjVtMG/7KzUKV4RZVcU0
         sM/50uln7/GbRD2Wo4jeYKvrjtgZYfeML18CA7+ueu4CsS7aaO5CajyA13WEOdYH+Qck
         1hCvogPQcO9TV5N9jnA/LwMHdWVgJvECbX9iXjBdme2H928aqFyHN9OX/YUiVCXcHnYd
         eGU9of7zRHozNcquAaPZ/Y8RD/73jXGxABtYfH23tkiUMr39EbHKZ76XnrlIYuRgPpeR
         0wGw==
X-Forwarded-Encrypted: i=1; AJvYcCX3g17HP2VtzB4QP8qQtPTWrM5hvfweCVX49RcGIt97HdEtfJaD6irbILqJa5RXHCFXKkSHEwlfVOpR@vger.kernel.org
X-Gm-Message-State: AOJu0YygXAjpvHXKdfEeELdSG/LM5ch5K1zN9ECbpDWQuk4xPXwYRqEu
	bNRZDxydOJWoLYxTYrrpzCIDoh4t03vsyBz0z4tIVUkanoiLPitfLKPOsCYyjoxv
X-Gm-Gg: ASbGncuBn99LrJGBXhj+I4xh1lXHdm0ZfxzcbBQuCJePYHYnLT/i1gxEXJhlNstp9Lw
	gs6EAsDSX2L9HrZztMUNwOTJsCeUPTnxMheSAVMemNE5hm7AIN4tQJMf0g0yWR3CmbhHa9oqSD3
	2ZpCeFSJPbYyi+zPAiPYoJulFabSnMAlEOKC37+yLafqsZ4a0WNqgkvy7n1StgTAsXJK0gILb5T
	nHwsvCy5197aB4jKCQnkwgAQNEAj9xSRpYUB7bc3ytwb5Mrro4Z3eg9LQaLeaq05eQ4tlngrP0L
	XxnpkI3sUnh55gKuA+WugqYSTi+B5q/DzXkuHuPG0as5sQOKbPZHLbF/jXNtQmzkBW2C0cysFyt
	ezpkq8QfNRvojp8Emm/y8ytv6Bkt2RU643Ft/cvj1SyxcqOnqSJts1BhMCCUnrEhE1hruBoFa4V
	jWWPq/sl+xpaseWCNudCt9MfInZpMaSnqTJ4FNhjLFKPc0FD7nXGJp
X-Google-Smtp-Source: AGHT+IGh0+09ZGz3jXchkwgTtV1ZGJTFRP6A9sqXsHnnCtZc50x2SVljTlidjNO8dgHpg6Q9rkoUCQ==
X-Received: by 2002:a05:6102:c50:b0:5d7:dddb:3e5d with SMTP id ada2fe7eead31-5db902ba43fmr979524137.0.1761749616902;
        Wed, 29 Oct 2025 07:53:36 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e5c2fd4sm5240652137.15.2025.10.29.07.53.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:53:36 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5d5f8e95d5eso4697623137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:53:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUFutD9I9tCHUcZI/YLZl4DOmLNlzU1ooKV2QRIuc1IuzKTbVFYlvITslmdv1GlRwh9r6UTYNT5Hlud@vger.kernel.org
X-Received: by 2002:a05:6102:1491:b0:5d6:6ce:9675 with SMTP id
 ada2fe7eead31-5db906e35a5mr890070137.40.1761749616368; Wed, 29 Oct 2025
 07:53:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org> <20251027211249.95826-5-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027211249.95826-5-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:53:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWpkbFGFuYA5qxohU_P5trfdrR8=OE4bOFZusuax_4M5w@mail.gmail.com>
X-Gm-Features: AWmQ_bnTzLRSdC_rJSCH1WOHi3pChMPMBglo5qebVwVc_9tsiGfE_PRGste6mmI
Message-ID: <CAMuHMdWpkbFGFuYA5qxohU_P5trfdrR8=OE4bOFZusuax_4M5w@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: renesas: r8a77961-salvator-xs: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 22:13, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on Salvator-X 2nd version with R-Car M3-W+.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

