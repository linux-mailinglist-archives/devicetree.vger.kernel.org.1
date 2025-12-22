Return-Path: <devicetree+bounces-248861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAE0CD6304
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92821303D6AC
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD9A31A7F9;
	Mon, 22 Dec 2025 13:39:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622B63126D0
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410775; cv=none; b=O07DZ8EAKFL1QjwXI0TIKlawDuSj98V5O9tFCphbLaPk0FNa4sfwCElUD8Wpaj56syOrGLzlnznw/8f6iJkBe5sEjBlDS2VCtdoYeyxFCOYcPiZEgC8UnwjT4wOG/1zpImJNnWXdTvbqHuAWGwz2Dj6HMfR3bRejHYFt93w6ejs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410775; c=relaxed/simple;
	bh=aLorWmYRvNIHl/ChpwP0b5mSgCM9jBpYeqRPfx8gvZk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YoBOFBTiygOX5WZlCIVT8mNyXTJoyYuc6ZutyrRtm9ZaAACwlgj2T9zLtFejQAXkJ0l1dZTOCgtHuESAA/BFgEpKSq0Bu996qsBcrSQ0y2hc37uyGZPrYm6dc9LIH/IxqQ2wUYczCenRAveX5y+9+y3ICxK/g8fnH1B7mUi5K8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-55b265f5122so913224e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:39:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410773; x=1767015573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mYo5pX+aZSSpkX0T6WbXVuuCRV96o2JsBCIYhgvV9O8=;
        b=JW7u0mgwvt4NsGp+KQvMjzNzZtm1kJ7s9dvWiT3dYiWOrPMtctmAF78SEUad1PcxOK
         kKO7+/eh9OGY/2c8851lETqt4dZfeLL3UJ1eJq+2HUzFmNGV3w5fxIPyifLjYgm06bny
         4EmHHmL8Gj5h/yiMXQwGSpWic4bZUu4neuKGf+f3feHtUgpijwk9xUhmeROU2ZbhSBaR
         WurvKfoMY5w0zytUM5r/AY4Uk9cSRvMdRAX/am1VRfvc03sv+fB4YPYC3OxGyexid+8Y
         j0DrUUph1nV7xHSXuLW/CoFpImoO4jYDFWTHOgnfqedy0Lv/P+NpLynTCjk9asYyIEaM
         r34Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfUvO3LBqvViDd5+8jxQ6U1zbHLZWmRz3lUbpGOR4hSj/GphMH+0JqaQg5J33eugbEvXQ630XWPKZm@vger.kernel.org
X-Gm-Message-State: AOJu0YxBZP+LlVkEwpph+Im1NrEhXSXeB6C5p2IM5TYqrSmUGkvy2Jik
	Kgc5jhmlqjJOkFs9nJhRk3TSRzj/NYnCpo3zeVMik4jKdpvBb6hSszNbgXB0n2G8
X-Gm-Gg: AY/fxX52+1BPS/eMmF68BjgkYv0osXi6H9T/6zu/pnQKont4EPA5F5U65lKbf2GnMvI
	DQnTAnARUxSSELIACvMWYnkufpGfYYNtRg7GEM/RVv2XzlxlrEg0fxTriE4QJ0R4ZT6oGH6I56y
	metejf43hxH6q2p5w6CdQAjTH2JhuFz8J+GxtDKyypoaH8COYVo/0ALy8BEvlhqwxl4solTAgPG
	qxBbsBsTNx9vDEv44SpEKLOpcWQQQaBImUF+RmyEuN3Kof50rYDhndLLaxSfr1aZJnNJf7XZSDd
	Kf4SoicvIYJUkpC85gi4N1t2bIjtvDEmvuOj5LhJCPn7KY5ImiST3TkMjKOkEh0y7k03a95qlay
	dPQdbtHrPzUoj5Y3RiRQAxtmUoGCIe4Di5CzM+Rp2lHqkGmJBOgyerib36/5Ax5kelViA6QK8Zw
	rYF2FXOOAjo/lsuxrypMNngWj3oXMOODCvUEMffIL9PYnRRM14eOOgzIlC7m0=
X-Google-Smtp-Source: AGHT+IFjFkP4AMUyUA5dbJzeLdHvLV1E+x9yhQvCjuHjExAXt/mi9kbrUbFtIbbBy8Tkn4l73uKbuw==
X-Received: by 2002:a05:6122:923:b0:559:85d5:bfbd with SMTP id 71dfb90a1353d-5615bd867e2mr3096725e0c.9.1766410773336;
        Mon, 22 Dec 2025 05:39:33 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9434167aa35sm3025839241.5.2025.12.22.05.39.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:39:32 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94369e02193so225151241.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:39:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUTDvLG8t5oS8PhWW7zAL45BhfHpAbRyj181yJmqZhJuqsHl9I/+U1ZOg/YPB0WeJbrP/h2cy93kaMy@vger.kernel.org
X-Received: by 2002:a05:6102:e0d:b0:5db:e297:2c75 with SMTP id
 ada2fe7eead31-5eb1a690d56mr3146711137.18.1766410771741; Mon, 22 Dec 2025
 05:39:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251023212314.679303-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251023212314.679303-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:39:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVgsaLA8oLkKmnvZ-4-BHh9zokH7ELBLzULhiFtxNEYsA@mail.gmail.com>
X-Gm-Features: AQt7F2rUSnyhEsMU58-_oHkLcTQAMyF45jFSROU--OEfcy25k207D_YCitdMMXw
Message-ID: <CAMuHMdVgsaLA8oLkKmnvZ-4-BHh9zokH7ELBLzULhiFtxNEYsA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable
 DU and DSI
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
> Enable DU, DSI and adv7535 HDMI encoder on RZ/V2H Evaluation Kit.
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

