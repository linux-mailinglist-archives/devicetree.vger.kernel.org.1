Return-Path: <devicetree+bounces-136289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2315AA04864
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 18:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C54F166D76
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 17:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EC518D620;
	Tue,  7 Jan 2025 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="VY8QyDvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E3917B50A
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 17:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736271443; cv=none; b=bgDTa4hJPku4P6nuFrr+YJxip62+XjyvOO72FjyzVIKDoXqQkWzox/yvMOSSg0x0h9DRIHl2FyhQlXGme0HFbskDgn2MsWlxiPVhDhiqg9J/ZQrBmY6bC7Se4Qme+Qz/w4IcwBwGb4pxoLv0x5wUH8cNU0yPNF0wf16VUpFz5As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736271443; c=relaxed/simple;
	bh=9AzUDJqqG0dLWZY2SvZZjluShGjMMC6Wfmc59tZe0o0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JXWKxlkDjjbEF1rfH6+ZOQjt3ybkBZtgykalIb96PikHz+cxyncxkfDkuBNQIuQWTfMcNn+ETgcUIO6f4uwAeIyl0ZwAFBOvH9qVJc9/umFdCL0EjBvJ6b6bxYXj9OYwvHG+frnQKvPyu1vDhkv7Jt80kLektXgbXwGiis+nRLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=VY8QyDvh; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e46ac799015so19768522276.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 09:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1736271438; x=1736876238; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cmHjE2lkD0g0xx6Gl/UkMawOpI57ARHUpmlod3G7faY=;
        b=VY8QyDvhj75RaVFlNcB/yQWTs4oJRjTJrGE+oQxbP8GyWG6X9kXUQFZLKXL3vwIOgk
         0FGedBoA8EazVkzg+7P/sK/g1uUq5XV6nNd8btcTsnQc66yFYCQVwsdOWz7lN8onGjke
         LT9JIgdRt1g8uBa7mN3EpY7xAVjEbVDPrqfNiRtBtyslDZmkOTOP5C0+d9VRtjBRstxC
         k71bt48BkhepIdRmYboeDA21LhTNJcRkSpV/JVMcBz4y/hEtjOBy5NA+qeQVDmn0/NlO
         4Ws4ycsi46Jw1s1DmxstA6z4haMMgP4l1L6VZRCfUpw4pAcbfvqawdTKyU/py0y3SU2k
         5lSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736271438; x=1736876238;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cmHjE2lkD0g0xx6Gl/UkMawOpI57ARHUpmlod3G7faY=;
        b=PMbp3TCyTEzN8gXDxf1Zp2ZfN0Y9VlkQkvk8ON1fSl2JoyrW040/lpI4+TMEbyPRtS
         Dv8BjBkcb2bFGas6TxcBdHVL6k4JUlDDISfHzAChtZb2MA7RCb7UGNMCMGUr0MPPZ3Vu
         3o0tQa6jnYwN5Rve35vdRg3sB9oeAQ/LNHMASeqesLH3GoylhZzRvqAD2lnHyY7k8lm5
         C0vFE8+G1gPvRfU0yFaEgrzoymWfuzkbCwwR3JsbXwtVwyWqzoj6QuZL4mbyfnWzwCW6
         8TYQaQAwZ8UHxlojsh/ux0iHwDRA/N2rwaxU7IiBJZJoqlGGj9QhaPh+hKYmI8o0+uuN
         9U1w==
X-Forwarded-Encrypted: i=1; AJvYcCXc5lPVBgNNM5m70AyqoB8fly7vl2Axmj90r5yCKiiHmZQo/GtGQlMz0ubDsm/2b8cy3cCgEDEQCKHI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyals0WLt3P8r/QyRSc/1ZtDRINsH/v4r1fOu3Sr8iFiiJDn0TT
	ytHQA7PBc1xpn6jAgBbKDw73Bkdsl7SVeSap8NflL+U3+aIjbM7H0kGJdKSRcLStB9qC/ysxq//
	E7UIxKweVNb9aaR1LXazhWiq8eup4ZtQBmJnzxg==
X-Gm-Gg: ASbGncv4aY8/ZT0Yw32DUdBNDtKt8V7bFWRyXNqCT8OSfq2y+m95DKUHDIgoog4N6Je
	WuXsjBAY7VXnj07RJaFn7XAFnVPkeG5QNGXdCPwm+oTQiOqhn3VgFQF5MkdMmEW7IUhKibQ==
