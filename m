Return-Path: <devicetree+bounces-235528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D048C399F3
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 09:45:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C6B73B65A1
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 08:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32511308F2A;
	Thu,  6 Nov 2025 08:44:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7442308F2E
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 08:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762418684; cv=none; b=IhYTRkb8+UHG/pLhOATqMbi1ERQTiMRVVh+TxntykHCNczv3RvS/utXeRRDkEQq6Q7CO3jjGFIHTAZH1m0Mp+qGdIQdfzEuGP7vSHURrfbzl0Y/dGKFPSzD2xJ1mtOwhZ7xQ68j9BoZrI5w1vMs2Ou7LvymfD3OOyuQXDavg3TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762418684; c=relaxed/simple;
	bh=4e2WDzqLKYzpn41/EU08/ysLwcMnKhTYCq1gfsIkVBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=htlOSQezSO0t5VA0fp/Pd7e9TM4eAu1wzNx35UBZx4Cr/eS7u/ypYRCa0spNfKPxguwamhQr0aDVP4B2PsbyhDRlGPEtBoSEjI5B/mi/VF7Ogl0xNwqOjuzdUREerQfiJ9stp8HUwnXzMhUZcvDJda7u/2RgH37hIrQTYEn/QfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-934fb15ee9dso224941241.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:44:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762418681; x=1763023481;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mz1Q2mn9SZfrcMx6xhR+wHR4X9YWp5k+qUP26CNzhQI=;
        b=skHnBMkGFcihEo9NaFY2nSYwJs9Fz6MfP1ei8T6Cha06kOMWiZzHSDeQ5XQjd4paUW
         1pg2m2DRA/zAFDmOWNi7PvUQUZEn9JsjtMZnQmNlgo8RK6TdrHOL1Kwf9Pci4G+5N9tk
         mDhdLgYR0eZi8GAk+93HoojFWicAv/qLA61EmkySdCGbnAjyvfq74SKcWhdrEAOwkCO3
         8XoFTe2NAJkh04yJtgrzX7Rfkp4d/RAGIsmuQo2gaM2VNSqzYFMnna1mSdCvtJl1UvwP
         f2X2FnbQQQCKcubKOLyvWuCWC5yXl4Vb0lG2juYGrcDBnuugDH/gBI3QVH1kfobtqe8U
         G/CQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5HPGhC/eRIgO1jeE8eQBK/Di3pBdLKvzzInk9zQWNUohUAbCRqpPqNlb2l/aGbHLsVF7jYo3aio7X@vger.kernel.org
X-Gm-Message-State: AOJu0Yz43lDndngoJ/gclFEWjrAtkAPA3lQTjPRVwX/G7veYMbnB8JSU
	ikKOQ9GKkNwH8WNJZ7yI9AYIVkbTg8XmaoTiA4R5cFrDkll6l8oH5oRlLA771N+V
X-Gm-Gg: ASbGncuPQAbWctuGWXfSFjxdmSwnC/JHXvUsHQbO8OJReZ3OC/oJE5meJzgv7qpWmIY
	JZuStIcNcAeLnyVOupq2lqEk9hA3AdlE2P96tk5FMnWX0IpApgZlGjYrc3j/WEZaeiguoUnYTTG
	Ke1LetABOnIUy3BDgiVhhOuIuVwshYxljeAlQOxv0y4cCjZwBBYETJrok/zqokWlfrqf7rOSWa9
	JmMFBxiEex2mmyDY5Wv+veGC2nhRHP3QoS6g+lbs3uBgz33NHwxEy3+lsrSuf0s0eCHjf18CtjB
	J07REXCsTdioVcfSF8en5q7vHfdn49asM7pt4B1oeGuaFg4Bfwkm0V+Oqm6CXUqiGvnpEZmlQL7
	G2lhyCDV67b58mSelpdhiUFYjYYKdKoblNUtqMuNlzhI8vXUAjRVB9efheMuabem2IDIxJqj7Yq
	RdrjUYq27ryhGRqMblQqGfRU7MlEbuCeiM4kNrVUmFr/PWqaQ3
X-Google-Smtp-Source: AGHT+IFrgZRmrzCNMCcoIRz1jUTUDqldvm1HbE2UDjWHQBuyUP0E2qXqWscgcUyXcobdYcdn57XHtg==
X-Received: by 2002:a05:6102:54a0:b0:525:df9e:9365 with SMTP id ada2fe7eead31-5dd89129f09mr2090041137.16.1762418680916;
        Thu, 06 Nov 2025 00:44:40 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9370898d9d1sm772133241.12.2025.11.06.00.44.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 00:44:39 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dbe6be1ac5so299039137.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:44:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVZXoQQ7Ta1/4Gu0iLf0rrhbYpmPeCHqrxMbRcCkHj5Jx9Gh8TCt0jHP5FHWHBKTJLMGw/IVoI8RW5U@vger.kernel.org
X-Received: by 2002:a05:6102:e0d:b0:5db:cc92:26e7 with SMTP id
 ada2fe7eead31-5dd8926eff6mr2132593137.38.1762418679294; Thu, 06 Nov 2025
 00:44:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006172119.2888-1-wsa+renesas@sang-engineering.com>
 <20251006172119.2888-2-wsa+renesas@sang-engineering.com> <20251009204726.GA3306624-robh@kernel.org>
 <aOgsxSfGIVBpfkpb@shikoro>
In-Reply-To: <aOgsxSfGIVBpfkpb@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 09:44:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUf2QB__ZXsJK-iMAt7U-89d7s76oRB8KE9Jj0XywxzJQ@mail.gmail.com>
X-Gm-Features: AWmQ_bl7RbaNV7V4JGT9opu1pZKZ4R-1R9XxMMdHotgYEewUqOZDK542sndaY3s
Message-ID: <CAMuHMdUf2QB__ZXsJK-iMAt7U-89d7s76oRB8KE9Jj0XywxzJQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: iio: accel: adxl345: document second interrupt
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Rob Herring <robh@kernel.org>, linux-renesas-soc@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Sun, 12 Oct 2025 at 02:01, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum: [INT1, INT2]
> > > +      - items:
> > > +          - const: INT1
> > > +          - const: INT2
> >
> > This is better written as:
> >
> > minItems: 1
> > items:
> >   - enum: [INT1, INT2]
> >   - const: INT2
> >
> > It is mainly better because using 'oneOf' results in poor error
> > messages.
>
> But wouldn't that allow naming both interrupts INT2? Or is this
> magically prevented somehow?

    "That's because we require strings to be unique entries, so [...]
twice will be rejected."

https://lore.kernel.org/all/20251009200054.GA3245555-robh@kernel.org/

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

