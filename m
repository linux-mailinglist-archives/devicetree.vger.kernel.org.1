Return-Path: <devicetree+bounces-136804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F44A06500
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 20:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E090B1886EAF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 19:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559D9201258;
	Wed,  8 Jan 2025 19:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="3EMIg/Ab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8465F1537C3
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 19:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736362949; cv=none; b=DbkWUASJXT76WJ6Tw0nEjBVrhLJDH7BIt7oLUTxQgo14geC3kbzZfo9KYrGRwdzkkFhdz4tEf6bYRKtruxD771qtq6TJfiZX7Wbc41ovX0uhLca2OicskEuexL6InX+RTXTkLjYS6Z6TpIGG1ErDCsMNhMM1GRI1l+fSPWZlq7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736362949; c=relaxed/simple;
	bh=2LeqqK9rumkmPyieu3QcgX/rv1YAADrqkMxLxU45QLI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=I0sv4sFve0pw8bv4K1RRj3bGwKCtKuWo/mUHDmlZFl+YnT5B7c6EILZCnEPpL34a69vZwsa9JRviMc/FDkg3/QkLMIUZ0nbLzCnovVckA7Nw5DFjxKOW6gfbaCjHmbrS5CMPnzFcy8ygMdN/yx4rIwlUj64cDBkWYzTGF+1+ah4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=3EMIg/Ab; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6dd43b08674so1666006d6.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 11:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1736362945; x=1736967745; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C6Vg+vnBATvKCOB8Ex1vyLJk1Tk2dIWDIke1IHw7kJM=;
        b=3EMIg/AbvYJ2tgp2LQCIx1cB97TsPwmFkB543SlAYhBIdNdvOoC3mpFFVHOYxKQS0a
         GWUHY8V1M+f84Gom1RKuJNmdPDruOQCZhwUB5qXvjzssi3B+yPvGMYPVxar1kC8J3Y1g
         dI102D9QJzoZhSa5ZKQzrMI8VXTSJdh/sg8MOdj0/2FNiCGh6ozLa4l4r2HNv9UQzXAa
         OOvPgC86VdFvr8ZvHfJm490jt3/UYAbrCeJIEZlWO0HzGAquc59M2Zj1V5k8t31UZ9Ws
         FqvJTd9eGbp5W8X0wYqNF0O82cqsxnjzzo4flHc4B7B6m+U+hdQ7WHcW+q/Pc20h9mme
         wo/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736362945; x=1736967745;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6Vg+vnBATvKCOB8Ex1vyLJk1Tk2dIWDIke1IHw7kJM=;
        b=wyiFu22ZkX7IsjyY7sgzhe4IlwVT6W3tNQibYte9iCLStoFiS0A6j2pUFCrBcT4hro
         YKc4ip0X7FcVoMmod/k3f9V2I32otyZxf8FQmuoYLhPNKIFIucLygRgygbTs7VSUCR5k
         fhcv14HP7C0YZiZOfVrOfyPqA5n5L/Rsc8E2pTGUxuDY/jKADY8QWbwZG1kBdQjl01PF
         /ZCYkj5AaGKmgS5hF/u6sIv/BT/aex+qneCSy9WJlX43QnSOhQ5tGE1UvL104egPmy+P
         y39LoBD/mKkBX+j6ltgX2kOg6QqFs3XJx1pyM/pUXbx+h+5rVd2OpeYOXLsHfTbpdUaT
         WY7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVaiM8/J3SPa4u2iYFJhJ56ckzH1jI4EVof5ilnLCUaS0NUx0dWkzilf1GiDqxh3Cu/Nxn8C22s8a72@vger.kernel.org
X-Gm-Message-State: AOJu0YzKuhEfb0kV0PY79ywr59i0/oUrSMyd/ZHEKo4/dMAC4io5O3Tg
	ZckycjHC0UvnzJL43cmARtlUYVxjUpNzuPjj1vOGbz50Xm8CEAn21FpzUXawJZM=
