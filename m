Return-Path: <devicetree+bounces-217702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1A2B58FA9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2470318872E3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFE827D782;
	Tue, 16 Sep 2025 07:52:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECC386344
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758009130; cv=none; b=oLwEy1EODVu95CRSwoAlVenAVA12y51WCfDLQQyh0Yi1M+k60rIBIQmP326I9YQfZqoN5iuR9XxlsH4FHyrgilDpjO+21CMCdqUM10og/L4vedDY/S5bJbIKQURRal15A4SRiyNrj2hQaEzYNS1dXzzL/LDaj85tGJoYZIT4420=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758009130; c=relaxed/simple;
	bh=6yWeRjTd3EigN4C7xJHdCPXEVBDs9X8oQniavBQDHtQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IxhTWgUKEDYAk8gQd9hK3Oe2uoBDksVk+2YLJUeba/mrb72xcLisCDTX6xz7TPq6iki+hvJlUcjvTDOM8h0Q+YF+jAJtvK7Hy6fPjlLZ5QxZ/xMaJkY6zk1wdFpVrNRbNBGYV18TAiewpRx3L7EFWUGXZql/jCxjrHBQzmIKLJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-8dbfaf7d785so507494241.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:52:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758009127; x=1758613927;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9F1be41AfAEhuegD+wVkRBLQQ7Qa3dUKKIwBvQcqqw=;
        b=eMHqZnNu2l/BMiUOypGu2O5PhNHvUIFlGpcv8h6oV2YCSmf/NLLxPMNjVTS6GcfY6s
         eq6GKZr5aAeSD4aVt2P2Me+06I/NhIEI4zH/QDV+D9eaBBhO6b/1qTLhiZzuUzqB3uyT
         ugKa7PzRUmwSEdK3Eb+Yym+QQNy5II7yuwVsQnVGg81Wux0y3kiwlEuaWuHBNWbRJ+3T
         Bs86cV1RR5Idw9VrOTXHW88QRdfTDhddFJQFRZzXeXgNY3yN48rQPmIyk4ym0T9zrlD0
         dLWFxo9/P4QQzpLXObo4iWgOx6svKbq18w6eNocO6B2vyfZx5nAJZluYeb34mQT5xMJC
         yyVg==
X-Forwarded-Encrypted: i=1; AJvYcCUd0y6A3e3zPbtQBvlk2hB52rb62/90JvOrwYVL8c+0vj13uT+WStwdh7wEtoJGoW8t6OfMFSM2TAAw@vger.kernel.org
X-Gm-Message-State: AOJu0YyAjBeGV60spTwaX7ippYX6hRhBmlDSY57W1X4ea0PMrCx3y4Jb
	AWNeUGvbpBdXBorTYxAtpOkNmRMIhMeTPG2OsCW4cMm67lySkWqiqc5BFzbfh3KJ
X-Gm-Gg: ASbGnctjtXA57tNEA8bgGU7x9o2zbMcovMrcT4sX2E+1dThHIdwuqXoFHmnj5wMIjbE
	UAJKS/fJa2V4m2ZyyZ4Vl3/4GHFtfyxkjrzgjwBnq86AV4iGQXzaBh+xVVZYZLa34IgHNj/PyFb
	zQTc+FOh7as+yDCcME8+eMnEhbYF0E3/0aGZB+kUo9KTKE/dKPRPFs1hESvJJBFPWcT2yxz/OAE
	4mJKeJ1pcXjVHIz4wOMrp5wFAl9fNu1A9SNLeVwiwRw4K98+U1JDkLSyQnLcMr5Cgc92LXEUPUP
	DwffF4Y6yFNFwPi2HiTXAHgE+aUOW/VFxagaBKypCw+h9xr/HGkCe3a7/ZjU4M6JC2YMf2p/4fb
	Cfvel6wRJBwAAaNWr1ftNmnF9T4h7FgJFIKiafNO1vAts9vtlPgbTTOQMOm/c
X-Google-Smtp-Source: AGHT+IFJHKrbaczLRi8KrWnrPLnWTRx0Waxu7G1NKyD4N91+BPWBoWfP7Z6BawYleNP10OaOpx3aHQ==
X-Received: by 2002:a05:6122:168a:b0:530:7747:80a7 with SMTP id 71dfb90a1353d-54a16cc2b12mr4468955e0c.9.1758009126888;
        Tue, 16 Sep 2025 00:52:06 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d1d91casm2666947e0c.8.2025.09.16.00.52.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 00:52:06 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-8e11df47db5so73389241.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:52:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWVCeA1SstXsr6uulilHE+T8VEOXNu0dxPPxa2zc+8bw2Yi5du5CcTjnIqJaxKb08XxVzcO0TyssuIq@vger.kernel.org
X-Received: by 2002:a05:6102:dca:b0:523:5bd4:f982 with SMTP id
 ada2fe7eead31-55612bda230mr4819073137.31.1758009126350; Tue, 16 Sep 2025
 00:52:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6rjvzf4.wl-kuninori.morimoto.gx@renesas.com>
 <87jz27vzec.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdVVV5tY_iwb=Xn6XVY-Ai6spBY70yXhc5VRxwDva8BGng@mail.gmail.com>
 <87jz24fqrg.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdX3cviP6xHnGP01kRDwuHRrHg0ZpNLV8Mf29MFS1B7S8g@mail.gmail.com>
 <87wm5zi5h0.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87wm5zi5h0.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 09:51:55 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWsKj0s2LjGCOf8_Nm7AE3n4X30bxR6iUp8iCOofDUTww@mail.gmail.com>
X-Gm-Features: AS18NWCq3KxiPfd0GUnp0oi4W3bn5nezjEinSQF5aftVVknOFW2KMtqQ51sfeFU
Message-ID: <CAMuHMdWsKj0s2LjGCOf8_Nm7AE3n4X30bxR6iUp8iCOofDUTww@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: Add R8A78000 X5H DTs
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Tue, 16 Sept 2025 at 02:52, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > > > +                       reg = <0 0xc0700000 0 0x40>;
> > > > > +                       interrupts = <GIC_SPI 4074 IRQ_TYPE_LEVEL_HIGH>;
> > > > > +                       clocks = <&dummy_clk_sgasyncd4>, <&dummy_clk_sgasyncd4>, <&scif_clk>;
> > > > > +                       clock-names = "fck", "brg_int", "scif_clk";

> > > > According to the DT bindings, "power-domains" and "resets" are missing.
> > >
> > > Unfortunately, can't use for now. It needs SCP support but is under
> > > development. How should I do in this case ? Maybe use dummy device,
> > > but can we use it ??
> >
> > Just leave them out for now, but be prepared to receive complaints
> > from the dtbs_check bots ;-)
>
> OK, but I wonder does these really mandatory (= ) property ?

DT describes hardware, and SCIF is part of the always-on Clock Domain.
I am not so sure about the module reset, but you made it required
in commit 6ac1d60473727931 ("dt-bindings: serial: sh-sci: Document
r8a78000 bindings")?

> I'm asking because it works without these...

Sure it works: SCIF is in the always-on power area, all clocks are
dummies (the real ones are enabled by the boot loader), and the Linux
driver doesn't use resets...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

