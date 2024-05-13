Return-Path: <devicetree+bounces-66691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9778C43F1
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 17:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08C3F1F23F21
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 15:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1D656B89;
	Mon, 13 May 2024 15:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Vg2uyfnY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BFC1DFFB
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 15:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715613369; cv=none; b=Moi61UcVIimVY7yARxsAwb3WoYETQV1q2YEmPxwCy2u4Pt/Jp++KUJNkQOMFr+yBvC7AxQzMFzTLIg3mR8BcCUiR5P4Rd3Ixbb5I2jXMHTC9xlL/nPu2LiUJ4hKat6/csUfxfjkIxk28ALOc5L7mIpPTeXN6WSGK2kignAKyRwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715613369; c=relaxed/simple;
	bh=/v6zZK8vC1iWKChJg5ELITID+E0oYkoNv1bfMOqpejI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VZ6R0Ai7TIGYCXXehhohQ0N0VDKgdUONZc7HwgaNZGE23k/S7fMRKYwelbty04Jd5K+QQdbp4pvH8oFzjhwae5YHbq1Oxd2FwzHiH1937EBKbPRDYN5mWsthrspY8+/3MIw1G3V4umckCspJjm3VMw1sL5X2V4XsjZ3KvyCrloQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Vg2uyfnY; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e0933d3b5fso66104481fa.2
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 08:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715613365; x=1716218165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uXHSyWB6fJ4bI4UOzHNSJAK2n7Pmu648dfIJZfg2RtE=;
        b=Vg2uyfnYQWnV59dji9In+wfBSNsCejh0Z+Dw96/imVYb6ssAlSuNPPuEnqJJpmzOcj
         PldL5hSFA749LMtYihYpsZsiF0SImByQCLesVZAdDZPnz/qKgWcEGdwjwIdOgdFCjLuP
         dvf3RdlWtCxB3iLnCkYqSYrbvzSKq/NISW+A+PidRQzUWTgElcQZ/HnKzaiMBIrV8zx3
         /1EMAUMpgKk/VgKZXLE3uW+cZSCeuX51Ra6yGSqNPWAfeLWi8iHs/9UX721/QqA1ReoA
         mC3HTpXFI9kaDY8sI47OjqjxjoLDpcoTaLwqePegOBFb1XBAmB9evtB2qm+QcepFICkA
         2vqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715613365; x=1716218165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXHSyWB6fJ4bI4UOzHNSJAK2n7Pmu648dfIJZfg2RtE=;
        b=JwJtzXuo50WNDDPDKYZm3kp5JFOJrLJAZflLZbWz5e2ac4FibhLfgoRx+1OnbT575g
         RX289+gBVF2xMjDi/KodWF5eE1Q1Na2SWZ0/Tr5DlDqM5+xVSV98h7geLSWLqeP/Svt7
         U1n1wrI0ORxu43DjYyiv8BjiOJ2rJj7tASPJe+CyywwU+GpC/iq8RxL7iSx8tN4QOn8H
         SAlgRFDCKdIC6sUq3rK91fESob1A2i1shttoW1aty4lEVTNVc66rdJ9dZ0YzkKVh95lv
         lkoJEVq7u+wESa6XBX0FNhdJ2HPhXTUBdb/aSOeCvg7HLhiirqop0mGDbddUpDMeOQNX
         nwcw==
X-Forwarded-Encrypted: i=1; AJvYcCWlgDufA5Zl5nhxppmDAOqpXKy1U4/yg4dme/biedKg5wz6NGEzUOIgdagzLggO7n2E9hfuPyr0EAx+l0BN26uke2fZnDq5Y2M3jA==
X-Gm-Message-State: AOJu0YxAvvVrzybygLLOr78cvPgjvToXFjX2A5V/ExfUHmazIB1f9/ah
	7O5USIvfruhRTUNXHLUEtXIhd6uRbYcQp14uUtYzQvzgYndgr9srS0w1DxsLiC2rps/LRGmkkiN
	MpJ+7MGkvtGiUhZNHo8/h2BnETPAxw6HCcp0ODQ==
