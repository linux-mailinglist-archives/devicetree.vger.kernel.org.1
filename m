Return-Path: <devicetree+bounces-46915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1DB86B336
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 911021C22902
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 15:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3E515CD4A;
	Wed, 28 Feb 2024 15:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HPm6C3Xx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1225715B990
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 15:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709134502; cv=none; b=b6wSqiPt9QzLQOFZINVwYA7dMOhF0nhqxUJXV2qwyJG4Bm4g49Mo9R4j0xS/rzdyD19WjdOrX4O0RGF2cr/vp4DUC099PcWkRnWVt1OGvZzKyMg/NHm1OCTWc6byN1lD8ysVvIUy9V7m6dH/BZUWWFMf+u9qaXdr1ruPf6HWlks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709134502; c=relaxed/simple;
	bh=iNAvgyIqsVv/a99B/1dg7WEzlEY9khThv7cRxR59TPU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QSrTmV1KVTYiJA1JwXeFok4l0oxYREzjM48ujAq0VCrCsyeYDl6SOmS/pnZrVJYPKRIWmt0Kh1pXUzrd2oTsBtv2HW0ACxNwcs/I2dvH189oIC6pjSFwl0hM5Yr9Hj1oQVRx07rfS/GFY0+NDbAM/cz4EIuX3zLZt1LmxhWtyG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HPm6C3Xx; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7c796072dafso246208039f.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 07:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709134500; x=1709739300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNAvgyIqsVv/a99B/1dg7WEzlEY9khThv7cRxR59TPU=;
        b=HPm6C3XxwNfjszlsA1n/CowCufncjMuoBY7FmJY224uRb9Rog1S5Jy/CPK4ppcqYhc
         HHXiK9IP0gVRI558n7IbN+psZN/84HrMyuUuryIiPq+kYHFLfV/VwzGE9YGo1PfPQsDj
         fcAW+lB5IXyf9EyLS62MefSBNE680lGLroMHxqUWUTyO4hJba+HqSNAZ12j1X0J21VGs
         ZVsGinuuZdaOD+j3BXlepOMihbDI6+faOGE5AH9Cn/yDDW2OP+qCjAr+7nggzEd+2Y6C
         t/fSCyC0ulDIbOYVVs9ka6nyRMunYWVK8KENxZzoADJEjyXWa+pVxyhk6m7QzXfY1K/P
         dCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709134500; x=1709739300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNAvgyIqsVv/a99B/1dg7WEzlEY9khThv7cRxR59TPU=;
        b=J6eEcmVsrYRQ9/Xy3wH8b/zPckfUiKoawcmT1128/2R3CS152zM0YoTOPSFem9rD2v
         vMdMX+URoQoe+4uzlEtLbU3v50TVMbUMZT5NQcCfHkwgpIyI+3Lt+dqddsDtpHvVdlxu
         a3rS3XL/45q5Tci64b0rOS81h9DWTmZ9LiHRZkX7wTXVe/3CEgZ9EHSpWqYWSw16472F
         TrhInbgspfm7bPuF69+4v8XWrV8IBemcuNI6qMrEc6veCaOI99dYTs4aUK1sMUVYBply
         7pBOH+UfPRqQ7dxtWqKvRfTesjZwTIVncfoWfNgl53OQOAMvcbVUdvSEWAMrSXV3p5xm
         wGTQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1egRLWzmxxrYUVDI5FABSF4egEpPTgrp4eRwtAfEnQrogJg0YCTbRiflu9y6/o/r1N1i1IB4s7JfzLPM8f9Yu4kc9jy8Sll0LXw==
X-Gm-Message-State: AOJu0YyZTlaPAnBTyYgt2mnpA/Vd9NZhAFFHnGR8YCqD5WQd34qXJMVK
	Y5tkHX9BBjeiLW+ONWy/NQ1eBUhtroAta92fygfGe38zfEu8helZQN+vJ/fGT63KQpRWVEQuGEs
	Zusm4MhdeeCSeJ5rGsDVmdvTLgJxo4/IZ6Tn9
X-Google-Smtp-Source: AGHT+IEeVN3q9xNzpReeRZxijH7C6wt2a9IrbXxLntCsmJH6YSq6dIRXQNoD0I6sxRdNJtvS6Sw8zAyHk4q5Fcirhqk=
X-Received: by 2002:a6b:5a02:0:b0:7c7:b9bc:26ed with SMTP id
 o2-20020a6b5a02000000b007c7b9bc26edmr12066971iob.11.1709134500112; Wed, 28
 Feb 2024 07:35:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-2-panikiel@google.com>
 <ce262cda-84ba-4d8f-a916-76488c94066d@xs4all.nl>
In-Reply-To: <ce262cda-84ba-4d8f-a916-76488c94066d@xs4all.nl>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Wed, 28 Feb 2024 16:34:49 +0100
Message-ID: <CAM5zL5qrMNfyiXMOJHUzLySm_U2U8kbD=D_Cyn0WjkvpikiYpQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] media: v4l2-subdev: Add a pad variant of .query_dv_timings()
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	maarten.lankhorst@linux.intel.com, mchehab@kernel.org, mripard@kernel.org, 
	robh+dt@kernel.org, tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:25=E2=80=AFPM Hans Verkuil <hverkuil-cisco@xs4al=
l.nl> wrote:
>
> Hi Pawe=C5=82,
>
> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> > Currently, .query_dv_timings() is defined as a video callback without
> > a pad argument. This is a problem if the subdevice can have different
> > dv timings for each pad (e.g. a DisplayPort receiver with multiple
> > virtual channels).
> >
> > To solve this, add a pad variant of this callback which includes
> > the pad number as an argument.
>
> So now we have two query_dv_timings ops: one for video ops, and one
> for pad ops. That's not very maintainable. I would suggest switching
> all current users of the video op over to the pad op.

I agree it would be better if there was only one. However, I have some conc=
erns:
1. Isn't there a problem with backwards compatibility? For example, an
out-of-tree driver is likely to use this callback, which would break.
I'm asking because I'm not familiar with how such API changes are
handled.
2. If I do switch all current users to the pad op, I can't test those
changes. Isn't that a problem?
3. Would I need to get ACK from all the driver maintainers?

