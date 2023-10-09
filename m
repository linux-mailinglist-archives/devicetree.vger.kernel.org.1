Return-Path: <devicetree+bounces-7027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2905A7BEAE3
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4ED281C209F7
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2943D383;
	Mon,  9 Oct 2023 19:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GPYK7Cyw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E2538DCB
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 19:52:24 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B325794
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:52:22 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4064867903cso49803375e9.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 12:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696881141; x=1697485941; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kW7oULOl0tcK0vEB5NqrNsw6lYYhHfwAHHaIwEUxMyM=;
        b=GPYK7CywrDEgmVTsSeo9rLUw+YTlAerEsSENTFZERbjfogXf8P0fr7pqkwsrOjAX9P
         z+GV5wOUeP4CvVlCAWXjB3TVnby8dmwsPsvFNaQTiLCxbMEMYXhCnfEs5iT3O2cugWmP
         hZc1S1cQJqU3Yi/n4RziII/9s3tEMwuG/V1zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696881141; x=1697485941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kW7oULOl0tcK0vEB5NqrNsw6lYYhHfwAHHaIwEUxMyM=;
        b=GbhZNPCGLFQNUc/FXVrrBC0rFbJHwfnMoWU1RnbB1Mr/EPHY5np25wLnY0L6HA4xbY
         yUPOkRZiQr9UNOWeYUYernJJJxl1Mc/EuOgfvyHdR753kbsGHu6BdgCNM8Zp2QY/LUXp
         XnVBPmAJ4qqAbHuuLGZMuwEXYO1Acnridke9N0mm8dUvSXhC1PzXGpUisHgVD2Aue7Fj
         aEE3p01nx6pDB95yGz5z+a2um4mhsBjbq6AoNSoKzK/TFgK2J1mPF4E/O4a1wAaLi+c5
         vHfmB/rjSQCrxKd90i8haq+8uJ7ixP1XWY17Cteu551cvooQa66vlzrj/HB+ZPW5nwDD
         stow==
X-Gm-Message-State: AOJu0Yx8DZx+w0WAFNVLyVrbSvTW44IiyyiUcAWK09AWj8C78vAT/dhJ
	+xhFoP+rJ7o8sJ2JR51iUGPvp19cL6fMZD3zu5F5TA==
X-Google-Smtp-Source: AGHT+IEpbVNLiUNALTUpufwGdDawkPR2f/8t9G/X5X4usMASTCQ60W7JTnA2pm9BLCF8M4nViBTM4/u72lvKsnfVy+0=
X-Received: by 2002:a5d:680d:0:b0:319:83e4:bbbf with SMTP id
 w13-20020a5d680d000000b0031983e4bbbfmr15498175wru.20.1696881140946; Mon, 09
 Oct 2023 12:52:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004093620.2b1d6917@xps-13> <20231004113458.531124-1-mwalle@kernel.org>
 <CAPnjgZ2hWE6Sc=rg55W=-r-TnoWP7Y5gSpn41kwoyja-AMVw+w@mail.gmail.com>
 <9e588e3ec8c0c321a2861723d0d42b9a@kernel.org> <CAPnjgZ20ezipPWAj6bUM9_oCTcX1XzuLqQ7b7-nKjXf1t4p9-Q@mail.gmail.com>
 <a581ef73fa09c6ffeb83a1c1780053bd@kernel.org> <CAPnjgZ2PnKD5m0EgTdEAf-gcK3wuBZvWw_AO2iehb1dmfdoz3A@mail.gmail.com>
 <27d37d4c7cf353d99737a1e7a450f9f7@kernel.org> <20231006161113.GA3983739-robh@kernel.org>
In-Reply-To: <20231006161113.GA3983739-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 9 Oct 2023 13:52:02 -0600
Message-ID: <CAPnjgZ0jb0Y1dyVm9FX42G-xYr+8FE01n5GtzoKA-WCe0pa5oA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: fixed-partitions: Add binman compatible
To: Rob Herring <robh@kernel.org>
Cc: Michael Walle <mwalle@kernel.org>, miquel.raynal@bootlin.com, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
	ptyadav@amazon.de, rafal@milecki.pl, richard@nod.at, trini@konsulko.com, 
	u-boot@lists.denx.de, vigneshr@ti.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Fri, 6 Oct 2023 at 10:11, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Oct 06, 2023 at 10:37:41AM +0200, Michael Walle wrote:
> > Hi,
> >
> > > > I'm still not sure why that compatible is needed. Also I'd need to
> > > > change
> > > > the label which might break user space apps looking for that specific
> > > > name.
> > > >
> > > > Also, our board might have u-boot/spl or u-boot/spl/bl31/bl32, right
> > > > now
> > > > that's something which depends on an u-boot configuration variable,
> > > > which
> > > > then enables or disables binman nodes in the -u-boot.dtsi. So in linux
> > > > we only have that "bootloader" partition, but there might be either
> > > > u-boot+spl or u-boot+spl+bl31+bl32.
> > > >
> > > > Honestly, I'm really not sure this should go into a device tree.
> > >
> > > I think we might be getting a bit ahead of ourselves here. I thought
> > > that the decision was that the label should indicate the contents.
> > > If you have multiple things in a partition then it would become a
> > > 'section' in Binman's terminology. Either the label programmatically
> > > describes what is inside or it doesn't. We can't have it both ways.
> > > What do you suggest?
> >
> > As Rob pointed out earlier, it's just a user-facing string. I'm a bit
> > reluctant to use it programatically.
>
> In general, yes, but the partition stuff has long (and still) uses
> label. As long as the values the tools understand are documented (which
> we don't normally do for label), I don't care so much. That's my
> opinion as long as this is shared with fixed-partitions. If it is not
> and there's little reason to use label, then absolutely, I think
> 'compatible' makes more sense.

OK I will try to drop the sharing with fixed-partitions

>
> > Taking my example again, the string "bootloader" is sufficient for a
> > user. He doesn't care if it's u-boot with spl or u-boot with tfa, or
> > even coreboot. It just says, "in this partition is the bootloader".
> > If you have an "bootloader" image you can flash it there.
>
> These days, there's generally not just 1 bootloader in the boot flow.
> Maybe there's 1 image, maybe not. Being more specific is hardly ever a
> bad thing. Only when the number of specific things becomes multiple 10s
> or 100s of them does it become a problem.
>
>
> > If it has a label "u-boot" and I want to switch to coreboot, will
> > it have to change to "coreboot"? I really don't think this is practical,
> > you are really putting software configuration into the device tree.
>
> On the input side (to binman), yes it is config, but on the output side
> (to the running system) we are saying what's there.
>
>
> > > At present it seems you have the image described in two places - one
> > > is the binman node and the other is the partitions node. I would like
> > > to unify these.
> >
> > And I'm not sure that will work for all the corner cases :/
> >
> > If you keep the binman section seperate from the flash partition
> > definition you don't have any of these problems, although there is
> > some redundancy:
> >  - you only have compatible = "binman", "fixed-partition", no further
> >    compatibles are required
> >  - you don't have any conflicts with the current partition descriptions
> >  - you could even use the labels, because binman is the (only?) user
> >
> > But of course you need to find a place where to put your node.
>
> And remove it. We don't need 2 sources of truth in the DTB.

I would certainly prefer to have one...I think using 'label' for the
existing case and 'compatible' for the new one could be a reasonable
compromise, so I will send v3.

Regards,
Simon

