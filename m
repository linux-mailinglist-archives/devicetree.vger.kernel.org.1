Return-Path: <devicetree+bounces-247530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F44CC8ADC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:08:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79028312CA0F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0603E33E36E;
	Wed, 17 Dec 2025 15:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="pHjK2g5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E971A33AD9C
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765985996; cv=none; b=byFhBdAhnG4sr/rfXpcP2nezIoWz21AaFFGajZRpDtSmnS0rY+YeDuXLKJcB0dgz+uP9dKZ/3x98lP4cwMSz6XTQWLorEou4rpZG+OPOO/O4DA9lm0ds5zQO/yf7dReTbLRkrqDrew/isa8YV/RrQvNbrdL6M/lJQWE87kh4zYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765985996; c=relaxed/simple;
	bh=mrBMimjI11dHuvFPqISVTtDUYuPSNskoP5d1dCV17G4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q7I/jDbK7hN1WczQx2QNA/wUslMOVma4WaG9VdzlH8mYbWTOTktKZrwL/wH3bEITDEtDuncUu6H2pr9lt1LURg6v/AX0rhmXYK7G9TeCF/QoCiRYrIPefGZh725uAE/3mHNHLXwa5D+Q/3cjJwL7wp2I7LO8mz6eE3eekrQ0mL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=pHjK2g5s; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-6420c0cf4abso6141566d50.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1765985994; x=1766590794; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EiVzwWdacxkhneKAdGEpfk/mCKguMvjfcTbK+oCX6IY=;
        b=pHjK2g5ssTz3Oif7TMd5XShST2xR8vpXPydsKF8+YdtZirmsdRIVRkfYTo441xkPf8
         F2ofq2/UU1+JoiEOY84so83CL3k6Kk92iM9IwQbfMjGk1gh17wt2M7IxtqEqGvSpWk3/
         3SgsXnOahLyKpLUN6L0wQcabnG5MGxZ/YIE4p7a8med+8o2ZaJwyfZnDouKqoisRU2td
         xqEjlcjQF7UhkoNVDSAwFCQeb9eKGoXXu9vgNTe+e10tlxuZbN8oPB2re2GN+yQH8WqX
         aZZtC4Qxk7yEIlqtJ6ncf4BmseP0jpv08zOWUdTSPzZf7ClqMCzo3nLlOaRyEVC4tq+S
         NRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765985994; x=1766590794;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EiVzwWdacxkhneKAdGEpfk/mCKguMvjfcTbK+oCX6IY=;
        b=EiZNoYtZPc6gdYloH3b2HoazK6GJwwQlLaNkM57irbuSskxyLxDbHrQtAS/2jsxda7
         ViiK9pZlG+1kTlgjIvFD59yLDWOFvi5uJbcFrJf5FPwRDqg5PQVBWAAlA4VLf84kgFba
         U4Vzk34ilu5OK3dI8c+7bad7neUYM7RGpbEkgL1Bca0bJ83iaTyUuE9NUYaSmoIwLqKn
         syzjUBZOAVvl8xJNT8RPP2COjKJf1CCnSD5PhdNYNGyaObMClPvuexgx+1YJw/H+LkjB
         J3zHDAJIkUyKXojxjR+wfrUyVn5TycSSZrMfH2bzDAy6JRDevAuTERSpE6Y0czbCtDzS
         z8Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXSI/bDvl0assFTMaC8YFHEj42fCkveYKj+RPKTFZ3vP3jgaeQF9oVzfo9aaji/uOpufUnCHXKoP5M9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg979TaDZ7/LACxEzVuiG8fZX3dcLEptcSP5A8kzdWJH2mVp8q
	KqkSwfVmEKvPEKO8MkgwA90FkU8rPk+/2onbST+0oo9UWrIEOY5o7rKlHGs2LsTho7KcSduV1V6
	hErGHDXnFVL7wxpWY1YPd+a9CsGOyG59olRy3BzTDkg==
