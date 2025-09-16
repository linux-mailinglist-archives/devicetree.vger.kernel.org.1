Return-Path: <devicetree+bounces-217874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D20E4B597BF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:35:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AA0D3B0ED9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4747430F54C;
	Tue, 16 Sep 2025 13:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B4830748F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758029711; cv=none; b=Ll4TmU35PpBOoFekUsKhR25lXMj33J7W+GL2A4g2XPpYM0y/yV39WvRHB0xmb1GtDOK/1OIxmE1BhpGjB7vEoTUmPTeG0SX7PwLn+r8bNmKNJgi1hubXAs1VKaTEZGonQJSevAuBh3wjxcH1npgFAi7jQ0lkB1o0tml6BaP3YCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758029711; c=relaxed/simple;
	bh=NOoxReonMuhobJtuMWdYRTzxwSsLvY6z6THmu84JRfk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i5SpezTKPN2W6khWuhx/T0bOscPp4WL1Vhz2SJFKpejkg7G/LnWvAa5BENbsxIKjM+p0DvTJIOIxZ6pcJ55sZabe5deqhKVsEpcJefldnPh23hBzsbxY265jfJ1Urqwwt1HVO7RHqo2qI5UYrSyVlp2LpnLhkzaUbQMUErwRjIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-8972e215df9so1024747241.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:35:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758029708; x=1758634508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UPlGBFIad4u1SYY+YGVVawgiKQ3X/ZTy7ZgadUaNtos=;
        b=TFcu2Dn/Q7Oyjr9Py547tE79v3yr1oe7Pohe/gl3epM9hiR6ov+OAt4lqpCfFW5SYA
         3FhVmPTlJ8X5eSyy3RtiZlX8i/NwRDcKOWYzOk7Ncnf3LR/RjJK+HvJx2OOZb/FTKl2B
         EaxBJ/55sx+e/dTiEz386rBnqB3fCHcwUVuDtkQSLsDtJid6RNAxqRkOdakR5ccDExZd
         Hr0AlO/j1G43XydShMQeoHzo6xg/0+w75C486tTaYYgF1zuwgDYr+hFGteiloxomDBbA
         8avzA78vI3BbmBL+MhYqoCdByhg0TmbsyHqlHBt8Qtg4AC7XjNnZKFUN6yDTPyCMTrwa
         OZOg==
X-Forwarded-Encrypted: i=1; AJvYcCV8Hlv/N1vzndwS4PCPcklVao1ACYaN3F4bRILU75MrtHZfIl809ORDkc9Fav95rIsuDB/jOccctZPA@vger.kernel.org
X-Gm-Message-State: AOJu0YxcInlcy9Mt8S9B9lksAdCTTh9uzW/zcE977ZcMxM6dAjpMYNSh
	vcum/cPEkTVoh/7OGXAsTU+XGypUYVqqJlQM5Eiu/b2cmGWRsLX1mlYH5w6wvClW
X-Gm-Gg: ASbGncv/p1UOmivB8jwNTTMD8WVNTEZpcCfo+Xo5qNMBAx2vB5gZq49ba9rQsXZW+2w
	izGxg48VdkAt6rt4CQoYE+imTDG3vlHbtarhMFPEF3JDpYev6BGG1CKAxil6Ov4wRxrCfmE0P2F
	vZMPLKAako14iNCIK0GKlD0Ipvgqmq5N5+ZI/ebI//NtCZB/a7rabqOS3Oyp3QKSmx8VOJXXrBM
	w7PoVWP3tZlUoAMbFajw+aEqr+JLL62qf1PjIDN+jvOwDg8mg/RvgYi3EwQFJzzfugEoU8LY3FB
	FJRIagD/4L19zEvAM/zN1tAzOjD0yaTCDGy6XG/dJtpZS6QEJj71mOInIVofDSR67Lyrz3NqdBn
	cFPG3DuOErj9dLuIYrqwsbGLIMzeHW8OprJKVgDe81M+yAHDzHgkqs5BVhH/QjjFq+ny+VzZpao
	Q=
