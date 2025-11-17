Return-Path: <devicetree+bounces-239398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EE5C64675
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7739E4F0646
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D7731B81D;
	Mon, 17 Nov 2025 13:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF67D274B39
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763386504; cv=none; b=ZL+Sx52h5DFPsfsMj36qP0frYAnt3z9UYxX/5Z95Ab1QDO5Dd5dFd37vojAOU1ZOB5vIFwuCVbujakw15HeLma4X+NjutZNep7EXHn2AB4TdRPvmhBoCrQInRtteejt+IuEzSIuv7NaldqTizWs95GL22UAt7yobxzPxRXgZzIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763386504; c=relaxed/simple;
	bh=px2hV1A/nOdN7ZX1sTKuZqvlCW5UVG+hbRtvmwMHmns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJ8FYEhkFJay89V0uDT0oZrU7Ov+07U6/aalrV35Hn4/6pbyyhVzzNOOqOQmJkApoHEQnbO/qFMWagMTBS8rByHjoMeCK99NNRvLf4hyEsUEXjfDgrfwPnXZrtpgD1duh5ih3Pd0vnCk3E82jFUkGYZL38sc+QIO1RPYAGm9PYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dd6fbe50c0so1702686137.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:35:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763386502; x=1763991302;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XicRv49ckL1HlqmKBdAWtpcFjnN28YIuiJ+gd2B6JYo=;
        b=xCpfX4pkVEFazAQx+JIS2z1IivNmwt7isC5GZg3by3WrKT0WQo8xkMcWYUzZoTjbkn
         LHHHefelFqybg+MWaPEApOFJWS/9wR+6YgNR4ri116eGoxCEgn8zYKibrXZgPGn+snI3
         wXfDFwvNQnChW9xD+k7nTYn2XVi1PePrZataeSutDGhHINn0Fr6Svw25y4j0qZs4vpXk
         pFHdeR2uruUhvH/ZlPxbikKsgcldsm6xZQSLDr2S1NbqzW2PwLvlxEjHGFWKjqrqlIS3
         BF8xU/2dznc4uMhqWj1j+EpwEodb1ZS3H2ShVbL/YMKmiDC0a2Vvp5PxiIPB+9yXmiW7
         +d7w==
X-Forwarded-Encrypted: i=1; AJvYcCW9pjB1m/lle5bOwR/B3ZRCWxLk1JDUIJB1omipk81aBJijlma1UB5iRRy14TCZKQNpxDl6zVdi+g92@vger.kernel.org
X-Gm-Message-State: AOJu0YxFPnE2yrrKS+XlYLB46cbG9cR6CGP14805ffNTfONEGIAG8Hwc
	kJMqbVNOL97FmuE378vMwEbvlGW2IVv3X6GNdCr4vh8MMsQLS8kX18inMX50zGYfVQQ=
X-Gm-Gg: ASbGnctw/wp4XOzXUxcgV6OXS4r31utdpuXNdmcyD2P2ucaONYNx+MoF3kUWm6BHf3N
	mkhkUYT3Ii0MKdGxQdFBcIKOZXiMtHyTFwZZSp1rN/CjCyKVNKlXuZAO5MqWiE+i01kxu+pYa+T
	5ttlKpsTkxQMLjjjHj0GtbwF4QFWp4kgtTRQpnYGLcJ4dQg4vTR9A70qQ6wbvxO6UemWIul8epA
	mh3uKiwSGeELU9VxYOLWhdw4Ffj8cOOyxLu6tCxkeLaNH6KSwPh15Sah1ERKK/6xWXNg+jzBHlC
	4nsIelnncrrdOIGuQ62sAbiIHQ/kErP9+AtD5qbn0LBHOY2OGAybNRoum/egwqCn9iUFvX2+rXq
	DQp/hm35POF0HF92X2Qxqhk74PbTRYsXO/V3O350h4VFVEvJnCK+4BvuY6dH5tN6tvWtqiDjMr2
	kmCu50HhxaY37y2sUfTMtjOPxbWeSg2lJdOHAGraBDezZHDZXI
X-Google-Smtp-Source: AGHT+IGsBLHClI+xHmoLj/hCel5Fk9imvpYn+5wOktw9RXGzs4HJGa31eivPv3y/sn2ucVd5if3cIw==
X-Received: by 2002:a05:6102:15c6:b0:5dd:b2ee:c6ff with SMTP id ada2fe7eead31-5dfc554efc6mr2595104137.8.1763386501658;
        Mon, 17 Nov 2025 05:35:01 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb726ff96sm4410415137.14.2025.11.17.05.35.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 05:35:01 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfc6be7df3so1107042137.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:35:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWy3MHmgXqqk30fe3IrofpC5TIDM0LVZ5+XQ0wP3/XD6tG2nrtteNnW4C3pLBEQEzAg/1nkWL4/bHjq@vger.kernel.org
X-Received: by 2002:a05:6102:4b89:b0:5df:b085:835a with SMTP id
 ada2fe7eead31-5dfc5b9e6d5mr3484003137.30.1763386501291; Mon, 17 Nov 2025
 05:35:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com>
 <20251027123601.77216-6-herve.codina@bootlin.com> <CAMuHMdUicJjXkkNs7FhZ0-jyuv9pzr_Q0AZNXs7tiv-MBGTkbg@mail.gmail.com>
 <20251114125810.629e8931@bootlin.com>
In-Reply-To: <20251114125810.629e8931@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Nov 2025 14:34:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXGjdqSfWnY6JrXLKiTS+wpQuphB+tW1RWoMskO3-MHGA@mail.gmail.com>
X-Gm-Features: AWmQ_bnSRNaycDrtFmwU2BRrd31X7UUoS4AupST9inXGj9lqsg7WOq47fOxQ24c
Message-ID: <CAMuHMdXGjdqSfWnY6JrXLKiTS+wpQuphB+tW1RWoMskO3-MHGA@mail.gmail.com>
Subject: Re: [PATCH v6 5/8] ARM: dts: r9a06g032: Add GPIO controllers
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Serge Semin <fancer.lancer@gmail.com>, Phil Edworthy <phil.edworthy@renesas.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Pascal Eberhard <pascal.eberhard@se.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Fri, 14 Nov 2025 at 12:58, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Fri, 14 Nov 2025 10:04:10 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> ...
>
> > > +               gpio0: gpio@5000b000 {
> > > +                       compatible =3D "snps,dw-apb-gpio";
> >
> > Don't we want an SoC-specific compatible value, too?
>
> I had added a specific compatible string in my v1 iteration but it was
> rejected by Rob [1].
>
> [1] https://lore.kernel.org/lkml/20250729181151.GA530390-robh@kernel.org/

OK, if Rob is happy with this.

(If/when needed, we still have soc_device_match() ;-)

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