X-Gm-Gg: AY/fxX4M2umh2rYMoy9pdKZSSQ+uj1ICoTliIY/BoQfbYWfDeCe5k8klyPmtcibTs4M
	a0Xj9veGO1cRdcg181AWApv7pfxbbDgGwKxvbLDx4Asdp6xdgmSZgtfB3HuB3xTRMyK9mtQFE9D
	0XrQc66Iga4o6sbul/y9ClANN+1BWwtSS7NLtkMZy9EnlzWArJeVrfZx94/hYA+qimhTo9XtVko
	V5JCXzG+ZDmvjhkQIBaTpVRf1+P1sF+/eL5R9bnQfgCRRyYOA78KDG++TbDK8VJB80wQtM8ngwq
	gtaU9BQLCHkSz6BmnKqJtosoAQxPZz0/Qfo6SA==
X-Google-Smtp-Source: AGHT+IF0UWIEvDligc6GLPT2EP8UI6dynKE2F9VgBLponH5sNOvuFwkLlrOJIPG/JiWBmPq7sLVXfM7WH1TtidkQa5w=
X-Received: by 2002:a05:690e:1484:b0:63f:9f72:4936 with SMTP id
 956f58d0204a3-64555661eaemr12424883d50.67.1765985993823; Wed, 17 Dec 2025
 07:39:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-imx283-ext-v1-0-906a762f592d@emfend.at>
 <20251217-imx283-ext-v1-3-906a762f592d@emfend.at> <CAPY8ntCiOJb9iyFDYS_wxhteoHL7vMFpEF8gVwrf2qeFd-Fssw@mail.gmail.com>
 <2f93eda4-483e-4fa2-a765-73e8df4eeaea@emfend.at> <176597534567.3937789.3409848773538845012@ping.linuxembedded.co.uk>
 <4cea157c-5371-4c9c-b554-a53aaa786b6f@emfend.at>
In-Reply-To: <4cea157c-5371-4c9c-b554-a53aaa786b6f@emfend.at>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 17 Dec 2025 15:39:38 +0000
X-Gm-Features: AQt7F2qOacOKJuQdekxGuv8SbTowmpYHRDvStJt71VhbH8vGRkCXAQ0O96bDou8
Message-ID: <CAPY8ntBSHMgw1DRyLJ7acDO0_VRaJywSurC_VyMHh_OU0sjv_A@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: i2c: imx283: implement {g,s}_register
To: Matthias Fend <matthias.fend@emfend.at>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, Umang Jain <uajain@igalia.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Matthias

On Wed, 17 Dec 2025 at 14:02, Matthias Fend <matthias.fend@emfend.at> wrote:
>
> * Spam *
> Hi Kieran,
>
> thanks for your reply.
>
> Am 17.12.2025 um 13:42 schrieb Kieran Bingham:
> > Quoting Matthias Fend (2025-12-17 12:21:28)
> >> Hi Dave,
> >>
> >> thanks for your comment.
> >>
> >> Am 17.12.2025 um 12:54 schrieb Dave Stevenson:
> >>> Hi Matthias
> >>>
> >>> On Wed, 17 Dec 2025 at 07:41, Matthias Fend <matthias.fend@emfend.at> wrote:
> >>>>
> >>>> Implement {g,s}_register to support advanced V4L2 debug functionality.
> >>>
> >>> Is there any real benefit to providing access via {g,s}_register
> >>> rather than using i2ctransfer -f ? The I2C framework ensures that each
> >>> transfer is atomic as long as it is formed into one transaction
> >>> request.
> >>
> >> This allows, for example, the registers to be changed when the image
> >> sensor is actually used in streaming mode.
> >>
> >> IMHO, this cannot be covered by i2ctransfer, as the device is used
> >> exclusively by the driver.
> >
> > I frequently modify registers while the device is streaming to debug and
> > investigate.
> >
> > I use my colleague Tomi's rwmem tool though:
> >
> >   - https://github.com/tomba/rwmem
> >
> > But I don't think it does anything specifically special - it's still an
> > underlying i2c-transfer operation through /dev/i2c-x ?
>
> Thanks for the hint - I didn't know that tool yet.
>
> With the '-f' option, it's actually possible to use i2ctransfer as well.

That's why I said using i2ctransfer -f :-) The force option is "sudo"
when it comes to I2C commands.

I'm in the same boat as Kieran in fairly frequently modifying
registers whilst streaming, and then frequently getting annoyed when
the driver puts the value back again!

