Return-Path: <devicetree+bounces-14178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB7B7E290A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062CF281509
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865DB28E0E;
	Mon,  6 Nov 2023 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Mb+7QgvY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8119B1EB22
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:49:54 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A367A107;
	Mon,  6 Nov 2023 07:49:51 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 67EE4C0007;
	Mon,  6 Nov 2023 15:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699285790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2fzTFRtE8OUbr2+PUc5Jsl8FOsZhgcgp2/rGQyh/LaY=;
	b=Mb+7QgvYWX/CYi2SnZpUmb520oUd+hxz+xJaJ7govP4NaDscocn8T9sLa3PPdowGzGVeE9
	jHw2T41xtF3qCod4eSrM4sJzrq8YgUQpdW8lYtEDb+8DkfQ4O2BMcuDO69Qtos2P1gGAkl
	ImYQ3hsGtS8UgiexOWyg2LX7cwI9oJ28QBPHvi9nFCjY0s8vT3TNpuDEQgUi5cO0EiI5qx
	fks8P+retlmvPU/zNNZaGyfSiHG0+/ZwnRFr3rjOfdB0bJJX1wAlFQ55iLivjyT+8c9UYb
	b0XcMrPuzjGhK32FwDE8RsogzTjUwcznfhXPGLRsltUjPh3cVBC/yup6+vJDuA==
Date: Mon, 6 Nov 2023 16:49:48 +0100
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, laurent.pinchart@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com
Subject: Re: [PATCH v7 3/3] media: i2c: Introduce a driver for the Techwell
 TW9900 decoder
Message-ID: <ZUkLHDH2Budi+zgc@pc-70.home>
References: <cover.1697463708.git.mehdi.djait@bootlin.com>
 <c3cd9002b2db69a6fb155722adc8410cd6e1f9ab.1697463708.git.mehdi.djait@bootlin.com>
 <ZUNz_h1fn9RH9Uc5@aptenodytes>
 <ZUj/FQTyajQJrxoU@pc-70.home>
 <ZUkFXl7vBS36y4Qi@aptenodytes>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZUkFXl7vBS36y4Qi@aptenodytes>
X-GND-Sasl: mehdi.djait@bootlin.com

Hi Paul,

On Mon, Nov 06, 2023 at 04:25:18PM +0100, Paul Kocialkowski wrote:
> > > > +static void tw9900_fill_fmt(const struct tw9900_mode *mode,
> > > > +			    struct v4l2_mbus_framefmt *fmt)
> > > > +{
> > > > +	fmt->code = MEDIA_BUS_FMT_UYVY8_2X8;
> > > > +	fmt->width = mode->width;
> > > > +	fmt->height = mode->height;
> > > > +	fmt->field = V4L2_FIELD_NONE;
> > > > +	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > > +	fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
> > > > +	fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(V4L2_COLORSPACE_SMPTE170M);
> > > > +	fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(V4L2_COLORSPACE_SMPTE170M);
> > > > +}
> > > > +
> > > > +static int tw9900_cfg_fmt(struct v4l2_subdev *sd,
> > > 
> > > You might have to differentiate between set_fmt/get_fmt to return -EBUSY
> > > if streaming is on in set_fmt. However I understand it will just copy the
> > > current mode in both cases, but this might still be required to follow v4l2
> > > semantics (please double-check).
> > > 
> > 
> > This should be done in the driver calling the pad subdev_call set_fmt,
> > right ?
> 
> Well the two things are distinct, even though it's not obvious to think about
> a case where you wouldn't have a video device to grab the frames.
> 
> For instance you can see this being done here:
> https://elixir.bootlin.com/linux/latest/source/drivers/media/i2c/ov5648.c#L2259
> 
> I'm just not sure about what the V4L2 subdev API mandates. It would be useful
> to find some piece of documentation that clarifies the requirement.

Ok, I will split the functions then.

--
Kind Regards
Mehdi Djait

