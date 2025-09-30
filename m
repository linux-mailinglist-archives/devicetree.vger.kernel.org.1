Return-Path: <devicetree+bounces-222689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E94D0BABE8B
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4891C0E4A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5432C028F;
	Tue, 30 Sep 2025 07:53:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853CE243968
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218780; cv=none; b=QUpjAb7iuN0VZgSSpkXXMfofNuD6NeevAQ04S6Up48xkey5oZpqWKcAvMUBfH0IqtrQYY1hFWWO1MufaATTbIU3nzMLYVr52uqqMQNBFamJcANsJSgqmzG6FdaGnAajn09UlrljyQpcAZHIBQpjdecC94bZ1avRUg8m7Bss7zMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218780; c=relaxed/simple;
	bh=Ks2i8mOpB744eUk2A/ODTB+R+UAfytF25Eq134pKwt0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dmrK856+XRNepvC6UX4/oiXbsajFuuAj6cn4HThKB8vDrFTETtEVreex6xCKp4JGlf5c2Q6xGXJVn/DX5bhFhZO1CHEd17KE6hduMbScyrmgP4p1Auu+/nFu/8iF5CWNFxkPBnZj+ZQHxmiKpQk6se4gcEaKqeZ1iYhDqtBMrKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-54a86cc950dso940583e0c.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:52:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759218777; x=1759823577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aa5DrkK9lamemzbezkeJMzZtq5kF5RPmPk7WlbJcb3g=;
        b=q5/v0Elyi3sDKFy71cH8S+RSN+5D1pX6NnOuyDlHi8Hjb1/e/6eo6D2GulqbetkaLN
         lGm96RpXqNEsrUpCkaFVAWO2/ZNjpT1mYii8wZYrjb0PlDL8fn6KO5KvnVSA9fDGjjh/
         Vz3jtGg/5KHZvZnqkNa7H5Ue8JEEtfZrP33G4rK4EKE17uDBBMbET3yHKvHhLOdNXuCq
         akeWJZI+w3WZNF/oYo/Ri7CH2DSuyPuBydFZMKkBku6JmeRUH7/4qeMzSz1zld62WAEU
         aKubos6Qxk3dyBLB1i5GlgzLN6IoNVrnx0xnlXVR4v7jVsZ7YKW4y6Il+b6k9XfoKJ2e
         um8g==
X-Forwarded-Encrypted: i=1; AJvYcCVRLtp9q/PNg1uG+1La2UDGUIFtFnpaL+t/UNflTucZrGqMRvv2iIuiz/faFwg6fFILo0pbbBOQlQQ7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4tLucI72Fi1E4sQoKUgIk1dZZPUULaW2nEj3uK5XmASO7eLWi
	58pzj8bWLhLJMd3t2KyZo40EW8ANos3gYCI+bLTCr1BSgWLTSfeLHVvVNlEnq+iX
X-Gm-Gg: ASbGncv9hH1JzVX1eDt6niSub8oD3I6hGc7T1Tc9pXf4wEr1AoIdr1idwGyesC4dzGy
	s0zIy7XIjr5YXjizGQw7bJyUeVizGdxSWD1C6iZf0wzUXvrUqlwYkYr9JaVRUmYHpaa77Djkqe4
	owqOi9pVFEXVa9BBgOKj+0yOCE9cpc2QWUoDVC5svrefcEU/RBBc/jVZcxho9hr+IfralWJrIX2
	AsHolGuZ/EcXt8ebmTObHfMtCVsx97Ae/MJjnH2gZ1jjllNmGkytVEP1wEthnwLcXP4LViD6hMY
	tC1llofDx+y/V0ikFD00tPW77BftxN6+aZ++2Tmr2IG6FPoF4lZOrA0O2ku1m9OHiL81sTz28JT
	5AER9DLTu82VsjQY4JWZdGau0/hjm25vqIj/LnplMX4R4etEIUWLUDJYSrwY3qXWCzRjXaqZ18m
	ux+9LcmX6HVdxwbvzUiIc=
X-Google-Smtp-Source: AGHT+IGaV+2vPFWCHm2rDF/LaEpA/fvlLiArWqxO7KsddmEjs8OJ6Msj/j7j3QwzhanreEyAcsdq5w==
X-Received: by 2002:a05:6122:ca2:b0:53c:6d68:1cce with SMTP id 71dfb90a1353d-54bea25c24amr7843178e0c.16.1759218777074;
        Tue, 30 Sep 2025 00:52:57 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bedca0163sm2756809e0c.19.2025.09.30.00.52.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 00:52:56 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-890190c7912so1778920241.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:52:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUN/M/aOwVIBIsgpFBJW7FrOQQJBtddXrIR+y60WkKBilhZXbXbpxHp9L+Qi0t7P5TZnoGmUJ3rt1iD@vger.kernel.org