> >
> >
> >
> >>
> >>>
> >>> IMHO The only place these are really needed is with devices such as
> >>> the adv7180 family which have a bank and page addressing scheme, and
> >>> the driver is caching the last accessed bank.
> >>>
> >>>> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
> >>>> ---
> >>>>    drivers/media/i2c/imx283.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
> >>>>    1 file changed, 44 insertions(+)
> >>>>
> >>>> diff --git a/drivers/media/i2c/imx283.c b/drivers/media/i2c/imx283.c
> >>>> index 7a6ab2941ea985401b21d60163b58e980cf31ddc..d8ccde0a1587259f39a10984c517cc57d323b6bc 100644
> >>>> --- a/drivers/media/i2c/imx283.c
> >>>> +++ b/drivers/media/i2c/imx283.c
> >>>> @@ -1295,7 +1295,51 @@ static const struct v4l2_subdev_internal_ops imx283_internal_ops = {
> >>>>           .init_state = imx283_init_state,
> >>>>    };
> >>>>
> >>>> +#ifdef CONFIG_VIDEO_ADV_DEBUG
> >>>> +static int imx283_g_register(struct v4l2_subdev *sd,
> >>>> +                            struct v4l2_dbg_register *reg)
> >>>> +{
> >>>> +       struct imx283 *imx283 = to_imx283(sd);
> >>>> +       u64 val;
> >>>> +       int ret;
> >>>> +
> >>>> +       if (!pm_runtime_get_if_active(imx283->dev))
> >>>> +               return 0;
> >>>
> >>> Returning no error if the device is powered down feels wrong. How is
> >>> the caller meant to differentiate between powered down and the
> >>> register actually containing 0?
> >>
> >> The only other I2C drivers that use pm* in {g,s}_register seem to be
> >> imx283 and tc358746. Since both return 0 when the device is inactive, I
> >
> > Did you mean something other than imx283 here ?
>
> True, the IMX283 is obviously not a good reference in this respect :)
>
> However, if there's agreement that implementing {g,s}_register for this
> driver isn't sensible, I'll just drop this commit.

Dropping it would get my vote.
The functionality is duplicated by "i2ctransfer -f ..." or rwmem, and
then you've got one fewer abstraction. If the sensor is powered down
when you try accessing it, then you'll get the i2c error code back.

Thanks
  Dave

> Thanks
>   ~Matthias
>
> >
> > --
> > Kieran
> >
> >> figured there must be a reason for this and implemented it that way as well.
> >>
> >> Thanks
> >>    ~Matthias
> >>
> >>>
> >>>> +
> >>>> +       ret = cci_read(imx283->cci, CCI_REG8(reg->reg), &val, NULL);
> >>>> +       reg->val = val;
> >>>> +
> >>>> +       pm_runtime_put(imx283->dev);
> >>>> +
> >>>> +       return ret;
> >>>> +}
> >>>> +
> >>>> +static int imx283_s_register(struct v4l2_subdev *sd,
> >>>> +                            const struct v4l2_dbg_register *reg)
> >>>> +{
> >>>> +       struct imx283 *imx283 = to_imx283(sd);
> >>>> +       int ret;
> >>>> +
> >>>> +       if (!pm_runtime_get_if_active(imx283->dev))
> >>>> +               return 0;
> >>>
> >>> Ditto here. The caller is told the value was written, but it wasn't.
> >>>
> >>> Thanks.
> >>>     Dave
> >>>
> >>>> +
> >>>> +       ret = cci_write(imx283->cci, CCI_REG8(reg->reg), reg->val, NULL);
> >>>> +
> >>>> +       pm_runtime_put(imx283->dev);
> >>>> +
> >>>> +       return ret;
> >>>> +}
> >>>> +#endif
> >>>> +
> >>>> +static const struct v4l2_subdev_core_ops imx283_core_ops = {
> >>>> +#ifdef CONFIG_VIDEO_ADV_DEBUG
> >>>> +       .g_register = imx283_g_register,
> >>>> +       .s_register = imx283_s_register,
> >>>> +#endif
> >>>> +};
> >>>> +
> >>>>    static const struct v4l2_subdev_ops imx283_subdev_ops = {
> >>>> +       .core = &imx283_core_ops,
> >>>>           .video = &imx283_video_ops,
> >>>>           .pad = &imx283_pad_ops,
> >>>>    };
> >>>>
> >>>> --
> >>>> 2.34.1
> >>>>
> >>>>
> >>
>
>

