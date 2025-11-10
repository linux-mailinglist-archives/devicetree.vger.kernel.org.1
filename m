Return-Path: <devicetree+bounces-236740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2413FC46D35
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA164188F821
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08E426A0F8;
	Mon, 10 Nov 2025 13:18:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C217169AD2
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780701; cv=none; b=j0093h3Acco7REUWyEMM7dpjW/6IMxJ2d//mtco1jgBbayyqsSHTZ87v1E/uDtY5sG76RqnMDXbNGFi68xaj0pqxWWKaYecehf/m1+YvkX5Et7TNUOKIQ2Td66VuKDmf2A5pcW81bXZI+gOFmxuaDskwU7MYIBmzau+ySZGq/yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780701; c=relaxed/simple;
	bh=vDBZRrptiL8B1JchW6TdyIwfOCu0iFp0Ce/dGtkhJC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qjd4FcbtHXx8i8Cqt49BOczSM5gpl/GPwwuVbgiuVPZ6xtQt+draXh0X7RKQYHrNjqP5xbgxPOR3xFP4va2wF5psVwB0kmXgoTX15c3pPsxHIEiI0DrbX9JeU7xZlF4i3BOz1RLK2tWd9uJcjGoZyO73DkPA6vsJ3XEuIMIyy8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5595c4a7816so2310031e0c.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:18:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780699; x=1763385499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zJ0ifGUcnHr6Kd16YmJsShuaDbT8XpGIPU3sUDQV+ek=;
        b=avvktyYETgutGSNBwLy0FV4SXF2t8SIUIIJmxsQqvJzlWmA3MKq9QcuLa0Xk55Suqc
         Jcf4ESU845Y5ehRWHkhffqbxK3B0XYLybv3VNYyFhxzPaGodZ0LSaCxfUG9BVhPaw6CZ
         i3h/47zg2lZtlZpZr6eb+KA5XIPv6cUQRrkdXg46jADbgbN7kcRbc6TF8inQWyDsrhMm
         sjhUTTGuUdwZDUlztQuttQ9KQh0LPLG7LfG6AeDesghaVA1kpy324t23s11g3WY1IeNq
         Iyx2WpGckw+5MxCoBcXKgH3NbfeiV1JK66KF1aw9AKHSasD4UTnHueL/9pd/s5Gjt/iL
         Gq6A==
X-Forwarded-Encrypted: i=1; AJvYcCV5Gzv/SpwQpNLbOiDjakpHIrP6Iry6y2fFoXDX4ksxlkz+ASPyWcN28+Xkj+zGdS9DqH4dDz6MBGIw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8rIRTZKGXMZHWKQ4BmP3Dz3vOGrzBDetUkM5dOvnIqeQU87cK
	TYsmhZq8oWbRuW3yjJLfapWHJMHpWcttnYqI0wr60gKe1QIsb0zRC+0Nir4s5eei
X-Gm-Gg: ASbGnculy1DwBviZGsVlmvorTEQTsw81n1t4D6VwA0LZ3oDrTB42gJnUAFoD2/6Swph
	w5OjlUW8O/3YHZ2rlOrKIjfGRVlaYSv/c13un7iOUQGUdGraxq1ifBhALIyMdAby8h/5Tzm0s/y
	Le+Cn/O3y3fPKmdHHpRTDBCRHjchO5QM3u80+w29UV/Mz8eTKKyvDc80x9D1JfQTUkqui1NCnUX
	gYvjMCc5ciImQCwIxScK7WwHzT1pgBtxj643zXzFrC//dN4yDHPgPERmMsNLf6O4Yi7clW6u9dE
	bcCTZASxKEYlvTwPBKeetSJr99rvjbzGvK2oYkMMAWzZPcKuD0pl/xq3n84FfakJczvAKSsCeha
	GVkAo1WFhhSi7Np0zXfJBo5cAy7A9Exq4u+wN3lm6nyquY2LcmwHCqBG8bl5FW8c6iRYtZrHvxC
	JbIWOMEcOagdWZrwrtUSOQT1zU1DLM5rh4qQqK4iP3NTlZ042cYog02YvDRCk=
X-Google-Smtp-Source: AGHT+IGkREJay7T8LnFdEIirgQLWT9GZIAd7WyoNNcICKaz14pAeBngJiZc/R1LdUA8pm2MJBz4Qrw==
X-Received: by 2002:a05:6122:3a04:b0:556:9649:c36d with SMTP id 71dfb90a1353d-559b32b879bmr2932470e0c.13.1762780698994;
        Mon, 10 Nov 2025 05:18:18 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5599582860asm7467091e0c.16.2025.11.10.05.18.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:18:18 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-935241a7a0eso1648806241.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:18:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXhPsDwIJ3vkniDIBckFUU41XgANCY4P9dQ1jU1q/QM7HagSFsz8i4kG8YJnMxiG2bX/IgT31ZkScP9@vger.kernel.org
X-Received: by 2002:a05:6102:5492:b0:5d5:f6ae:38ef with SMTP id
 ada2fe7eead31-5ddc481b944mr2851696137.38.1762780697780; Mon, 10 Nov 2025
 05:18:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028165127.991351-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028165127.991351-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 14:18:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVAyN-XQVoBNncCC5Jka4TMqSeswe8frht9sPOEJB+VLw@mail.gmail.com>
X-Gm-Features: AWmQ_blg0wBfBRVHEE39XqXvRiX15hbIbJMqYeX6Rvu1lD8v_t2OD6KHWJX8VBE
Message-ID: <CAMuHMdVAyN-XQVoBNncCC5Jka4TMqSeswe8frht9sPOEJB+VLw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] clk: renesas: r9a09g077: Propagate rate changes to
 parent clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Oct 2025 at 17:51, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add the CLK_SET_RATE_PARENT flag to divider clock registration so that rate
> changes can propagate to parent clocks when needed. This allows the CPG
> divider clocks to request rate adjustments from their parent, ensuring
> correct frequency scaling and improved flexibility in clock rate selection.
>
> Fixes: 065fe720eec6e ("clk: renesas: Add support for R9A09G077 SoC")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

