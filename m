Return-Path: <devicetree+bounces-242817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F7EC8F8A3
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F6EA3A16C4
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C99527E06C;
	Thu, 27 Nov 2025 16:40:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B236C322A30
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764261630; cv=none; b=se4A/iuiHn8vyC/SzxdftoN+SKyEvKm1AcF7NWOKGmSc8/FJ3Y6n6kJrIQLrdJYGQMmm2d+5aHRUt9/hno7qzINYherWIVpcukefjoy+DAEYrC5l1n0/xttyTbWAPyYNMILPX4ZpVGTjSvb5Gw2pR1Z4zRw0ZPfgPduzUnueHOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764261630; c=relaxed/simple;
	bh=9+AL/wNlI2qAMcar3WQycvHFD6TVSjG9PHShXIdiJ5I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nL1z19I2ZLz4a+vIqNA5OdZY8KIb56NL0Z6i4qeQgjxVJ+oS7xUvkgY0KZYAh7okmXWoGZs7VUFf+JEfGZcTJYDzU1mOnZZ9BWu0bEA/nczfUJOYlatgrjKox8eo/dYK7rbiEJjtST8xp2SZXlhpWNUsohIHxxs1tc5a8vhmK9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9372410c6faso284681241.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:40:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764261626; x=1764866426;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wzijuSrkuGfVVngCvAWQGXuG1JFURvXpqK7jWpUiMTA=;
        b=slnaNo8HgHMMAvnhUuKoSaSSwLQ/kg4I1G0Ncol5T/NUc09Rt2he2JDj/sGqiEKMDl
         PA0kKA1gf4SAWD9vqGir8mTwz45v5iE9K112UvZwZNDbV57Gi14NEhlSwyl09qwY4Neo
         +4ZIiIvY1cT9eWZAm7/Iyka2kC3XnTlu/B5ntJt/DAFMKRBJgBTl3Vv8AI7MtKbuNBb3
         BNGw+burvpwfG4SiMp3Zok9V395nHw7MSlC1NxYK3sjDNxADR63ZhZ4JPLp+3iRBHzSz
         OWz8I+twG+U4oU5zS9dud/nkUQd0eDcES0xM98AMjFvuK3FaE+qwIHx64EMqySYd6PWp
         X5Pw==
X-Forwarded-Encrypted: i=1; AJvYcCWlsBOhjFg5k/uNailI8nm42N8oeNYwB80M+wPui04FaelscJ/dbW63L1ij510PynFjFGCrdrsqyfFS@vger.kernel.org
X-Gm-Message-State: AOJu0YxxWdoeaJaHPhppuUhohSmBBJKm7DbtsSmu4cZRF02dyH0tiH7E
	G/TWPLTlY8TaNoAFwNeSizb3q8Eactczwv+MtQWLNXhkHn0MB+d02bwv49miAT/s
X-Gm-Gg: ASbGncs0OUdeOttANgenjScsJCVoLXQ8Xmub8rY7fIzNgYpI9eo6Q5Gi68nI+exiAQz
	t64yZ2kQB14nQDCbplbjPhIPi4CEqVFOQpMlyCexqA5+3PdLkMbqPEKBCLxZaIjfdt6CjSEtKXb
	d1bK2Gyz9CzpgQNAOhObTm8Cr0I3PUaLoUeehP2WZskQUmmnFMbnNYwrsc+Z6FVFljMFQd/irDY
	LePIh+uXVANaaDVZdP7DmpCzMAowcbed9NmQGil9ixXUbD9E1bSTVau4ksM3EgNHfOU3IYExsgp
	fZ70aat0omMXfVpyf4ldi47JruVACFc6sjPqMmm0DekHr5EtBV3zcYgq+0KOhf5ho6TJtbwKaYV
	F06Z22zi6fNAceL/Iz9es7K7jUgJxlTHIgRrhtMHDVi9UUKxvvIhrNVkqh4mLquQS1b0ip7uYyi
	dKzbqJfKiV/P/zECDu7OcAnGl8g3fq9nfA1xVoa0FCPxoXnhOcBS4v
X-Google-Smtp-Source: AGHT+IENVT5cJCWPXPYd2Viv8R2RfJAbjuuDa3VyhBbsdGKNtsc60I43jw7gl1/iNrrppbm3EkkWbg==
X-Received: by 2002:a05:6102:5490:b0:5df:bcf7:3d97 with SMTP id ada2fe7eead31-5e1de1965b3mr7383437137.12.1764261625932;
        Thu, 27 Nov 2025 08:40:25 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d9391f8sm702424137.5.2025.11.27.08.40.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 08:40:25 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b2a09ff61so325918e0c.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:40:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOPQxy/I1aGrLn0iHRVyBQv6ZHptiTivcvbolnaUB9W4JWpBQqXPCMJP1QgnvD2AP1CNQT9QadtDaI@vger.kernel.org
X-Received: by 2002:a05:6122:2513:b0:559:8051:223a with SMTP id
 71dfb90a1353d-55b8ee3f271mr7818413e0c.0.1764261625421; Thu, 27 Nov 2025
 08:40:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251127162447.320971-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251127162447.320971-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 17:40:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVanMOXFNEAne+HhE-5eHa43kxRvexWHpGjXDdHnJp2bQ@mail.gmail.com>
X-Gm-Features: AWmQ_bl91iDEckR20KwoAWBG9cWq_oVmen-vb5BYknkC8a8GJU0el5_LJ9DTMS8
Message-ID: <CAMuHMdVanMOXFNEAne+HhE-5eHa43kxRvexWHpGjXDdHnJp2bQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] irqchip: renesas: rzv2h-icu: Add support for
 RZ/V2N SoC
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
> Add support for the RZ/V2N Interrupt Control Unit (ICU) by introducing a
> dedicated compatible string in the irqchip driver. While the RZ/V2N ICU
> differs from the RZ/V2H(P) version in its register layout primarily due
> to a reduced set of ECCRAM related registers the irqchip driver does not
> currently access these registers.
>
> As a result, the RZ/V2N ICU can be safely handled by rzv2h_icu_probe for
> now, but it still requires a distinct compatible so that future changes
> can differentiate the SoCs when needed.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

