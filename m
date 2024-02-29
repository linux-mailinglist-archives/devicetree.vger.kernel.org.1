Return-Path: <devicetree+bounces-47233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9447786C815
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 12:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B48F28920B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 11:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E8D7BAEB;
	Thu, 29 Feb 2024 11:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="K55/xU47"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF20F7AE41
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709206418; cv=none; b=DvbbeeUKoac+v3TIAmLo+FjlX4wSJV/6nuz+gq3GgtDFKfFX8/s+o6KDfC0LAv8bufUq85Cgj4KgufnGUa16ZWuvOmyFuZMfz2VjLM8WutuKZ5i4NJMv/2ksMC6hh75G+c54j8MTt+llAIt9hB7GcZA3pIeXjShkuyoXO2AQoTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709206418; c=relaxed/simple;
	bh=OdwXQtCzfRxqJt2/JOnHMtt1+ULlsFGxa5d4NtRnE9o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gDFN8RlmURtwvN1fKJx+ZsnJqPOpBC1F/MF+dg4/JN7HyIZsHBYSDw1NluTWo7YmxXE40k9b7vG7Np5bJOrr+7Pcd8VfnItgPfzcLQqHTJ8JMmXFuiyRHC06XgN83AebxTlVvs0yDwbipZuFuO2e7mft7Z4uttGVDLX8BK0l2rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=K55/xU47; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-7c7476a11e0so41077739f.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 03:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709206416; x=1709811216; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdwXQtCzfRxqJt2/JOnHMtt1+ULlsFGxa5d4NtRnE9o=;
        b=K55/xU47T4Fp6vR8BLaP79sd/JQLiFuyzD2QFh8xIZsTbEiZrlRvGYtHVlSoLOc+n4
         JdpcYXhe2UySjUYJKNaGL4MJpnVUmzSmwKqA671PMEdih7fTIsLC/4r82Ffpp2ElY2NB
         ZIHLH0UtZO9rr3sUE7LJbLTbRCf9aYjDQgUQnVtE2WlDLloAWY0Z86o/qiIOd3W7BDLt
         nDd18+O2URicNUJ0FJC8X/AVg+0GYvmdRcam8zvQxPgwaUjGUlPT3+5+DzbLLQ46b7VG
         QRw3iemzVnI5vJMDeU8CKKzK88xG9Hlm4iS6U1aZg2F3cLEUvdNe5/IN/jqx6sI5puQi
         cIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709206416; x=1709811216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdwXQtCzfRxqJt2/JOnHMtt1+ULlsFGxa5d4NtRnE9o=;
        b=hHOwwF90ssdlF35uFOeiBeRSuOKOVWBerDUBI4P7IYoXLhwmsdNJj7dL7dmrvTETg6
         pS+BvG5LtoTJjIRgdF3DYWSMiEhRHQIHx17EsNBhmXFI6dm/WJ8Y9MrGZtG5t2v1+72C
         t5tzFolMq4qZRcYnNR3zhOOWrF8O//Ob6bCIDcsvkIoxU5Z1ZD6jKegAhYOAAxNehfsk
         0I5fhA7+703tjr5LDhotT+c+GyiKvBFsaGopwpJLZUkCZ7I7tI6oWH5aPVVzlOYa8z/4
         chpFf4Uudyiltv6IrgiuSfpSwBv1YgyJ5bkcmQZD/4RhdhnDnci3KEYF/RsHMmrU6Tcp
         sFdA==
X-Forwarded-Encrypted: i=1; AJvYcCW0I3JP5FF2ONFkljRrCVeX2gdjnjAceCOzOJqe7sGibPqiChnTr2gV4OpkSpVH0nBExHedWTB26g9LemA1Fful9i1ECC/D4CT+WQ==
X-Gm-Message-State: AOJu0YxEBtElRAmfzyEoZPKUu5+C0xk3PzLC56+u8ZXWBphdtWJHdl6a
	MLpBbTaSwQXFFmgfqFsaEdaP7QFLHe7STNdfojI1QGpcKAtkZICdw4V0PTAKyOQ+IEpYHqjxOTr
	4pmi4PWZjb+77alhPS35jb61smjUnV40EpR4e
