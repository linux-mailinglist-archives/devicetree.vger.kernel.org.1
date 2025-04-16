Return-Path: <devicetree+bounces-167924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3AFA90B9F
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40865447116
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F6B22370F;
	Wed, 16 Apr 2025 18:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="IKUzxydq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687D52236FB
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 18:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744829343; cv=none; b=j2TDgmF+mtjKeSpOGRzqyDSu2rA6+K380rkuWYqcLm41hltBlCRsLRfbhTX5f2TtWUWNRl8xB1fn/1YPvCVTkUCVdxRsH1Ig+xmN5YdL/ctQ/aP6ReHEPgsQrBV4gfYz4/nx30aAiAi1XvmRPMwIRFGF6PkD4K7EeLBBIn+KeZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744829343; c=relaxed/simple;
	bh=EXCjPLcg4xl78qWeRmj3mUHlXXFwXPIFpwOC2+wxRRo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqdoKkJPweV2+yG5lesF9Ge3+MfAFOSLjrgravMy+Yp3oW556YFJ/yHtPTRRHOroE14Qmc+WBuJHzp4UzaZsA5J0CSbkw9xJUd30LqNLAfdLWIi06BfprJ/vhm7UiADUMW5cNw99hleNH6BOvXbkRbn2lgZj6lKLMmOar6Bf+1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=IKUzxydq; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e66407963fso13254700a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744829339; x=1745434139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sWQ82odYg4rALaAgqnCLAExm8ViQ8XuviYu9g41oMgY=;
        b=IKUzxydqlso7LWKbUkfM2N6CAKL50ldhUIbZgzgA+XeVNg9mRnIQxdIXnZKjaVnuFF
         +W7F2epa67kMHwL1e35OR6dhvDisndM6zBISP6H7DCVm5uFEqwEx8lBAFWUiTew706DI
         wjkee1DaNCAVzVI16yJfJb/nqXaxOzDqKjl93dLSofxNbvf9GS8DjV9VU4FleM2j3kS4
         vSFIdZmkkwkWYqpQbd2/u/gvySUy40msrwPTzw7gh+vec5i/INFLDHmY9ibD7Y4t/qBc
         EoUICwakAbq4mJsm7CRyrzQkwDHEK4gXqogX71JfiOCnRApmaWFt5m51UFoGTHw5WYZ4
         CtRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744829339; x=1745434139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWQ82odYg4rALaAgqnCLAExm8ViQ8XuviYu9g41oMgY=;
        b=XVXDees2aAVIIGxXmKSzcMKGeaUZii0riVXLU1mwC1eEtMEBrkSIdxFIsq5iwGKcYu
         FRNRXzuCvsxTsP30ToVAxJZNruZjEwZOUDFsqTiplCWkzjjtzarLVoAL6VUBJii26fWu
         chbBUguKVzm1WduNHHauGJBdpC3T1cLS+24mdX914A8Hz5i4Al1j0N/widuLi9FiNGvH
         fZ5gwAxug5hH2FIIzOWF3yXbve1FVarXbjWZ9oEYzuzMTuc0ECaD3ZghNdf1Qxqs/7Ty
         g+VTujzmFNHe8c2zcJm2rtIiunj0uoa/PRQIFZM9xvCHd1RRucWkqmIydryEHA+KXTkE
         ziaw==
X-Forwarded-Encrypted: i=1; AJvYcCVZmQtRhim5wSumNa+3vMy7lE7IC8kmn0XlqC4L9sUxrOtny0mndE4lOD8gzZX5lo+VJ8/OUBhJ5lUz@vger.kernel.org
X-Gm-Message-State: AOJu0YyhIBJSf6zcq7Kg22X/vK7f8qurlzWorheM4mB/9qWiXbs3aHNq
	syOQCjZB0FzrG/I9tibEv/Od2dq6fbKSOIm5AGnjYXFfyoso657hgxc3hB6sfTw=
X-Gm-Gg: ASbGncurhlEgZLnNSyS7SrXxEg7jEy0TAvkWv5HVYXjROYpYAfFbK9z+/bf2h/JVemB
	Xf3fTSgOFS/l5pcq687S+DEflDMHrWMxi51Ddroi/H2H5ZqLnRYuQ46fsOwZX7bKP08qALVO+D2
	CqaOpT+sMmt8c2COqCw1LF+izPQ4/w8tjTOV4WpRdToTyrYdhg1kEHDw1/NmGsdLq7I4qm99ZLP
	cwn9bVtbB9R7NUtEDJg5g70xBsqhnTOpX+i8qjxhj733Ud1q8TbePcrdG4EE1PoDO/vMhUCl2rX
	iWzIZCxt02+V1OTAR82vgjT+JErmIQBoLm5Z0nggeY77xlgD+tLJh3DzsQHUKaAMRmmzo1w=
X-Google-Smtp-Source: AGHT+IFqmJdOPJLqDBbmxHa4DqyKzt2zjQMRwOR1WFej9DRiHJ4e5/qp3awrDfh34SZMze5F9yH1XA==
X-Received: by 2002:a05:6402:278d:b0:5f3:7fe3:6838 with SMTP id 4fb4d7f45d1cf-5f4b75d87ccmr2873138a12.22.1744829338542;
        Wed, 16 Apr 2025 11:48:58 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f4c72ecac8sm574252a12.44.2025.04.16.11.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 11:48:58 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 16 Apr 2025 20:50:20 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 09/13] arm64: dts: Add board DTS for Rpi5 which
 includes RP1 node
