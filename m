Return-Path: <devicetree+bounces-11756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B077D689E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:33:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C7C5B210D5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF62D208C3;
	Wed, 25 Oct 2023 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="XBqQ0grr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D77826E09
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:33:50 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79712128;
	Wed, 25 Oct 2023 03:33:46 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 32D1FE0005;
	Wed, 25 Oct 2023 10:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698230025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HVHJ26usSDJ1RI4KvMEc2gmIMKMl++Lw968y4l7GNow=;
	b=XBqQ0grrMSCEPJRxjdoIWMwJbKyi5yyFoX0mT1x1f1VVEvpXtQGKkNrCW5eSRRdoNn7iDD
	fAEaLWGrgXCf79W9DWv1ow8bKiwH7ySguOzgfZiUjHglJ6avdbCyHEg4DMnN3HZkxqnwBe
	ilUllW0KqxlyfWpwRbxryAMGqg3DFgzvLznsPk1sWWaau1OWB8MrAAxww8Bsrotx3NmQsy
	3vKv+5PILprQbXhs8AY4NILZDX6A14IWHEOdHA1TSCTEoASVSb1ECr90kVeDYx3YY1rkSN
	QPOuRVt98FOig536zSZBAhCfBnG5lQgI8+MS0nifTXIoX026hiP5BpJPGOxnkQ==
Date: Wed, 25 Oct 2023 12:33:42 +0200
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, mchehab@kernel.org,
	heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, ezequiel@vanguardiasur.com.ar,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com
Subject: Re: [PATCH v8 0/3] media: rockchip: Add a driver for Rockchip's
 camera interface
Message-ID: <ZTjvBgxtMh1YZbYm@pc-70.home>
References: <cover.1697446303.git.mehdi.djait@bootlin.com>
 <ZTFMR7PlcQXpeoQO@aptenodytes>
 <11cccad3-e665-41dc-89c2-5ddc22b1e2fe@wolfvision.net>
 <ZTjVOAPnXEj9LgOE@aptenodytes>
 <5438a194-7349-4a20-84d0-efe88b7ab396@wolfvision.net>
 <ZTjl0xJMTqZfO2Xf@aptenodytes>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZTjl0xJMTqZfO2Xf@aptenodytes>
X-GND-Sasl: mehdi.djait@bootlin.com

Hi Paul, Hi Michael

On Wed, Oct 25, 2023 at 11:54:27AM +0200, Paul Kocialkowski wrote:
> Michael,
> 
> On Wed 25 Oct 23, 11:17, Michael Riesch wrote:
> > Hi Paul,
> > 
> > On 10/25/23 10:43, Paul Kocialkowski wrote:
> > > [...]
> > >>> Here is the detail of my research on the concerned chips. The + at the beginning
> > >>> of the line indicate support in Rockchip's 4.4 tree:
> > >>>
> > >>> - RK3566/RK3568 (2020): CIF pins + VICAP terminology
> > >>> + RK1808 (2019): CIF pins + VIP registers + VIP_MIPI registers
> > >>> + PX30 (2017): VIP pins + VIP registers
> > >>> + RK3328 (2017): CIF pins + VIP terminology
> > >>> - RK3326 (2017): CIF pins + VIP terminology
> > >>> - RK3399 (2016): CIF pins
> > >>> - RK3368 (2015): CIF pins
> > >>> - PX2 (2014-11): CIF pins + CIF registers
> > >>> + RK3126/RK3128 (2014-10): CIF pins + registers
> > >>> + RK3288 (2014-05): CIF pins + VIP terminology
> > >>> - RK3026 (2013): CIF pins + CIF registers
> > >>> - RK3168/RK3188/PX3 (2012): CIF pins + CIF registers
> > >>> - RK3066 (2012): CIF pins + CIF registers
> > >>>
> > >>> Note that there are a few variations over time (added/removed registers), but
> > >>> the offsets of crucial registers are always the same, so we can safely
> > >>> assume this is the same unit in different generations.
> > >>>
> > >>> Since the RK3066 is the first model starting the RK30 lineup I think we can
> > >>> safely use that for the "base" compatible to be used for e.g. the bindings
> > >>> document, instead of px30 which is just one of the many SoCs that use this unit.
> > >>
> > >> Once the name of the driver is defined and adjusted in v9, I can try to
> > >> give the series a shot on my RK3568 board. First attempts to do so

This sounds good!

> > >> basing on Maxime's v5 showed that with a few modifications the DVP
> > >> feature works fine. In a subsequent step, we could discuss the inclusion
> > >> of the MIPI CSI-2 things in order to keep the driver sufficiently general.
> > > 
> > > Nice! I guess there will be a need to introduce a variant structure associated
> > > to each compatible to express the differences betweens these different
> > > generations.
> > 
> > Indeed. If Mehdi and you suggest something, I'd be happy to review.
> 
> Well the be honest the scope of work on our side is really centered on PX30
> and merging this first version.
> 
> > Otherwise, I'll try to come up with something reasonable. IMHO it would
> > make sense (as a first step) to have the clocks and the resets in this
> > structure, as well as a sub-structure that describes the DVP. The latter
> > consists of registers mainly, but maybe supported input/output formats
> > and other things should go in there as well. Also, downstream code has a
> > significant number of
> >     if (some condition including chip_id) A; else B;
> > things that we should probably get rid of with this variant structure.
> 
> Indeed I think we want to try avoid that. Another common option is to define
> capability flags to represent differences between generations in a more
> practical and clean way than explicitly checking chip ids or so.
> 
> > As next step, a sub-structure for MIPI CSI-2 could be defined. RK356X
> > will have one of those, RK3588 will feature even six of them. So we
> > should add a const array to the variant structure.
> > 
> > > Note that we will also probably need to convert the driver over to a MC-centric
> > > approach, but this is of course outside of the scope of this series.
> > 
> > That would absolutely make sense. What is missing, though? (I was
> > wondering that the driver calls media_device_(un)register but no
> > /dev/mediaX device pops up.)
> 
> Switching from video node-centric to MC-centric is more of a semantic change.
> In the first case we expect that subdevs are configured by the video device
> driver and userspace is not expected to change anything in the media topology
> or to configure media entities explicitly.
> 
> In the latter case it's the opposite : the driver should never try to push
> configuration to a subdev and should instead validate that the current
> configuration makes sense.
> 
> Still, I believe should be a media device registered and visible to userspace.
> Mehdi could you take a look at this? Do you see a media device in `media-ctl -p`
> and /dev/mediaX?

Yes I do have a media device

media-ctl -p
Media device information
------------------------
driver          rockchip-cif
model           rk_cif
serial          
bus info        platform:ff490000.video-capture
hw revision     0x0
driver version  6.6.0

Device topology
- entity 1: rockchip_cif (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video0
        pad0: Sink
                <- "tw9900 2-0044":0 [ENABLED]

- entity 5: tw9900 2-0044 (1 pad, 1 link)
            type V4L2 subdev subtype Unknown flags 0
            device node name /dev/v4l-subdev0
        pad0: Source
                [fmt:UYVY8_2X8/720x480 field:none colorspace:smpte170m xfer:709 ycbcr:601]
                -> "rockchip_cif":0 [ENABLED]

> 
> Cheers,
> 
> Paul
> 
> > Best regards,
> > Michael
> > 
> > > 
> > > Cheers,
> > > 
> > > Paul
> > > 
> > >> @Mehdi: If you could Cc: me when you send out v9 it'd be much appreciated.

Of course I will :)

--
Kind Regards
Mehdi Djait

