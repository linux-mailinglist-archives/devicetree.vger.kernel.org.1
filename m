Return-Path: <devicetree+bounces-255005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EBAD1E5D7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F12CD30145AB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F13A33B6EE;
	Wed, 14 Jan 2026 11:23:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2466C2F1FC4
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 11:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768389804; cv=none; b=OOSjQoL2MgbbukfGpAfUQZ3eeEYHZUlZrPmr+SfMVZ0ebtEoaAxZXpY00NVAh8irsr5PeiPEpMJZ3UFikN7qlAOLi0S9PgS+QDHbnB3IK7kloSQYNcqxUR40LcMRpo+J2ZDoNJt5GiKJMrNbGeYzSprZOS1H1QY+B5/nXACo13E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768389804; c=relaxed/simple;
	bh=CiDHpss1hVeyB4RZ3H82ibrygcnDTVOy55OV2SWKALE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R9l9Qwjf1X9UYZcwau6/lL5u5J8ImYbj2bRlv61nyf3z+RB2zwnD3uv50+MGE5KNCHzLtlETmRAAETlVx+/AbHazbt5SEW3ql/cfKfYKm2x6vOE7isLBbpHx7nLgw0L2k+RvB7Sp5EvFRmiYEjdjErkVzWbgSFRTJ7OgJREmv6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2ae57f34e22so9464121eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:23:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768389802; x=1768994602;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RlUeVi88PIKWMzTWAKceP+tOAwQMJqEvuH7YKzydUAQ=;
        b=Pil+8tL4mvOfJuoffpZMDL9LnT/DyQr+Dunk4Tfdg06dppYADS0FWG2N458OZ8pfQb
         0cEvj6eLmImbF1uulSvLSQW6xajDSWiDtETO6BjCjtESTiAchMh1nc9VkVekMjx6LL2e
         ymopxhd9Pbm/Zk7IlJrQHFZcbDjs2hlzsaAnqSoAroyhXwsB5P17X+9DcRlQyt5H67aZ
         r6ZsqIqZsxwX6D7SR6fc1Mvuf1zL9RYp+g1Lt/0avyxidsuBucQXtY/wC4PNyCvGo2/0
         W6aNM/eelymAC7FMg3FENX6h/7Ffx2/oQZWrt/74bTv1heCGYpHwCAG2qLd9EZtjkL9v
         zFLw==
X-Forwarded-Encrypted: i=1; AJvYcCV5m4SfLwGDscObm0a68ZtxvQejiONZMkxRE8d6vpYNHxH2UQih+RFDdQysUxUd8Py10hvYxJ2wGfW7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/1WUu0XMFXsVtT7OAp/pepZQ9emOVP5Z+DYCM2J56ZF/JxW4I
	mgqwOlyp/9RNuObPTZaFrZk3BwiIEBHlxJzUJi0E0tk91JOd00Ry/t/Y/DI29H5P
X-Gm-Gg: AY/fxX5Wgj16cPLAL+weDPqGW32mBqaIs4wID2S0InoWQrNrOBBEA1yyE2BQGGdtAXg
	82aF3GZgIG/YDGs7gEqlBQlNMdCJgRzjFBo4T/WCq/dFF2jdgjLSPNZn175o1s1XfdW34SY3aw4
	qSv3FgigZA6djw2qDxP2CclGQcJtmTDY0SSg1+YGUi4ScePVtyP9wIDLwcowsn1neZnT5fjQPrI
	q4t9HQoYASFUxXLL8cEbbILtr+UMf1ITiGXsh5KQsDDIL3duZQyeROX6EgxcYPNM7sDXNi4/8eh
	XhZW/9zSM3qmDPJGDxzOv0eCpHs7UkDwAdS+E7SM0PPjlrJrueTlSp5bLKxfJKAOB6xKqiK/ET8
	AKEK0BowgxUjh2nN+VUM2eAxlWeF8GAH8Ol/dPtw8zuubvO8r79ffUjn1QoO+vnVbRC88CJXnIW
	32l81JPQTNRi0GoauHos597Tx7Srrzp1K0zCvxDYIIyNQ8U0AETau47Kkj/ps=
X-Received: by 2002:a05:6102:6ca:b0:5ee:a094:d4d2 with SMTP id ada2fe7eead31-5f17f415847mr711053137.1.1768383447361;
        Wed, 14 Jan 2026 01:37:27 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a3386sm21491441241.11.2026.01.14.01.37.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:37:26 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93f5774571eso2832091241.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:37:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUj7hp89PP2EACfGEsNTTfS3zUREsPRAn9NCCLvuwIFtwjPGa1hS1NXlkcfEMAWC6nf1weE/QeF4TpD@vger.kernel.org
X-Received: by 2002:a05:6102:41a7:b0:5ed:bc1:823a with SMTP id
 ada2fe7eead31-5f17f6592aemr793700137.33.1768383446392; Wed, 14 Jan 2026
 01:37:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112234534.225954-1-marek.vasut+renesas@mailbox.org>
 <20260112234534.225954-2-marek.vasut+renesas@mailbox.org> <aWZ1pG5RRWlDSCwC@lizhi-Precision-Tower-5810>
In-Reply-To: <aWZ1pG5RRWlDSCwC@lizhi-Precision-Tower-5810>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 10:37:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXb3-EFy8WA9FTAqvyYHaF4nGch60bUQ6bbKu6Dzbh6YQ@mail.gmail.com>
X-Gm-Features: AZwV_QixtfIM8YCIiXj7v0fzbdqd9QL-Kw8ynN88vc69gt7t-8CBMGxLdXH8t2o
Message-ID: <CAMuHMdXb3-EFy8WA9FTAqvyYHaF4nGch60bUQ6bbKu6Dzbh6YQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] Input: ili210x - add support for polling mode
To: Frank Li <Frank.li@nxp.com>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, linux-input@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Job Noorman <job@noorman.info>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Frank,

On Tue, 13 Jan 2026 at 17:41, Frank Li <Frank.li@nxp.com> wrote:
> On Tue, Jan 13, 2026 at 12:44:57AM +0100, Marek Vasut wrote:
> > There are designs incorporating Ilitek ILI2xxx touch controller that
> > do not connect interrupt pin, for example Waveshare 13.3" DSI display.
> > To support such systems use polling mode for the input device when I2C
> > client does not have interrupt assigned to it.
> >
> > Factor out ili210x_firmware_update_noirq() to allow conditional scoped
> > guard around this code. The scoped guard has to be applied only in case
> > the IRQ line is connected, and not applied otherwise.
> >
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> > --- a/drivers/input/touchscreen/ili210x.c
> > +++ b/drivers/input/touchscreen/ili210x.c

> > @@ -1003,12 +1027,24 @@ static int ili210x_i2c_probe(struct i2c_client *client)
> >               return error;
> >       }
> >
> > -     error = devm_request_threaded_irq(dev, client->irq, NULL, ili210x_irq,
> > -                                       IRQF_ONESHOT, client->name, priv);
> > -     if (error) {
> > -             dev_err(dev, "Unable to request touchscreen IRQ, err: %d\n",
> > -                     error);
> > -             return error;
> > +     input_set_drvdata(input, priv);
> > +
> > +     if (client->irq) {
>
> 0 is validated irq number
>
> https://elixir.bootlin.com/linux/v6.19-rc4/source/drivers/base/platform.c#L284

Not anymore ;-)

https://elixir.bootlin.com/linux/v6.19-rc4/source/drivers/base/platform.c#L299

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

