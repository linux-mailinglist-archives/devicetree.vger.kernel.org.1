Return-Path: <devicetree+bounces-14046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C48017E1D9E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEC841C208C5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD8A168DC;
	Mon,  6 Nov 2023 09:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="0YQQ3bwq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F694443D
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:56:24 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A063EA;
	Mon,  6 Nov 2023 01:56:21 -0800 (PST)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3A67kmQZ000561;
	Mon, 6 Nov 2023 10:55:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=selector1; bh=lQ2D8QtaC58SgES7vO+LB
	NUSlc7jk+aC3YWae4HWtbg=; b=0YQQ3bwq1ckmK891CMXu+wIJpaieWlVZn/Z7k
	NOTqPoNhb3oaX8mdamgmBxFoCZ3hRLRHXwC/xSLunozI0YrjwBluw8tO7nA47Tb8
	xvgboCQa6KQbNcJHtOL7Ue1mrUHBJxAn9urfjATIiqIJHxdRevSAsi8v+oxzGQf5
	Bx8ifQCgX9mfxTDeJBdCRnMmvdG7wzDsYz/RgOoCG/pglkPm12tBuMQfhIJ+CXnA
	qXUwK1uU9bBa8bjSzWMEHjIF8Ja+4HBIAghnBoHqd26bCtox7jb4ONtsXTlryoQB
	RE6v35Pmkqe3y6jyFZVTF8zgjsOkzchTWNttXi4UIyb8jBu6A==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3u5ej0p6qt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 10:55:56 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4995B100059;
	Mon,  6 Nov 2023 10:55:54 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 37B762248C4;
	Mon,  6 Nov 2023 10:55:54 +0100 (CET)
Received: from gnbcxd0016.gnb.st.com (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 6 Nov
 2023 10:55:53 +0100
Date: Mon, 6 Nov 2023 10:55:46 +0100
From: Alain Volmat <alain.volmat@foss.st.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Sakari Ailus
	<sakari.ailus@iki.fi>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Rob Herring
	<robh@kernel.org>, <linux-media@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] media: i2c: gc2145: Galaxy Core GC2145 sensor
 support
Message-ID: <20231106095546.GA3071306@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231011175735.1824782-1-alain.volmat@foss.st.com>
 <20231011175735.1824782-4-alain.volmat@foss.st.com>
 <kwlierdzflnm4ignc3huklbrkxq6wftr2ks3lmdmm3dfk7z654@fvpszg7jywz7>
 <20231030163711.GA2977022@gnbcxd0016.gnb.st.com>
 <ocohxhbo2rrngjy5g6twy4exxqaeuhws2tnjo7uiv7ja24etot@7wgzo3xrnon6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ocohxhbo2rrngjy5g6twy4exxqaeuhws2tnjo7uiv7ja24etot@7wgzo3xrnon6>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.129.178.213]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_08,2023-11-02_03,2023-05-22_02

Hi,

