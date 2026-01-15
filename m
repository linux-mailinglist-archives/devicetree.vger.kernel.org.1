Return-Path: <devicetree+bounces-255550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B04E5D241AE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:15:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C40E30275A3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D83D376BEC;
	Thu, 15 Jan 2026 11:14:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70614376BE5
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768475699; cv=none; b=THsJ006H3FYjt/J+SArkU9TdMEsnUkBsRnoGsflOTzufeXc4gcZO2cozdRke1eEkXpmrs1QmRQ5dNxG7GXizNxxBd9JWGbTvz5U4i173jAhO6Esue2nizTeZsOuMnIBBjzS3anJYihKWUWoMpMn/N0Zt5Vdw2FoNSrTKakOXzyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768475699; c=relaxed/simple;
	bh=4Xv+kiu1PsewV9Qo5HqVVMC1TkAVawqiz071ud8smLw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X6MX2pNPTybmoaJurqGqyVyaUWKBF2RcAfkPNLdTXERKpDEtzSJZOG475Kf46AtUzMaB+7uy0uRnaiMTRrEtUsJkcdwVLijJ8MA1t3EETGGehrk3zYHTYmHRCvioTw7tidYUbCmOdRAbUpL1uoV9xDT4/Qgb8EVC+OCGLqeHvgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c5320536bfso93265185a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:14:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768475696; x=1769080496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bt+YNNG27WZEvGUwZk4TYJG13mQxJAZnvV5f9yUtP/0=;
        b=Q5Do0fUZ7J5lW6p0BeNPvZd/OeeF9A1HXRBdQwlafQhAAcCGh58A4sGMjjwR7aJmlI
         wZ30Rin3zMPN4fJKkEbRNmIu3B1/jXNWr91XSU2e6avXzfONA0RzUbba+TINZkDwJzIv
         ywlWNKkMA4HSEBwO9BnmZXzhw9zMzckC0j8B/0MzGlttVMBrnDmVQYo0MKlpksg4BpVX
         6w1tVtWLiBE5VTCsonGWNmyuKNMtfbryI/ac1F5u0DnKW5DnBTPkwV28qsFuM6uhXgyU
         U5L72nriVud8KVYG05sI25dTHG20tUD4WigEHCaaglPTVNeW5h7uBBRk5Xyby9tKw/gJ
         tEfA==
X-Forwarded-Encrypted: i=1; AJvYcCXyBU4KDqDM6swIbkLpUEk+oDK/qVnMqvAz3vmxdPiMOFO1zxJiIOtOSXNDGooO2zxR5KGqPVyBMvlS@vger.kernel.org
X-Gm-Message-State: AOJu0YwJZ0NurCZgZFfvfobnkOnCYpjVKKplGBMMUR4Hww+m6njvC8nG
	WHaLNAeDns/923LiriE6oJ+wuZJ4RZWjiYSjsrBrfuIf5nyDBVZRcIn1zNWejhiaNxs=
X-Gm-Gg: AY/fxX4F+4nJR97xwAiNPHTqneIPvbJoUtqmKP6vaVF9yK/BqmjpY/CRrx4GcejHYLX
	PjKP2pbnP+I+GM2T8OpH49axOJzUAX43PdFO/4kSjsXVi4LNZKBp7ndBX97RKbvkmaK8kFo9yT6
	qWwIy8wsza+rZ8cEzlaNaEdB5s+VkdXWgRbEkl9VaZ8Yuuxg+V6qd+ZJrI3N7W9R2+vE2EbHzzQ
	hgdf+PdT71hoYLot/oxV7UW46lBB/C4j9293LOMFndbtGFcuZDUDU+oDGYlrbx36AoX1Py20GF0
	gF6W+DynGPbLMc6FIu0DNMAJUSlEYTJWCS6f6k6mk7LVTB/LBH6s/VQO4Rr8l3/MTBojpSfEl2u
	aBPIbwmvn/yTn9L7Orz0kYNldZVmvHKaO4ZnbZY4GDzXurMmCS3fxxf3grisBRRFRogyeP+eDFA
	0mvMk1W6KgG3uNwHbz43RayqRGUETtbfHd35sWFwOXna4tkccO
