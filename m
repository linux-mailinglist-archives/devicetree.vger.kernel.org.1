Return-Path: <devicetree+bounces-237742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C49C5376B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D944235581B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDDE34029C;
	Wed, 12 Nov 2025 16:29:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E2833F8D2
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762964989; cv=none; b=ZYHBnCOb8IndUVfcmEfts+FI5gnvFXBXoi98pt6Cca8sKxMyxdlAttP2Mrpcj0k7VTSV2YlKCNT0wFSeMoswpdqGUZmQakif9WYxiDCtT2HtwTOXub8loSkeoF45LgWfG/8A3LIiefLHcz37oagJe+8QI6tJgmrC0dLgVJMAkX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762964989; c=relaxed/simple;
	bh=ooqPLYgT35A3bEL0/xnB1JjqBchWAKRzEk/UuyfrXgo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kvYBIfIKStk35NcAUSikLFO3qVgGn8GcpZjnyIBIwPQjGTAdiqygBdQoVQ7TztEk/lpKARwZWWfpQ9V3Oi0jcqCrbKOwulUb4/9r0GZV82/PiCJ18Ep16t2f+waW7t88d3JD/yoilO+1rY9V+x87H44D+w7Z9yMI8kZvY/ezaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dbd3dbbde3so780813137.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964986; x=1763569786;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZ9QkedKrbl8l0TkhBp4GhEXOSA8xdv451nd8vqtfOo=;
        b=InxehHtC7vUetjiUjnFsMQe9X2TnygWC5aomrus10osrYrMK5ieDajZfio9kam3MbQ
         kZ0eEtPZQbp9MNRnfYzexizcpYLNyGImLyj8YzXZ3rHnyfY87MiM4ZaaYAmB5s2SqPim
         yomKiRrVTUX2arZ6ETmvSLg/2qbmi3Y1Lrv8PmR21Lyc0UZv+FhhugvP+ODb8OZs0V6F
         dOXTw6nwOMoerAkY8Ei9piF5iEQAERNn+r2SSyj3X9jJmjFnUoo2bwONQs3ExPOAV0EK
         P9Kbta3qSw2FXiex4RDs8U3Kz3ajxcMKs1E4ebFBC+BdBily9rDlQwo/Ar+cKlv58Wa1
         1/9A==
X-Forwarded-Encrypted: i=1; AJvYcCXB+iX48FMYwra10Yt+9PJInkr4j3fl53AQhrW6HiTntPjMTcm99dfvnW+bbCZyTLMx/UF+mS9MT6hW@vger.kernel.org
X-Gm-Message-State: AOJu0YzpNCaJm/aPxjZg6h273cFag36NMzytU2PFHAwpq7U5uNLA0UTs
	GnzmSIo34ZhNIy0WjN5vZkgoWOMZ3BQbRbXNzGf/gDF3EVYmOC6lkWXLx0ckfcJc
X-Gm-Gg: ASbGncvQtWuFftVh6IuXSq+gG0me11+FekEfHSxagVpQG/2YXHpUEVd7ICwN4Kk0xMU
	C4pGGMgGL2RRbAlvsqPF/8ZQQ3SEVEQ5CtLbBFP9f8D16Wzfwvy1C2wEapI8rJG7gjOgjkbEajL
	1nA71ds46Br9iqFauVdlkkeGRdN4DIMyBPmf0jcjMJQmyBs8m/RyQu2c4Mm9L9ei6WZ9+D21wTC
	bP58Psat7dG82yNcLSa/fZhVYpHNktSB6RptI5pJJvrXOlTFQh32FhOz+riXcZo6X60rS0funzd
	+x6HV7mnWt4AiabEzEo2whB5TRI/xU32YWR1iek4cLR2O4rBsTLbirvJX2lg9Pyid5ikegdRfzE
	X/HKN9MHofoXZLZ0Jrc35QyQXNUdp0p06/h1F5ebWRTlo4VQSov7ecxNHDn8F8i2jrN3Ov04eio
	3mk/rc0XfClhVEK5CJX/9XBI4W8C2XRNlvg1hi/Pu1Lw==
X-Google-Smtp-Source: AGHT+IGzk4Jz9oooCPm7fTIlVaUQWDTZFyUNEPY00BFXKPlNuGbHQeKwFAh1xAzytXmg1uSLznFFYw==
X-Received: by 2002:a05:6102:d89:b0:5db:36e5:7b41 with SMTP id ada2fe7eead31-5de07d2a655mr1342890137.11.1762964986269;
        Wed, 12 Nov 2025 08:29:46 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559958286c8sm9986344e0c.17.2025.11.12.08.29.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:29:45 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5db308cddf0so591916137.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKZichQOoC04NNDgilVstqHQllQqJ/tvbJitUarrElS9SkC6Eb3AKg6zdxtqZ6sRTylBgwTwHjt0Qg@vger.kernel.org
X-Received: by 2002:a05:6102:3a09:b0:529:fc9e:84ae with SMTP id
 ada2fe7eead31-5de07e07256mr1206304137.24.1762964984856; Wed, 12 Nov 2025
 08:29:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-4-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-4-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:29:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVUaWzqhq72vAXCTvDzB5ErE1Gc40BULACBpOo=iTap5g@mail.gmail.com>
X-Gm-Features: AWmQ_bkC0_Wg5fCJJPXQ6L_Q8L_w-f8b7m8ocLXvvZvYMQwFGXBxxwK4Ooi7Isk
Message-ID: <CAMuHMdVUaWzqhq72vAXCTvDzB5ErE1Gc40BULACBpOo=iTap5g@mail.gmail.com>
Subject: Re: [PATCH 03/10] of/reserved_mem: Use dt_root_addr_size_bytes()
 instead of open-coding it
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	James Morse <james.morse@arm.com>, Chen Zhou <chenzhou10@huawei.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Changyuan Lyu <changyuanl@google.com>, Alexander Graf <graf@amazon.com>, 
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:37, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> Use dt_root_addr_size_bytes() instead of open-coding it in
> fdt_scan_reserved_mem_reg_nodes() to improve code maintainability.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

But please combine with the previous patch with the same subject.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

