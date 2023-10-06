Return-Path: <devicetree+bounces-6477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCDF7BB7DB
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8DE62820C0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625841CF9A;
	Fri,  6 Oct 2023 12:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gJQofOvW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39C91C692
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:39:38 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E954C6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:39:36 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9b95622c620so390511966b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696595975; x=1697200775; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zSVbwuMngsJ15cLY6pR9vh3z/k0osdSclV2xxkOB8v0=;
        b=gJQofOvWKSI91TgYvaCG3Iw9Li6ENlejfD2PB5BVL31oJpbfNrpIfY8DSMu78Z0KWv
         t9jPtxhNIvRnNViPROZE7ekLYA7oEFYc6TFi+MGxibTiyctAGHAecyOMJfc/OACO5WHL
         hyqC9V27dU6aALCpyNhQ6600oSqsOfndJ7rBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696595975; x=1697200775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zSVbwuMngsJ15cLY6pR9vh3z/k0osdSclV2xxkOB8v0=;
        b=gDEac77hxHXpPITZVsc7N80NClsrPAL3G3LbNtTLngOg3TpyWutp7jbEGPbpR9HkWr
         pBLDu0t6ZB8PU3PvJroKWUCR8B/4LkUVlVibbZxSxyijon4WyaDkMZHx8av09U7J5v8e
         quGH0nrXyfIanf9DRoSw2oZC12gRhlocRaBI04QUZL8HDhecIBI2a+8/4xG/BoAdXKVb
         76kRTjxJ90oU7sU36fB4voNByQdnQmwb3PpDdkoiKvEkLvLsTYHQi3PvKWE/nVym2Ltz
         o8p7N5+3f4jqwTlQuD1TrmA782gzUYcR6MmWDkTQK2cwivOrVF6HIbdZQrm0RRg9oezv
         ACCQ==
X-Gm-Message-State: AOJu0Yx4sIlqyaGkXcKNQ2F5CdZDluwp64NBJKiPP1WAZreT7kVzTnbK
	JdCD5zEUYfgnyQTZ+sdEtMGNfbEfRaV31rBonY1QDtTJw7Ytk7EleAeN8A==
X-Google-Smtp-Source: AGHT+IHF9InDrK2DzmRcPJNljvQBGZsJ+Z8ieD2aVFJnvMVrHvX/38WK/Aqqz8/EkfszHWgRPCHmcw5S2YTuy902ocY=
X-Received: by 2002:a17:906:5342:b0:9ad:ef08:1f32 with SMTP id
 j2-20020a170906534200b009adef081f32mr7684677ejo.37.1696595974780; Fri, 06 Oct
 2023 05:39:34 -0700 (PDT)
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
 <27d37d4c7cf353d99737a1e7a450f9f7@kernel.org>
In-Reply-To: <27d37d4c7cf353d99737a1e7a450f9f7@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 6 Oct 2023 06:39:16 -0600
Message-ID: <CAPnjgZ0OZubVaj1RR6rWrJu2MWD=4PEPOD39zhaHgm6OzsyQnw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: fixed-partitions: Add binman compatible
To: Michael Walle <mwalle@kernel.org>
Cc: miquel.raynal@bootlin.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-mtd@lists.infradead.org, ptyadav@amazon.de, rafal@milecki.pl, 
	richard@nod.at, robh+dt@kernel.org, robh@kernel.org, trini@konsulko.com, 
	u-boot@lists.denx.de, vigneshr@ti.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Michael,

On Fri, 6 Oct 2023 at 02:37, Michael Walle <mwalle@kernel.org> wrote:
>
> Hi,
>
> >> I'm still not sure why that compatible is needed. Also I'd need to
> >> change
> >> the label which might break user space apps looking for that specific
> >> name.
> >>
> >> Also, our board might have u-boot/spl or u-boot/spl/bl31/bl32, right
> >> now
> >> that's something which depends on an u-boot configuration variable,
> >> which
> >> then enables or disables binman nodes in the -u-boot.dtsi. So in linux
> >> we only have that "bootloader" partition, but there might be either
> >> u-boot+spl or u-boot+spl+bl31+bl32.
> >>
> >> Honestly, I'm really not sure this should go into a device tree.
> >
> > I think we might be getting a bit ahead of ourselves here. I thought
> > that the decision was that the label should indicate the contents.
> > If you have multiple things in a partition then it would become a
> > 'section' in Binman's terminology. Either the label programmatically
> > describes what is inside or it doesn't. We can't have it both ways.
> > What do you suggest?
>
> As Rob pointed out earlier, it's just a user-facing string. I'm a bit
> reluctant to use it programatically.
> Taking my example again, the string "bootloader" is sufficient for a
> user. He doesn't care if it's u-boot with spl or u-boot with tfa, or
> even coreboot. It just says, "in this partition is the bootloader".
> If you have an "bootloader" image you can flash it there.
>
> If it has a label "u-boot" and I want to switch to coreboot, will
> it have to change to "coreboot"? I really don't think this is practical,
> you are really putting software configuration into the device tree.

I thought Rob changed his mind on that?

I agree that compatible would make things easier. We could then
continue to use 'label' for whatever it currently has.

Note that some kernel drivers or user space will want to look at what
is there, e.g. to provide a way to extract, check or update a
particular part of the firmware.

>
> > At present it seems you have the image described in two places - one
> > is the binman node and the other is the partitions node. I would like
> > to unify these.
>
> And I'm not sure that will work for all the corner cases :/
>
> If you keep the binman section seperate from the flash partition
> definition you don't have any of these problems, although there is
> some redundancy:
>   - you only have compatible = "binman", "fixed-partition", no further
>     compatibles are required
>   - you don't have any conflicts with the current partition descriptions
>   - you could even use the labels, because binman is the (only?) user
>
> But of course you need to find a place where to put your node.

Sure, but I was pointed to partitions as the place where this should live.

>
> > What does user space do with the partition labels?
>
> I'm not sure. Also I'm not sure if it really matters, I just wanted to
> point out, that you'll force users to change it.

OK I'll send a version that uses compatible strings and see if that
makes any progress.

Regards,
Simon

>
> -michael
>
> >> >> What if a board uses eMMC to store the firmware binaries? Will that
> >> >> then
> >> >> be a subnode to the eMMC device?
> >> >
> >> > I thought there was a way to link the partition nodes and the device
> >> > using a property, without having the partition info as a subnode of
> >> > the device. But I may have imagined it as I cannot find it now. So
> >> > yes, it will be a subnode of the eMMC device.
> >>
> >> Not sure if that will fly.
> >
> > I can't find it anyway. There is somelike like that in
> > simple-framebuffer with the 'display' property.
> >
> > Regards,
> > SImon