X-Received: by 2002:a05:6122:3c92:b0:54a:a5ac:5107 with SMTP id
 71dfb90a1353d-54bea256dccmr7837048e0c.15.1759218775649; Tue, 30 Sep 2025
 00:52:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916084631.77127e29@bootlin.com> <aMt5kEI_WRDOf-Hw@zatzit>
 <20250918094409.0d5f92ec@bootlin.com> <aMzhgDYOuG4qNcc0@zatzit>
 <dcbeaff2-0147-4a27-bb46-e247e42810d7@beagleboard.org> <aNJVqSpdAJzGliNx@zatzit>
 <20250923114849.2385736d@bootlin.com> <CAMuHMdWmDwedyPnBERs-tSYEG15nMUuh9u1Q+W_FdquHpUC0-A@mail.gmail.com>
 <aNNvaN4xJtKBFmWT@zatzit> <cd9763b7-919a-4b44-a347-f1491d9584b9@beagleboard.org>
 <aNtXnAeLj3xNwkyE@zatzit>
In-Reply-To: <aNtXnAeLj3xNwkyE@zatzit>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Sep 2025 09:52:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+sUZpMtbCtWqJMiL_JC_nFEJcFDOoZJZPhhzhY8zQJQ@mail.gmail.com>
X-Gm-Features: AS18NWCn2Nf_ET6vEoGNsB6ZKan8jeS0YTKv9inR2GremBjiwmJIe_zbvyBIsgE
Message-ID: <CAMuHMdV+sUZpMtbCtWqJMiL_JC_nFEJcFDOoZJZPhhzhY8zQJQ@mail.gmail.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion at ELCE
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Ayush Singh <ayush@beagleboard.org>, Herve Codina <herve.codina@bootlin.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Andrew Davis <afd@ti.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, 
	Jason Kridner <jkridner@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree-compiler@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

Hi David,

On Tue, 30 Sept 2025 at 06:34, David Gibson <david@gibson.dropbear.id.au> wrote:
> On Wed, Sep 24, 2025 at 10:33:50PM +0530, Ayush Singh wrote:
> > On 9/24/25 09:41, David Gibson wrote:
> > > > On Tue, 23 Sept 2025 at 11:49, Herve Codina <herve.codina@bootlin.com> wrote:
> > > > > On Tue, 23 Sep 2025 18:09:13 +1000
> > > > > David Gibson <david@gibson.dropbear.id.au> wrote:
> > > > > > Ah, right.  To be clear: we absolutely don't want multiple addons
> > > > > > altering the same nodes.  But I think we could do that in ways other
> > > > > > than putting everything under a connector.  This is exactly why I
> > > > > > think we should think this through as an end-to-end problem, rather
> > > > > > trying to do it as a tweak to the existing (crap) overlay system.
> > > > > >
> > > > > > So, if we're thinking of this as an entirely new way of updating the
> > > > > > base dt - not "an overlay" - we can decide on the rules to ensure that
> > > > > > addition and removal is sane.  Two obvious ones I think we should
> > > > > > definitely have are:
> > > > > >
> > > > > > a) Addons can only add completely new nodes, never modify existing
> > > > > >     ones.  This means that whatever addons are present at runtime,
> > > > > >     every node has a single well defined owner (either base board or
> > > > > >     addon).
> > > > > In this rule I suppose that "never modify existing ones" should be understood
> > > > > as "never modify, add or remove properties in existing ones". Because, of course
> > > > > adding a full node in a existing one is allowed (rule b).
> > > > What if the add-on board contains a provider for the base board.
> > > > E.g. the connector has a clock input, fed by an optional clock generator
> > > > on the add-on board.  Hooking that into the system requires modifying
> > > > a clocks property in the base board, cfr. [1].
> > > > Or is there some other solution?
> > > Hmm.  My first inclination would be that this case is not in scope for
> > > the protocol we're trying to design now.  If the widget provides
> > > things to the base board as well as the other way around, it's no
> > > longer an "addon" for the purposes of this spec.
> > >
> > > But it's possible I've underestimated how common / useful such a case
> > > is.
> > >
> > > Note that I'd expect the existing overlay mechanism to still be
> > > around.  It may be ugly and not very well thought out, but its
> > > drawbacks are much less severe if you're not dealing with hot unplug.
> >
> > Well, while that was not an initial use-case in my mind, external clock
> > inputs are a valid use-case when talking about connectors for board headers
> > specifically (e.g. pocketbeagle connector).
>
> I guess I'm not familiar enough with modern embedded hardware.  I'm
> having a hard time wrapping my head around what's going on here.  If
> the external clock input is optional (hence under a connector), how is
> anything on the base board dependent on it?  If nothing on the base
> board is dependent, why do we need to modify its properties to
> represent it?
>
> Is this a design flaw in the clocks binding?

In my example, the external clock input is indeed optional, and not
used by the base board itself.  Still, it is a clock input to the SoC,
and may be used as a reference clock when an add-on board is connected
that needs to use the exact clock frequency of that reference clock.

https://elixir.bootlin.com/linux/v6.17/source/arch/arm64/boot/dts/renesas/white-hawk-ard-audio-da7212.dtso
AUDIO_CLKIN_V is the optional clock input to the SoC.
GP1_25/SL_SW2_V/TPU is the reference clock (actually it is not
generated on the add-on board, but by a PWM controller on the base
board, but it could just be a crystal oscillator on the add-on board
instead)

I hope this makes it clearer.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