X-Gm-Gg: ASbGncujqZNAsOtL0EewtLQXc7Abk+wXJqsMED59ttq7yqlL5kjwNEGya/lkbLC8Q3K
	yBCbCX8hOUdk0s36YtQTFv7s1RzTTdn35oMH1wzX40jPufcrhFoGoK+Drx+lvVtDhx1MTxLfT5p
	nkAk2PHRVUIknEseXJmP171Ithboj3qEL4slqnyQ0pS3SRra/N6/OGUMwEQmcx4btRyO0jQMB7T
	C8V0cQvftlEJrCsQZTRcqExb4nYLCqOK737kBykRuiihhvTPqylsl4niQ==
X-Google-Smtp-Source: AGHT+IHz8t7/jnTp3/z7aQeqs8EfZmJDcpfVjx/Cqp7AG+gJRyK2LvWbMaJkQwON4t/VCdJm0q9Hmw==
X-Received: by 2002:ad4:5ca1:0:b0:6d8:9b7b:14c9 with SMTP id 6a1803df08f44-6df9b1b5254mr3677706d6.8.1736362945361;
        Wed, 08 Jan 2025 11:02:25 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6dd180ea69dsm193516926d6.24.2025.01.08.11.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 11:02:24 -0800 (PST)
Message-ID: <96993d4626e09460d60911fdec8c8d4e305c6747.camel@ndufresne.ca>
Subject: Re: [PATCH 0/7] Raspberry Pi HEVC decoder driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart	
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Florian Fainelli
 <florian.fainelli@broadcom.com>, Broadcom internal kernel review list	
 <bcm-kernel-feedback-list@broadcom.com>, John Cox
 <john.cox@raspberrypi.com>,  Dom Cobley <dom@raspberrypi.com>, review list
 <kernel-list@raspberrypi.com>, Ezequiel Garcia	
 <ezequiel@vanguardiasur.com.ar>, John Cox <jc@kynesim.co.uk>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, John Cox <john.cox@raspberypi.com>
Date: Wed, 08 Jan 2025 14:02:23 -0500
In-Reply-To: <CAPY8ntCxQDVe8G+ZtcjcT1ikVCUzNXMpGLvsFMUUDvZSx7zOAg@mail.gmail.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com>
	 <6d6c49919af9e782bd8e9be5066e92c9704ad5b7.camel@ndufresne.ca>
	 <CAPY8ntCxH2C=YEJEcee0b2UuXU+xZ0Ntbuvc29MLAipr9DCmmw@mail.gmail.com>
	 <CAPY8ntCxQDVe8G+ZtcjcT1ikVCUzNXMpGLvsFMUUDvZSx7zOAg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Dave,

Le mardi 07 janvier 2025 =C3=A0 17:36 +0000, Dave Stevenson a =C3=A9crit=C2=
=A0:
> On Tue, 7 Jan 2025 at 16:13, Dave Stevenson
> <dave.stevenson@raspberrypi.com> wrote:
> >=20
> > Hi Nicolas
> >=20
> > On Mon, 6 Jan 2025 at 20:46, Nicolas Dufresne <nicolas@ndufresne.ca> wr=
ote:
> > >=20
> > > Hi Dave,
> > >=20
> > > Le vendredi 20 d=C3=A9cembre 2024 =C3=A0 16:21 +0000, Dave Stevenson =
a =C3=A9crit :
> > > > Hi All
> > > >=20
> > > > This has been in the pipeline for a while, but I've finally cleaned
> > > > up our HEVC decoder driver to be in a shape to at least get a first
> > > > review.
> > > > John Cox has done almost all of the work under contract to Raspberr=
y
> > > > Pi, and I'm largely just doing the process of patch curation and
> > > > sending.
> > > >=20
> > > > There are a couple of questions raised in frameworks.
> > > > The main one is that the codec has 2 independent phases to the deco=
de,
> > > > CABAC and reconstruction. To keep the decoder operating optimally
> > > > means that two requests need to be in process at once, whilst the
> > > > current frameworks don't want to allow as there is an implicit
> > > > assumption of only a single job being active at once, and
> > > > completition returns both buffers and releases the media request.
> > > >=20
> > > > The OUTPUT queue buffer is finished with and can be returned at the
> > > > end of phase 1, but the media request is still required for phase 2=
.
> > > > The frameworks currently force the driver to be returning both
> > > > together via v4l2_m2m_buf_done_and_job_finish. v4l2_m2m_job_finish
> > > > would complete the job without returning the buffer as we need,
> > > > however if the driver has set VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE=
_BUF
> > > > then we have a WARN in v4l2_m2m_job_finish.
> > > > Dropping the WARN as this series is currently doing isn't going to =
be
> > > > the right answer, but it isn't obvious what the right answer is.
> > > > Discussion required.
> > >=20
> > > I think part of the manual request completion RFC will be to evaluate=
 the impact