X-Google-Smtp-Source: AGHT+IGKijrN67shG2KPnM4VRi/Q9YI0q+7SOQY6GvY0EJC5mkeXMC97pzJgBqg0pSAdaBuhfs6XNl1xEroVw6ed6J0=
X-Received: by 2002:a05:651c:d1:b0:2e0:c6ec:bcc1 with SMTP id
 38308e7fff4ca-2e5204ac486mr60438181fa.45.1715613365410; Mon, 13 May 2024
 08:16:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510-dlech-mainline-spi-engine-offload-2-v2-0-8707a870c435@baylibre.com>
 <20240510-dlech-mainline-spi-engine-offload-2-v2-8-8707a870c435@baylibre.com>
 <20240511175832.6c2f6517@jic23-huawei> <CAMknhBGG9bYwzPw8woaR_YaVRW+wpT4W1KpHzG32nWj9Qi7fig@mail.gmail.com>
 <20240512125202.312d0576@jic23-huawei>
In-Reply-To: <20240512125202.312d0576@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 13 May 2024 10:15:54 -0500
Message-ID: <CAMknhBHMz2OEVGC_e44zoKz6+WLgP07KkOOMbxb6_bidXRm2Bw@mail.gmail.com>
Subject: Re: [PATCH RFC v2 8/8] iio: adc: ad7944: add support for SPI offload
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	David Jander <david@protonic.nl>, Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 12, 2024 at 6:52=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Sat, 11 May 2024 13:41:09 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > On Sat, May 11, 2024 at 11:58=E2=80=AFAM Jonathan Cameron <jic23@kernel=
.org> wrote:
> > >
> > > On Fri, 10 May 2024 19:44:31 -0500
> > > David Lechner <dlechner@baylibre.com> wrote:
> > >
> > > > This adds support for SPI offload to the ad7944 driver. This allows
> > > > reading data at the max sample rate of 2.5 MSPS.
> > > >
> > > > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > > > ---
> > > >
> > > > v2 changes:
> > > >
> > > > In the previous version, there was a new separate driver for the PW=
M
> > > > trigger and DMA hardware buffer. This was deemed too complex so the=
y
> > > > are moved into the ad7944 driver.
> > > >
> > > > It has also been reworked to accommodate for the changes described =
in
> > > > the other patches.
> > > >
> > > > RFC: This isn't very polished yet, just FYI. A few things to sort o=
ut:
> > > >
> > > > Rather than making the buffer either triggered buffer or hardware b=
uffer,
> > > > I'm considering allowing both, e.g. buffer0 will always be the trig=
gered
> > > > buffer and buffer1 will will be the hardware buffer if connected to=
 a SPI
> > > > controller with offload support, otherwise buffer1 is absent. But s=
ince
> > > > multiple buffers haven't been used much so far, more investigation =
is
> > > > needed to see how that would work in practice. If we do that though=
, then
> > > > we would always have the sampling_frequency attribute though even t=
hough
> > > > it only applies to one buffer.
> > >
> > > Why would someone who has this nice IP in the path want the conventio=
nal
> > > triggered buffer?  I'm not against the two buffer option, but I'd lik=
e to know
> > > the reasoning not to just provide the hardware buffer if this SPI off=
load
> > > is available.
> > >
> > > I can conjecture reasons but would like you to write them out for me =
:)
> > > This feels like if someone has paid for the expensive hardware they p=
robably
> > > only want the best performance.
> > >
> >
> > For me, it was more of a question of if we need to keep the userspace
> > interface consistent between both with or without offload support. But
> > if you are happy with it this way where we have only one or the other,
> > it is less work for me. :-)
>
> So inconsistency in userspace interfaces can occur for many reasons like
> whether the interrupt is wired or not, but in this particularly
> case I guess we have ABI stability issue because there are boards out the=
re
> today and people using the driver without this offload functionality.

FWIW, the ad7944 driver will be landing in 6.10, so no users to speak of ye=
t.

> I'd not really thought that bit through, so I think you are correct that
> we need to maintain the triggered buffer interface and 'add' the new
> ABI for the offloaded case.  The multibuffer approach should work for thi=
s.
> Will be interesting if any problem surface from having two very different
> types of buffer on the same device.
>

In this particular case, I think the issues will be:
1. The hardware buffer can't allow the soft timestamp. Otherwise, the
buffer layout is the same (on other chips, we won't always be so
lucky).
2. The hardware trigger (sampling_frequency attribute) will only apply
if there is the SPI offload support.

