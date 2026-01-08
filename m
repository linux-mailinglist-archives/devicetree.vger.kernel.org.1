Return-Path: <devicetree+bounces-252979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B817D058F0
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC5723144AD0
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 18:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 395E92F6582;
	Thu,  8 Jan 2026 18:13:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96D92512FF
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 18:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767895983; cv=none; b=lTi3e6UdzDIvzPedNCklPixExdTV4SIOGd9ZrPWkMosAadoqj96U8B8b24XAwozZ+MkLg436S9XrERC/bgzSzGCLjV2+d0cd9qeTdbzmUPYwPH4VrkuxlulUiVx2aX3MqwrjQkWBhfUpEFiT4or6VcHOSHYs6MUScMiLBbYHYyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767895983; c=relaxed/simple;
	bh=ULWWtQEJoU/SfzM88dlQzOYLDArnaYKiaIZDg4MWB34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hj+lFZSiU+P4Tp9vU7zv4OwoUtru2gLrZ/zC1u7rkuhONXfyc2Sdj+3+ghnvcLYHDbk3isT3nKGBEhYecrMN6QPdKUs3BFZ+b6AUuq5fgI0z/l0xpQMJ44ojaHgFHq7pbftkzC04zVQRCB+Ln6RjX6wFwlB8IO6Nfw5Flcy5C1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-55b26332196so1085043e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:13:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767895981; x=1768500781;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/keVNMihgBoTxrPdM/pz+huNl0rtnHqsA4wFUiQj9DI=;
        b=wfTzrPN4jB0pOg6/qGvlvz9RZUKAxlRdI9nlI00zkdwKgB5ejrQ2SH9h3Fc+kHBZHE
         36cO2t999Hwmnm6g9BUbQsv/f0UeRST3szEeJ+mYzLtZGpMeUO3bGtyOkwRdEuUIGRaV
         YSijkfPatZWmKPgF7DEusZ6ZmstNmE7g6mG4gTlfAKf0iHo12WVmInMlSsN/aWoED6XZ
         JWhcmyfRHmRUKf68J6U3ZKw0IZiqGLIvxsagJ8BjHRykiRGA8R0zux6Jo2GGBrPj2DvL
         gyAKsU6A+ZiK/10i3FJEX0aJr4YiD6nn55wplztaKLChmSIJEZKVBMSbhF/OQf76FmZc
         i02Q==
X-Forwarded-Encrypted: i=1; AJvYcCW7WW7uuKjI/2joO1JQK4a/ZUUJ9EinHoeFACOTAryQeQxE7JbZd1BzUDcfO6WNmnwDD4v3pJbynF/o@vger.kernel.org
X-Gm-Message-State: AOJu0YwM0wvfY7hl2A7lENIMlS7h2qLfBaAKzExDE8Fao6if57P6CXY1
	utS2b+eQXgojjjksvumjbVAT5QDvKsa5laIv1UYPkPt2tLjEZE6FONVSTOAnYsI5
X-Gm-Gg: AY/fxX62swF8vrczKciihe5LsWtu8J5RDWtnQ4Cnp4YmCMV+gjN8WJEQOht9LgifJTS
	TuBBEvVkkmNsgP2aFU25eYxRALSG33NdvKsGbwiY4O5GPE/8JQ4LS9U2cNuDr4wU7kkHHqaqZHt
	s5iuVcWsD/aJkIAam9OQ3uHPg3IHB9fjD9GAHJCv/nf6SVNP5BpGThDM5yWPo0WSLVunCpKk94k
	Y+LQRwDJnhoZ0ZVYIfI1pmlEwS8rlzOPvQyf9xK/IvAFzcEa2iP9yRd5i/BABSSNQOqMTwfIZSU
	66J85jYotaYOpm9310P4lJJ925L8Xcl212X//VEofqHKTkJlVAyVZLV0lsF8M3Xc0QgoS0PMi+R
	K+tnnMt+PpitRUNg051t2LzQravmFWxc66zBE1fAJC82FSY6WR6zyYnYQbqRjcTqAWGYZ+fK1Z9
	7bWEVpSpuOZnHEe6jBZDQN+t0UFGM83lkWQCQ2XGmLO0l1HZOaEs+W7jFvtw4=
X-Google-Smtp-Source: AGHT+IHJ0veDUdThXsDWcuY2LYCPptfV2m1pQPaA4d7/BmUv7/eagWxfKym7b0T+1GHa+5L9Vc/3Ew==
X-Received: by 2002:a05:6102:b09:b0:5db:cc92:26e7 with SMTP id ada2fe7eead31-5ecb8bea935mr2605169137.38.1767895980453;
        Thu, 08 Jan 2026 10:13:00 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ed091d93f8sm5330094137.9.2026.01.08.10.13.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 10:13:00 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-944199736ebso863262241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:13:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVjg22iuGhMS0Xj4pP3+zgfbSViNItHC8IoJ9Pr6nT77uIj8FnnaKcmlQB/8fTaeCl5aVaqwYlqd3WK@vger.kernel.org
X-Received: by 2002:a05:6102:4a84:b0:5db:2b4d:f1ee with SMTP id
 ada2fe7eead31-5ecb687a389mr2478442137.17.1767895980045; Thu, 08 Jan 2026
 10:13:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-9-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-9-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 19:12:49 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVo6qs6p9=dKOowSgVGo3gc63uPXCam_GHU0R8v36FPkA@mail.gmail.com>
X-Gm-Features: AZwV_QjJ35ks5-paZd0vwYNtwFXY939ykUrcrtOSooQMZZrbttR_00xK2IU562c
Message-ID: <CAMuHMdVo6qs6p9=dKOowSgVGo3gc63uPXCam_GHU0R8v36FPkA@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: add
 GPIO keys
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Dec 2025 at 16:04, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/N2H Evaluation Kit has three user buttons connected to
> GPIOs that can be used as input keys.
>
> Add support for them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

