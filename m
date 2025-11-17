Return-Path: <devicetree+bounces-239336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28216C6418A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 22B5D4F3B94
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3775D286D4D;
	Mon, 17 Nov 2025 12:34:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DD432C943
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763382879; cv=none; b=hdeYAX3W2l90Pg3nyoccTX4WobVPot9rPqwFuxgx8KBI/euUiuqjWDYZXYWxPzwHLTKDGgAHIiOIWD1B2TrScI+ewk5lTHYv3wkcCoI49zL1JLUhA3SfL3KwbNgpAcFIqwb9GjXeo6cxvWaQGaz7uUIOvggeyXxbc+3Q4Dzh6dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763382879; c=relaxed/simple;
	bh=XFmICXgcg8Sf0aqASPmbZcCxtCWRJ9Qzc21a4VXzFJI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=radmVNNgnYmphb4d/6I5H3KyOmNeSZcYz0BSzss/N3U5w1weBxYPYqDB2orsnUlnMqRnJSHXlBoIQg0nW5To7MMH54Xf4qhsawjXRF7NzmaKxRvzkSPmt8YbPnFHMVXTxUzEPnJEGtm+AS7ZagkVwy9kNebK5fvRLfWhKy59yw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b735487129fso643219366b.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:34:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763382875; x=1763987675;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OG/MyKNUTK2syw7Lnz2q5ZJuEwTrrUdIrXARVWq96Dw=;
        b=sP9u/5TZp2cV1G38AjeWP24QYYzPVeqTC0iAry+Q3BO6uFFpytbBccfe02Fy+7ISo1
         Ud5gIBbrVeXPH5QDGXR3IPIotFLxrpmVil2nw9hFKCKLdF3P2441taJ9FtaPSL77P6hV
         B1e2BqsLBpU+kWF3w1B7jptoQ+zi95Bu4KVs9t9suXSH0qDwcXEaMepsAt31UwLzOr3Y
         nleuAXlHpj8HEX3I0r7f5itWdPAww5rVsrkoD+ep1FQyj9eTUZ+JNmJH768gK3HGQJ7s
         q3XTIMPRaagHpG69E9MyVb2Apo0D9aek8yhCvX/cxOc7DL4rZ8x8zDSTAyK1Cfir2uQU
         s2QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWguNPSRBCedVB0fFjvw0uwmFezeA1L8GoeFrOdJ1XFPwVE7p3hLZxzYRi0ndhtP4IN9zxqQViE0mir@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDo8C2/TqZNFs+O8XgG3NziPHVGogimqCXVNf60XY95pdJi/q
	SUzN3jlSNJ5lQ+/T9I3t2Tebl05BKLCJoHwae7kaXs+TLXBI9Le6V2azBofdaTEiD5s=
X-Gm-Gg: ASbGncu0PJmQO1iiuiGQgMPDZW4+1qhFv0fUi3kLaXaYGHCFeGO9wBPHzLliFlxH3eO
	7CrYDo3UCcS4OuCsnhef3CQfoDBUGkciT8e9PAA8S7en67V8E1jAcWpN46VSVZQ46t88LVoIOMS
	nuiKTNvz2rjwbUEWHRAIFjGhBGbR7s0IDNqYsU7weAwQI2uQ/29NsVs98NH+DDMoWqTc/m+k7RI
	umiRJzVn7JuKMGUcxs8+zQCvArBoQo2VerApH2UK1WyvBhqTQXOw7NOyFC0gq92ckZxb4Oh+For
	Tfs2OND8/vBIV50bXxv4eAQOzTipnbFED8aXEkN8KZMUqErnui0NZGeSgNLM5QmcVJrt2yJWJ2B
	0l+nbT43/i+S4sCFCgTi0Ud7GZaX6Lr9Bytm8mfYy0xXQ6HbK7sEbWeNEP9VQ/0pXcV+enl+Q0I
	JyM1f8dQuZZq7ZwpSJsd+9pcZohujs5CdWaafHZQ==
X-Google-Smtp-Source: AGHT+IEvmKLcMCUbyQSqGsuZHBwkLve0no4oeUugjWmNtpzcf0NEfq1zVPFsc85SVICArraOsfn2/A==
X-Received: by 2002:a17:907:1c28:b0:b73:8f33:eee6 with SMTP id a640c23a62f3a-b738f4336b3mr552017366b.23.1763382874477;
        Mon, 17 Nov 2025 04:34:34 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81331sm1073326266b.9.2025.11.17.04.34.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:34:34 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so6447980a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:34:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXz1Le7J6C1K7IdfaFQ3RtYpxwZR2cnBRT9XKip9CFb01aAGziKo1wwUUudZhMgEeufoIgCHp2uN63u@vger.kernel.org
