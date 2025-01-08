Return-Path: <devicetree+bounces-136520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8B5A05766
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB5853A0511
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0201F37B1;
	Wed,  8 Jan 2025 09:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kynesim.co.uk header.i=@kynesim.co.uk header.b="OabX/qHo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0BE4199249
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736329944; cv=none; b=dkhnF7mn3NfQkKF7txXTeD8Fs9njOxfeEX4+tRvJraUgw6gHXxPzIT6Z+r0Oi9aPa6TD/sAk2iTTY7iNiMWzAYRVnhAfwgVhS/lcI5As8RiSbxInDlebBssROkfAqdTkW856P+M4h+COBH6zINZ7/cjUbefqoQ8rMUUviwySWLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736329944; c=relaxed/simple;
	bh=vS2asLyI8CgGQVTY1iTxBo4HNAIaNIddZ3QhJaVpDG8=;
	h=From:To:Cc:Subject:Date:Message-ID:References:In-Reply-To:
	 MIME-Version:Content-Type; b=RvSb5FE6pgtvn96RxMygHsYX3S370Vfv9S6M8EIAYjXWMMhpr/h2FOErvjVD7sYnDt8Xie2D79OkRkLfmshxB/ymSAtU0L42mi7PzAqbY8CVCNCjMEVYh/6JXpwy/fOFxol6Ubbli/n3FTN7DQAM60BVB11XwsWaxfNwHnnus+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kynesim.co.uk; spf=pass smtp.mailfrom=kynesim.co.uk; dkim=pass (2048-bit key) header.d=kynesim.co.uk header.i=@kynesim.co.uk header.b=OabX/qHo; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kynesim.co.uk
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43622267b2eso171872995e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 01:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kynesim.co.uk; s=google; t=1736329941; x=1736934741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:user-agent:in-reply-to
         :references:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=haQhNOyjQBZ9zsD++Rn1rcul3M/0sGJadNICjhHnplk=;
        b=OabX/qHof2TPr5OHzHEaCgCrat2AkTGpDtFyiEHriXVfQEiEnTnFOrbFVV3ADgMon2
         TdHdtSnmT6iTgW0dC9H/oQXnpPzj2GXRUgD/ISHCqnUOgCQHESpMOCEjzSk4uYN+w8Dg
         fHnaYEY56LRZtMqX91XH1iu4OgZ0BshNZ3wXdj7WwHZ/qZbnB6saK5PfRQ056gxtRcnY
         BfpdqZSYW/uMV1pzPErFMkZ5qT/wicX60W88nZ7YWZ5gVGqf83Sq4ELCER985ZqSZHJU
         QUR8xXXkSED8pMDFarS5ReVWwl3okddz9F4l2oppdGZI+6lHk5M1R3QBgQn8tImlWWNE
         Z/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736329941; x=1736934741;
        h=content-transfer-encoding:mime-version:user-agent:in-reply-to
         :references:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=haQhNOyjQBZ9zsD++Rn1rcul3M/0sGJadNICjhHnplk=;
        b=CX+5V1QycL4VymwQalRR8E1Zk5Dyg5ydYLmWLC1kvv5EFGIb53PHibB4+N5w7ZCb5u
         +kYPQeqjtCUMK3r2OhAEZW0WH03O2TavarRP+HVjZEzB9kF5LsYDnqoyvawX6epvK3vA
         Te0jEi1xYiDU/9UAX9MLUPo7E/d6xJti9FQoAmRh5si+Nk6Zt2Z1DoTps7cJVsCG+NHA
         6WOkXvEVCodWM/aMeg1GNhYc7yQNOznxUnz611/XV+AEIyYg2DNgCK7vofdhynbHUZ9k
         W6JPTNQidPkV0fmFz1ht1Pw5N6axyrusuzU6GHDrL5dTLbfxhk0WHUaj9QeJOQE30U9V
         ZS4A==
X-Forwarded-Encrypted: i=1; AJvYcCVWoIVoiwSmmNQy9/vGZbGThSCy4j2BUjBQLtuvSl17h2DXzK83hEyzd4haq3PMw5avGYKMHg63UlhL@vger.kernel.org
X-Gm-Message-State: AOJu0YyiCY2AV2KDTJn+KA+OrBBjFhkssdhjvBH4+0mnWE8KusM4Nr2e
	qP05DRa/ppCMFkBNJbOq/H5fAIIsSut8TgRdMa1zW8kWzXGF5xFAMfTg0afhcEo=
