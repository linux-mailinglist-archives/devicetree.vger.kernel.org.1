Return-Path: <devicetree+bounces-248863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5B3CD631B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D796306F057
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E3E631B101;
	Mon, 22 Dec 2025 13:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121B431A7E2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410804; cv=none; b=pXWv/AwDT2xsZZgllFwjcH6bAuIgvJIG86N0AxkIxVSm/9Uv+0Y5tiqbFUAsvEYnLGxrnLKfQs/Gy+jsWoDNg1tf+HfsVf8Tgt0OOvLr3oUA7OLVNIe2X6+VsKBzrTcRLJUbqtuknCo9Y4FvoOuHHYD5RzFuRGUSVBWUDKfwm8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410804; c=relaxed/simple;
	bh=haY2EZxD5ZAXKTFe/y85B3MveSLT607huJg7ABgwLyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EZDrpb37DbAo9QGWYr7HbjPVA3o6JtDm0C34Cq8A4luwiNlY4FxQHVJnt2xKZibIwGD4zkxaRc3y6P2jLt/nezPpvYT8eeh5xBqG6c+r4Xm4secOKZ+7J66EYTaprZ00DcL2RsrWGIe3qVnrUx6VklWNdm58gg1ZjMO3haN8+i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55e8c539b11so2731184e0c.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:40:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410801; x=1767015601;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2tpyO4ynoLOcQsCwYkZ7r+s6TAoCfYanIoViD10XPI=;
        b=kO0WaUbONArL+ER/14eK5mNIkUlKszr9IoagVqgir6BInrkgRLHVH+AI4ml+f+lO1v
         aOq0ypx1ffNJTjDftXXUbhVy6RGPmOeRTqfmaXvCptOpnjI90bU5GfyKhs2EwPHKotLl
         SenkoIZWXKMUaA+/O7VcyYAsmrFyu6OJhn/FF7dCutaFAJVqtnfILqCKzggTZMHzgGIk
         YRtwusrr26oqenM3ek1CFrT0GEgKOCJqhYBX6qI+VlL0cUHgxXtmn7Yzp++yMkQdyKgg
         Im+FDX1lP6fbIKFs1Hq9Ex388mkokWwIZu1cOBJTIXQlOyGYzpjvKTblHhsBMft0i1BD
         NpOA==
X-Forwarded-Encrypted: i=1; AJvYcCWEKxxBRU9m+cmNQamPUP0TlIZsO7wpS73JnaElTx5CXQJIfzHT96EDqUY2BE5jMY2qcs70n947sWVy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhq0xKvrhG9h9j0ScNOpBaJCiYCh6LOcSLPA+W8ikDSvwYR3Bf
	A3i3Pxi3aD5qaySvLrxlN5AU/0H7xR9ke/llVRBNF1oJ+Nh3LOw0mApoIK82BKXI
X-Gm-Gg: AY/fxX72bqfmX2pAKgkJgRqhRAcyR+oX/iFdLunBRL3XIw3TqlFzD+YjtNfTakXVsxi
	r+z2Kna5sjJB9pJ4kbgM13QbLCv+HUEk4mUNP3uILUuISp2mjmROhK3mVw7oQVchJelqm/uoGXK
	Yyz7UWDS35j1CqIFdDciDJbYzjuxPBGmit6GcmNh5p7ahRCwN8s/c5lmd8dEcZ7GFxir4d16pxR
	Ktdu4aFqn3pDvAKYsV/OLZ7o7Voz0EnEehwk2AHMUkAtOgkq/rGax4SrrdlRZ2Ylk5iz9Jx4HKQ
	+fpEbcHjpg8GwUOTqjEQQqDPizG4eAp3Pf0LIBidLdXRuaPf0S/sFpbQtfg4Ihst4EG8YRGYPpR
	B6LzDFVUTe5Irj4yxBFyvk4z9yP2aBbd6vv78F3jPkYb2FG0M5FTysrU8jaKeAz/FJ3OqS/P8Wj
	T3wP6FhuBrfuxjTjMEjJr6okUoJQfqiy619anWsH3jcUcSucik
X-Google-Smtp-Source: AGHT+IFav9nt8pcCoFRQ1qFcxrZGCsmh4kjXJenBwavSjSYcF548EqF9o6JETz3rKhVbapNFqAQxOw==
X-Received: by 2002:a05:6122:168d:b0:557:c6d3:5c0f with SMTP id 71dfb90a1353d-5615be6b746mr3488441e0c.13.1766410801492;
        Mon, 22 Dec 2025 05:40:01 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d132be6sm3350347e0c.12.2025.12.22.05.39.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:40:00 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94124140e02so2573789241.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:39:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVLs8ywhRumiWQEMPaAjLrek9wA30IYJopsCNBAck24ALTzJV6fYoLhngJNaNRhFA5vdVIfgmimyGpS@vger.kernel.org
X-Received: by 2002:a05:6102:9d9:b0:5df:b7f3:5875 with SMTP id
 ada2fe7eead31-5eb1a6259a2mr3626342137.3.1766410799575; Mon, 22 Dec 2025
 05:39:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251103200349.62087-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251103200349.62087-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:39:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVRYhGHq5qFBRtWruf5FveffOrPJJSMNt+4Ve9OWvM9xQ@mail.gmail.com>
X-Gm-Features: AQt7F2oo05AhR-xHy_XZXzBD3Ev-y1asyTFzj1xlOLbGOAKbkqifg7BU0ORAwMY
Message-ID: <CAMuHMdVRYhGHq5qFBRtWruf5FveffOrPJJSMNt+4Ve9OWvM9xQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable
 DU and DSI
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Nov 2025 at 21:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable DU, DSI and adv7535 HDMI encoder on RZ/V2N Evaluation Kit.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