On Tue, Oct 31, 2023 at 09:05:32AM +0100, Jacopo Mondi wrote:
> Hi Alain
> 
> On Mon, Oct 30, 2023 at 05:37:11PM +0100, Alain Volmat wrote:
> > Hi Jacopo,
> >
> > On Mon, Oct 23, 2023 at 10:38:59AM +0200, Jacopo Mondi wrote:
> > > Hi Alain
> > >
> > > On Wed, Oct 11, 2023 at 07:57:30PM +0200, Alain Volmat wrote:
> > > > Addition of support for the Galaxy Core GC2145 XVGA sensor.
> > > > The sensor supports both DVP and CSI-2 interfaces however for
> > > > the time being only CSI-2 is implemented.
> > > >
> > > > Configurations is currently based on initialization scripts
> > > > coming from Galaxy Core and for that purpose only 3 static
> > > > resolutions are supported with static framerates.
> > > >  - 640x480 (30fps)
> > > >  - 1280x720 (30fps)
> > > >  - 1600x1200 (20fps)
> > >
> > > Anything blocking having a writable VBLANK ? This is a YUV sensor but
> > > GC2145_REG_VBLANK seems to be writable. I don't want to push you to
> > > more work that what you actually need, but configurable blankings (and
> > > then frame durations) seems like an important feature ? (and if I
> > > recall right you want to use this sensor with libcamera, which will
> > > require blankings to be controllable (if the sensor supports any RAW
> > > format)
> >
> > No, nothing prevents to write the VBLANK register.  I just did some
> > tests directly via rwmem into a running sensor and vertical blanking can
> > be updated, allowing to tune the framerate.
> >
> > >
> > > I don't see any RAW format being supported in this version. Is this
> > > something you plan to do on top ?
> >
> > Yes, absolutely, it is possible to output RAW formats as well however
> > this version of the driver doesn't support it yet.  The plan is indeed
> > to add it on top of this.
> > Several things to be addressed on top of this serie:
> >   - RAW format
> >   - frame_interval vs H/V blank control.  Is my understanding correct if
> >     I say that if a sensor has RAW format (even if it ALSO has YUV /
> >     RGB) then control is done via H/V blanking controls rather than
> >     frame_interval ?
> 
> I'll reply here to this question that is asked in a few other places.
> 
> I can only point you to the ov5640 driver, which is capable of both
> YUV/RGB and RAW as this sensor is. The ov5640 driver supports both the
> g/s/enum_frame_interval and has writable blankings. I guess it's more
> for historical reasons, as when blankings have been made writable
> users of the frame_interval API would have been displeased if that
> interface went away.
> 
> The resulting implementation is not nice, as changing vblank doesn't
> update the framerate reported through g_frame_interval, and keeping
> the two in sync is not trivial.
> 
> I would suggest to go for writable blankings, and if you already plan
> to remove frame_interval then not add it in first place so there won't
> be displeased users.
> 
> Sakari, Laurent, what's your opinion here ?

Sakari, Laurent, do you have opinion regarding how to control the
framerate on this sensor.  It is a YUV sensor but which might also (not
yet made available in this first serie) support RAW format.
Should I expose the g_frame_interval / s_frame_interval or only blanking
ctrls ?

> 
> 
> >   - parallel interface support
> >
> > >
> > > >
> 
> [snip]
> 
> > > > +/**
> > > > + * struct gc2145_format - GC2145 pixel format description
> > > > + * @code: media bus (MBUS) associated code
> > > > + * @colorspace: V4L2 colospace
> > > > + * @datatype: MIPI CSI2 data type
> > > > + * @output_fmt: GC2145 output format
> > > > + */
> > > > +struct gc2145_format {
> > > > +	unsigned int code;
> > > > +	unsigned int colorspace;
> > > > +	unsigned char datatype;
> > > > +	unsigned char output_fmt;
> > > > +};
> > > > +
> > > > +/* All supported formats */
> > > > +static const struct gc2145_format supported_formats[] = {
> > > > +	{
> > > > +		.code		= MEDIA_BUS_FMT_UYVY8_2X8,
> > >
> > > The driver supports CSI-2, the 1X16 format variants should be used for
> > > serial bus
> >
> > Yes.  Doing this, this actually triggered big questioning since it seems
> > that the sensor, even in CSI, seems to be sending the RGB565 in
> > big-endian format ;-( I have just sent an email to GalaxyCore to clarify
> > this point however, once captured, I need to swap bytes in order to get
> > the right colors ;-( This is the reason why I used the RGB565_2X8_BE in
> > the first place and I believe this is correct for parallel mode, but my
> > understanding of the CSI formats makes me think that the sensor should
> > be sending the data differently.
> > I will wait for GalaxyCore reply before sending the v3.
> >
> 
> Let's wait for GC to get back with more information then, it still
> feels weird that a CSI-2 compliant sensor sends data out in a way
> different from what is described in the spec..

Format fixed in v3, got reply from GC, there were a bit in order to allow
switching the first/second cycle (if referring to parallel way to
transmit).  With that done, MIPI transmitted data are in LE.

Regards,
Alain

