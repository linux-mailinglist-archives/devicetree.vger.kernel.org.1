Return-Path: <devicetree+bounces-231398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD44C0CE73
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAAC94023A6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C9272E5B1E;
	Mon, 27 Oct 2025 10:10:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91772224B0D
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559808; cv=none; b=q3LXdNRsbbEPllSDzLDHkPrzqd0Q4/QyO1gKSIoakxCBNt18lxYK+oZl0yFoX7H+9w+iLGhTYXyuuyXLrrLqZO2heAknqXiXv1gjRcx5nNyFonWXkU+GnTiJM5U5GQ2XZqYsGWVzUQAoxfnE3v6SC07k3TWjX9vz9DNDLKXFGHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559808; c=relaxed/simple;
	bh=wabfbo3L0St98xqkI3dsSU5HnY98N7SPncJI9BJ0fCU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FkwQAUxjZKQp0C6oo6AXU8d6GLATn4eCUzDNQrwYIDGhn+gopiy7KwJfdnz4O1woMfQj1QRiX1+7VZkFAAAb/WEf/vlvNfSr8KaKPJzAJpAloxC4mcAU50sQ7NebECjJb4HkgLj4h5qWrB0iqWwbpWYOZmw/MWB8RQcRyAxoxFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-556a4651cfcso1521696e0c.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:10:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761559805; x=1762164605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfKPIqPs1uhFSxfv2Q4P8MRWwGNst7LmX4Uw4wnrJps=;
        b=KHdh30Fdu48gzsoUyFxISYoeiWngqKLKNh71ZQZZwsGG4Km2MnoghutSY+vPkvgJrJ
         eufG4CKTNz+NF+S8RR3+LiVKiPIOSoVcWvr3CbXwIyYJhu2rc0WzWEF8q4VqR3BIcDbH
         YWvqEM+aEeu1um40kT00u5ys1nrkJsMPXtTNUMyWXra15kQbaWfX4EmfcJMcG7oe4kRi
         Skr63B3nF8rlu7p4tb4XHBMqDWNANCb+JASHQThn7GxJO6bISm8k3nwkWvpehe/nZH0e
         ozuM9mGyJCKAMBEu1fTt0HR/neCLPzG1kfrhQg8bMa28ZUyetJCWK6OF7H2eGku8kOBl
         P0vg==
X-Forwarded-Encrypted: i=1; AJvYcCV/QJvS4kZmjuWputR0oT2gKVHP4PdVv4SEULMFrMS5tLsSmReZT+jHGtXu6QSiDJ6hKK1vItB4jIS5@vger.kernel.org
X-Gm-Message-State: AOJu0YzfqRxGGuTnBY+wbQXC4gRDIWoSWfAL5tG6eDTq0Inf30exe+6T
	p3+xOx63TB9rwfKA3jOW7oeUm9FDY4fRv9ux7pRig9uU3hfbMuEZ+x5tLeU0q9Ux
X-Gm-Gg: ASbGncu3AKQWePBhVsXBnJOS5ReJC3CWeRF0BeqQZCaheqI+bSEe8XtssxxpR7Q8jkZ
	/Gsp767vSBWrBzEmnXY1j6aHgy9E0f07CvrFDXUFYKGYhDmBOOlsbn7OuDD9LlGk1ohAtE5l5YU
	ARdUqyj6v/CrW9WiFI9Lu6QD/AgYPT3sdiwuMAo2MmYhw71IM7LHPpKhqIS9RuH022Z08R6aV7C
	LnBaTqDZEpc5JMZUrT8rP7RZ6b6aa7xxxPJ+imk07NP7JKEiizPYuOMoskAbzqX8oxQzWdg+jkn
	zi5i1FiI+OEMkD+iXcuJg5li+dAmweiBvwuSL/lYa41FQW0gpMYk3PYeI4gfNWjG/qeXFciL2lB
	+jhoKlhH3hZcfeFJthoKKQ3MGNJPjtFwIobMACbzPNJC9cp2igp0Tmu64DL/gR4ukVt7aU+CKQg
	1v0u0X3V0+F6sVMY/nbnimhL6SIVFnxRx0pgbfnQ==