X-Google-Smtp-Source: AGHT+IEyR1QF0mvxlymN3UNZ9/6PJpld7SFPaZT8wcg31g8q4y/VVJDwXOdOLXwJcDBtzynOXQAaauZ5TcxpJAykKUM=
X-Received: by 2002:a6b:c98d:0:b0:7c4:9cb9:da3 with SMTP id
 z135-20020a6bc98d000000b007c49cb90da3mr1901383iof.1.1709206415733; Thu, 29
 Feb 2024 03:33:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-2-panikiel@google.com>
 <ce262cda-84ba-4d8f-a916-76488c94066d@xs4all.nl> <CAM5zL5qrMNfyiXMOJHUzLySm_U2U8kbD=D_Cyn0WjkvpikiYpQ@mail.gmail.com>
 <03f65fbc-9cf8-4347-8277-e53cb01b00a5@xs4all.nl>
In-Reply-To: <03f65fbc-9cf8-4347-8277-e53cb01b00a5@xs4all.nl>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Thu, 29 Feb 2024 12:33:24 +0100
Message-ID: <CAM5zL5r5JtA2HojaYZkSfUvoMTSNWALQM8HVuuXq-Znu7+TvGw@mail.gmail.com>
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

On Thu, Feb 29, 2024 at 9:02=E2=80=AFAM Hans Verkuil <hverkuil-cisco@xs4all=
.nl> wrote:
>
> On 28/02/2024 16:34, Pawe=C5=82 Anikiel wrote:
> > On Wed, Feb 28, 2024 at 12:25=E2=80=AFPM Hans Verkuil <hverkuil-cisco@x=
s4all.nl> wrote:
> >>
> >> Hi Pawe=C5=82,
> >>
> >> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> >>> Currently, .query_dv_timings() is defined as a video callback without
> >>> a pad argument. This is a problem if the subdevice can have different
> >>> dv timings for each pad (e.g. a DisplayPort receiver with multiple
> >>> virtual channels).
> >>>
> >>> To solve this, add a pad variant of this callback which includes
> >>> the pad number as an argument.
> >>
> >> So now we have two query_dv_timings ops: one for video ops, and one
> >> for pad ops. That's not very maintainable. I would suggest switching
> >> all current users of the video op over to the pad op.
> >
> > I agree it would be better if there was only one. However, I have some =
concerns:
> > 1. Isn't there a problem with backwards compatibility? For example, an
> > out-of-tree driver is likely to use this callback, which would break.
> > I'm asking because I'm not familiar with how such API changes are
> > handled.
>
> It's out of tree, so they will just have to adapt. That's how life is if
> you are not part of the mainline kernel.
>
> > 2. If I do switch all current users to the pad op, I can't test those
> > changes. Isn't that a problem?
>
> I can test one or two drivers, but in general I don't expect this to be
> a problem.
>
> > 3. Would I need to get ACK from all the driver maintainers?
>
> CC the patches to the maintainers. Generally you will get back Acks from
> some but not all maintainers, but that's OK. For changes affecting multip=
le
> drivers you never reach 100% on that. I can review the remainder. The DV
> Timings API is my expert area, so that shouldn't be a problem.
>
> A quick grep gives me these subdev drivers that implement it:
>
> adv748x, adv7604, adv7842, tc358743, tda1997x, tvp7002, gs1662.
>
> And these bridge drivers that call the subdevs:
>
> cobalt, rcar-vin, vpif_capture.
>
> The bridge drivers can use the following pad when calling query_dv_timing=
s:
>
> cobalt: ADV76XX_PAD_HDMI_PORT_A
> rcar_vin: vin->parallel.sink_pad
> vpif_capture: 0
>
> The converted subdev drivers should check if the pad is an input pad.
> Ideally it should check if the pad is equal to the current input pad
> since most devices can only query the timings for the currently selected
> input pad. But some older drivers predate the pad concept and they
> ignore the pad value.

Thank you for the helpful info. I will switch all these drivers to the
pad op, then. Would you like me to prepare a separate patchset, or
should I include the changes in this one?