X-Google-Smtp-Source: AGHT+IFYk5WehCA40a2wfI0ajxU4GIlZeepyDjpPF91Y0RHGRGsB3B5pPvtwt5vX8I9Cy06Tv50cKxRAidAC2qpDuGk=
X-Received: by 2002:a05:690c:6188:b0:6ec:b10a:22a4 with SMTP id
 00721157ae682-6f3f814987fmr436349587b3.25.1736271438618; Tue, 07 Jan 2025
 09:37:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
 <6d6c49919af9e782bd8e9be5066e92c9704ad5b7.camel@ndufresne.ca> <CAPY8ntCxH2C=YEJEcee0b2UuXU+xZ0Ntbuvc29MLAipr9DCmmw@mail.gmail.com>
In-Reply-To: <CAPY8ntCxH2C=YEJEcee0b2UuXU+xZ0Ntbuvc29MLAipr9DCmmw@mail.gmail.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 7 Jan 2025 17:36:59 +0000
X-Gm-Features: AbW1kva1c-wF8LxGNPRfx7aSpLMcjdTj9HSc4eylw-49J0HDJDNwcTvpDwOjxec
Message-ID: <CAPY8ntCxQDVe8G+ZtcjcT1ikVCUzNXMpGLvsFMUUDvZSx7zOAg@mail.gmail.com>
Subject: Re: [PATCH 0/7] Raspberry Pi HEVC decoder driver
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, John Cox <john.cox@raspberrypi.com>, 
	Dom Cobley <dom@raspberrypi.com>, review list <kernel-list@raspberrypi.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, John Cox <jc@kynesim.co.uk>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, John Cox <john.cox@raspberypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Jan 2025 at 16:13, Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:
>
> Hi Nicolas
>
> On Mon, 6 Jan 2025 at 20:46, Nicolas Dufresne <nicolas@ndufresne.ca> wrot=
e:
> >
> > Hi Dave,
> >
> > Le vendredi 20 d=C3=A9cembre 2024 =C3=A0 16:21 +0000, Dave Stevenson a =
=C3=A9crit :
> > > Hi All
> > >
> > > This has been in the pipeline for a while, but I've finally cleaned
> > > up our HEVC decoder driver to be in a shape to at least get a first
> > > review.
> > > John Cox has done almost all of the work under contract to Raspberry
> > > Pi, and I'm largely just doing the process of patch curation and
> > > sending.
> > >
> > > There are a couple of questions raised in frameworks.
> > > The main one is that the codec has 2 independent phases to the decode=
,
> > > CABAC and reconstruction. To keep the decoder operating optimally
> > > means that two requests need to be in process at once, whilst the
> > > current frameworks don't want to allow as there is an implicit
> > > assumption of only a single job being active at once, and
> > > completition returns both buffers and releases the media request.
> > >
> > > The OUTPUT queue buffer is finished with and can be returned at the
> > > end of phase 1, but the media request is still required for phase 2.
> > > The frameworks currently force the driver to be returning both
> > > together via v4l2_m2m_buf_done_and_job_finish. v4l2_m2m_job_finish
> > > would complete the job without returning the buffer as we need,
> > > however if the driver has set VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_B=
UF
> > > then we have a WARN in v4l2_m2m_job_finish.
> > > Dropping the WARN as this series is currently doing isn't going to be
> > > the right answer, but it isn't obvious what the right answer is.
> > > Discussion required.
> >
> > I think part of the manual request completion RFC will be to evaluate t=
he impact
> > on VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF feature. MTK does not supp=
ort
> > interleaved interlaced decoding (only alternate), so they didn't have t=
o
> > implement that feature.
> >
> > Overall, It would be nice to get your feedback on the new manual reques=
t
> > proposal, which is I believe better then the pin/unpin API you have in =
this
> > serie.
>
> I wasn't aware of that series, but I / John will take a look.

As I said at the beginning, I'm largely an intermediary here, and may
get things wrong as my codec knowledge is far from comprehensive. I'm
hoping John will correct me if I misrepresent our conversations.

As you say the MTK codec doesn't set
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF, and hence it can call
v4l2_m2m_job_finish without hitting the WARN.

Your comment about it not supporting interleaved interlaced decoding
confuses me slightly. Almost all the codecs allow a single frame to be
encoded as multiple slices, and I'd be surprised if none of the test
streams exercise that.
Our reading of the situation was that if you have more than one
encoded slice making up the video frame then you are NOT obliged to
submit all of the slices at once via the variable length array
control, and submitting the slices one at a time is permitted. That
means that almost all decoders have to set the
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF flag to be able to hold onto
the CAPTURE buffer until it has been given all the encoded data to
generate it.

