Return-Path: <devicetree+bounces-276756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKHDKud4uWnQGQIAu9opvQ
	(envelope-from <devicetree+bounces-276756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:53:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 278862AD565
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D1A030C6314
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1782BEC52;
	Tue, 17 Mar 2026 15:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="ccvSKwg4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C52D5A01
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762749; cv=pass; b=Ytw1bSvAe6SWHfSdqCGzAbrMePV9OvfWt3SHIvzEOrdgrySORsKZIapYfK2F/Bf67rn4BXqybuziUUbKNJjLGsFA/FLRsm/jdJwEYWtn1R37Nk2PPRVo9z2LmJ3Bz6mIHGSgX/1lLPW9Npj+U+7BB6I1aMPNkYKFrHrRSzhLUlo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762749; c=relaxed/simple;
	bh=6OxqeyKBaIICqgKj1cmgQHPL50VHasHMsjVgG+cyUoA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IqHJLwHKS1XI5R4zq7pKRiMkSL13eKAMOumTRRc1YPHFZGFbSfeQddfM7518pGK77SjgE4n7UZHoNVMlrCKJVwglQLr9cYcPgoMi5PtOSicgI3KMr85kcYMbXscf5tsjdfsflZXTc4HNR63trSV30khOA12llVjey0qMsMUCP/U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=ccvSKwg4; arc=pass smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso6671826d50.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773762746; cv=none;
        d=google.com; s=arc-20240605;
        b=N+xhrOVrl5nJcL94jfvCqvd0vtfAdNAVIPiQxc09aWeR27Vgkqt/Lj4TeAQIVv5oyI
         l21aaZ2Q9Sjp1A6vNS4hdLgFg+BzsGIhWjoRdCR2VJNELu13Pjk2T1Wu+uKUjPW2flX2
         N8V/dHaomPrb7yRjqc7YkR57QbXlbL7dKpghnWHAmr5XTuBrGWrUxpAlWpUi6h2Ra/GM
         sgT5C141BPKjnAN9pNDKdDmzoRGzX36c2FPdYNGs1YeFn/qvs5q9sYIK2bAhDW0Anv20
         1kfz9YMRO4FST/KsY3ORti52PCXM3eA9irSbP166BsU4FfXYg27AAZ/ysa/vGDt1payz
         KnXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xWOba+wwzwLOr6/8lB5VON9f6bR8lPOgvlBWpxZ52Z0=;
        fh=M+2NBT+AfD5yNvchxqQUIeORCnSTpAGjPgKLTFx6XBY=;
        b=E+PCOYV8JmV2lAJdlTNno9Ua/1gug6F/2jy6lqyHYnzehnd5kAlx50kd4b2ZZjqLAz
         aky5Q21de7GDHXWLQaZfcS2V0NkaGtdXK1Mjz3GFcboZwYlGhutqPlgbNi6hhRqBn0xR
         rn2aOEcHLnaSOF8Rp20gJ18LRJOUYgHvK2QyObCZxvdQ9tFcNvWkDlIjy9islDzE01Sa
         jpmunOBeuM65cMlGzJ6L42gdngPlI9fp5tFp/9/pIABceci4LzwrDiP+25wwbZedDv0V
         rZJlRlTR79IzXv+e5WBy2G0dxmkYgxVt9CHwptSQVHWVGqXR8H1WKnZCq/12d3G+4Ize
         Lz0w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1773762746; x=1774367546; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xWOba+wwzwLOr6/8lB5VON9f6bR8lPOgvlBWpxZ52Z0=;
        b=ccvSKwg4HzVlit44/twQQ80HlWw87czok3ovPF1ndW+0iitJMmF3gAZwawcbgimT/o
         n4VEpY6ChoJbixdaNTemgOp2bA1292RBSyTFMDoYfU2LrdaiBJgQTx5xMwGbYWqK6OnY
         72Iz2t8G1jpS+OiF9H71LPg19ihF2aZclChOKm7gDyZG+KkwvxMGIlybfcqlf+nH9CwK
         u92pUl248oF5WnJAZLvnwIL+J7UVWTYPe0Swnp1ZQRAPY7JQdFriNuBV6Evbaym6mBgC
         9c0P2mtJLIXWEmY9ytYZODThLZwYXbpHp5p8wJJewvsy+XP1Ckd7Fl0bieYL1n67ZqKW
         jBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773762746; x=1774367546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWOba+wwzwLOr6/8lB5VON9f6bR8lPOgvlBWpxZ52Z0=;
        b=NLo3UjrTl1dohRnqrr9ISntQ1FMesU7bYt8cweejbjrn+xRjVE0NiHps5UpXQvMAfL
         Zc0JRJUmBNydlzq+pGuw/y0eky/vZC4nCSbqt/8hXCuxX8ZkerTvVL14mcoxeTEFXmej
         c70qmNNQ4EJhsJB5qC3Eox3xL7AcdRMGvFOvqh2u+BfdQlz767EW6MjLqw7qcKlT1lBn
         T6hWx08+OYYNemYiGiHM9w+4NPe0E7fON/m3BTGZB7cKWH21lmTwX+XUPp3qaOobOuhu
         s0Z/ya473i0y8SmxZIPnWFOTyEuH+EG9pmeNandcAd6wbaPZ/1pmcctLawIF7EDgqCKz
         uyFw==
X-Forwarded-Encrypted: i=1; AJvYcCU5Dq8O0bFaHPgFsWDZ2YvQv3iAe6vjw/UgffZLLcEno2apf4QXQP5ifL+ogirvIW4BNbdaTbY+8mjS@vger.kernel.org
X-Gm-Message-State: AOJu0YxacxX4sLYpL4cduY8T/iZatz3xMUQMr4Hrg8ALwdV2aPkHh8Jc
	QPXijwZktbyASUEZhqbxx3XAP4ppUe+W9cq5i9w6idUx7NLeVHiLL3KDA5VtC046fLyLnXVNJ/r
	h3bmgRqkaLbz9p+y/7z0kSAGIQB+LfSZjQcvsTk0KiA==
X-Gm-Gg: ATEYQzyweU2uhPKpld5fFwjhw5pYr9GuKGnfZ0MR9ODB/N7Iit0lzVMcO2dlfELK9dd
	cmZNZ+dElSpLDuqC+zmDA1jE0G/HmbVwrkurUhC3m0Ez8mqidKvPC05jhTC7iLc+gzM/kXTZ3zR
	uBgts4ClXP4LkEvJafpQcr7uG+4Op+APbIpMOWHeLCKiE6r4jI3SZxUD/AFNxu0MzNXGMdeJk/d
	QrdFCkDsIIMW3cs5ImreDCNMrTB2iE4fBaPOUXgaq9TYHtp+ZgBNgvFuVtaLizCoXpLF6xXkQ52
	t2+DDGU070iuIuxBoIy6or1vGt+6DdG4rSXNwyE=
X-Received: by 2002:a05:690e:144c:b0:64c:4f97:e8b0 with SMTP id
 956f58d0204a3-64e915dc474mr145258d50.61.1773762745884; Tue, 17 Mar 2026
 08:52:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312150437.1091195-1-eagle.alexander923@gmail.com>
 <20260312150437.1091195-3-eagle.alexander923@gmail.com> <CAPY8ntAf9TjgW-E6WeJuMdsHy8pV8-CvqQJriWEFpgLB-brD5A@mail.gmail.com>
 <CAP1tNvRMoHteLcjjGbEFcp_8JRALC7mQM6efHyTrgvrZFfiByA@mail.gmail.com>
In-Reply-To: <CAP1tNvRMoHteLcjjGbEFcp_8JRALC7mQM6efHyTrgvrZFfiByA@mail.gmail.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 17 Mar 2026 15:52:09 +0000
X-Gm-Features: AaiRm50L_KLDOLoSffajcnLGX2yYxGpeTEO1YhHeOHbjBcaYCHEyII6i_Ilt_rM
Message-ID: <CAPY8ntAcKW70adZuGK5LdWn3pmzM0TXRyMvuCzioYUe9usG8iQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: i2c: Add driver for Sony IMX662 sensor
To: Alexander Shiyan <eagle.alexander923@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:dkim,raspberrypi.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 278862AD565
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alexander

On Fri, 13 Mar 2026 at 07:55, Alexander Shiyan
<eagle.alexander923@gmail.com> wrote:
>
> Hello, Dave.
>
> > > This patch adds a V4L2 subdevice driver for the Sony IMX662 CMOS image
> > > sensor. The sensor has a native resolution of 1936x1100 (effective
> > > 1920x1080) and can achieve up to 90 frames per second depending on
> > > the configuration. The driver supports:
> > > - MIPI CSI-2 with 2 or 4 data lanes.
> > > - RAW10 and RAW12 formats (both colour and monochrome).
> > > - Controls: exposure, analogue gain, horizontal/vertical blanking,
> > >   horizontal/vertical flip, brightness.
> > > - A placeholder V4L2_CID_HDR_SENSOR_MODE control for future Clear HDR
> > >   support (the actual HDR modes are not yet implemented).
> > > - Runtime PM.
> > > - Cropping via the selection API.
> > > - Multiple link frequencies selectable via device tree.
> > >
> > > Tested on ARM64 Rockchip RK3568 platform with a 24 MHz external clock
> > > and various link frequencies.
> >
> > Interesting timing as I've been looking at IMX662 too, but on a Raspberry Pi.
> > FWIW my driver is at
> > https://github.com/6by9/linux/blob/rpi-6.12.y-imx662/drivers/media/i2c/imx662.c
> >
> > Comments are based on brief testing and reading of the code. This is
> > not a full review.
> >
> > > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ...
> > > diff --git a/drivers/media/i2c/imx662.c b/drivers/media/i2c/imx662.c
> > > new file mode 100644
> > > index 000000000000..d7be17b5a47d
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/imx662.c
> ...
> > > +static int imx662_set_gain(struct imx662 *imx662, u32 value)
> > > +{
> > > +       int ret = 0;
> > > +
> > > +       if (imx662->hdr == IMX662_HDR_OFF) {
> > > +               bool useHGC = value >= IMX662_ANA_GAIN_HCG_MIN;
> > > +
> > > +               cci_write(imx662->regmap, IMX662_REGHOLD, 1, &ret);
> > > +               cci_write(imx662->regmap, IMX662_GAIN, value, &ret);
> > > +               cci_write(imx662->regmap, IMX662_FDG_SEL0,
> > > +                         useHGC ? IMX662_FDG_SEL0_HCG : IMX662_FDG_SEL0_LCG,
> > > +                         &ret);
> >
> > IIRC HCG adds in another 12dB or something of gain. Automatically
> > enabling it above a value of 0x22 means that the gain response isn't
> > consistent with a band of gains that can't be achieved.
> > Running libcamera with this driver I get significant oscillation as
> > HCG gets turned on and off. Fix useHGC = 0 and the exposure and gain
> > control is stable.
> > AIUI Use of HCG should be a separate control if it is to be used.
>
> Thanks for the feedback.
>
> I haven't found any mention of a 12 dB value or any other specific gain value
> when enabling LCG/HCG in the datasheet or application notes.

I've had previous conversations regarding HCG on imx290/imx462. Whilst
I've never found exact details in the datasheet or associated docs,
Nomura-san has commented on our forums[1] that on those sensors it
adds x5.8 of gain. I'd expect it to be in a similar ballpark for this
sensor. Enabling it automatically certainly makes a step change in the
gain response though.

[1] https://forums.raspberrypi.com/viewtopic.php?p=2186273#p2186273

> I agree it would
> be more correct to use a separate user control here, as is done in the
> driver that
> Tetsuya Nomura referred to in his email. (It's strange that his email
> didn't make it
> to the mailing list.)

It did - https://lore.kernel.org/linux-media/00ea01dcb286$d14e6590$73eb30b0$@soho-enterprise.com/

Will's IMX585 driver which adds the V4L2_CID_IMX585_HCG_GAIN control
isn't merged, but the principle of a V4L2 control for HCG would be
nice. I resorted to a module parameter to enable it.

> ...
> > > +static void imx662_set_link_limits(struct imx662 *imx662)
> > > +{
> > > +       u64 pixel_rate;
> > > +
> > > +       pixel_rate = imx662_link_freqs[imx662->link_freq_index] * 2;
> > > +       pixel_rate *= imx662->num_data_lanes;
> > > +       do_div(pixel_rate, imx662->format->bpp);
> > > +
> > > +       __v4l2_ctrl_s_ctrl_int64(imx662->pixel_rate, pixel_rate);
> >
> > Are you sure on this? All my testing had pixel rate being independent
> > of bit depth and number of lanes.
> > Trying your driver with 360Hz link freq / 720Mbit/s data rate on 2
> > lanes. All the computations end up with a max frame rate of 60fps in
> > 10bit mode and 50fps in 12bit, when I'm expecting a max of 30fps from
> > the datasheet.
> > Asking for 1920x1080 12bit @ 30fps via libcamera results in hblank of
> > 0 and vblank of 1003 with a pixel rate of 120000000. The actual
> > framerate achieved is 27.85fps.
> >
> > I'd found working from a pixel rate of 222750000 (INCK of 74.250*3),
> > and writing HMAX with the "normal" line length value of width+hblank
> > but divided by 3, all the numbers for line time and frame rate control
> > fall out.
> > IMX415 was similar, but some input clocks multiplied up to 72MHz
> > instead of 74.25MHz and produced a set of different link frequencies,
> > so complicated matters.
>
> I'm not entirely sure I understand the suggestion.
> Of course, having some fixed value would greatly simplify the driver,
> but it's still unclear to me where these calculations come from, and where
> does the divisor of 3 come from?
> Nevertheless, looking at the mode table, it becomes clear that the resulting
> frame rate does not depend on the CSI-2 format (10 or 12 bits),
> so apparently something needs to be changed...

I'd worked from the HMAX register value of 660 with VMAX of 1250
giving 90fps, whilst altering HMAX to 990 gives 60fps. That implies it
is a linear relationship.

V4L2 equates HMAX to (width + hblank). Whilst hblank can be negative,
trying to use 660 in computing the pixel rate would confuse matters as
there are more pixels generated than the pixel rate implies.
Multiplying 660 by 3 gives 1980 pixels per line (width=1920 and
hblank=60), which is greater than the number of active pixels and
therefore makes logical sense. All the other numbers fall out
correctly from there.

> > > +       case V4L2_CID_BRIGHTNESS:
> > > +               cci_write(imx662->regmap, IMX662_BLKLEVEL, ctrl->val, &ret);
> >
> > Setting the black level based on the brightness control isn't one I've
> > seen done on any other image sensor. It has similarities, but feels
> > very wrong.
>
> As far as I understand, V4L2_CID_BRIGHTNESS is exactly the control
> that sets an offset added to the signal. This matches the intended use for
> black level adjustment. According to the V4L2 specification,
> V4L2_CID_BLACK_LEVEL is deprecated because its functionality is covered
> by V4L2_CID_BRIGHTNESS (offset) and gain controls.
> So I believe this is the correct mapping. Am I wrong?

AFAIK No other sensor has exposed black level via V4L2_CID_BRIGHTNESS.
It's more usually used for changing the luma component on TV tuners or
other YUV video capture devices.

Very few sensors benefit from having manual control of the black
level. Seeing as there isn't a standardised mechanism for reporting
the black level, any image tuning will have been done with a reference
black level. If something (eg this control) changes that level then a
large proportion of the image tuning becomes invalid.
If V4L2_CID_BRIGHTNESS is to be used to set black level then that's a
V4L2 policy decision and so falls to Sakari or Laurent.

  Dave

