Return-Path: <devicetree+bounces-240601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFF7C731A9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id BB8072A3C3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766593101DF;
	Thu, 20 Nov 2025 09:24:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC936310635
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763630665; cv=none; b=bRGLQrW1bl8Inh1gU28/jC3LDtYwKcuDlTPkQgwBK8MSSLaIE9DsBmt+NXptojoeIcYscZWflw/Ch8MsN3ROE/XDLbZLbPc9jkxZ29GHF26R3xqVLIuPlYxCe1oWBjdcF1wxdk8mclpr7MgyyJOiZHFM1uJ5ssHeeJE/ajmEVqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763630665; c=relaxed/simple;
	bh=tIehzOADWg2oMjFvo7uQM/EKme/aa27Q/uQTQsKkEoQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bxrhZCGJrRnV8PMn6s5qf8UMoZdljg50A9yN+fuBv3o58TdjrrVJUqPB9O4oNSCyb7iLHWBUOYiNToH0fwRio3kj31bT3uiVYReWA/1uhHbE6LA4XnBCfPtZQxbDnLKHdDfrvMNcehD1L06KVk7pa7Z1nsqukliWKRGiAKR0DqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5dbddd71c46so262794137.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:24:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763630662; x=1764235462;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tI+k0XKSvLwM0G3p2ahCZliR+WoCnEU8lO5ycXo6VNk=;
        b=Q1tmhgyoYsJjpBGwV8zut6ugKBxRjg7ro9zic5ML0n++9SVmEciFWj3tUWn6T/gqxi
         qbt/E45ydq5bv81BcKXiW9ainJA5L8Kf6tDgQsO7+fC20tosXyQTy7Z5g0jPPlZ3A0JT
         vMlwY6OeqA+zeprcEnyJTwt8QOKLRwzrvbDyHTNXOgZnLiGOUg/96cqsdEYBJCg2EYYc
         3HdJ1Y91RX/xQ/GtPHkrFEZgYfg4lrstRFFyiNiTGaktjOwKIH1pg3jxJCnD42wChMpz
         9w6h/T1k9mCXZrC1CyPfntdJrWP9c3VuGLq6B3JCHG4+qAUnKzkz7mlIEIF5RmhIAgXy
         SUYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxxnggJkS4EGFVwz8Cc1kFeRDQgfyGH6rad5x8XT7z/ex36EWktT+zmdzew8M7iIdcPXvBUghvjcDs@vger.kernel.org
X-Gm-Message-State: AOJu0YzXXuv+taIawOcMIEqIvpfj/YV4ngbJNgPKzGBy+IM1xwtJcWBF
	onZ+uGYL4NC0MAnhvQ1YmQMfLLYvfeJcHoVgOq2rsJ8A80JBUE2C4eN5ctbYD/Md
X-Gm-Gg: ASbGncsCHwyRml4Q1ZDCJBPx5HjF/M2Os16GFw+WdmhZRUFVRJ07NrGaAybZZ+z1qUF
	kndCH47w2/2BZENYVezN3yKEj5fqQZy8jJgTG13lXGxHaVqUKP2qHD+2u4VIX+E56pYdnATVPDJ
	CIXzNcBwinsKEeKM13czte2NzzDGXMTrSZugkJGVTWZiWhQQsaUe+0K7VABKpNsQ3IQPVk1zFe7
	cyZx6ko5j2JqTZiD9yhfjLrhdvYcJQOeeII7u46+poQuS8UKuKzBD95kkOcFRdd6UCxYdM/FXIv
	KjVY2YbwrVAf1HEK8YKY4YHI1bA1lEbzeZuqw3pb0PD7+EWdI+qyHR1X+0ghfFdT0UZv9OBdDv+
	5vuE7D9PRJLEtHIDPrVUjhe0IuFF4MsinujOasHdkaKNwFsUSbnvPgLidBUDqIKWnUN+n4pnHEB
	efAhkS6ZRRXfuP0ofFGdqA8Cl/HfKeBKpcKON5kPvGXbe9qneV/9+qyLNn0N0siSQ=
X-Google-Smtp-Source: AGHT+IHXq1zSqP6eUv0X4ycOX4nIsbSAasofcAK6EQsBN+byTSqtqHH3x992Fsm0uBJowL+opSx1Zw==
X-Received: by 2002:a05:6102:8015:b0:5db:fb4c:3a89 with SMTP id ada2fe7eead31-5e1bbcb8391mr787950137.19.1763630662274;
        Thu, 20 Nov 2025 01:24:22 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5621a066sm823471241.4.2025.11.20.01.24.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 01:24:21 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5de0c1fa660so209933137.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:24:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXzSFN93krbhy6EvmYcA66Cab0Mn/zfsXdYOWrLlNoEj8WFZOcA7eeycr6eQSr22bRFZ8gdZdY3GLcQ@vger.kernel.org
X-Received: by 2002:a67:e713:0:b0:5de:736:71e0 with SMTP id
 ada2fe7eead31-5e1bbf31e90mr811357137.29.1763630661351; Thu, 20 Nov 2025
 01:24:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
 <20250916150255.4231-9-biju.das.jz@bp.renesas.com> <CAMuHMdUACU1tPKDgoOhgBW8KkDCxSEzqb7TnucYk2dW2jOet5g@mail.gmail.com>
In-Reply-To: <CAMuHMdUACU1tPKDgoOhgBW8KkDCxSEzqb7TnucYk2dW2jOet5g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 20 Nov 2025 10:24:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWPA1rSTLzgmjBcofh1jNcH7L92gJEVzVBXqgm8ByN8iQ@mail.gmail.com>
X-Gm-Features: AWmQ_blXL6vQHpYLkm7kEyRyWu76K4MDkks9C145cLfpZdNOxCjRGmyKdbxa0co
Message-ID: <CAMuHMdWPA1rSTLzgmjBcofh1jNcH7L92gJEVzVBXqgm8ByN8iQ@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] arm64: dts: renesas: r9a09g047e57-smarc: Enable USB3HOST
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 14:27, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Enable USB3.2 Gen2 Host controller(a.k.a USB3HOST) on the RZ/G3E SMARC EVK
> > platform.
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

