Return-Path: <devicetree+bounces-66625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B638C3F74
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 13:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C2131F217B5
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 11:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC8F14C584;
	Mon, 13 May 2024 11:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="uJIFPuX9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBDB14BFA2
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715598445; cv=none; b=aO59dUS4dbJ++T2hyWLl7hBI08eYdjeiy7BJCrQZmJn8vEGjI5IpGV16HtnwFQrqqxXCzwwmx19vEEDelJcOO3M2vGjwXDDW/7YrSVb5hmCXRCI45sTBugupbHZrHUbFjc9pMoizwHE0HEuO/vZmRIcz15wb2k2oWi6u3+jdbWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715598445; c=relaxed/simple;
	bh=yGixI+iHGX3TPfXml7qxn2htJP1ksYMKCpPrGRjCsgU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YuTu4TXIDP5wu4/aluVgv1hPpgrxoUOAC3Kx4UbCOalz551r+7m41iiMwgTN5fT+18qatc+9BDH7rJcJkgRWxX/cyiUX4UwMUbr8H+089jUOlLZEopATTQMPEwb0Gohf3TVl8BPx9B20Ub0ObQaH37FBN7fiwPqlNnKg38hksoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=uJIFPuX9; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-7d9e70f388fso203188239f.2
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 04:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715598443; x=1716203243; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xGQJNn0vnDN7oHpQ2fYIvhBcLWv6XEpScm6BqxW6Gn4=;
        b=uJIFPuX9cC2kYiYBjXoyDCvDY5ovFnwkR8xHk8ZCZbyV907cCW6MgRDL3b1gMq4O81
         TYyeqt+kMHIWJrjrtOYr7NfgQcf7ICLTTY7bi2NCGcBsctVtgKNzxgtTHNAQHDzxu8kq
         azannFIZVjcwBThJ5xHlVKmTgwCUd8kaEHsv28IdAVSCpcnJeo6TUQ4cpe+RkgRGXnoR
         Y/zC7GdEZSdgb+khJHBStnoImadGDaclt5GXnQm7KLwEpf6q00LjJzeFjjrvdv7+DRnm
         f2RR18wFbCyi6cvTa94QrKfcaWrABul5PElHg8u6qcjoFcGn70AIkDuiXhCgMS3oqQb/
         mUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715598443; x=1716203243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xGQJNn0vnDN7oHpQ2fYIvhBcLWv6XEpScm6BqxW6Gn4=;
        b=hnKKf5JfHO4UeKaZETLEd89SYm7rqkJatLeDpFO35U0k6NShhfDWf1onRDkK1mYAwB
         gDCToMQUHNB3pN2ni1PLuaCuLXcuDr8ePfbga74Q6WPSrXVd7bscTRCb8KKevNfDWT4D
         N6GGm5gRTxBbvfFoO+gWb+5yl2IY3UynWImOCf85fy36r2TVA4hW0VkwfWEWKiSVf/a6
         ETpEiA1f2eOoe1S5cVnLNwwS3BM7mvEdGV3a1a3QP6x55JXcpVEkqYpDLpsbfjAE6OR6
         AFE6O6gxTDzWENNJlKBsfyZyF0Mqf60QuPHNCaWO+JTHvIxq4BdLI77EDbb3vyTDCQfC
         jtHg==
X-Forwarded-Encrypted: i=1; AJvYcCXlqnyRjxXrBXRWJ5gBWVMZ5MU7q4EHRr6P+XaZR41JJFPzOPTzayH16Ep3wwDTM0149hvp7yixZ+lY/8FmqsHZnfvx/5iXur7pww==
X-Gm-Message-State: AOJu0Yz4XvSFRNCRRl2Q2cqkWenX5PBGxIL59wsMnkkOD3jE+Ln8eSBc
	KgViaaZ+9QN7gC2deANTluCcFehCf4bJWoO3v3bPN62tYQGm4XJt3o2HyAl5SUrI9OwJm9kJtXo
	Y+LWdK55PreqXVs20D8qAbNg9ACcvzY5bdkpz
