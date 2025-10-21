Return-Path: <devicetree+bounces-229377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB4DBF6BC6
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A49C04EF3E9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D723280CC1;
	Tue, 21 Oct 2025 13:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8DF23313E
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761052941; cv=none; b=Yb794Lu5v+lXyJXuN6cHD0/EzjY65Q9FVLnLdtr6iuQE+vSoZIqZRypHVY/UmeYqa9hn/NEr5OuU9ktpkanN3Uuwta4TPaTpGelDveNh62if7L9a939TzMqq/7Zf5gY7eCtre+uc+/UCOOzjOjO7BuHjwdZytVr2JMRUuXsRF9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761052941; c=relaxed/simple;
	bh=0uBoagiYHO+cyUPZLgM55Q/MvfDRnviDbb0BFOjR7+Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rRjVnRB7UZhMnx4Zi2i/D/TPN0gYiLo/LsGQapMEjXwSl0tRSQtBHZL15yLM8mM3EDywtpVk5cM3gNFADZJZkagy4LO7a0xXHwGaNq+E3lTMSRvuvBJNq7ljMSPc6AcSbxAU86ET/0SsUWGsTCrISkjmlB4qfQ0nGaiBLbFxhRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54aa6a0babeso5338371e0c.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:22:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761052937; x=1761657737;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvZqifROs3RUIga+LmVYgxTzui6YYka8rzDZzlcR0C4=;
        b=M+v86EajmbWQxLUCUERdoB+UUBPA7G5DDx5egbE8Yd57alIvnHvpRq74vZtDqvvl5V
         PWc1hXlomxVaQZeDQ++M3G8+WbcH2JyDtDAB52teJA1qUaPbUiqaf8U/ISsJnKK2AF05
         /PZD/XEbv8jcRL4em3jK9bNrQsYCwGEhWqA6Ra0utiFuqLm5+PQs+EmWCL6Qs5uTcyND
         rYFQEfexYAAtwb6zOhYobO15PMs3TEGZYXV7Yk1XiW3p5kZrT0jbRDFCxCavVi+rtsDg
         pC8ndWumb+bEBjKURan4IJhDUKHQQtNYMeeIm6K+wjeHQzzIPN8z3OswkaF24K8mxibK
         CGuw==
X-Forwarded-Encrypted: i=1; AJvYcCXbqNiBB4nrcx+QSiEprOkK8H/454PT9aREKBgEFfc8o1Kd7oTlRsBj3Eu6RH/MPo3SUICJmZYV19nc@vger.kernel.org
X-Gm-Message-State: AOJu0YyqM4EarKTg7HRGzM6efmzthQ8H5mmP3k0mC+EBY+fKBvgEJ1by
	x/+u3nGX2ta/XDYuNSPA+LYiMSkjOOHk+jmHgm78xR4xtEOEEXoxeq8fOkGIP/xY
X-Gm-Gg: ASbGnctWx3SWvNUwPp8NPfjjMuGSg1R3MI5yigTL/jCmcojmdpzS58EwCJCogEj4Iw8
	Gmy51tF9YfNKQPSTdHLnFUA5NcY5/v8qnQI3PJv5P0I7Yf7pIMEkpyvasSV+f//U6nAfBOy/EJ/
	F/cGN/RrO1FBg4tHkGBGg3Gbo/fRLPRqSgqCxEul9QhW/m9RWN3xPAIvOBYPAyrcG/8+EDSYScj
	Ni7R4moT9ZQ+0g2w8N0d5GW6J7JeDIiQPl2iQcM2boQ8HFgAwpQrFTf/gBeBjnIinLn+9W+GW/X
	qCN+J1QfGkCYsI76DHKJONAIFOGpEN59JYQgTNN3alzOr1KpxP8lBkLGD9pDjP6GJ27/K86NKcs
	xBRJ9YH8FIa2C8Jm/Spp689p9snHC68o9G+vVBiac5bV9Y7wjVz2N8s+1YfVhgHBauCviYfapo2
	Avs0orSYtFTWdM7ViD0u44fuBx+3o3T1fxdyALvQ==
X-Google-Smtp-Source: AGHT+IG3Je12Kylczz85gMvvSwcrdQ/b25hHaERkAinyyIkFU0FDCsNztz8wcWrUM5jJDXwW6zMGJQ==
X-Received: by 2002:a05:6122:1695:b0:54a:a782:47d6 with SMTP id 71dfb90a1353d-5564eee8ab1mr5144636e0c.7.1761052937443;
        Tue, 21 Oct 2025 06:22:17 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55662117c75sm3324842e0c.23.2025.10.21.06.22.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 06:22:16 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-932e88546a8so636369241.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:22:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWub3XlH73UAjlkOdzqP9PoYvRlwWuWnyIXAvxWQjGrAaCG6CArSbu8ZWXKgcYVCpSXIpcVBvbut0wi@vger.kernel.org
X-Received: by 2002:a05:6102:304a:b0:59c:d78:dca with SMTP id
 ada2fe7eead31-5d7dd6aaed1mr6029714137.15.1761052935327; Tue, 21 Oct 2025
 06:22:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017115123.3438-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdUCSRKAbD=DfJxfFGpfKTRkt=a2BO+HnwTqALBeeECOkA@mail.gmail.com>
 <aPaSF2lokJ748cTx@shikoro> <CAMuHMdXv_R6POTQe=MEcEOraKhjhzwrW5skkWnzgvijF2qAykw@mail.gmail.com>
 <fba13116-2495-49a3-a1b5-2eecb33bb448@mailbox.org>
In-Reply-To: <fba13116-2495-49a3-a1b5-2eecb33bb448@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 15:22:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUP_bH5WW3=3J1H=6SocKzQXPdP7PFfYDrgaj4EhYTaYQ@mail.gmail.com>
X-Gm-Features: AS18NWDXxXzByrAwA63AeQ3A7tiTE8rGRfiOTREJO5xJyBq7hy3jZBwr2WwZDio
Message-ID: <CAMuHMdUP_bH5WW3=3J1H=6SocKzQXPdP7PFfYDrgaj4EhYTaYQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: don't reserve SWDT
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Tue, 21 Oct 2025 at 15:14, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 10/21/25 9:09 AM, Geert Uytterhoeven wrote:
> > On Mon, 20 Oct 2025 at 21:48, Wolfram Sang
> > <wsa+renesas@sang-engineering.com> wrote:
> >>> Or better: drop all these swdt = reserved commits?
> >>
> >> Maybe. Since Marek is maybe interested in fixing FW...
> >>
> >>> TBH, I always had my doubts about making them reserved in the upstream
> >>> DTS, and there does not seem to be much gain in doing so...
> >>
> >> No strong opinion here. With "reserved" I think I followed your
> >> suggestion but I personally don't mind.
> >
> > Well, the proper mechanism would be that firmware using SWDT would
> > override the status to reserved, preventing the user from using it if
> > it was enabled in the DTB passed by the user.  But (a) the current
> > firmware doesn't do that, and (b) we currently do not have a use-case
> > for enabling SWDT in the DTB.
>
> Upstream TFA does enable SWDT for R-Car Gen3, but not for Gen4.

Oh, so this is a "generic" R-Car Gen4 issue?
Does that mean we can use SWDT in Linux on R-Car Gen4 with TF-A,
or does TF-A still block access to it?

> I can pass SWDT node from upstream TFA to next stage on Gen3 if you
> would like that ?

I guess that would be a good thing to do.  But I am afraid it is a bit
late in the product life cycle.  Ideally, everything that is used by
firmware should be marked reserved...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

