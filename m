Return-Path: <devicetree+bounces-242816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBF8C8F897
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D5763A1CA6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6F82D876F;
	Thu, 27 Nov 2025 16:39:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700BC241CB6
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764261591; cv=none; b=c2oPk2Sl4A7NckLxaeCssO/K3KsCnJbWQJFtUd5attXASgMCA7JzSJgZ2fpPTP0iKuf/mdekZ3wkeiFCMoOyNfipVosy6INXLGBnIbW7lF0eGgY9SKAP0HVR3c0XYkcc7kZQtGFBENKCBZuzIJ2g5MsKWGjWu4aoiSf8KNqkTOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764261591; c=relaxed/simple;
	bh=NZFXpM+aSU1uQSEcm9y1PlL2odIqQQKz9Q67og3Qay4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lx1SQYbRRe4mRDAEgb2jfMpbmjnICwZWXmhOlqqThNT3AfaY+tW9Uhc04lWbfdtRtG+03EMnDR+P9bAspRUwIYiDK1S3nuzmgvwYWY82FJmAArcYswrcniZIVunSL+dwmeeqwXilNDH6TE4MtkW0OAwvz9gG0Sy1lwKaF7DyfCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93723104137so277918241.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:39:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764261589; x=1764866389;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DCTgATthkKjninUj683rTd4syC+gjm2ZPB4/RFx6n54=;
        b=Q+iiyjHsJAbHppE7Z+dMCwnIuKkPHihM9643o4PPTgjXcIImcMHrvJ1GkS7UhirDd3
         peB0+pxqEFf1uH+L8QmTLqxzFHpbQALXSIFn6RUiAC/ktVgxCVVoBfKJTAuZKPCmT193
         zr4ztd5EbPGUg1u9UnEmMk7QnL9/Rf7oVD/dgHwuSDSKNXVdMYZ699K+7aB6dDoCUiUQ
         ExIsFUrKWy00v9/1NYiC0vldOdcQgt5bvUo9y3T0XnfMG/jlbAFAiFSLZ0z3qCd7dKe8
         FJ5z1Tp+guzAjgX41iEA32ExmVqpqmPI9tSqupqPVoHu0FTMWfQk/pJ60TQKNiORR6GF
         UPvw==
X-Forwarded-Encrypted: i=1; AJvYcCWCk/47caVwabShyZStYG+8ZtM9nWLdNdA+nVGJqDumj/zsA+nCc1upIeDw2mnmltYs9itZqjPUukNI@vger.kernel.org
X-Gm-Message-State: AOJu0YyA2euVVoWB7wVDFzpeXKnYUdQ+bwj0BLYqWi7midW1VQD4+6u3
	72U+Oc+PS0yPoF0xnXlzi0hlD5V1bo+L+BvmnxHFxUPG4af+jiV9rBoDHiO4LX0I
X-Gm-Gg: ASbGncu9oW6+hoS9PSHWO7vgXC16WNmBMRsUiucOhg/5jK7eqXDctRl1IzAhS5604hR
	yIFmaWMAZc812mQW37U6A9W+qH5H70aMqktO5iB4bZJTOddE01ONthIbLvlH2XFLpLiNLg35Pbt
	6U16vZFh9Kx8+96+lVeaOMWmy5pOBe48iYl38zyIXz99s76iQq++4rb5LryuyqgAzfU5zKR+9Zs
	aRHOMCt8QHjaFlrTvwQdE/YDLRpdsLXH4lTerNziddlN/QjBwbF+YIv+gpGtcp6YZ7+1vH5EwgM
	pbkZcKhZW4uGj+YncWWlbz05a0yaRMLi8avnU9fKjxlLmwt5REkDXB+eX6BXi1yKQHy+ZDQxK12
	yvOg//Q/7CaPWYtSLqiKYhvlpvVDGx2ZDklcawMuOnbt+LY+L19uF57wh45gVLVvw8pF8++RUzu
	yLzy7WB+v6fMlc/PT8YMT2IT97wqd7c8y6Zu4g0tgwyHROghYo
X-Google-Smtp-Source: AGHT+IGVGylNVSx3ORCmE5DF0LHbPtosBb0+0gitygT2/jI4jUdcTunA7ZU4YNC9ia+WKnRukmO00A==
X-Received: by 2002:a05:6102:442a:b0:5db:f031:84d6 with SMTP id ada2fe7eead31-5e1de3bf6b3mr8311183137.28.1764261589140;
        Thu, 27 Nov 2025 08:39:49 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93cd69da72csm874461241.0.2025.11.27.08.39.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 08:39:48 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9371f6f2813so304906241.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:39:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWinumqcZvdzonKHXRrhWvvpBsSt5YT1lYecmXRN2fOxJqY94FvzEKoPLooXQhDs3lEOQlgNHVxOts8@vger.kernel.org
X-Received: by 2002:a05:6102:a47:b0:5de:6dc:22be with SMTP id
 ada2fe7eead31-5e1de43795fmr7900879137.36.1764261587515; Thu, 27 Nov 2025
 08:39:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251127162447.320971-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251127162447.320971-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 17:39:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU-WihXVPtTQsw9+AfF=kXR7u=-Dd_j_zS+WwPprww7xg@mail.gmail.com>
X-Gm-Features: AWmQ_bnzyV4oo_LYUmYWO7ZPNRLsleLForWIcVAp5Mgza40F_Xz3vf5fBtqEtZw
Message-ID: <CAMuHMdU-WihXVPtTQsw9+AfF=kXR7u=-Dd_j_zS+WwPprww7xg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller:
 renesas,rzv2h-icu: Document RZ/V2N SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Nov 2025 at 17:24, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the Interrupt Control Unit (ICU) used on the Renesas RZ/V2N SoC.
> Although the ICU closely matches the design found on the RZ/V2H(P) family,
> it differs in its register layout, particularly in the reduced set of
> ECCRAM related registers. These variations require a distinct compatible
> string so that software can correctly match and handle the RZ/V2N
> implementation.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Dropped using RZ/V2H compatible as a fallback.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