X-Google-Smtp-Source: AGHT+IHosmS0rGwDvQEuxBgpJBkDHoN8cMIkGXd5WAac41dEs+s6m6EAacq7sfrBlwZv7QfjbmRmRg==
X-Received: by 2002:a05:6122:828d:b0:54b:c83b:9299 with SMTP id 71dfb90a1353d-5564ef1e37emr10190168e0c.10.1761559805082;
        Mon, 27 Oct 2025 03:10:05 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb5f493sm2703453e0c.17.2025.10.27.03.10.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 03:10:04 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-8e352f6c277so1120839241.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:10:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWUOrZSdfCJQ5k7hLU3dR2FGbrhJPaq3WFsEZOXd+CDAzTkrLlRfzaCSxmK0NIMnq49dtJGYAGq0djt@vger.kernel.org
X-Received: by 2002:a05:6102:c13:b0:5d5:f6ae:38bf with SMTP id
 ada2fe7eead31-5d7dd6fd644mr10702587137.40.1761559804326; Mon, 27 Oct 2025
 03:10:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017115123.3438-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdUCSRKAbD=DfJxfFGpfKTRkt=a2BO+HnwTqALBeeECOkA@mail.gmail.com>
 <aPaSF2lokJ748cTx@shikoro> <CAMuHMdXv_R6POTQe=MEcEOraKhjhzwrW5skkWnzgvijF2qAykw@mail.gmail.com>
 <fba13116-2495-49a3-a1b5-2eecb33bb448@mailbox.org> <CAMuHMdUP_bH5WW3=3J1H=6SocKzQXPdP7PFfYDrgaj4EhYTaYQ@mail.gmail.com>
 <0e81437f-a13f-4605-b7f7-6e6640411f30@mailbox.org>
In-Reply-To: <0e81437f-a13f-4605-b7f7-6e6640411f30@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 11:09:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXs+FoL5g4ZgFVQ4WwXRt9Y-8BcX27d7=wFFROa939CwQ@mail.gmail.com>
X-Gm-Features: AWmQ_bmE-1yifXAR30P2TnxjB9vJART2nr5mauZfpbP5EFuHoaYAUyzx9tdTjHA
Message-ID: <CAMuHMdXs+FoL5g4ZgFVQ4WwXRt9Y-8BcX27d7=wFFROa939CwQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: don't reserve SWDT
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Tue, 21 Oct 2025 at 18:07, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 10/21/25 3:22 PM, Geert Uytterhoeven wrote:
> > On Tue, 21 Oct 2025 at 15:14, Marek Vasut <marek.vasut@mailbox.org> wrote:
> >> On 10/21/25 9:09 AM, Geert Uytterhoeven wrote:
> >>> On Mon, 20 Oct 2025 at 21:48, Wolfram Sang
> >>> <wsa+renesas@sang-engineering.com> wrote:
> >>>>> Or better: drop all these swdt = reserved commits?
> >>>>
> >>>> Maybe. Since Marek is maybe interested in fixing FW...
> >>>>
> >>>>> TBH, I always had my doubts about making them reserved in the upstream
> >>>>> DTS, and there does not seem to be much gain in doing so...
> >>>>
> >>>> No strong opinion here. With "reserved" I think I followed your
> >>>> suggestion but I personally don't mind.
> >>>
> >>> Well, the proper mechanism would be that firmware using SWDT would
> >>> override the status to reserved, preventing the user from using it if
> >>> it was enabled in the DTB passed by the user.  But (a) the current
> >>> firmware doesn't do that, and (b) we currently do not have a use-case
> >>> for enabling SWDT in the DTB.
> >>
> >> Upstream TFA does enable SWDT for R-Car Gen3, but not for Gen4.
> >
> > Oh, so this is a "generic" R-Car Gen4 issue?
> > Does that mean we can use SWDT in Linux on R-Car Gen4 with TF-A,
> > or does TF-A still block access to it?
>
> I think this can be tested on Sparrow Hawk easily , with and without
> TFA. Wolfram, how do I test the SWDT ?
>
> >> I can pass SWDT node from upstream TFA to next stage on Gen3 if you
> >> would like that ?
> >
> > I guess that would be a good thing to do.  But I am afraid it is a bit
> > late in the product life cycle.  Ideally, everything that is used by
> > firmware should be marked reserved...
>
> It seems SWDT is not used by upstream TFA, but maybe it is used by
> downstream one (or downstream loader). I can enable SWDT in either TFA
> or U-Boot if that would be preferable, or leave it available for Linux.

My Gray Hawk Single still has downstream firmware, and I can modify the
SWDT registers from U-Boot (unlike on Salvator-XS with R-Car H3 ES2),
so access is not blocked.
Hence I plan to drop the SWDT patches for all R-Car Gen4 boards.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