X-Received: by 2002:a05:6402:1463:b0:643:8301:d136 with SMTP id
 4fb4d7f45d1cf-6438301d5aamr5538876a12.19.1763382874011; Mon, 17 Nov 2025
 04:34:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117-tasteful-peccary-of-sympathy-a4f9cb@kuoka> <20251117115621.7537-1-yuntao.wang@linux.dev>
In-Reply-To: <20251117115621.7537-1-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Nov 2025 13:34:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXYcwK5vyuqV5sDXni4zBJZptDtEZb=coz-LwuNm+OKsA@mail.gmail.com>
X-Gm-Features: AWmQ_blO5Q2YgXPe_awMiSOqZjUBur5OY9C9PMRqXo8Y1kpP2Kd9D_O8JkIFyuU
Message-ID: <CAMuHMdXYcwK5vyuqV5sDXni4zBJZptDtEZb=coz-LwuNm+OKsA@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] of/fdt: Consolidate duplicate code into helper functions
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: krzk@kernel.org, akpm@linux-foundation.org, ardb@kernel.org, 
	bhe@redhat.com, catalin.marinas@arm.com, changyuanl@google.com, 
	devicetree@vger.kernel.org, geert+renesas@glider.be, geoff@infradead.org, 
	graf@amazon.com, james.morse@arm.com, linux-kernel@vger.kernel.org, 
	mark.rutland@arm.com, robh@kernel.org, rppt@kernel.org, saravanak@google.com, 
	thunder.leizhen@huawei.com
Content-Type: text/plain; charset="UTF-8"

Hi Yuntao,

On Mon, 17 Nov 2025 at 12:57, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> On Mon, 17 Nov 2025 08:01:59 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Sat, Nov 15, 2025 at 09:47:46PM +0800, Yuntao Wang wrote:
> > > Currently, there are many pieces of nearly identical code scattered across
> > > different places. Consolidate the duplicate code into helper functions to
> > > improve maintainability and reduce the likelihood of errors.
> >
> > Not much improved. Please go to previous version and read the comments.
> >
> > Best regards,
> > Krzysztof
>
> Hi Krzysztof,
>
> scripts/checkpatch.pl indeed still reports some warnings. I noticed them,
> but I intentionally didn't fix them.
>
> Below is a list of all the warnings, along with my reasons for leaving
> them unaddressed.
>
> 1. WARNING: Missing a blank line after declarations
>    #60: FILE: drivers/of/fdt.c:663:
>    +    int entry_cells = dt_root_addr_cells + dt_root_size_cells;
>    +    prop += entry_cells * entry_index;
>
> The function that triggers this warning is:
>
> void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
>                                       u64 *addr, u64 *size)
> {
>         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
>         prop += entry_cells * entry_index;
>
>         *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
>         *size = dt_mem_next_cell(dt_root_size_cells, &prop);
> }
>
> The warning suggests adding a blank line before
>
>         prop += entry_cells * entry_index;
>
> I didn't add it because, logically,
>
>         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
>         prop += entry_cells * entry_index;
>
> forms a single block, just like
>
>         *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
>         *size = dt_mem_next_cell(dt_root_size_cells, &prop);
>
> I think the code is more readable without the blank line.
>
> In fact, I initially combined these two lines
>
>         int entry_cells = dt_root_addr_cells + dt_root_size_cells;
>         prop += entry_cells * entry_index;
>
> into a single line:
>
>         prop += (dt_root_addr_cells + dt_root_size_cells) * entry_index;
>
> I added the entry_cells local variable specifically to improve readability.

What about:

    void __init of_flat_dt_read_addr_size(const __be32 *prop, int entry_index,
                                          u64 *addr, u64 *size)
    {
            int entry_cells = dt_root_addr_cells + dt_root_size_cells;

            prop += entry_cells * entry_index;
            *addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
            *size = dt_mem_next_cell(dt_root_size_cells, &prop);
    }

?

1. entry_cells is an intermediate variable,
2. prop is prepared just before its use.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

