Return-Path: <devicetree+bounces-248852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BEBCD62BB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAB3A303D6A9
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F6C2E6CA8;
	Mon, 22 Dec 2025 13:35:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625EC2C030E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410545; cv=none; b=GGLgHmxdrmG+ZAVwf/ljsg73fOKyWu+YSspLlpDnveyL+KLQKvKqBIt2MezoFQDiZcJwqqz8kbaxAR0D+hKNAQHRDAVGIqZbUkxrcqSe2sr/THubm5Iu6Q4bQkTZ0OuoysW+oo1iSrGttAAzIU7bQlo8GgE4UBbN8WG0/5PTfzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410545; c=relaxed/simple;
	bh=c5GGKTBa1YdXkviDC/a3zrwxMQRkENiptboYE0Yhpik=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n1R5/BkfCXi84mcEgeC2Ado+g7QO2oJs2vxG9B9oOiT9lmLlmZGNrtgiqFItZIkLlDE4A+XO9WIjvvURcVDaflrq6MJC0Z0zvWb2QPoMaYz+U47E+hRUoS0vZmGliARfYtow6WRFFh9xWBxsT2LKQqJbAycDFFbvuvSE20y1LPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-55b0af02ddeso432348e0c.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410543; x=1767015343;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9NcMOMiMfJ2J68KTpFEUPkBlcj/EOF1JiBmguWQUTc=;
        b=nSJwAID/3Qqp49kaEwWqvTIPgab58Y8DwQ3YFu6fxE2WaOEzZOB0mlWmZLmphB+tPk
         qHG0/klLdL++W4dTHFZTUF3H8Snjk0vWib1+ZZ9MHhrwpGw8yfhdvuqXbyclhKpmH4IF
         KCpN/RMhcHz0RHSOPh4Og79Rn37QEkxHnE0j2iweSzdnjx4mDAyNi4YzQu0N2IffimYX
         s5x6WJVvfcdeFzQcckl3IIlTDUw5szwmFy82aGCuEbmWGj6FnXFyXkWcVpNns+NmJxLD
         MdNX0tTKv53jk4DlY7QIhyM05iHXElbYIWMmbz6448vpK8D+HoVcpeBm6eSIllBec1s7
         V3eA==
X-Forwarded-Encrypted: i=1; AJvYcCWlWhpTAR7uVAg6D3Q+KTyYHQIq9xVkUDbbXM4Psm6ZFAmKtBAnC0/lZEUavjzAzdBtZL6F6aTAyfT9@vger.kernel.org
X-Gm-Message-State: AOJu0YwFL72HJIFoJkRbnRBuut1NoH+LDT3DihLBGyZjQ1lVyXw7zKjK
	6+U0v0pKSBYbFOiXpZ5RLhMX8I4SCsMlYKHwr+rsvRlxeJzK7fcQGHRM0P2R9OhR
X-Gm-Gg: AY/fxX7zXe746ZmK1et73qHyyMgs0nMI+qitPq44WTll0O4PlmklOaTmu9hmos6p3oP
	Pi/NBvD57Hj5WIM4a+fRjYPj0NG0FoTjg4tINQGRBbjm/bsS9NrrGmiLWwiFKTPzfOU3mRtV1RA
	wCoWlST6eBOnEe2pozfm0fWI/LuDDKXbMtqyZYfAq36QzAFeYVqR8XSU+wyQ6jWl/ZQWh9GKqM0
	p3DXd3TYax+3LQxioIovUUSt7nbcATFznr6YXQtxFK/z/YO80p61F+UQWJAeQ2BF8s3PvzmiLSs
	DAa9AaF1iRrOqZ3N7bDxfWCvf9NJccf8ch7obaahZ0dX6AA9MQGGpf8flJdZSSMcWIu15mje+1O
	EQJMNyEA9P5rq0oY6dEZhdJuN2BEG4fHtGJ0IVf/gKdfBZncc6TuhvXwo0kC7BiLcfkXXzmJ5r2
	PTm+qeErLDmLrJT7fBkwv3AXHFSoZmAaE6uH9KUH2xtguNcZoF
X-Google-Smtp-Source: AGHT+IEt9teq0JUUJZF3OW0ijkn9a8V0mFcAPYfdE6S6R6xVZf5oY87ijDEBD1lej63ZnKPhXNhU6A==
X-Received: by 2002:a05:6122:32c1:b0:559:8051:223a with SMTP id 71dfb90a1353d-5615bb963e1mr3026750e0c.0.1766410543315;
        Mon, 22 Dec 2025 05:35:43 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d1518d5sm3397392e0c.16.2025.12.22.05.35.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:35:42 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93f542917eeso1014161241.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:35:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWUNEvJXnHKCfmY4WfXrk2vlL7sHTAXMPYN46KFCTegPCMpkH6+yWYfma2UOsEU+AMYh/rXt+LZqEfT@vger.kernel.org
X-Received: by 2002:a05:6102:358d:b0:5db:cc69:739c with SMTP id
 ada2fe7eead31-5eb1a67d6f5mr3004540137.17.1766410541913; Mon, 22 Dec 2025
 05:35:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251023212314.679303-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251023212314.679303-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:35:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWmakH92vvuooV12Ad=nnF7ujuAn6ga6_y0-0Yo+wTvgw@mail.gmail.com>
X-Gm-Features: AQt7F2oJ3cfLiw_0b_v_DXw8QTxfiEIG8ptx2ZrgeIzVsgXhg_-kQxq8V9KQCqE
Message-ID: <CAMuHMdWmakH92vvuooV12Ad=nnF7ujuAn6ga6_y0-0Yo+wTvgw@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: renesas: r9a09g057: Add FCPV and VSPD nodes
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
> Add FCPV and VSPD nodes to RZ/V2H(P) SoC DTSI.
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

