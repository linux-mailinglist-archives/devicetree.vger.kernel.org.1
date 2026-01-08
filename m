Return-Path: <devicetree+bounces-252728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82541D022D5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3E49303C205
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ECA744CAF2;
	Thu,  8 Jan 2026 10:15:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10BC4508F2
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867342; cv=none; b=Q+qs9fBslXOYrQTSlxM3+chZG6YtDRRLMQCHXWd0cJ+6qPwx/VZ6vxvDvWPdhbRvAD/eVNBBT1DiK5eCyDwmPA8REkoZvSx7UOFvMmhOEc/1Dz4+vEg0bxtbSBZh0Ux3+5PLG6B3YA78UVnLuXYZajLg5TAaFbwFuh4vSOOOQIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867342; c=relaxed/simple;
	bh=d8ZtAFuVe/LITa/PF7VOWvCoScLaD9Lr9xCQdDcgF0k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sFoeqF9eJDKBBmt+Y/4S1ZvD+0+vyqvVPelZC5una+Liq621OY4Sn0WiBc02W2TMx/z03JV14mhsxgIPNJ9BDtcZsOoL1c0jNeRwM9Su5Evdur9ke6y8UcMKhmJunwVpu74GfHBY0Y5yaxF4Ixnx7tZmKliU/n0cqthMuVpyVnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5598b58d816so2129801e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:15:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767867337; x=1768472137;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S97ifOyreHmoTKbfab05cEqNsJtDOZRmWT8CiZyytAg=;
        b=Yr0F3/KGaODgm6+0JJmSpmLll/fiu7BEl3mhteDsmY5FZ7zL3D1fmPDkIu+osC4Bmi
         F/e0zgcGwrgpbE2TYcUV0xlXffYEmO2G47pGueYvSZIWAtU/R0hG9Zr2W7LtzFwj1JZt
         18FR+F/ilJhi9yguu5QxmxcdDfD2jb3MtTNDiaCYeMjp01hFpQ1xvEGNyGusBTLvDpvS
         nRQVMaeoRDpACvfiJKhBzLoH8NVAvbzTSnnhCkNTKdBzA0oeac40KEXQgFkAW6W/+yU4
         c1FK6TwAhDDLf9k5qrMBwmZT5yOVVEd+6swdbCADPBqZOw4XMZrVDvNgRDY38d6ySKV+
         Pf0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGn/FnFoPuDCWg86glWjSzXWB8xqgN83gyhf/FBlmv3S+jsWZaDJYxMv6AAQ6n9ZOFWJZHE72USTCa@vger.kernel.org
X-Gm-Message-State: AOJu0YypNkeaDGBgoOf5N0YR7/nxg/G5fHdFcQtMGYHnwsBe4Uy349ze
	nP4sSngTuPMA9rEBC08JDQYSElfc1idgJ2/8biGjHt4Fu35YjmcEKfXWgglwcsx+
X-Gm-Gg: AY/fxX5JMEwilG1Ue0pgyaHbrWWoHJGMapS4Zt5AnkEc1QsfPMzW25MuUNkb9osfj1F
	z7vOSuhvXFwMDjHC9gWdapt977/dZrVyVqDgNt8MwPEIVoiRzZXmTuVABuxoTb5El2F2p7lz5Gj
	uJi5h6EOVvCIixnPqCTGUuq+Gu2MOUmerJKJkfSOaEJyB+QVhQ0DDHXBlZ7nAivx+jK/2ZuDy/Y
	ABOIKnKDsgx70Va8EezTka7tFUpQx9CiRBpbivuS5drx9phtwWojmeRS5GfMFskM54zFBjyp+RN
	Ik4Bv8bYhtWKi1Yxe/oB0zGWVrzV9AxxMYGY0ERIpPcCgk9U8tDi4cLtf8x41apXQPbxJI/2lTe
	3jQxHaxQPeuGnOvfz4g7H4YP5mJNegd5u/KOhPz6euH36LesDWs475xGp/swHWr9JRHiXqrrhXi
	H4oBF/Ky8/2HgmW34Xyq7LvViItFFBHwtHjmWKaWRRrfz9Idui
X-Google-Smtp-Source: AGHT+IFCrivHAqZl2WwhPE0xnO4rZwx+CsS+xq6P9zDLjNxQDniYqVv0FLIuvGtGy40SZgOnWevWTQ==
X-Received: by 2002:a05:6102:4a87:b0:5dd:c3ec:b5b with SMTP id ada2fe7eead31-5ecb69647f6mr2283911137.31.1767867337384;
        Thu, 08 Jan 2026 02:15:37 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124e97b1sm5373927241.15.2026.01.08.02.15.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 02:15:36 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94121102a54so1936556241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:15:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW3LZ+VYZ5DAzfgc1djVejNugNyiC8oNrG5rbxO2fXRg5CkswToaLDsnk/4zb0ANXoSDoSnaF5BP60N@vger.kernel.org
X-Received: by 2002:a05:6102:4420:b0:5d5:f766:75f1 with SMTP id
 ada2fe7eead31-5ecb68584f8mr2351004137.11.1767867336269; Thu, 08 Jan 2026
 02:15:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 11:15:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXyJWTWOrXYUHx6buVpz_WsnKXQBqb=N07AAQzPON_6fA@mail.gmail.com>
X-Gm-Features: AQt7F2pAXJN79A3uhID015MPaJdnJs1tcoTCPCU8r0ap1biHyKUGnNh1vBCYDO0
Message-ID: <CAMuHMdXyJWTWOrXYUHx6buVpz_WsnKXQBqb=N07AAQzPON_6fA@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: renesas: r9a09g057: Add CANFD node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 18:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add CANFD node to RZ/V2H(P) ("R9A09G057") SoC DTSI.
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