X-Gm-Gg: ASbGncvXOCl/v7EwfbD+gbITA20Q+b9rp2/1zGkDZglXtVBLnhZJFlzg5z5hkOTSspq
	dHuAIC2Yli2HvP9uC87S1lGdsXmRt+Hf0w0zdr5Mn9H5gdiP+ts3KB8gU2at4F22oFoVD8PY3Ll
	Sfco3m1vlm30cTo90sDPnndNXctyNmcErUNNKJCAE+g/4VJ8BGpT4IGgSy6wZp7YXWWOnMn95I3
	RXhfc4SRCQDPspCNqBMqiG8azt2PMMDq+4aAj08xDEApM5GrIM6HuQ8vgmd17JZ62VnBCJ32bNZ
	eaqc7lfpfUtLJI8RlwoHzSIPU3sIC5cT2gMtLdVNEu7HJCMSGB2oP0KfoD60
X-Google-Smtp-Source: AGHT+IFyzlDBW0vXkH+stkA+DphyFfBet0yVr9hMTLYpxEMOFakvSnErsaOMXQXES69rhJyKcgy6NA==
X-Received: by 2002:a05:600c:46d0:b0:431:58cd:b259 with SMTP id 5b1f17b1804b1-436e26f4d53mr17246565e9.31.1736329940775;
        Wed, 08 Jan 2025 01:52:20 -0800 (PST)
