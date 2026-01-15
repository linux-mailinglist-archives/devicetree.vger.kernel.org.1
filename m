Return-Path: <devicetree+bounces-255582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 702DED2482B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C6C8301E985
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A6439901D;
	Thu, 15 Jan 2026 12:32:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC0236D507
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 12:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768480377; cv=none; b=lKfE3PP2sKhBfJsoR0XoR54aAWNnfH5rSb7EUKHIg07s46rnJvyin+PYrJ2A8ii40F5MhMtoOZasVvc3oYUoeiS4eQ4kT8p7/LjFP+PY44ekpIMKeTTyy9NQa+psHjVAIaCVlOfjof2UkLzfEPG2JCrBxh69dgcHxUCOAepdTeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768480377; c=relaxed/simple;
	bh=d7ZNqBYfjHGLIFNDjs4o4v6qyIP3tQ3XHv96Nc3lMck=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JGz5qK8rEPFMvvWYz1NMEGEgBhbGOOqbPiS5NehiFy/5z5C7Wv90ftCqXCWSwLlCC+pmQ4J6dugQ1Kqx3vN/Tao1CGSmCx5U1M/9uKuClebhtcpMgpGmx6qOyDrdaFVfMzgMtd4hZozCbn+uhSeg8HJejV22/cNz/AcrYecHcHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56352466d86so328222e0c.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:32:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768480374; x=1769085174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8x3sVzg5glkCU2pa74pfQHyJyhKJ96tDZ/fp0KcykXU=;
        b=KZFPLRsjmqwwui6FRYmWSLpXMrEbljWV8M82hfhsZ+uzR9WV/e2rz2LAXzJCF+mWdV
         qfL7n4MqVhuHaoBChGmUoFTl4GhuJ3PA5b0dk90pR4vnyfhCIMOzE5kzndlw13cgAeCQ
         W+BeTQHNmiB+fFG6h2Iv4dzztKXODiRRHcCtsOy2zmm5cV+zf13hMFKzkiPlg2bIJXHd
         2PayyS7B2siTiUXB1iq2g6+QL8zZH5643RGWb2kMgeVFzPYb0flq/uixR8Z5i5wwKbjo
         WBWJxqyvWJljdg+7vxtgk7nIikh16qMfRN96IvsBKLZLRMbyH5gW+ve7c/+YrFb/QQ4b
         Rqqw==
X-Forwarded-Encrypted: i=1; AJvYcCUvznzpDL02qYSrEocI14ldvpaHDGC1SIXqjlpP0u018sRUnytXhhvR0zlQZEaD+eI1serQUU9zbSRX@vger.kernel.org
X-Gm-Message-State: AOJu0YxIg5HCgJm47iqaoWeAwkyoAfeCf9NTc8bNzSn/vuRZHPH5oA8V
	u5/5IRjBBbD1Yn6GeMzUBlUlO8a6IybZL+7ympgNMWkj4HybB3JlWkIliFN/pAAun84=
X-Gm-Gg: AY/fxX5/pNN9O/ReDxeI7z/vO82jXxdXMe2cHLOqDJgt/ZbQQZze4vYxyocwd6Huahc
	6KNCIWPDqamfNpqWkOpwDB15VQfydcIdPUHjyBC5sHKhQoGttUt2Z8OL/YQ3QicMF28tfAbxgdh
	l1HFOWETmhBb9SHZ24XX8U/hE3CkDcL8ygGeOTb7cvu+zsshQ+WIbW4fp2E9czWSomZqoTq0Bmy
	OBl5BU5Ai/ep/Gxf5b4T3gMf/h9edT6Ru2tcX9BU20SWQLBpgBra+5bvQeI8J/hDwVGdDnL3P87
	2y/0hBZoXJmNFVnwgLEHj/H6W5ebJuMZ0oZjL8oKLEFDH28kkx9PZ2z0Bq2cZUI9FK905swh6Rv
	YHNCXJ4sFNfKKH9LS5KvgIqeDnTAXmF2m0lVlsSuHoqcDloVWJiifALVJ2kIh+eDQPVzFg6ynYj
	Kc/CvSgHzYPOEKqBuoGVdDmdIZ/EQVGXFlBuXBhqXk0YHvyOB4
X-Received: by 2002:a05:6122:1d8c:b0:53b:1998:dbf5 with SMTP id 71dfb90a1353d-563a093a412mr2131129e0c.1.1768480374160;
        Thu, 15 Jan 2026 04:32:54 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea810sm25161463e0c.5.2026.01.15.04.32.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 04:32:53 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-941275fece4so219848241.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:32:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnuPv2yYtc3nYz+00k5HW3TtZev42QpgATVJ0vgJ4T97ydC/QCXlfV+RMBClJRolGJhedjNZixHL7+@vger.kernel.org
X-Received: by 2002:a05:6102:41aa:b0:5ef:bd3a:ab1f with SMTP id
 ada2fe7eead31-5f17f642b39mr2643247137.34.1768480373240; Thu, 15 Jan 2026
 04:32:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115122210.3971063-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260115122210.3971063-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 13:32:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVHTG6bU3aiGWGu8CRJxbmLiT6+qjuUcY+tmOtgmOHiAw@mail.gmail.com>
X-Gm-Features: AZwV_QjXUmvz6Ry0tFbDErYTi2YIK4IrSJndLM8HBQCUmn3-A1WVimxJF8qSSLk
Message-ID: <CAMuHMdVHTG6bU3aiGWGu8CRJxbmLiT6+qjuUcY+tmOtgmOHiAw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzt2h/rzn2h-evk: Reorder ADC nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Jan 2026 at 13:22, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Reorder the ADC nodes in the dts/i files so they follow the same
> alphabetical ordering used elsewhere in these files.
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

