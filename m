Return-Path: <devicetree+bounces-96605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E20595ECB9
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 11:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B37721C216FD
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 09:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDC5143882;
	Mon, 26 Aug 2024 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KAfhreAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C854E14535F
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 09:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724663253; cv=none; b=Bs/T1wVL9bZe1W/aLRY328gxGYvoE0u9RouHoaqb/skVI1ZjPG1890Gzy4xkccS9kNIfE9NRW1PiqtAz8NxI4HcOdMdrt53TeSTiSX52vv0/jujihzJrVdRDkvEnaZFirzAt3/zzqnmnWpa72RI3WYzFHTCRs4+9o2FDteoIYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724663253; c=relaxed/simple;
	bh=lj01/f2LiyRrUvTSa8/RM+ENuLL5BYJU8hMdCYL8sIg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c2eYsNdmABOy+rFmDaq8sQCbq0nB1DEw2jR0Xfal4XwMmGBV0ZboFdtepcwHGKldY2gtrhtCdccwgb4IG+POjqTF3lgHGlFB+DTiZlOp0hibOruy8af/Ozez10LN182i5tSJDyP/vOBdW/K91ZJMMvKE4O9A7Uucf7Utcm5BKR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KAfhreAF; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso49605761fa.2
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 02:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1724663248; x=1725268048; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UqD5UWcEcVPtLKNughX5xFAsztARfJbyIdaLj7krJ48=;
        b=KAfhreAFNj29HjT2HRVug5yGbYqg+uXm/EbHaYsfpbUSmXpiiMp08OJpvLccNsKg6z
         53wRQAOco+Vc83bcSDlU7TzqK67Ajf03FnhkGDXqkGBA92jGKv5eM7HrWhJmj2Ke/GRK
         3naiX76Odxc44hk3Ag9NgW0nAmv4o1HaTXaCAo2yAG5/KLoU3/BF3ttU1XQldTxODXv2
         EW58aG/icuOW58s1stk5ivp43KqABTq77vJBj352iqoFbkskE+eJw8ZLJhg6mG8NsJpj
         e0bcY6FkT/RszqswcmBql1PCylwC+LPG3I8fKde+hmE1gPlpSxR0SfnvubaNW/OK4Xns
         6tdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724663248; x=1725268048;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UqD5UWcEcVPtLKNughX5xFAsztARfJbyIdaLj7krJ48=;
        b=bATko4NMe9Vf0xju3U/JUNoRAp24VgM3pxB1w1t0XtI66ql8is1axVJEcrvVMiAQU+
         VV4NKxQIT6gsBChqAPVZfbBMTv6xdwQ7uvVkME/rjRDz8lt3WoY9xE6PGNjbY6rBruKy
         Nte6hJlzSOnpUrND+ucD90O2FYJdvrY6XJ2JlKQ6hG+XyjZ22xpFLIcwHvTYIpmMqSH0
         tPxSEdwApA38PpE85N6aY2k2rUPYUiDpQlnvgWhiQeVbuH92Q1Y3nFOPYxCzu/I4Fx/j
         DD/8zrrQjReNDidLDh5uHe8JdldO5LNm0n6S386UMEr5yylMoVsc15S7kPfz9EYXcbgc
         KbfA==
X-Forwarded-Encrypted: i=1; AJvYcCWxyZBYpQITPtCtUxU+ccfdin8DhtGX+Qsr4sFYiKimrbaG64A0YukqssDgth4iATlh9pg+h3f0C+/R@vger.kernel.org
X-Gm-Message-State: AOJu0YwBeDAfn7Ox8s3M5PJ5M1WFPqZW4zBIr8iUer8KTi824G2WdwEE
	erF3Km9Dr7uPRpyQGAGgBIcu4OWo9wCtkN/MoWIrMJXDeBD4v+XqBcQNAJycdUA=
X-Google-Smtp-Source: AGHT+IEK0yN2RYKBDuaStUQnXKZRjXxJWE9pErYm6IieseugH4NhuZzdiuxipurv3igkJJwF0aMRAw==
X-Received: by 2002:a2e:b892:0:b0:2f3:cf43:c2a8 with SMTP id 38308e7fff4ca-2f4f579e8eamr76624181fa.42.1724663247306;
        Mon, 26 Aug 2024 02:07:27 -0700 (PDT)
Received: from localhost ([87.13.33.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f2205e1sm652753666b.12.2024.08.26.02.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 02:07:26 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 26 Aug 2024 11:07:33 +0200
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 08/11] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <ZsxF1ZvsrJbmWzQH@apocalypse>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <5954e4dccc0e158cf434d2c281ad57120538409b.1724159867.git.andrea.porta@suse.com>
 <2024082420-secluding-rearrange-fcfd@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024082420-secluding-rearrange-fcfd@gregkh>

Hi Greg,

On 09:53 Sat 24 Aug     , Greg Kroah-Hartman wrote:
> On Tue, Aug 20, 2024 at 04:36:10PM +0200, Andrea della Porta wrote:
> > --- a/include/linux/pci_ids.h
> > +++ b/include/linux/pci_ids.h
> > @@ -2610,6 +2610,9 @@
> >  #define PCI_VENDOR_ID_TEKRAM		0x1de1
> >  #define PCI_DEVICE_ID_TEKRAM_DC290	0xdc29
> >  
> > +#define PCI_VENDOR_ID_RPI		0x1de4
> > +#define PCI_DEVICE_ID_RP1_C0		0x0001
> 
> Minor thing, but please read the top of this file.  As you aren't using
> these values anywhere outside of this one driver, there's no need to add
> these values to pci_ids.h.  Just keep them local to the .c file itself.
>

Thanks, I've read the top part of that file. The reason I've declared those
two macroes in pci_ids.h is that I'm using them both in the
main driver (rp1-pci.c) and in drivers/pci/quirks.c.

I suppose I could move DECLARE_PCI_FIXUP_FINAL() inside rp1-pci.c to keep
those two defines local, but judging from the number of entries of
DECLARE_PCI_FIXP_FINAL found in quirks.c versus the occurences found in
respective driver, I assumed the preferred way was to place it in quirks.c.

Many thanks,
Andrea

 
> thanks,
> 
> greg k-h