If there isn't a need to support a multi-slice frame being presented
via multiple OUTPUT buffers, then we can cull some code and drop the
flag.
HEVC has no real concept of interlaced content, so no need to worry
about that as the other route to having multiple slices producing one
video frame.

  Dave

> > >
> > > We also have a need to hold on to the media request for phase 2. John
> > > had discussed this with Ezequiel (and others) a couple of years back,
> > > and hence suggested a patch that adds media_request_{pin,unpin} to
> > > grab references on the media request. Discussion required on that
> > > or a better way of handling it.
> > >
> > > I will apologise in advance for sending this V1 just before I head of=
f
> > > on the Christmas break, but will respond to things as soon as possibl=
e.
> >
> > One thing missing in this summary is how this driver is being validated
> > (specially that for this one requires a downstream fork of FFMPEG). To =
this
> > report we ask for:
> >
> > - v4l2-compliance results
> > - Fluster conformance tests results [1] and I believe you need [2]
> >
> > [1] https://github.com/fluendo/fluster
> > [2] https://github.com/fluendo/fluster/pull/179
>
> Sure, I'll sort that before doing a V2.
>
> > GStreamer support is there in main now, but without the needed software=
 video
> > converter for you column tiling, we can't use it for that (i.e. only wo=
rks
> > through GL or Wayland).
>
> Can you point me at the right place for the software converter?
> It's a relatively trivial reformat required to get it back into NV12 /
> I420 or 10bit equivalents, so happy to do that. I think John already
> has NEON optimised code if desired.
>
>   Dave
>
> > regards,
> > Nicolas
> >
> > >
> > > Thanks
> > >   Dave
> > >
> > > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > > ---
> > > Dave Stevenson (4):
> > >       docs: uapi: media: Document Raspberry Pi NV12 column format
> > >       media: ioctl: Add pixel formats NV12MT_COL128 and NV12MT_10_COL=
128
> > >       media: dt-bindings: media: Add binding for the Raspberry Pi HEV=
C decoder
> > >       arm: dts: bcm2711-rpi: Add HEVC decoder node
> > >
> > > Ezequiel Garcia (1):
> > >       RFC: media: Add media_request_{pin,unpin} API
> > >
> > > John Cox (2):
> > >       media: platform: Add Raspberry Pi HEVC decoder driver
> > >       RFC: v4l2-mem2mem: Remove warning from v4l2_m2m_job_finish
> > >
> > >  .../bindings/media/raspberrypi,hevc-dec.yaml       |   72 +
> > >  .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  |   42 +
> > >  MAINTAINERS                                        |   10 +
> > >  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi        |    5 +
> > >  arch/arm/boot/dts/broadcom/bcm2711.dtsi            |    9 +
> > >  drivers/media/mc/mc-request.c                      |   35 +
> > >  drivers/media/platform/raspberrypi/Kconfig         |    1 +
> > >  drivers/media/platform/raspberrypi/Makefile        |    1 +
> > >  .../media/platform/raspberrypi/hevc_dec/Kconfig    |   17 +
> > >  .../media/platform/raspberrypi/hevc_dec/Makefile   |    5 +
> > >  .../media/platform/raspberrypi/hevc_dec/hevc_d.c   |  443 ++++
> > >  .../media/platform/raspberrypi/hevc_dec/hevc_d.h   |  190 ++
> > >  .../platform/raspberrypi/hevc_dec/hevc_d_h265.c    | 2629 ++++++++++=
++++++++++
> > >  .../platform/raspberrypi/hevc_dec/hevc_d_hw.c      |  376 +++
> > >  .../platform/raspberrypi/hevc_dec/hevc_d_hw.h      |  303 +++
> > >  .../platform/raspberrypi/hevc_dec/hevc_d_video.c   |  685 +++++
> > >  .../platform/raspberrypi/hevc_dec/hevc_d_video.h   |   38 +
> > >  drivers/media/v4l2-core/v4l2-ioctl.c               |    2 +
> > >  drivers/media/v4l2-core/v4l2-mem2mem.c             |    7 -
> > >  include/media/media-request.h                      |   12 +
> > >  include/uapi/linux/videodev2.h                     |    5 +
> > >  21 files changed, 4880 insertions(+), 7 deletions(-)
> > > ---
> > > base-commit: e90c9612ac3969cb8206029a26bcd2b6f5d4a942
> > > change-id: 20241212-media-rpi-hevc-dec-3b5be739f3bd
> > >
> > > Best regards,
> >