Received: from CTHALPA.outer.uphall.net (cpc91456-cmbg20-2-0-cust124.5-4.cable.virginm.net. [86.21.160.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2e9a5bbsm14672195e9.44.2025.01.08.01.52.19
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 08 Jan 2025 01:52:20 -0800 (PST)
From: John Cox <jc@kynesim.co.uk>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>, Sakari Ailus	 <sakari.ailus@linux.intel.com>, Laurent Pinchart	 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, Broadcom internal kernel review list	 <bcm-kernel-feedback-list@broadcom.com>, John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, review list <kernel-list@raspberrypi.com>, Ezequiel Garcia	 <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, John Cox <john.cox@raspberypi.com>
Subject: Re: [PATCH 0/7] Raspberry Pi HEVC decoder driver
Date: Wed, 08 Jan 2025 09:52:20 +0000
Message-ID: <fnhsnjlvifnma1rqlsm9kqk7ao3bc174ic@4ax.com>
References: <20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com> <6d6c49919af9e782bd8e9be5066e92c9704ad5b7.camel@ndufresne.ca>
In-Reply-To: <6d6c49919af9e782bd8e9be5066e92c9704ad5b7.camel@ndufresne.ca>
User-Agent: ForteAgent/8.00.32.1272
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Mon, 06 Jan 2025 15:46:51 -0500, you wrote:

>Hi Dave,
>
>Le vendredi 20 d=C3=A9cembre 2024 =C3=A0 16:21 +0000, Dave Stevenson a =
=C3=A9crit=C2=A0:
>> Hi All
>>=20
>> This has been in the pipeline for a while, but I've finally cleaned
>> up our HEVC decoder driver to be in a shape to at least get a first
>> review.
>> John Cox has done almost all of the work under contract to Raspberry
>> Pi, and I'm largely just doing the process of patch curation and
>> sending.
>>=20
>> There are a couple of questions raised in frameworks.
>> The main one is that the codec has 2 independent phases to the decode,
>> CABAC and reconstruction. To keep the decoder operating optimally
>> means that two requests need to be in process at once, whilst the
>> current frameworks don't want to allow as there is an implicit
>> assumption of only a single job being active at once, and
>> completition returns both buffers and releases the media request.
>>=20
>> The OUTPUT queue buffer is finished with and can be returned at the
>> end of phase 1, but the media request is still required for phase 2.
>> The frameworks currently force the driver to be returning both
>> together via v4l2_m2m_buf_done_and_job_finish. v4l2_m2m_job_finish
>> would complete the job without returning the buffer as we need,
>> however if the driver has set =
VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF
>> then we have a WARN in v4l2_m2m_job_finish.
>> Dropping the WARN as this series is currently doing isn't going to be
>> the right answer, but it isn't obvious what the right answer is.
>> Discussion required.
>
>I think part of the manual request completion RFC will be to evaluate =
the impact
>on VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF feature. MTK does not =
support
>interleaved interlaced decoding (only alternate), so they didn't have to
>implement that feature.
>
>Overall, It would be nice to get your feedback on the new manual request
>proposal, which is I believe better then the pin/unpin API you have in =
this
>serie.

Is the effect of the manual complete API different from the pin API? Pin
incs the ref count on the media object to prevent competion,
manaul_complete sets a flag to do the same thing. Or have I missed the
point?

I don't mind what call is used as long as the effect is to be able to
delay media object completion. (In my first veraion of the code I
created a dummy object and attached it to the media object, when I
wanted to unpin I deleted the dummy object - pin was just a cleaner
API.)

The pin API is counted and needs no new structure elements (which is
nice), but manual_complete does give a flag that allows other functions
to know that holding on to the media object whilst releasing OUTPUT is
intentional so can be made to work cleanly with things like
v4l2_m2m_job_finish so is probably the better solution (assuming my
understand of how it works is correct).=20

I'll try to build a version of the code using manual_complete in the
next few days.

Regards

JC

>>=20
>> We also have a need to hold on to the media request for phase 2. John
>> had discussed this with Ezequiel (and others) a couple of years back,
>> and hence suggested a patch that adds media_request_{pin,unpin} to
>> grab references on the media request. Discussion required on that
>> or a better way of handling it.
>>=20
>> I will apologise in advance for sending this V1 just before I head off
>> on the Christmas break, but will respond to things as soon as =
possible.
>
>One thing missing in this summary is how this driver is being validated
>(specially that for this one requires a downstream fork of FFMPEG). To =
this
>report we ask for:
>
>- v4l2-compliance results
>- Fluster conformance tests results [1] and I believe you need [2]
>
>[1]=C2=A0https://github.com/fluendo/fluster
>[2]=C2=A0https://github.com/fluendo/fluster/pull/179
>
>GStreamer support is there in main now, but without the needed software =
video
>converter for you column tiling, we can't use it for that (i.e. only =
works
>through GL or Wayland).
>
>regards,
>Nicolas
>
>>=20
>> Thanks
>>   Dave
>>=20
>> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
>> ---
>> Dave Stevenson (4):
>>       docs: uapi: media: Document Raspberry Pi NV12 column format
>>       media: ioctl: Add pixel formats NV12MT_COL128 and =
NV12MT_10_COL128
>>       media: dt-bindings: media: Add binding for the Raspberry Pi HEVC=
 decoder
>>       arm: dts: bcm2711-rpi: Add HEVC decoder node
>>=20
>> Ezequiel Garcia (1):
>>       RFC: media: Add media_request_{pin,unpin} API
>>=20
>> John Cox (2):
>>       media: platform: Add Raspberry Pi HEVC decoder driver
>>       RFC: v4l2-mem2mem: Remove warning from v4l2_m2m_job_finish
>>=20
>>  .../bindings/media/raspberrypi,hevc-dec.yaml       |   72 +
>>  .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  |   42 +
>>  MAINTAINERS                                        |   10 +
>>  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi        |    5 +
>>  arch/arm/boot/dts/broadcom/bcm2711.dtsi            |    9 +
>>  drivers/media/mc/mc-request.c                      |   35 +
>>  drivers/media/platform/raspberrypi/Kconfig         |    1 +
>>  drivers/media/platform/raspberrypi/Makefile        |    1 +
>>  .../media/platform/raspberrypi/hevc_dec/Kconfig    |   17 +
>>  .../media/platform/raspberrypi/hevc_dec/Makefile   |    5 +
>>  .../media/platform/raspberrypi/hevc_dec/hevc_d.c   |  443 ++++
>>  .../media/platform/raspberrypi/hevc_dec/hevc_d.h   |  190 ++
>>  .../platform/raspberrypi/hevc_dec/hevc_d_h265.c    | 2629 =
++++++++++++++++++++
>>  .../platform/raspberrypi/hevc_dec/hevc_d_hw.c      |  376 +++
>>  .../platform/raspberrypi/hevc_dec/hevc_d_hw.h      |  303 +++
>>  .../platform/raspberrypi/hevc_dec/hevc_d_video.c   |  685 +++++
>>  .../platform/raspberrypi/hevc_dec/hevc_d_video.h   |   38 +
>>  drivers/media/v4l2-core/v4l2-ioctl.c               |    2 +
>>  drivers/media/v4l2-core/v4l2-mem2mem.c             |    7 -
>>  include/media/media-request.h                      |   12 +
>>  include/uapi/linux/videodev2.h                     |    5 +
>>  21 files changed, 4880 insertions(+), 7 deletions(-)
>> ---
>> base-commit: e90c9612ac3969cb8206029a26bcd2b6f5d4a942
>> change-id: 20241212-media-rpi-hevc-dec-3b5be739f3bd
>>=20
>> Best regards,

