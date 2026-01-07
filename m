Return-Path: <devicetree+bounces-252412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB5CFF448
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:04:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F023034C7FAC
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A00B361DA7;
	Wed,  7 Jan 2026 15:09:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F7135FF7C
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767798583; cv=none; b=oc/AWbck7o4Q3e2QASnOHVUx0m3wN9wKRMlHFwvdsfMg//xC+q54dFTVKdWXFj0YkXAW/Q6aM7gBJv2eZsoq2wdq7WQoW069ijsZEYGqF30M17bw18q7SS3vTGfVZ11k3kgsYtlgETgL25x4HaKF/3szoTzicVF6k5fy3U1C2cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767798583; c=relaxed/simple;
	bh=7e5qMhBj9x3w9tILzgbqJvwRYvlcmzRy5BTflJWO5/o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=swJke5jVEQZNW/8BnY4ecX5tfWiRcqlbSXIKoSe6TV6M9Usdp8zxk4jrDiZKgh7v0GAPd+d/8NUF+3QsIuZ61GsJZy6/DzpZN2XAKgZjN2CTYjrENv4Ub4n4NitAVmn5ZN2eD4jFGlfH8yojGOSNeAX6PNbddPR8llsgqfbFMM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-559748bcf99so1462285e0c.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:09:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767798580; x=1768403380;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9dOzhpI14IYVqSU7+juMd2iV4APAFjyTw7MRTrqVLc=;
        b=eHxlkLXVMTzvWMCprccxPOul+LsUXugmXX4ifEOLzu80hZI/QLjQ38a1W61RJ4oWJG
         oOMxmsC9H7/ZEws/kIjyvdTkNPwbc1rMlnuOsYnSxyMy6vpreqahyJJ3M+KBeNRm8SmO
         11639mHkO+xIvxEKN+K5ql8aoYvK84YXr37vSIvWmFieaOa/qrJG0ilWFMHgqVQyM7oJ
         IUuXvmTQye5XrRwRzRNzPMvHih7JXu5qBlGNFdPtdEMVBX0jO2ZWQlPoSq+cpY3JW7xr
         tx3MNGdkjhuRfmhq8QjU3rgLmmKTYrZp48oe8hug1SvlB/u05cSA0beuopX2Djyqwmdg
         6jlg==
X-Forwarded-Encrypted: i=1; AJvYcCWsJJjasRNJHJjoRHoHRKVfwgiKdboKyUUkaT7IQ9ZDQrakmJ5Sh+o1gQZtdGfy3MpQYXWIdtP8OLUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwjpwyB66KQ/gg559sXCeqrQm1AInd3az94netTpnA5He5qlqUq
	tAImPEr8VGkzelRLveyNZ85FxMH2gR/yYQntrx0UbqBX5R/zDpF8DgjfnGfzFprY
X-Gm-Gg: AY/fxX4s7yjon7UK/P3YLLLuMGuWW7o3j6KsxQj1f8BmERTE6IZw19sypkNywwNBcy2
	87KfF32ZaZpbB0zdjsgN6+UZX3Gfnqmja6sIeiDh/Kjqx6L5M8B564bhBkIxOTCyqv4d5o8Ba4G
	Wjj6MaAB/2ItCr2J/SKH6xfOZ1rofME2qM3AcyOOAtIS/6OW+j7TM32ubLAgeRURZTF//7T5J2M
	nTtg7M5EUFjGc5CD7zvrcG2yQLNCl8h8WTgXQNEk9xadAiIABOZleiQv02FTzz4mOkjFXro1K6J
	db7Vv4QCozBhQm8vPMGXaSkaAtwkbqiWsJpmoZXd08CCFCPeyIJwA6xsRstvhnBAV4fAM5RlJ93
	4bY5SpcrHEZpQi6SDFvThvgr2sH+F7mCNKy8YoiriqmDozaivsUTiWWyhG0JNbZHYncGXwAAGPz
	i/3jXlq/GCnPO+pMMegCaEZF7OzIugKbr4m5KDfEgiZEHJKq4a
X-Google-Smtp-Source: AGHT+IEQaOpo8sOli7wJY1Yhz7NJKd7zSvtrdpZWl4Qn3I4A+Lf432G71q9JXH2W6VnrKXpadc4Yjw==
X-Received: by 2002:a05:6122:31a8:b0:559:7394:9c3a with SMTP id 71dfb90a1353d-56347d7e8d5mr946811e0c.8.1767798580070;
        Wed, 07 Jan 2026 07:09:40 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a3f6c0bsm3179956e0c.13.2026.01.07.07.09.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 07:09:39 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5ed0a9cbb3fso304686137.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:09:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxxc4Ya9lJpc2DTg9H7RW6WXOYtF957HV2S5Zrw9wonz8gPJO20/tuIA28rrOfcPu74HPYsTUXNS7C@vger.kernel.org
X-Received: by 2002:a05:6102:3e82:b0:5eb:fc32:935c with SMTP id
 ada2fe7eead31-5ecb647f1b2mr1034227137.3.1767798578356; Wed, 07 Jan 2026
 07:09:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224165049.3384870-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224165049.3384870-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 16:09:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWC_863Fzpo7SstLiFHZYxmomVkbiPWTrhRz6=kzaTPFA@mail.gmail.com>
X-Gm-Features: AQt7F2oYUDXscAVf8azPEwYoK3VQ5BFBsRCCHz5MK4KxGd9dpeXZLz8ZiwfozR0
Message-ID: <CAMuHMdWC_863Fzpo7SstLiFHZYxmomVkbiPWTrhRz6=kzaTPFA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: clock: renesas,r9a09g077/87: Add PCLKCAN ID
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 17:51, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add PCLKCAN ID for CANFD to both R9A09G077 and R9A09G087 SoCs. This
> definition is required for describing CANFD device in DT.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by renesas-clk and renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

