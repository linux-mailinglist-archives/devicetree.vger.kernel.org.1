Return-Path: <devicetree+bounces-274966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK7AHm7Fs2mEagAAu9opvQ
	(envelope-from <devicetree+bounces-274966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:06:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D827F3C8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72B67323E47D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B444336D9F7;
	Fri, 13 Mar 2026 07:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K/3/v9zY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C568306B37
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388522; cv=pass; b=hMVetic7+Sr5uZ1k+mv78YZZmNB2SUbS6/wG6132ic2G73fRwFGn/iUKyKPiAjuoeOM7Ma/DnkSqPM65ADiBxRf/WZZ0zeVZcln435VUxrLBvSGI89kdoHofWlg8JN4QUzbWRtpd01Q02lBRCiRiS3beETuXZyA1TZEByb2qxpE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388522; c=relaxed/simple;
	bh=4vNwTT/i+vp3MLwt2DbuIY0p6Uxbw/qX2lDJ0JjdjaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bkhLZ8Cj8xcn2wGlloQHSAYQn7gMRUNPPNS4aiL7RDpyusEf1wh/VF9xqvvCf+Mm8j5Ri09/cvLU/l426BTy4nTVbH89L3wwPe1IXCXDKAQTweNcDrSKPPA1D6wpKICQW/r94m7BsxBQU0+s1rpXbXYLNEW7RsN2dxHSKpM6K+M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K/3/v9zY; arc=pass smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-12732165d1eso2477577c88.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773388520; cv=none;
        d=google.com; s=arc-20240605;
        b=cyWqArShcNW7yi2Ok+U/l7858k96hesmmYxOJO484gmQUB+8jDZ4zHSIhQv2lJ7PUO
         bfd26quLy0+gUOnkXO+GjUkmhUMbrU8Rax1srPDXXDScMAitoCWtKfTVt3olSHEFZR9Q
         vf3/2DAGIkZq9ZWWVJy1Q0sYBEaYZBwcTKV3PDshr+7Eg03OuY4ZUeH7aAx1l49Wajjv
         Vk7dG1iL6LRWnHQqLeh9EC4kkOR//hYV43uI6fNEdQBMMmX03gxuIv/eKB+qGan/hl0U
         NTHM7xMZqoknVReExR0yxXsjaMXhK8Q1amFqOEzk1qiwWMUtbBnJ9pbARBn4CKi9ebE4
         32oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PgijjloqpevuZ4ykxolP6Q7mvsG7In7FnSc0zHjI3r0=;
        fh=unXXe5lYnm1SRRQlzr1RFxHVa//Ry/5kH5A5to2xjno=;
        b=OvVubcuamEeSVdtRUEC3ziiJZ4J9WrQIlxJtJihhuYJfQRs8xP0GwHOn2FlbnQo/AX
         qFEt8BmZwdT9V/P/uApL1/C5fsoUdl9QZC0YpqRHaHjPzpJzftj7cAyjAIV72G0CCPkT
         zV6lj4vP2J9U2lPQ/sDpqG8pmCWNr6j237rtPFKv2dbJ6thuzAfsI9yBnGnuYLBJdHA8
         GVUgdZvIHGEfRxNqu8W1wg48T09k+nwo+Kva1jRNo6OX08xwQEj4K4OMbUht458MkVdo
         h/fL113jBxJaWOJ0Ghrb7dCfk+RHPTxZH6G8xvlJrhCo6+Wyxq59HRQDhG3QPRDe9eAc
         7Jnw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773388520; x=1773993320; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PgijjloqpevuZ4ykxolP6Q7mvsG7In7FnSc0zHjI3r0=;
        b=K/3/v9zYjUBEaWkab+aCO9382cSEVt0IwNgFqI5TT5GH0TB7VU095/ukP7B/13h7Cj
         00p0coJJa/X1GNivJWu1/B6raujOKxQCDxG/IAWOac/8C882yNLRZsz9sQdMcURQiU6g
         tD2ro46/1AWpCflNJ96PYdG5YOpI7lQJMb4R+XzKgzSSTFcNu/FNn0XKO4lo6fCDrs/B
         5izv3pX4auaRbwlw5ViNCbezy1Incd1RUC+RfmhvpUKH3bH787IuaOxH4aH3XmMyy2H8
         scMkjOjTNay2VNmouxEN7IvQ0gc/NwpC3RTzTcwbWmiCQY9vdlisd8w0y/H+NloWmsv/
         k1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773388520; x=1773993320;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PgijjloqpevuZ4ykxolP6Q7mvsG7In7FnSc0zHjI3r0=;
        b=LxhBOA04/K/HYl7he3aDq1/c1Uskdf6fPZ7NOcwefFNJWwUw8wALWmGaplUPJ6bOEe
         WY32vstlQIrNWsOakWXyFbCxac4bm9pHugyscX8bD22jvt4D+D8H72l3wRCL0/cKpfA2
         dyT/ksc+03MjpKQO6pwZa7mboRzXSkD4OmAMXFxKjNVLORyV+GUyhxSXlxRxcUot+2Gd
         xL+l5v6upLsQPenfepH5G9ty7fRmLi7OYffI4HkXgdNfZg9PHtsJHre4saE7F3r9ea7K
         +DzzfKEudkt1aRTxNAS3YKEQAhyB7AL9nOYMZXLaoSVbTihivzmYBIdLi4wTWLT8flt+
         4sSw==
X-Forwarded-Encrypted: i=1; AJvYcCXcwR7e5f0WG+WYcObCMgzp3xAaW1+1HPdNxvZLZ2SAUFc8ktsadHgctTt2A4/EAc+0kg7Asudm9+mr@vger.kernel.org
X-Gm-Message-State: AOJu0YzO6enhkIwlsd0tjwNpAMdhb7qZ9tqHr1Ta8GtbAfrWuaGmbZYO
	LXfqN1/NH1twhHulKXzg+jDXuDA4WQgwPtyBfr6BW1uycyBHp5wtnU7oOuSaOASQsk+i5ZXk1yD
	E1TD0eMHzPgJiVbktE9W+NPyCWj84d44=
X-Gm-Gg: ATEYQzyWHBWshF2Yf5Lli3bC9ZWo5GPs6oz9eTxmcBYeO/2PBsmd1dbWOmgIc+RWnAN
	LhYuUF+wxTl4ZD6+lijfYdIDJ8qFslTQ/JgAmiri2WEldM7O3ZzBMiFxWIk3gftbUW6/8GnS/bJ
	lrrgyQRhgrpNLGwmLSV8sBi4wumbEiV1BrDqkEUUYlMGfVAwBIM54YSAXqa0bnyJ6cMtOwxc02h
	A4IHbFNedg4nsPkyw++cC08yEnB5egYDWySsXElWm/lxokvukQvaOeZh73Zhpe+LBKxd9tOvBQO
	TdAhItKz
X-Received: by 2002:a05:7022:422:b0:127:148b:3fcc with SMTP id
 a92af1059eb24-128f3d17c60mr947470c88.8.1773388520009; Fri, 13 Mar 2026
 00:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312150437.1091195-1-eagle.alexander923@gmail.com>
 <20260312150437.1091195-3-eagle.alexander923@gmail.com> <CAPY8ntAf9TjgW-E6WeJuMdsHy8pV8-CvqQJriWEFpgLB-brD5A@mail.gmail.com>
In-Reply-To: <CAPY8ntAf9TjgW-E6WeJuMdsHy8pV8-CvqQJriWEFpgLB-brD5A@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 13 Mar 2026 10:55:08 +0300
X-Gm-Features: AaiRm50DFZVAF7Y4ebuvjXhciEY_atKHdYiC5gfss19Mb3jrOyS14fO7lIanhL0
Message-ID: <CAP1tNvRMoHteLcjjGbEFcp_8JRALC7mQM6efHyTrgvrZFfiByA@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: i2c: Add driver for Sony IMX662 sensor
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Hans Verkuil <hverkuil@kernel.org>, 
	Hans de Goede <hansg@kernel.org>, Tetsuya Nomura <tetsuya.nomura@soho-enterprise.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274966-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D20D827F3C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello, Dave.

> > This patch adds a V4L2 subdevice driver for the Sony IMX662 CMOS image
> > sensor. The sensor has a native resolution of 1936x1100 (effective
> > 1920x1080) and can achieve up to 90 frames per second depending on
> > the configuration. The driver supports:
> > - MIPI CSI-2 with 2 or 4 data lanes.
> > - RAW10 and RAW12 formats (both colour and monochrome).
> > - Controls: exposure, analogue gain, horizontal/vertical blanking,
> >   horizontal/vertical flip, brightness.
> > - A placeholder V4L2_CID_HDR_SENSOR_MODE control for future Clear HDR
> >   support (the actual HDR modes are not yet implemented).
> > - Runtime PM.
> > - Cropping via the selection API.
> > - Multiple link frequencies selectable via device tree.
> >
> > Tested on ARM64 Rockchip RK3568 platform with a 24 MHz external clock
> > and various link frequencies.
>
> Interesting timing as I've been looking at IMX662 too, but on a Raspberry Pi.
> FWIW my driver is at
> https://github.com/6by9/linux/blob/rpi-6.12.y-imx662/drivers/media/i2c/imx662.c
>
> Comments are based on brief testing and reading of the code. This is
> not a full review.
>
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
...
> > diff --git a/drivers/media/i2c/imx662.c b/drivers/media/i2c/imx662.c
> > new file mode 100644
> > index 000000000000..d7be17b5a47d
> > --- /dev/null
> > +++ b/drivers/media/i2c/imx662.c
...
> > +static int imx662_set_gain(struct imx662 *imx662, u32 value)
> > +{
> > +       int ret = 0;
> > +
> > +       if (imx662->hdr == IMX662_HDR_OFF) {
> > +               bool useHGC = value >= IMX662_ANA_GAIN_HCG_MIN;
> > +
> > +               cci_write(imx662->regmap, IMX662_REGHOLD, 1, &ret);
> > +               cci_write(imx662->regmap, IMX662_GAIN, value, &ret);
> > +               cci_write(imx662->regmap, IMX662_FDG_SEL0,
> > +                         useHGC ? IMX662_FDG_SEL0_HCG : IMX662_FDG_SEL0_LCG,
> > +                         &ret);
>
> IIRC HCG adds in another 12dB or something of gain. Automatically
> enabling it above a value of 0x22 means that the gain response isn't
> consistent with a band of gains that can't be achieved.
> Running libcamera with this driver I get significant oscillation as
> HCG gets turned on and off. Fix useHGC = 0 and the exposure and gain
> control is stable.
> AIUI Use of HCG should be a separate control if it is to be used.

Thanks for the feedback.

I haven't found any mention of a 12 dB value or any other specific gain value
when enabling LCG/HCG in the datasheet or application notes. I agree it would
be more correct to use a separate user control here, as is done in the
driver that
Tetsuya Nomura referred to in his email. (It's strange that his email
didn't make it
to the mailing list.)

...
> > +static void imx662_set_link_limits(struct imx662 *imx662)
> > +{
> > +       u64 pixel_rate;
> > +
> > +       pixel_rate = imx662_link_freqs[imx662->link_freq_index] * 2;
> > +       pixel_rate *= imx662->num_data_lanes;
> > +       do_div(pixel_rate, imx662->format->bpp);
> > +
> > +       __v4l2_ctrl_s_ctrl_int64(imx662->pixel_rate, pixel_rate);
>
> Are you sure on this? All my testing had pixel rate being independent
> of bit depth and number of lanes.
> Trying your driver with 360Hz link freq / 720Mbit/s data rate on 2
> lanes. All the computations end up with a max frame rate of 60fps in
> 10bit mode and 50fps in 12bit, when I'm expecting a max of 30fps from
> the datasheet.
> Asking for 1920x1080 12bit @ 30fps via libcamera results in hblank of
> 0 and vblank of 1003 with a pixel rate of 120000000. The actual
> framerate achieved is 27.85fps.
>
> I'd found working from a pixel rate of 222750000 (INCK of 74.250*3),
> and writing HMAX with the "normal" line length value of width+hblank
> but divided by 3, all the numbers for line time and frame rate control
> fall out.
> IMX415 was similar, but some input clocks multiplied up to 72MHz
> instead of 74.25MHz and produced a set of different link frequencies,
> so complicated matters.

I'm not entirely sure I understand the suggestion.
Of course, having some fixed value would greatly simplify the driver,
but it's still unclear to me where these calculations come from, and where
does the divisor of 3 come from?
Nevertheless, looking at the mode table, it becomes clear that the resulting
frame rate does not depend on the CSI-2 format (10 or 12 bits),
so apparently something needs to be changed...

> > +       case V4L2_CID_BRIGHTNESS:
> > +               cci_write(imx662->regmap, IMX662_BLKLEVEL, ctrl->val, &ret);
>
> Setting the black level based on the brightness control isn't one I've
> seen done on any other image sensor. It has similarities, but feels
> very wrong.

As far as I understand, V4L2_CID_BRIGHTNESS is exactly the control
that sets an offset added to the signal. This matches the intended use for
black level adjustment. According to the V4L2 specification,
V4L2_CID_BLACK_LEVEL is deprecated because its functionality is covered
by V4L2_CID_BRIGHTNESS (offset) and gain controls.
So I believe this is the correct mapping. Am I wrong?

> > +static int imx662_enum_mbus_code(struct v4l2_subdev *sd,
> > +                                struct v4l2_subdev_state *sd_state,
> > +                                struct v4l2_subdev_mbus_code_enum *code)
> > +{
> > +       struct imx662 *imx662 = to_imx662(sd);
> > +       const struct imx662_format *fmt;
> > +       u16 hmax_min;
> > +
> > +       if (code->index >= ARRAY_SIZE(imx662_formats))
> > +               return -EINVAL;
> > +
> > +       fmt = &imx662_formats[code->index];
> > +       if (imx662->num_data_lanes == 2)
> > +               hmax_min = fmt->hmax_lane2[imx662->link_freq_index];
> > +       else
> > +               hmax_min = fmt->hmax_lane4[imx662->link_freq_index];
> > +       if (!hmax_min)
> > +               return -EINVAL;
>
> This doesn't work.
> I happened to test with a link frequency of 1188 first on 2 lanes.
> That is valid for 12bit but not 10bit.
> v4l2-ctl --list-subdev-mbus-codes will start at index 0 which fails,
> and therefore it never tries index 1 which would work.
> The supported formats need to be contiguous starting at index 0.

Nice catch! You're absolutely right.

...
> > +{
> > +       struct imx662 *imx662 = to_imx662(sd);
> > +
> > +       config->type = V4L2_MBUS_CSI2_DPHY;
> > +       config->bus.mipi_csi2.flags = V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK;
>
> Is it dropping to LP whilst streaming? I can't find any reference to
> the clock lane behaviour in the datasheet, but I also haven't found an
> oscilloscope to check for myself.

I think you're right.
I already mentioned in another thread that I'm using a non-standard ISP driver,
so the get_mbus_config() call is necessary for me. Perhaps after switching to
the mainline driver (which is already in the kernel) this will be removed.

...
> > +       imx662->reset = devm_gpiod_get_optional(imx662->dev, "reset",
> > +                                               GPIOD_OUT_LOW);
>
> This is inverted. If the line is reset, then you would set it with
> GPIOD_OUT_HIGH to keep the sensor in reset initially.
> https://github.com/torvalds/linux/commit/9d108d226224b91ad11e7cfcf846c2a1721b466d

Thanks, fixed!
...
> > +       usleep_range(1, 2);
> > +       gpiod_set_value_cansleep(imx662->reset, 1);
> > +       usleep_range(30000, 31000);
>
> Timings and delays here don't appear to follow the datasheet power on sequence.
> - Power rails on
> - Tlow of 500ns
> - XCLR high
> - T3 of 1us
> - Enable INCK
> - T4 of 20us before I2C comms starts.
> You've enabled the clock before asserting reset.

Fixed.

...
> > +       imx662->sd.internal_ops = &imx662_internal_ops;
> > +       imx662->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
> > +                           V4L2_SUBDEV_FL_HAS_EVENTS;
>
> If you've only added this for reporting control changes, then the
> framework does that automatically these days.
> Likewise the subscribe_event and unsubscribe_event hooks can go.

Fixed.

...
> > +static const struct of_device_id imx662_of_match[] __maybe_unused = {
> > +       {
> > +               .compatible = "sony,imx662",
>
> If you follow the pattern from imx296 where there are mono and colour
> variants, it takes the full sensor part number.
> The colour sensor is imx662aaqr.
> The mono sensor is imx662aamr.

Fixed.

