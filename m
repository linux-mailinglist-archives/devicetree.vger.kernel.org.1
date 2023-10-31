Return-Path: <devicetree+bounces-13081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0998F7DC7DB
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B725E28116F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E511810A37;
	Tue, 31 Oct 2023 08:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="aevNCxM0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE69810FD
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:05:39 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39798A6;
	Tue, 31 Oct 2023 01:05:38 -0700 (PDT)
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1856F2E4;
	Tue, 31 Oct 2023 09:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698739520;
	bh=w9vKW6awM7gVSCcjD3dKnmahO/AjB/yzej+5UwO8HGs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=aevNCxM0rTsyTLIVWnL3+UnDjot4cIif68kJ15nNKoKj1IAc5GPHT9S8JT1NsKseN
	 tmf1SfR1JA4sGc28wsCfY/lEvLCJUQVOkj6k1iztqr5JiTzDeTQTSTLt56s5ss41Su
	 2U240XFsgkb7oqQenTZUS92+H5ps/y+N90P7prRk=
Date: Tue, 31 Oct 2023 09:05:32 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] media: i2c: gc2145: Galaxy Core GC2145 sensor
 support
Message-ID: <ocohxhbo2rrngjy5g6twy4exxqaeuhws2tnjo7uiv7ja24etot@7wgzo3xrnon6>
References: <20231011175735.1824782-1-alain.volmat@foss.st.com>
 <20231011175735.1824782-4-alain.volmat@foss.st.com>
 <kwlierdzflnm4ignc3huklbrkxq6wftr2ks3lmdmm3dfk7z654@fvpszg7jywz7>
 <20231030163711.GA2977022@gnbcxd0016.gnb.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231030163711.GA2977022@gnbcxd0016.gnb.st.com>

Hi Alain

On Mon, Oct 30, 2023 at 05:37:11PM +0100, Alain Volmat wrote:
> Hi Jacopo,
>
> On Mon, Oct 23, 2023 at 10:38:59AM +0200, Jacopo Mondi wrote:
> > Hi Alain
> >
> > On Wed, Oct 11, 2023 at 07:57:30PM +0200, Alain Volmat wrote:
> > > Addition of support for the Galaxy Core GC2145 XVGA sensor.
> > > The sensor supports both DVP and CSI-2 interfaces however for
> > > the time being only CSI-2 is implemented.
> > >
> > > Configurations is currently based on initialization scripts
> > > coming from Galaxy Core and for that purpose only 3 static
> > > resolutions are supported with static framerates.
> > >  - 640x480 (30fps)
> > >  - 1280x720 (30fps)
> > >  - 1600x1200 (20fps)
> >
> > Anything blocking having a writable VBLANK ? This is a YUV sensor but
> > GC2145_REG_VBLANK seems to be writable. I don't want to push you to
> > more work that what you actually need, but configurable blankings (and
> > then frame durations) seems like an important feature ? (and if I
> > recall right you want to use this sensor with libcamera, which will
> > require blankings to be controllable (if the sensor supports any RAW
> > format)
>
> No, nothing prevents to write the VBLANK register.  I just did some
> tests directly via rwmem into a running sensor and vertical blanking can
> be updated, allowing to tune the framerate.
>
> >
> > I don't see any RAW format being supported in this version. Is this
> > something you plan to do on top ?
>
> Yes, absolutely, it is possible to output RAW formats as well however
> this version of the driver doesn't support it yet.  The plan is indeed
> to add it on top of this.
> Several things to be addressed on top of this serie:
>   - RAW format
>   - frame_interval vs H/V blank control.  Is my understanding correct if
>     I say that if a sensor has RAW format (even if it ALSO has YUV /
>     RGB) then control is done via H/V blanking controls rather than
>     frame_interval ?

I'll reply here to this question that is asked in a few other places.

I can only point you to the ov5640 driver, which is capable of both
YUV/RGB and RAW as this sensor is. The ov5640 driver supports both the
g/s/enum_frame_interval and has writable blankings. I guess it's more
for historical reasons, as when blankings have been made writable
users of the frame_interval API would have been displeased if that
interface went away.

The resulting implementation is not nice, as changing vblank doesn't
update the framerate reported through g_frame_interval, and keeping
the two in sync is not trivial.

I would suggest to go for writable blankings, and if you already plan
to remove frame_interval then not add it in first place so there won't
be displeased users.

Sakari, Laurent, what's your opinion here ?


>   - parallel interface support
>
> >
> > >

[snip]

> > > +/**
> > > + * struct gc2145_format - GC2145 pixel format description
> > > + * @code: media bus (MBUS) associated code
> > > + * @colorspace: V4L2 colospace
> > > + * @datatype: MIPI CSI2 data type
> > > + * @output_fmt: GC2145 output format
> > > + */
> > > +struct gc2145_format {
> > > +	unsigned int code;
> > > +	unsigned int colorspace;
> > > +	unsigned char datatype;
> > > +	unsigned char output_fmt;
> > > +};
> > > +
> > > +/* All supported formats */
> > > +static const struct gc2145_format supported_formats[] = {
> > > +	{
> > > +		.code		= MEDIA_BUS_FMT_UYVY8_2X8,
> >
> > The driver supports CSI-2, the 1X16 format variants should be used for
> > serial bus
>
> Yes.  Doing this, this actually triggered big questioning since it seems
> that the sensor, even in CSI, seems to be sending the RGB565 in
> big-endian format ;-( I have just sent an email to GalaxyCore to clarify
> this point however, once captured, I need to swap bytes in order to get
> the right colors ;-( This is the reason why I used the RGB565_2X8_BE in
> the first place and I believe this is correct for parallel mode, but my
> understanding of the CSI formats makes me think that the sensor should
> be sending the data differently.
> I will wait for GalaxyCore reply before sending the v3.
>

Let's wait for GC to get back with more information then, it still
feels weird that a CSI-2 compliant sensor sends data out in a way
different from what is described in the spec..

> >
> > > +		.colorspace	= V4L2_COLORSPACE_SRGB,
> >
> >

[snip]

> > > +
> > > +	if (i >= ARRAY_SIZE(supported_modes))
> > > +		return -EINVAL;
> > > +
> > > +	fie->interval.numerator = supported_modes[i].frame_interval.numerator;
> > > +	fie->interval.denominator =
> > > +		supported_modes[i].frame_interval.denominator;
> > > +
> >
> > As soon as VBLANK is added and made writable, this will break
>
> Yes, is this correct to remove frame_interval ops once VBLANK/HBLANK is
> added (in a further patchset) ?
>

See the above question

Thanks
  j

