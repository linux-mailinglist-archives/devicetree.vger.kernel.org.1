Return-Path: <devicetree+bounces-226614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E71BDA31B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5D56540CD7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B3D12FFFA3;
	Tue, 14 Oct 2025 14:59:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7133C2FFFB1
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 14:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760453954; cv=none; b=nbVcrKNbwbaYCas9piHoEZZq1mNVWGH/Dz2D/0PNPjjhnpkVuI6hXC2//rxXiH5ZVSG4cc6FZ2ULf+yjicYvgkYX9aHHLmwkiMcRPDMkisn7q0N4wNRVZEP+V74QOSIZgypunnJX04Ysh8t5iErDsmzgfQZRe6JeGHUon7L6h9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760453954; c=relaxed/simple;
	bh=8cdcfvLKZRVy5zVyqP8q5Amc6eLxZmc3401QZxpkFVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UL8rF+cTleZthylfHBaAClKdj1Fz0gsWu/a73/RPy0eJt9RCuN5bKBW19mwiByzdDJQslSczJuRB8mNL5np+0vN0sT6Qs2JFnrMOTLma+C9+Cd0pO7U8NYmtECzOKcWw1a154lao6krfM/nkrnJt91Q9Z5il9XC+Zk0IJtIkoH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5c72dce3201so1979355137.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 07:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760453950; x=1761058750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bFM6fq+qPomTw5SLmg+mdn/T0EKmVQHgVT/LIsQW4L4=;
        b=KKRytHklOYGU6qiDSCrmtDN82eOEwYXPrGOpYHWPfPuZhg0T/wnSbr23Xa8uViEtC2
         voBWIqu5ydTlKJkSA9cjyq/G5eR2gqNHncrPd0FYdEO/HphOuYzKaBdU4WespCJayGLo
         V/jEUdg8cBoRmilIBn67UQyLIHpOGRo+v3qyQd47v+fCPLUIw6Vi199yoQuFXIVm+wiu
         OvgwqEhENFD++9EE6kyfJFqGQZS+JlE0l6f5a64v5gNyTBcO4LpBZvOFZbmW0eEmXMeQ
         ggMzaEWk4T0bSh6NgeQ3JHWVW1jlb/OaUJ4VFn+CWLbiF62kA0VW02+fjajYyDI8udGh
         IjUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCsZ+uLjdURlOo8C0b+YBFi0RqZOctdBhEYDhaK3fIht856ly9o9tgr9L3e12RAeJTrNKH50YGt9T0@vger.kernel.org
X-Gm-Message-State: AOJu0YwXsy6uEU77GHHm//SHXt+imcw6tNBIWRYz/U7OpdGqwnyvYT8z
	MFGesVqTVJqRELDRqhZdcPQqD85NX4BKm37DaXteyZ2Ake00I6c2mWc7lrKlEFnd
X-Gm-Gg: ASbGncvpEjsZrEw6UtwULjq0mxqbzlOrMRBKtQmCq4+mMz3DHHWlpbJ4Vn6gcD4dVbN
	t44kfN+rY/tCoRce7v0aQu2eTXCXLJXfp/i+1lez04BAO+JW0J0clUVkHYYAF9X27yOMpEBdIv+
	wWUxYClPv2/Z5UNBAvw4kmkm0X7CCNjVNhjDQDwKu+jNha957YdI7iUlzu1JA3Pf1ECLOxsw7Nm
	De2mZKDm0dIH7GAvGuOHHsRK97+gclv3gAkjNK5GGdQKwQDCAUE7hb5mnbaoHrSOAgrZSYfTEVA
	dJ1cCCemajxLerbEDni8oHajzLplHgTdewpt6O/KTNmeaaWcUmSPjPC5As1Fhr37ikfFC5YyEUO
	Q3sjmSrUhRUgG0EHdZPB0v1p5wzP86m6CsyOzlgHCOY//aq+crWMTzL2zjvq5CTw1ryazgPpRq1
	OYKtDI0G/ECtE34d1bEA==
X-Google-Smtp-Source: AGHT+IF23aTZ2q1PuBn+9ZE+NOgnS3PFw0+SUzAdVBiZaCw5oDH0oJKK32X+mPNn8crlJKh61zxdjQ==
X-Received: by 2002:a05:6102:4491:b0:5d5:f6ae:38c4 with SMTP id ada2fe7eead31-5d5f6ae3caemr5755530137.45.1760453950475;
        Tue, 14 Oct 2025 07:59:10 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-930bf76cdc0sm3637168241.9.2025.10.14.07.59.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 07:59:09 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ccccc1f7caso2782933137.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 07:59:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV+NNhNperKQqTAzAomtMS84skg3G7NBjy86AIZs8QIlICKDHo5J871LvpVE7Gzm2W2D3o1hqLp3+mh@vger.kernel.org
X-Received: by 2002:a05:6102:b0f:b0:520:a44f:3ddf with SMTP id
 ada2fe7eead31-5d5e224f3f9mr7315982137.10.1760453949213; Tue, 14 Oct 2025
 07:59:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918104009.94754-1-herve.codina@bootlin.com>
 <20250918104009.94754-8-herve.codina@bootlin.com> <CAMuHMdWNErzjfqXXgJZOn2viPYmGeuJekY_WLDeK6vzYZzdJmA@mail.gmail.com>
 <aO5aIoCEL-XbpBTp@shikoro>
In-Reply-To: <aO5aIoCEL-XbpBTp@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 14 Oct 2025 16:58:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUkx+qQRDertFmW9nLzGJA+VETWLvaA_VoS17-WhJJvXQ@mail.gmail.com>
X-Gm-Features: AS18NWDaYL53l1nt58YG7qpvuDTebR9eFnGE4nr9xDBH40Jra_ZU6YkKi5yFUO8
Message-ID: <CAMuHMdUkx+qQRDertFmW9nLzGJA+VETWLvaA_VoS17-WhJJvXQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Tue, 14 Oct 2025 at 16:11, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > > +static const struct of_device_id irqmux_of_match[] = {
> > > +       { .compatible = "renesas,rzn1-gpioirqmux", },
> > > +       { /* sentinel */ }
> > > +};
> > > +MODULE_DEVICE_TABLE(of, irq_mux_of_match);
> >                            ^^^^^^^^^^^^^^^^
> >                            irqmux_of_match
> >
> > Interestingly, this built fine for me before, presumably until commit
> > 5ab23c7923a1d2ae ("modpost: Create modalias for builtin modules")
> > in v6.18-rc1.
>
> This should be fixed in v4 already as a side effect of my request for a
> better namespace prefix.

Thanks! Sorry, I really thought I had the latest version in my tree...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