> > > on VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF feature. MTK does not su=
pport
> > > interleaved interlaced decoding (only alternate), so they didn't have=
 to
> > > implement that feature.
> > >=20
> > > Overall, It would be nice to get your feedback on the new manual requ=
est
> > > proposal, which is I believe better then the pin/unpin API you have i=
n this
> > > serie.
> >=20
> > I wasn't aware of that series, but I / John will take a look.
>=20
> As I said at the beginning, I'm largely an intermediary here, and may
> get things wrong as my codec knowledge is far from comprehensive. I'm
> hoping John will correct me if I misrepresent our conversations.
>=20
> As you say the MTK codec doesn't set
> VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF, and hence it can call
> v4l2_m2m_job_finish without hitting the WARN.
>=20
> Your comment about it not supporting interleaved interlaced decoding
> confuses me slightly. Almost all the codecs allow a single frame to be
> encoded as multiple slices, and I'd be surprised if none of the test
> streams exercise that.

MTK VCODEC is a frame based HEVC decoder. All slices are passed within the =
same
request (up to 600). Upstream, only Cedrus driver is slice based, though fo=
r
large number of slices this has performance issues (even though you gain on
latency).

> Our reading of the situation was that if you have more than one
> encoded slice making up the video frame then you are NOT obliged to
> submit all of the slices at once via the variable length array
> control, and submitting the slices one at a time is permitted. That
> means that almost all decoders have to set the
> VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF flag to be able to hold onto
> the CAPTURE buffer until it has been given all the encoded data to
> generate it.

We don't have support for that, a new v4l2_stateless_hevc_decode_mode would=
 be
required. Here's what the spec says:


    * - ``V4L2_STATELESS_HEVC_DECODE_MODE_SLICE_BASED``
      - 0
      - Decoding is done at the slice granularity.
        The OUTPUT buffer must contain a **single** slice.
    * - ``V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED``
      - 1
      - Decoding is done at the frame granularity.
        The OUTPUT buffer must contain **all** slices needed to decode the
        frame.

So one, or all. Additionally, (and doc could be improved here),
V4L2_CID_STATELESS_HEVC_SLICE_PARAMS is strictly required for SLICED_BASED,=
 and
must contain 1 slice. While for the second, some drivers needs it, some don=
't,
userspace needs to check if the control is present or not.

SLICE_BASED depends on VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF, otherwise=
 you
can't queue capture buffers ahead of time, and loose in throughput. So a ne=
w
DYN_SLICE_BASED (with some proper name), would also require it.
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF is also needed when you need to d=
ecode
top and bottom field in the same capture buffer, hence my reference to that=
 (MTK
chromebook firmware don't support that for any codecs).

You could also ignore all this, and implement
V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED on top of your slice based deco=
der.
No latency gain, but you also no longer need
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF which let you postpone adding new
helpers to complete the job when this feature is used. Yet, I think the man=
ual
request completion proposal would be a lot better if we had that issue cove=
red.

>=20
> If there isn't a need to support a multi-slice frame being presented
> via multiple OUTPUT buffers, then we can cull some code and drop the
> flag.

> HEVC has no real concept of interlaced content, so no need to worry
> about that as the other route to having multiple slices producing one
> video frame.

I've seen non-tiled decoders that internally double the stride, and offset =
the
same buffer by one line for the second field, to generate interleaved data,=
 but
as you said, this is the exception rather then the rule. :-)

p.s. your understanding is pretty accurate