X-Google-Smtp-Source: AGHT+IEiadjb+MTc+UlqC6N1rwvvjZDJnAlay8TfzRluxCwQz8iR/sX8wqL+TFk3/kNd86shQakjYT2DoztuTJ1C/LM=
X-Received: by 2002:a05:6602:2992:b0:7da:bc23:ac16 with SMTP id
 ca18e2360f4ac-7e1b520775bmr1054622539f.14.1715598442659; Mon, 13 May 2024
 04:07:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507155413.266057-1-panikiel@google.com> <20240507155413.266057-6-panikiel@google.com>
 <20240510211613.GA751688-robh@kernel.org>
In-Reply-To: <20240510211613.GA751688-robh@kernel.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Mon, 13 May 2024 13:07:10 +0200
Message-ID: <CAM5zL5oBA6Bkk=qAEjx7pvQ5cxa9MFHe9=T3AQMuKskzbjFrzw@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] media: dt-bindings: video-interfaces: Support
 DisplayPort MST
To: Rob Herring <robh@kernel.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, tzimmermann@suse.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 11:16=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, May 07, 2024 at 03:54:08PM +0000, Pawe=C5=82 Anikiel wrote:
> > Add a DisplayPort bus type and a multi-stream-support property
> > indicating whether the interface supports MST.
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
> > ---
> >  .../devicetree/bindings/media/video-interfaces.yaml        | 7 +++++++
> >  include/dt-bindings/media/video-interfaces.h               | 2 ++
> >  2 files changed, 9 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/video-interfaces.y=
aml b/Documentation/devicetree/bindings/media/video-interfaces.yaml
> > index 26e3e7d7c67b..7bf3a2c09a5b 100644
> > --- a/Documentation/devicetree/bindings/media/video-interfaces.yaml
> > +++ b/Documentation/devicetree/bindings/media/video-interfaces.yaml
> > @@ -94,6 +94,7 @@ properties:
> >        - 5 # Parallel
> >        - 6 # BT.656
> >        - 7 # DPI
> > +      - 8 # DisplayPort
> >      description:
> >        Data bus type.
> >
> > @@ -217,4 +218,10 @@ properties:
> >        Whether the clock signal is used as clock (0) or strobe (1). Use=
d with
> >        CCP2, for instance.
> >
> > +  multi-stream-support:
>
> If MST is a known term for DP, then perhaps "dp-mst-support" for the
> name. In any case, 'dp' should be in there somewhere.

I tried to keep the name generic, for the use case of some other bus
with a similar feature, e.g. CSI-2 and virtual channels.

>
> > +    type: boolean
> > +    description:
> > +      Support transport of multiple independent streams. Used for
> > +      DisplayPort MST-capable interfaces.
>
> Wouldn't this be implied by the devices at each end of the link?

For the case of the Intel DP receiver, MST support is an IP
configuration option which cannot be determined at probe time, so it
needs to be read from DT. Having learned that the receiver should use
properties from video-interfaces, I decided to put this property here.
Do you think that's a good idea?

> The drivers for each device should really list out features supported for
> the link. The mode used is then the union of those 2 lists with DT
> properties only used when the union is not definitive.

The mode that actually gets used (MST vs non-MST) is negotiated during
link setup as part of the DP protocol - the sink reports to the source
if it supports MST, and it's up to the source's ability to enable MST
or not.

The property I'm adding here is only useful for the driver to know if
the hw supports MST or not (in the case it can't determine it itself).

>
>
> > +
> >  additionalProperties: true
> > diff --git a/include/dt-bindings/media/video-interfaces.h b/include/dt-=
bindings/media/video-interfaces.h
> > index 68ac4e05e37f..b236806f4482 100644
> > --- a/include/dt-bindings/media/video-interfaces.h
> > +++ b/include/dt-bindings/media/video-interfaces.h
> > @@ -12,5 +12,7 @@
> >  #define MEDIA_BUS_TYPE_CSI2_DPHY             4
> >  #define MEDIA_BUS_TYPE_PARALLEL                      5
> >  #define MEDIA_BUS_TYPE_BT656                 6
> > +#define MEDIA_BUS_TYPE_DPI                   7
> > +#define MEDIA_BUS_TYPE_DISPLAYPORT           8
> >
> >  #endif /* __DT_BINDINGS_MEDIA_VIDEO_INTERFACES_H__ */
> > --
> > 2.45.0.rc1.225.g2a3ae87e7f-goog
> >