X-Google-Smtp-Source: AGHT+IEs3YdRVDCz9ztKqR6M5mMXBJJhGcxxekKME4cIknj1oiRIv0ka5d5Lu4Yh54k3E5yvdKTQ/Q==
X-Received: by 2002:a05:6102:808f:b0:524:b344:748d with SMTP id ada2fe7eead31-5560ef9654fmr6785608137.17.1758029708258;
        Tue, 16 Sep 2025 06:35:08 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8dd2fad92f9sm1055563241.7.2025.09.16.06.35.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 06:35:07 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-54488e51c37so2009806e0c.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:35:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVotBI6itxYCiOnY8r/56gGVW8ScN2F3sPxkb08Ip4kJqS9Ww1GKxia6bo1nTB1BAJScxj/HnAARf2B@vger.kernel.org
X-Received: by 2002:a05:6102:3050:b0:51c:3187:e82 with SMTP id
 ada2fe7eead31-55609657675mr5087196137.1.1758029703622; Tue, 16 Sep 2025
 06:35:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902105710.00512c6d@booty> <aLkiNdGIXsogC6Rr@zatzit>
 <337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org> <aL5dNtzwiinq_geg@zatzit>
 <20250908145155.4f130aec@bootlin.com> <aL-2fmYsbexEtpNp@zatzit>
 <20250909114126.219c57b8@bootlin.com> <aMD_qYx4ZEASD9A1@zatzit>
 <20250911104828.48ef2c0e@bootlin.com> <aMebXe-yJy34kST8@zatzit>
 <20250916084631.77127e29@bootlin.com> <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
 <397483db-91de-4ff2-82e3-52ae785bc343@beagleboard.org>
In-Reply-To: <397483db-91de-4ff2-82e3-52ae785bc343@beagleboard.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 15:34:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUgnw4Q90a5yzOcK30iBUAQTgUDgAauzSifnngQf7bwqQ@mail.gmail.com>
X-Gm-Features: AS18NWArFS09GxFXzr9rCLXIPOSv-zNSXEkjGvdknIBx7wlKxz_Awydcjb3L0Fc
Message-ID: <CAMuHMdUgnw4Q90a5yzOcK30iBUAQTgUDgAauzSifnngQf7bwqQ@mail.gmail.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion at ELCE
To: Ayush Singh <ayush@beagleboard.org>
Cc: Herve Codina <herve.codina@bootlin.com>, David Gibson <david@gibson.dropbear.id.au>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Ayush,

On Tue, 16 Sept 2025 at 14:22, Ayush Singh <ayush@beagleboard.org> wrote:
> On 9/16/25 15:44, Geert Uytterhoeven wrote:
> > On Tue, 16 Sept 2025 at 08:46, Herve Codina <herve.codina@bootlin.com> wrote:
> >> On Mon, 15 Sep 2025 14:51:41 +1000
> >> David Gibson <david@gibson.dropbear.id.au> wrote:
> >>> On Thu, Sep 11, 2025 at 10:48:28AM +0200, Herve Codina wrote:
> >>>>  From the addon board point of view, the only think we can
> >>>> say is "me, as an addon board, I need a connector of type 'foo' and a
> >>>> connector of type 'bar'".
> >>> Agreed.
> >>>
> >>>> Also, at base board level, statically defined in the DT
> >>>> connA is described (type 'foo'), connB and connC are
> >>>> described (type 'bar').
> >>>>
> >>>> The choice to map connA to the type 'foo' connector expected by the addon
> >>>> and the choice to map connB or connC to the type 'bar' connector expected by
> >>>> the addon can only be done at runtime and probably with the help of a driver
> >>>> that have the knowledge of the 3 connectors.
> >>> Agreed.
> >>>
> >>>> I have the feeling that the choice of physical connectors to which the addon
> >>>> board is connected to is a human choice when the board is connected.
> >>> Yes.  Although if the addons have an EEPROM, or some other sort of ID
> >>> register, it may be possible for some connector drivers to probe this.
> >> Right, I think we agree that a driver is needed to help in the mapping at
> >> least when multiple connectors are involved.
>
> > I agree you need a driver to read an ID EEPROM.
> > But why would you need a driver if no ID EEPROM is involved?
> > If the connector types on base board and add-on match, it should work.

> How would a connector be disabled in such a setup? I guess maybe status
> property can be used while applying overlay to check if the connector is
> enabled. But maybe that goes outside the scope of fdtoverlay?

Why would you want to disable a connector?

> Also, I would assume that most such connectors would want to provide
> some kind of configfs based API to add/remove addon boards.

Yes, we need some way to configure add-on board add/remove,
and on which connector(s).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