>=20
>   Dave
>=20
> > > >=20
> > > > We also have a need to hold on to the media request for phase 2. Jo=
hn
> > > > had discussed this with Ezequiel (and others) a couple of years bac=
k,
> > > > and hence suggested a patch that adds media_request_{pin,unpin} to
> > > > grab references on the media request. Discussion required on that
> > > > or a better way of handling it.
> > > >=20
> > > > I will apologise in advance for sending this V1 just before I head =
off
> > > > on the Christmas break, but will respond to things as soon as possi=
ble.
> > >=20
> > > One thing missing in this summary is how this driver is being validat=
ed
> > > (specially that for this one requires a downstream fork of FFMPEG). T=
o this
> > > report we ask for:
> > >=20
> > > - v4l2-compliance results
> > > - Fluster conformance tests results [1] and I believe you need [2]
> > >=20
> > > [1] https://github.com/fluendo/fluster
> > > [2] https://github.com/fluendo/fluster/pull/179
> >=20
> > Sure, I'll sort that before doing a V2.
> >=20
> > > GStreamer support is there in main now, but without the needed softwa=
re video
> > > converter for you column tiling, we can't use it for that (i.e. only =
works
> > > through GL or Wayland).
> >=20
> > Can you point me at the right place for the software converter?
> > It's a relatively trivial reformat required to get it back into NV12 /
> > I420 or 10bit equivalents, so happy to do that. I think John already
> > has NEON optimised code if desired.
> >=20
> >   Dave
> >=20
> > > regards,
> > > Nicolas
> > >=20
> > > >=20
> > > > Thanks
> > > >   Dave
> > > >=20
> > > > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > > > ---
> > > > Dave Stevenson (4):
> > > >       docs: uapi: media: Document Raspberry Pi NV12 column format
> > > >       media: ioctl: Add pixel formats NV12MT_COL128 and NV12MT_10_C=
OL128
> > > >       media: dt-bindings: media: Add binding for the Raspberry Pi H=
EVC decoder
> > > >       arm: dts: bcm2711-rpi: Add HEVC decoder node
> > > >=20
> > > > Ezequiel Garcia (1):
> > > >       RFC: media: Add media_request_{pin,unpin} API
> > > >=20
> > > > John Cox (2):
> > > >       media: platform: Add Raspberry Pi HEVC decoder driver
> > > >       RFC: v4l2-mem2mem: Remove warning from v4l2_m2m_job_finish
> > > >=20
> > > >  .../bindings/media/raspberrypi,hevc-dec.yaml       |   72 +
> > > >  .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  |   42 +
> > > >  MAINTAINERS                                        |   10 +
> > > >  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi        |    5 +
> > > >  arch/arm/boot/dts/broadcom/bcm2711.dtsi            |    9 +
> > > >  drivers/media/mc/mc-request.c                      |   35 +
> > > >  drivers/media/platform/raspberrypi/Kconfig         |    1 +
> > > >  drivers/media/platform/raspberrypi/Makefile        |    1 +
> > > >  .../media/platform/raspberrypi/hevc_dec/Kconfig    |   17 +
> > > >  .../media/platform/raspberrypi/hevc_dec/Makefile   |    5 +
> > > >  .../media/platform/raspberrypi/hevc_dec/hevc_d.c   |  443 ++++
> > > >  .../media/platform/raspberrypi/hevc_dec/hevc_d.h   |  190 ++
> > > >  .../platform/raspberrypi/hevc_dec/hevc_d_h265.c    | 2629 ++++++++=
++++++++++++
> > > >  .../platform/raspberrypi/hevc_dec/hevc_d_hw.c      |  376 +++
> > > >  .../platform/raspberrypi/hevc_dec/hevc_d_hw.h      |  303 +++
> > > >  .../platform/raspberrypi/hevc_dec/hevc_d_video.c   |  685 +++++
> > > >  .../platform/raspberrypi/hevc_dec/hevc_d_video.h   |   38 +
> > > >  drivers/media/v4l2-core/v4l2-ioctl.c               |    2 +
> > > >  drivers/media/v4l2-core/v4l2-mem2mem.c             |    7 -
> > > >  include/media/media-request.h                      |   12 +
> > > >  include/uapi/linux/videodev2.h                     |    5 +
> > > >  21 files changed, 4880 insertions(+), 7 deletions(-)
> > > > ---
> > > > base-commit: e90c9612ac3969cb8206029a26bcd2b6f5d4a942
> > > > change-id: 20241212-media-rpi-hevc-dec-3b5be739f3bd
> > > >=20
> > > > Best regards,
> > >=20


