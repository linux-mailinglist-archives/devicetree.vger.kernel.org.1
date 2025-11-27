Return-Path: <devicetree+bounces-242799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B3205C8F46A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E721B344111
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F0E336ED6;
	Thu, 27 Nov 2025 15:30:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1E21ABAC
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257439; cv=none; b=BI4yojZieYjy4LWFcV647oSGZg9DOKU41yE0va/C6eyqWCocVW7pYpWpBLlnoZW1wzWM/hu3tPO1TzYopmjAhPU0fmIh7CRS8lxgOMsrX5wa0hhztEksTC65xlsyb+p6L1NYPiEPMDVGcNNUyM0sSfqMVvwearyyNXhwg5ucpC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257439; c=relaxed/simple;
	bh=4/tUrL7XhTX2DALHlvFkiLf3U7EgVhD8OVH3jfZBq/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hSDjXfxoFgdYuYTVgj//rTZm43nzQpY5iG3dg6ab2B8iBP/N5ICTOiabGjYBOH1/1C2cUF7ZpbfEg33gIgMJ/deeluPmClGGrARXrcgclxhrxRoIvDn1IVbYNAF8xIhd66WaciPWH76HsPXWBUJ49zMsSHCgcXpF1IGye33/JCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso1362058e0c.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:30:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257437; x=1764862237;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8yl7Z3fG1uBR+uZ4dtJjq9rOuGFg7ujtUeNUk7sXRY=;
        b=IbSX/wfQYcdwyaRvmyIOcZzIgXOGJ/2x86v30z0zEPmvS0yztjeDoKCW1pkHmT1Evo
         2Uor7p+Fep/Z0RZJ7b51SvCcATNFKxXBnIiqS6MYA9SB7JsbH4ewqM1RYbkePJtrqqUv
         4vquIkOAriLMIDi46dzOujsvppgsmIIE8Ya2K2oTJSK2c0txIvDiHWHW2/nWRur3Mypd
         l6LugqQUwAHj25rXQkIKMg1kjLkY4OqlQu9c8VsnOOMuRqgEQCIvAO0nGWV3r3U9Yaui
         4m3hFbEQwmAVIKePZTjoWcPVGbJsDV6tW0WEAOPXh6seoZMIVAH0gv37VStUyULrEyWp
         V89A==
X-Forwarded-Encrypted: i=1; AJvYcCWqEKxGLJ3BnRHtD3GOXRJh9YHw8hyonT+GAJiLrvepU3jsxeaJYeEvy7B8Spbf4fvxQUAoMlfR1sQC@vger.kernel.org
X-Gm-Message-State: AOJu0YwSp7CFdNF9I5BzgCmEt3fYSuNudepjUSKM66AO4d+uIEuvgka6
	bI4hEbw1TQENj9HNqhTAhilnfcI2/FJZeRBe+QRsfKE4e12xfM0cHVeOil9vJsHi
X-Gm-Gg: ASbGncvChmfut03xASVmU0dffb+NQWw8JXQTVrH2Gpf1AY6du6qw44UmXJmimDkqgVv
	XkBb5JiTKGcV3WHOHhWUYzp/wvUJfWqrJ8M4jhIuDNpG0Zl3dFg58VO8/ghMNf8HSz85oNzK1fQ
	E8tg2vjIlN5Yy2nFsoEpkFerxuEPKTJGWFLnzoM20bjs+HVDcwXXbBmEDQBjNmArBjyLkDiWo0K
	+uLDl8GTrFgsvafVN3YroigFYgCmoVshhehVMGMtap/nGC/FdzilMGYzYC/F09MhW2Bh0UUqd1E
	kd9lhl6ivjKdI94P3CorlBV02dSjUCMcTAkLNcy3GfpQ1QScqpAs2kcHgiKbafsNz4v99YaH9GN
	dvpk9kSCIWrajAjFmW2dFWpea0TomlRYMT9AT+yaeREhj3y+jS4StHxSxuHXw128i7x/fTqYHlB
	X6nu7IlSPzncyU8zlmTXp4qeaZFlenXUQs9eKVEBYYuxaUHlud
X-Google-Smtp-Source: AGHT+IEcVnV+0NLxecix6zRaUvwCn5ahNy5me4AqpsUAlBPi/0bdYNRrDYI7ebDtU/8ZtzByQnkmQw==
X-Received: by 2002:a05:6122:c1:b0:55b:69c4:47b5 with SMTP id 71dfb90a1353d-55b81923257mr8217309e0c.2.1764257436835;
        Thu, 27 Nov 2025 07:30:36 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf5141678sm678195e0c.13.2025.11.27.07.30.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:30:36 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93725308c15so607813241.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:30:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUJo6aIqLe1WlG6QjLN6RcE0RFiQ1vM/0FO5MXaWY+YZmU79NRFY/oCC0sdrU9jxgWiqAzF8YG5f6IL@vger.kernel.org
X-Received: by 2002:a05:6102:6a96:b0:5db:e2f8:cf35 with SMTP id
 ada2fe7eead31-5e1c3bb9727mr11967961137.3.1764257435486; Thu, 27 Nov 2025
 07:30:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119143523.977085-4-claudiu.beznea.uj@bp.renesas.com> <2gumxdloes2zpzbyfmva2vhibxzevk2bqspj5ufl4pldrnyzkh@bhcvz5g6kka5>
In-Reply-To: <2gumxdloes2zpzbyfmva2vhibxzevk2bqspj5ufl4pldrnyzkh@bhcvz5g6kka5>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 16:30:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUPnJUFT86j8JrmintS0Uxsopn2xp5DhqaodE7tcvt6XA@mail.gmail.com>
X-Gm-Features: AWmQ_blf9gCFJkJVJH4m5BOzOxhNSZcQ6HkuvGQZnhOH5OXCRl3qaE50jdnbaQ8
Message-ID: <CAMuHMdUPnJUFT86j8JrmintS0Uxsopn2xp5DhqaodE7tcvt6XA@mail.gmail.com>
Subject: Re: [PATCH v8 3/6] arm64: dts: renesas: r9a08g045: Add PCIe node
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, bhelgaas@google.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com, 
	p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Nov 2025 at 06:53, Manivannan Sadhasivam <mani@kernel.org> wrote:
> On Wed, Nov 19, 2025 at 04:35:20PM +0200, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > The RZ/G3S SoC has a variant (R9A08G045S33) which supports PCIe. Add the
> > PCIe node.
> >
> > Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>

Thx, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

