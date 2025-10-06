Return-Path: <devicetree+bounces-223775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50457BBD6EE
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EDCD18933FC
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E7B3265CC9;
	Mon,  6 Oct 2025 09:25:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02EE264A8E
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759742727; cv=none; b=lXKW5OIX8KQs4ocVn40lCA2wxOJrs1BBPvg1qfF9GOIBxhqS8sWvXd8UeU5Yd+0N4t6E+yAV1YOP2UZJ1NNOvxz22Khq8gFnI+GT8W9EiUdxDMc4JVQHolfAvavdVWl+73A/3gbvJ98ORyMBU9Rw5GrsbnG6Vdq1ILoq8IYdSYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759742727; c=relaxed/simple;
	bh=sZDSusUePS7KTbHF94xK8rV0QQmbxPNR2RLFiaVDrNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xp2SgSamn0mpiznmwK0cWPo/MosTXT+tmhIyxcortiJMao1e7eVVgL992X8t1oeRNmVIecLruTsCjpfvQ0x0vO+BdfKAf73M0+ZN7SyFIdPrXOMkYkQfpoxOouEAZnubjHrPkVIQUcQ6rLSuTkV8py1I41NXPLJgW17tlM6f2Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-54aa5f70513so1299065e0c.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:25:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759742724; x=1760347524;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a1f5H254g1HK7lVacJLaFY9n0QZTczpZzL+ddUhW6f4=;
        b=apApqmM/4gpHSf/c9k5kv6WlJ6IQHyiPIw0Xuzv5TTn5axpXOfMfqyFYWZe2tHVjoE
         IEJCzLEpM4dAPtCRsKXKCyOCvWIDslFASR4nNqIkVmfDRhlo3e4dx6HWIyYsKDaU0wke
         RbQKpu8BOo0g25y+FJpqOdLIJ0DYPvMJYeRzDJwxO1HFdufr9LrJ1nx/x2AVmSY32b8k
         DWak6GD11It2TqY5OvQfHYxDpQHvB+5Q7mT1M/nadNEEPGzj/45WoeZYPaNpVV6cZW3h
         3OWXWsn9uM+s5YaSuDabYpEwc9utjdlKkbLnErS+bZIK7VaIDoJHbt7qHbV8B0cjRbeJ
         tFlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe9+uVXZVERJ3vksnjM7A3YC2KdkEVMXlXBvR4aAl+l2+YpM5/6j3J7bg2qyom2LtGOm1J4D46gaxm@vger.kernel.org
X-Gm-Message-State: AOJu0YzQcPgLLnbYe6Ht9duwlaaUvoIHj5zURHw0H0RxrUfo7ZkSbDq1
	7ra5DLyMyo1rb3yO1RYZyk4wqMtLzwl0h/LAOgwaZeXDJ1ntKX8V34qkf8EDIkTO
X-Gm-Gg: ASbGncuoTG0aNrHknGgGrjVI9xnYo7OSf9oSWEEh3FmM5t+WhG5DMZ002IAssX/PLND
	k6VQ9vUwGsN0s0Djop/3AcxowbvB29vA7UhVtOy1evwzw4Y9gDv1KQd/2mKXvU7/LfcG0ezE0cL
	W9HMcFy4/EBFrclxXWrUv4LfYTG++Z8nrUcpxNJrxdfua7LXvxHOnaTYFlyOWhTCjBkLD3ctj3z
	U6vGgDfKaUfalU/u/34bopfNS82CiS36cQ2elLxnOz6J1wjevEblWB3sw9sJh1bQGFUVIOUlvT/
	3pLNFcQcU3pyWpViZyvdXd2aNcMoSjtwhXFugksJl88IXtIhdxRmq2AqTLfQgxy5f9uIhAfYAdV
	5httG/jDuOcp3PHaiOimdjDbtYNwFHWsJq2qtxM95W0VSPs7qme4z4uJjEL1/pewvnMoF42SXli
	MC2N9XJZFDHDVkEHRxBp5PBoU0t/B/zA==
X-Google-Smtp-Source: AGHT+IG49eIjJ+Mlxa9rPXrmFyfNWkoWrwLX8zmcn3YvBhWI0tu8+j9O2qNp8ZgU97yKrVTWPN5mCg==
X-Received: by 2002:a05:6122:659f:b0:544:9a46:7c85 with SMTP id 71dfb90a1353d-5524e8884a7mr4158198e0c.4.1759742724172;
        Mon, 06 Oct 2025 02:25:24 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf63c6asm2855089e0c.19.2025.10.06.02.25.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:25:23 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5b658b006e2so2309354137.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:25:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUN5URQXX3CMktlcby3spUrWgYjgtQjfmHi/W60orCVZ7CJymtL8P1Iag0A6Lyy5FYUUAaSkO2n9RYp@vger.kernel.org
X-Received: by 2002:a67:e7ca:0:b0:4e5:980a:d164 with SMTP id
 ada2fe7eead31-5d41cdf4a3bmr3915460137.0.1759742722677; Mon, 06 Oct 2025
 02:25:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005144416.3699-6-wsa+renesas@sang-engineering.com>
 <20251005144416.3699-10-wsa+renesas@sang-engineering.com> <TY3PR01MB11346E3690F0E74C5E1AF9B7586E2A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <aOKajKzRlrQD7plt@shikoro> <TY3PR01MB113460EB1918AD06D8F2ADD0C86E3A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <aONh89-5-llFZWue@shikoro>
In-Reply-To: <aONh89-5-llFZWue@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 11:25:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVUbENsdjCCqrn7e9=mWbs+J1kcat6LYU6vAcrBHzawBw@mail.gmail.com>
X-Gm-Features: AS18NWDrTsDaUWwW6vNGYUXbBb2hzV0fRFzAQBAzuQ6sMouqWvDz9ki7n_BBmQw
Message-ID: <CAMuHMdVUbENsdjCCqrn7e9=mWbs+J1kcat6LYU6vAcrBHzawBw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: watchdog: factor out RZ/V2H(P) watchdog
To: "wsa+renesas" <wsa+renesas@sang-engineering.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	"linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Mon, 6 Oct 2025 at 08:30, wsa+renesas
<wsa+renesas@sang-engineering.com> wrote:
> > > > > +      - enum:
> > > > > +          - renesas,r9a09g057-wdt    # RZ/V2H(P)
> > > > > +          - renesas,r9a09g077-wdt    # RZ/T2H
> > > > > +
> > > > > +      - items:
> > > > > +          - const: renesas,r9a09g087-wdt # RZ/N2H
> > > > > +          - const: renesas,r9a09g077-wdt # RZ/T2H
> >
> > I guess a comment like # fallback RZ/T2H here will avoid confusion.
>
> Hmmm, if we add such a comment for every fallback, this will be quite
> some churn, I would think. My favourite solution would be to swap the
> 'items' entry with the 'enum'. So, everything with a fallback comes
> first, and the 'plain' entries last. But what do others think?

We do have "fallback" comments in other places, and I think they do
help in understanding compatible naming schemes.

Would it be possible to handle this in dt-schema?
Currently we have to write:

      - const: vendor,soc1-ip

      - items:
          - enum:
              - vendor,soc2-ip
              - vendor,soc3-ip
          - const: vendor,soc1-ip       # fallback

If dt-schema would automatically drop duplicates of the fallback,
we could just write:

      - items:
          - enum:
              - vendor,soc1-ip
              - vendor,soc2-ip
              - vendor,soc3-ip
          - const: vendor,soc1-ip       # fallback

What do you think?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