Message-ID: <Z__77DivbIHIPiNi@apocalypse>
References: <cover.1742418429.git.andrea.porta@suse.com>
 <c6498d8cf8dfade1980b566e99a9a91551fd8b53.1742418429.git.andrea.porta@suse.com>
 <526751d2-c7e8-4097-9454-c9049b880225@gmx.net>
 <Z__sMg-RJ6B-3OL4@apocalypse>
 <8da98fc4-f24e-40ba-b705-9faf31766398@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8da98fc4-f24e-40ba-b705-9faf31766398@gmx.net>

Hi Stefan,

On 20:18 Wed 16 Apr     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 16.04.25 um 19:43 schrieb Andrea della Porta:
> > Hi Stefan,
> > 
> > On 13:48 Mon 14 Apr     , Stefan Wahren wrote:
> > > Hi Andrea,
> > > 
> > > Am 19.03.25 um 22:52 schrieb Andrea della Porta:
> > > > Add the board 'monolithic' DTS for RaspberryPi 5 which includes
> > > > the RP1 node definition.  The inclusion treeis as follow (the
> > > > arrow points to the includer):
> > > > 
> > > > rp1-common.dtsi ----> rp1-nexus.dtsi ----> bcm2712-rpi-5-b-monolithic.dts
> > > >                                                  ^
> > > >                                                  |
> > > >                                              bcm2712-rpi-5-b.dts
> > > sorry for the delay. I'm not happy with the monolithic appendix.
> > > 
> > > How about bcm2712-rpi-5-b-rp1.dts or something more self-explaining?Regards
> > Sure, good catch. I'd go even further saying that we can rename (or merge if
> > the destination file already exists) as:
> > 
> > bcm2712-rpi-5-b.dts             ->  bcm2712-rpi-5-b-norp1.dts (or some better suffix other than -norp1)
> > bcm2712-rpi-5-b-monolithic.dts  ->  bcm2712-rpi-5-b.dts
> > 
> > so the monolithic one, which seems to be the 'safest' option as of now,
> > would be the default dtb. Do you think it could be ok?
> i like the idea (include rp1 into default dtb), but not a fan of negative
> logic in naming. Unfortunately I don't have better idea.
> 

Hmm ok... I'd propose 'bcm2712-rpi-5-b-ovl-rp1.dts'. Could it work?

Regards,
Andrea

> Regards
> > 
> > > > This is designed to maximize the compatibility with downstream DT
> > > > while ensuring that a fully defined DT (one which includes the RP1
> > > > node as opposed to load it from overlay at runtime) is present
> > > > since early boot stage.
> > > > 
> > > > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > > ---
> > > > Right now bcm2712-rpi-5-b.dts is the overlay-ready DT which will make
> > > > the RP1 driver to load the RP1 dtb overlay at runtime, while
> > > > bcm2712-rpi-5-b-monolithic.dts is the fully defined one (i.e. it
> > > > already contains RP1 node, so no overlay is loaded nor needed).
> > > > Depending on which one we want to be considered the default, we can
> > > > swap the file names to align with downstream naming convention that
> > > > has only the fully defined DT called bcm2712-rpi-5-b.dts.
> > > Could you please move some of this good explanation into this dts file as
> > > comment?
> > Sure.
> > 
> > Thanks,
> > Andrea
> > 
> > > > ---
> > > >    arch/arm64/boot/dts/broadcom/Makefile                     | 1 +
> > > >    .../boot/dts/broadcom/bcm2712-rpi-5-b-monolithic.dts      | 8 ++++++++
> > > >    2 files changed, 9 insertions(+)
> > > >    create mode 100644 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-monolithic.dts
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> > > > index 3d0efb93b06d..4836c6da5bee 100644
> > > > --- a/arch/arm64/boot/dts/broadcom/Makefile
> > > > +++ b/arch/arm64/boot/dts/broadcom/Makefile
> > > > @@ -7,6 +7,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
> > > >    			      bcm2711-rpi-4-b.dtb \
> > > >    			      bcm2711-rpi-cm4-io.dtb \
> > > >    			      bcm2712-rpi-5-b.dtb \
> > > > +			      bcm2712-rpi-5-b-monolithic.dtb \
> > > >    			      bcm2712-d-rpi-5-b.dtb \
> > > >    			      bcm2837-rpi-3-a-plus.dtb \
> > > >    			      bcm2837-rpi-3-b.dtb \
> > > > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-monolithic.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-monolithic.dts
> > > > new file mode 100644
> > > > index 000000000000..3aeee678b0bc
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-monolithic.dts
> > > > @@ -0,0 +1,8 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > > +/dts-v1/;
> > > > +
> > > > +#include "bcm2712-rpi-5-b.dts"
> > > > +
> > > > +&pcie2 {
> > > > +	#include "rp1-nexus.dtsi"
> > > > +};
> 

