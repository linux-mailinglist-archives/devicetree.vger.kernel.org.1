Return-Path: <devicetree+bounces-242357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A94EAC89811
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B8503424FA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6A0320A38;
	Wed, 26 Nov 2025 11:26:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83972D7DEE
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764156401; cv=none; b=jV12BtvFJ1ZDHZlN7BCup4UcXTcom3x6936AHqmyPR9Tqas4CFoQokTJ2ydGxxFWq+OiM2a1zEbnEep7N81b8zyNptfKA8USlZrzALoahw6Yd3F0Cqo/uupghrM1k2VRrwmYzbKODfOuSkYEsY3VNfa7yBSHFIGnGVWqTdM+3jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764156401; c=relaxed/simple;
	bh=A/WTa594oqG70VFSxqpmEoPIo3eFhE3MtTwKAo9KLsw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iMSYn8Qtutm0n+9XA+kSxhD1j+KuR6y+gq6BMLFedKTNplQfydUVhpp+0ockIyieUCB0m4tnuHVugmMXPCoaiVAOiMvhrGbFSobwC2FMPiAX+PeYH9k1RvwAI+v8EAN8t4c36qCIkPrGkK5fgsofrWV6fCn7S+E3f4MNrMRz0HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5de0c1fa660so2140589137.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:26:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764156399; x=1764761199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jtesYd0ebHqf3bGA+srPWLjam08hRq4/xzS8ygcZKPY=;
        b=w381niE2pyxl5zapHxxnjBIasN41oJAy2PSKMH0mofkEw1DqRjA3sGEI9sG3a1xTm7
         ih027w8sFppcD4++V1Jef7g/8NYsLpV8HULKKxdkuFSqA+yxGkJMRa0vQaR2pjVzyMZW
         l9AdCIMZ1F6xoWrEhfe8rRjGf1zsy9ct/Ntacg+Z7XwzrJWJOgTrth4fYBgnHureqwym
         HVItjoLPfTWOu8xAtH1hjKpCOHCv+YFwpDicdoY8RThuvhfOMbP/RW3V3ZyC81CdhlBs
         coT788M1B1sJTVAvG41u4pepLZp6aMgC2e/TRD8o80ay+j78224tGhG3X2hBZzAbvAoL
         cR9A==
X-Forwarded-Encrypted: i=1; AJvYcCXUVCiiZ/FInBw20BQwSkpd6nx8x0IntPmvWtG4ndVr9M4D/QI59D6NzbF2BGiQeQCV3ZLi9grNwTAG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh3MVEXUg/bESZgtZta7I1cSuEyOMZ3OY8OENXBLVW0AqiLh5m
	kLrurvueJiWpQhAGbj4axGNGymN1kpsTMd9ZIjlThoAsWjxTeHjO+dxY3Mxjc97s
X-Gm-Gg: ASbGncvnrZJN60S7udAivnVYnwSy8nFJUwC1f0Qf6390fZWG8qYiVMs894Uxh86pOis
	oBTkhX5k1ly4VfZycBfRkgh0iEAVeoAYjMsE87xbgpJuqoN0riSUq5Fb2nFovCj9zP9m13hEQFW
	ht96O0WwQV2jAcZp3hHITGAW15HJexSbAEe5K5EVxOxQZoqr3QjJxIgM3iHbma/vW6Ix8WzWApR
	gIqNHD7y8wK3nZ683CSvCzd07VpMiHAhV0P6U+XNl6hrTrZnqT3UfJmlavosVQDas9wUq+JKKpy
	cLKiTG7bOK5C6GcpEAj6iBkSSLiR50OMrQGxMpQfgrBw/XapZTu08oUmLZQkavdV3CaOwfqiaTn
	GHG+sTv0EtyfDVFdz4Kw5j6Z9dBsFZnU0gyjkYjTNHVkSsrFt/Da/32RS//oJxREyFEw+oL8aWu
	BTEkoH5FiSjHyg3SV/FtYZuq4ZBGQh+sn5HM2P61jkLVn9lPIa
X-Google-Smtp-Source: AGHT+IEVjSHDTgJ/KJGA/MSYKyknr/psd+fU9yzLiJEiYld8jblHdMv3a1HHZT3mYXCtXk6J24VLlw==
X-Received: by 2002:a05:6102:e12:b0:5dc:51c5:e3c7 with SMTP id ada2fe7eead31-5e1de3c0f1bmr5965576137.26.1764156398562;
        Wed, 26 Nov 2025 03:26:38 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c561c50c6sm7889087241.1.2025.11.26.03.26.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 03:26:37 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5e1fde1f014so1126973137.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:26:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXwq1JODjKhuyZ8/ubOOg5e0oepX4VE+8YkMrZ96ACpoxtP23YLAMNp8HkkatR5cU/KxpwgBrCrPLQE@vger.kernel.org
X-Received: by 2002:a05:6102:5805:b0:5db:fb4c:3a89 with SMTP id
 ada2fe7eead31-5e1de25fdc1mr6714449137.19.1764156397436; Wed, 26 Nov 2025
 03:26:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125212621.267397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125212621.267397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 12:26:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXEi+omKdRDx7qPCWmpssg09Yc_5MQjj+SDhhCcjL3Zew@mail.gmail.com>
X-Gm-Features: AWmQ_blz9vjpWn4fvUTyaqQkhCGAbdGKR4rE9qC99IBsh-eudnLwfjzrIWdxkZA
Message-ID: <CAMuHMdXEi+omKdRDx7qPCWmpssg09Yc_5MQjj+SDhhCcjL3Zew@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: dma: rz-dmac: Document RZ/V2N SoC support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 22:26, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the DMA controller on the Renesas RZ/V2N SoC, which is
> architecturally identical to the DMAC found on the RZ/V2H(P) SoC.
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

