Return-Path: <devicetree+bounces-224965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88938BC93D5
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD3A64E2CC3
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270372E718B;
	Thu,  9 Oct 2025 13:18:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFCD3D76
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015905; cv=none; b=kYFsLlkUq2BT+eODxdgf1U2yOBgLaArlm6o/x6xq/8OulFtxWmMFC9xWFm16rvMSjsErp0BiBjY1IQGKTP8EBmCDzA7qesMno/xvimwDYHCsYj28uDeYrEaXYt9PyChknoepI/3qyd6UCLOqwKtCpqHdlMxPK+IEU0KYe9gL7Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015905; c=relaxed/simple;
	bh=1CeK1ONk4l3PgT2t43KHT03ww7YEEaFbS2gXJDuFeUM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bsE0lMoOktT/ore9SK+xLCSpbFZovAbgyGwPh4e0soiOOYkcrzA7Gwf44vkXL5o2WTcvTvPvLr0kNvXJC28TldQf7Qe6qXdsjt69J6vRNZCdXDiL3UbWU7j5Tm4TBedkbY3foVrg9DmMvQrwUBV0KxaTqxvexY+hUuOPLiMZBQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5aa6b7c085aso1193475137.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:18:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015902; x=1760620702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgvNWQNEUEnsMKiNO7Z+h7b3CLJoE8XkViqUQ7M5aKo=;
        b=t+ifno1zHszXLfRY7Y+nffSm+6qNlEEiajUrv43B3DZXiLdWeSpqkZkqYEOUpvdyob
         dATC94nWjYK7m2nriJt0sLOq1NKaMvd1QaFLKSENd1aXiwRFQNmpIBoYuRB0VBNOhnUi
         17IckxOzKJSR+92grE+JZosebl6sielD93UCKES4VxvSIGb2s+aO2ra/dAzZBS5cXXFn
         6B+C0b6xX0B5h2SSIjUFd/p/2A8KdlmUCaaradlENMAkvuQjbCYVF64FyTd7qh0zAvPQ
         Rq8DqD3BVG9fz8m92jLAM1weyq8V5o98HMdPfcW3NCbMHbpfDcYi28qwU2axC/Kkn7gF
         FFoA==
X-Forwarded-Encrypted: i=1; AJvYcCXAMY15c2q3N2RBZHOEoSYCQefrh8ly/x7XkDglwmG68lJ1dG17krbOqZjm3DC9T5WO//8IHos7lyZG@vger.kernel.org
X-Gm-Message-State: AOJu0YwwBq3IrPqFSCpniaDbu4FAkAHANgdR4F9Q3CZGBCyaYhndMovA
	L60D6CJ04kqkF+4dx782JB24DlwI+M5XaIKxg17C+mVUr4+8DRyn20WWk1zOagk8
X-Gm-Gg: ASbGncukBwkZQoYGOZY6E+c5EtaXX/+yeG3unDqXqbNiVVobQyJqDFGeLxoWq6qj7oh
	+Svkmf8pg6+lQFyjBGdjzRUskLeIif9Y7mBK/e4Fgi4c+Wa86oq6pb4Zfwf5gmXr0QDygyFJOk3
	+UE1uqlysdqTP8UX/Opbml7P1LNG1My7g/nPZz5J+HcczdgFSAmn1g0j+QGDHtj6STM4xfhXElA
	pv1qVZk6B1Ani2HH99XwBTgSNowZlBY+jaCdRjUVPYRHxRCDmkiXdEDikEITRaiAXaLZ6RGeCZT
	Pzwh5Mw0nD5bKjGnllxWaHlPNWEDWIJkZCgVExvEauGo+r5J9Zj0ZzxtzSeawdqprvQmGPoWIww
	v/5rxBOS7Op2xB3g/NCz6TGWxqDfzA/ykX25qHG/DykWUq7xEdgScpZGnQnT/yDHgQv1TpLCibG
	P37hn0Bi0ueJdBm79trmw=
X-Google-Smtp-Source: AGHT+IEYbCNVYAhEHa+Pk92tSdvrMGIIaRIJil16OP90DQNH/WbYohX7nP8TuE7WQeo78995c9S1yA==
X-Received: by 2002:a05:6102:3a0c:b0:524:d902:8c80 with SMTP id ada2fe7eead31-5d5e23aec85mr3623072137.28.1760015902086;
        Thu, 09 Oct 2025 06:18:22 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92ec0c1dec7sm4364905241.18.2025.10.09.06.18.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:18:21 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5c7fda918feso1145259137.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:18:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVeMFckwfhtjo8p1bIzCBO8kztmbM+mDEGiqs6lxgeLSXih54IB5YhSB2Ld3zsPDmcNnpePOrRPu9qe@vger.kernel.org
X-Received: by 2002:a05:6102:32c2:b0:5a3:5b69:b963 with SMTP id
 ada2fe7eead31-5d5e2212895mr3581618137.7.1760015900637; Thu, 09 Oct 2025
 06:18:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251007121508.1595889-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251007121508.1595889-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:18:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUo3qQwOBbrTuJMyfcvXfVX4ydTg=m+Evw-2rhD6z_kWQ@mail.gmail.com>
X-Gm-Features: AS18NWAFR_tuOqkjGc0mazaTQNfKABk5-3eOVxgykm60ReYpXtwRlPobaHKvywo
Message-ID: <CAMuHMdUo3qQwOBbrTuJMyfcvXfVX4ydTg=m+Evw-2rhD6z_kWQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: r9a09g087: Add Cortex-A55 PMU node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 14:15, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the performance monitor unit for the Cortex-A55 cores on the
> RZ/N2H (R9A09G087) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