X-Received: by 2002:a05:620a:51cd:b0:8c5:3376:3326 with SMTP id af79cd13be357-8c533763402mr508617585a.80.1768475695855;
        Thu, 15 Jan 2026 03:14:55 -0800 (PST)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com. [209.85.219.45])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c530ba54b8sm369435785a.42.2026.01.15.03.14.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 03:14:55 -0800 (PST)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-88a34450f19so6736786d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:14:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVN+/V/9xwex6y1gAmmhnK2CZR2yajGrCTMWRlOuv5tDPZlwkBi1kkqLC8GpJ2IAGpTe+YmgZHs6xbC@vger.kernel.org
X-Received: by 2002:a05:6102:3906:b0:5ef:b3da:1634 with SMTP id
 ada2fe7eead31-5f17f68f312mr2498241137.43.1768475230982; Thu, 15 Jan 2026
 03:07:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114093938.1089936-1-herve.codina@bootlin.com>
 <aWdp_jMVUBN04is3@ninjato> <CAMuHMdWkGevDsBuUs1k=r5yeKJZHvs93b2SDfPwKoF4fFr-3Ow@mail.gmail.com>
 <CAL_JsqJwGLXPCtSabkeD26Ct3MrzFBdU-3-gJbGEpRQcmL1LWw@mail.gmail.com>
In-Reply-To: <CAL_JsqJwGLXPCtSabkeD26Ct3MrzFBdU-3-gJbGEpRQcmL1LWw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 12:06:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUuQmMKyg2oc6jw9Tgsct9ZimjkL5PYw1OyHAgODL==Og@mail.gmail.com>
X-Gm-Features: AZwV_QgN5zpuxnXc64xxS7FKteaOjK3XvNGTF8daKF3483kVmVRKJhptLCCbWv4
Message-ID: <CAMuHMdUuQmMKyg2oc6jw9Tgsct9ZimjkL5PYw1OyHAgODL==Og@mail.gmail.com>
Subject: Re: [PATCH v8 0/8] gpio: renesas: Add support for GPIO and related
 interrupts in RZ/N1 SoC
To: Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	"Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 14 Jan 2026 at 23:21, Rob Herring <robh@kernel.org> wrote:
> On Wed, Jan 14, 2026 at 4:47=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Wed, 14 Jan 2026 at 11:03, Wolfram Sang
> > <wsa+renesas@sang-engineering.com> wrote:
> > > > Rob, Thomas, this series is blocked waiting for your feedback and y=
our
> > > > acks if you are okay.
> > >
> > > This was a little hidden between the other text, so let me emphasize
> > > that these acks are needed. The other option is to send the irq stuff
> > > and the SoC stuff seperately.
>
> Reviewed-by > Acked-by

It does have different semantics...

> And if it has either, I stop paying attention. So I was assuming this
> all was going in via not-my-tree...
>
> > The irq and SoC stuff depend on the of stuff, so doing so would
> > delay the former by one cycle.
> >
> > On IRC, Rob sort of agreed to option A from my proposal (see v7 cover
> > letter):
> >
> >   A. Rob takes the first two patches, and provides an immutable branch.
> >      Then Thomas takes the irqchip patches, and I take the rest.
>
> Until this...
>
> > Unfortunately that part hasn't happened yet...
>
> And then a new version came in... Why a new version only to add a
> Tested-by tag? That sends you to the back of the queue in my normal
> workflow (which this is turning into anything but).
>
> Thomas has now provided a Reviewed-by. I think it is easiest if you
> just take the whole series via Renesas tree.

OK doing so...
Thanks!

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

