Return-Path: <devicetree+bounces-66146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FD48C191D
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 00:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A41728288B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 22:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24317129A6B;
	Thu,  9 May 2024 22:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Xv5yUcpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10A01292DC
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 22:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715292090; cv=none; b=Vfv4kSPyfPoNUEqSqRKI4HuX4xa8KA3YaD/lJJOQb1J2u16tj+PwxU63dzBzpBXcBbZw294QZceIu/2ddBizx/3+u5l3hb1ZBS7HgAdwCEX6XLSUN1vayv2j2S1CM3sRfstxUpix89AtEcy7wdLjD0bQ9rz3r5FSL5wvQywgqwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715292090; c=relaxed/simple;
	bh=c2+wGxwVoVYy08ApVv3oL/wqVIdU1UZ9aPHrnR2RtRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KTbo/K01CyWV3tf82+rLFM5dVaqSCDs9MBrnXghLV+rf16zZ7S3Q5sVVZbP3XW6P6pqjG3+BVQ7ji1MS8L6gtsQzWpou/zMeXxD0YkjaGvTvz0PKQukzbmyxv95EvJgehjf+jWtHkHuYVbNqSJWf9nrg+wVkmS5Wf3lYaqvuMjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Xv5yUcpG; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2e2b468ea12so12121761fa.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 15:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715292086; x=1715896886; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xnHYOWAhVzx2MCZups8we2bGRU6BNZU/YkcsQyEzx7M=;
        b=Xv5yUcpGuZtnsk43qJvifVUz3nx8ne9Gea7ryNvnPXEdpROkry3G58XKVch4fshDKx
         4p2C3U9QoGLZcCWRLq/ppKw8qmrP8ZnM4E+tPcxsa83aRTgMDSC5QHvWulgRs5HTBuF8
         93IjFbDNrJEyzie4Jlgytbn3+l9kYGysGSvZI6I84XOE+cm1yOqwuR9N02PqUwmWCkMw
         c/ashvf1Y+IswlidsViuzrlDoe1kaliIs8OatsBx49ikaMVUYzAik7IQVCTiLHuv6/k3
         51xx1XjFJ+csrTs97NzZsN/32OXmWRsZNthsHT0HqnSRyWmMgAQhL92jYkLDex43GRkY
         S3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715292086; x=1715896886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xnHYOWAhVzx2MCZups8we2bGRU6BNZU/YkcsQyEzx7M=;
        b=P4vu6RzVF8fLjYWXcnmc8W8nITl7Y7bQJFCOUQ8qtFuuTZp8YbzPJ+1c83zdYH/Kp0
         oL+ikdQTyGbGCwXDLm3E3bRSuJlA4y1JMroQpwPHFqHCvEjTJgXfNKMkenorxX5cFPCJ
         kvn5EvMzqCrdKUeT4dyXMYWZxOCA2/2BdAjXJnoRX7JHTJAnr4xKmxFgf0R3KapysLme
         348kTYgC/KHr7k9k5TGYsiOWX/HEikv/y06F+fjXarkU5OV6/gsWxNdpF58yv8mZ6dDY
         NFtykDBc+vNe2JvYa/0fNGYwQ8FJbQeOS1sdGoy6tZWRv2QRUTpkyrcK4dtpQavBvN2O
         Auzg==
X-Forwarded-Encrypted: i=1; AJvYcCXjN/GRBG3XKEOiGAlKlo4jh7LKj5HBojV08REDghtuboFYjSRRzCUHhCdFrShy2KhXJ6rHOoPpFo6M36uYpAD+SHM5j4c5i6CQaQ==
X-Gm-Message-State: AOJu0Yx5fJcKeigdR2PF19X5bW5AycBkGHCNo9idzXsnhE5MuvA+2u1s
	ELh2SBznuMcoGMzsdZjTYMagTxBTHrHe/RZme9W+TkSMCTf9Kq6wb8Hq2oeKyl8AZ5XfWeZx4e3
	k/nGNrIlRGML85tdlU96CDdNNAkAx+kLa1oOByA==
X-Google-Smtp-Source: AGHT+IGmkxEYjc0NQpRPLrFtYmBmIEh6mip5P+yeU1oy78tdUBlhMD93wRggNq3UrVCx80wRD2xGwsM288TElhwGXLY=
X-Received: by 2002:a2e:b617:0:b0:2e3:331e:e33d with SMTP id
 38308e7fff4ca-2e4b11109fbmr10692811fa.11.1715292085685; Thu, 09 May 2024
 15:01:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
 <20240501-adding-new-ad738x-driver-v6-9-3c0741154728@baylibre.com>
 <20240506151725.10cf025e@jic23-huawei> <CAMknhBFx-KVPRbm1xmKeU8ZaA7qt_c0_6eiUT-5kqTWVAvf3hw@mail.gmail.com>
 <20240508122556.00005f71@Huawei.com>
In-Reply-To: <20240508122556.00005f71@Huawei.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 9 May 2024 17:01:14 -0500
Message-ID: <CAMknhBH=R2D4yu6Psnh+gv=OpCNAEwi8fpvMcJd0n9-SBfNWqg@mail.gmail.com>
Subject: Re: [PATCH RFC v6 09/10] iio: adc: ad7380: add support for rolling
 average oversampling mode
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Julien Stephan <jstephan@baylibre.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 8, 2024 at 6:26=E2=80=AFAM Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:
>
> On Mon, 6 May 2024 10:04:10 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > On Mon, May 6, 2024 at 9:17=E2=80=AFAM Jonathan Cameron <jic23@kernel.o=
rg> wrote:
> > >
> > > On Wed, 01 May 2024 16:55:42 +0200
> > > Julien Stephan <jstephan@baylibre.com> wrote:
> > >
> > > > Adds support for rolling average oversampling mode.
> > > >
> > > > Rolling oversampling mode uses a first in, first out (FIFO) buffer =
of
> > > > the most recent samples in the averaging calculation, allowing the =
ADC
> > > > throughput rate and output data rate to stay the same, since we onl=
y need
> > > > to take only one sample for each new conversion.
> > > >
> > > > The FIFO length is 8, thus the available oversampling ratios are 1,=
 2, 4, 8
> > > > in this mode (vs 1,  2, 4, 8, 16, 32 for the normal average)
> > >
> > > Ah. I should have read on!
> > >
> > > >
> > > > In order to be able to change the averaging mode, this commit also =
adds
> > > > the new "oversampling_mode" and "oversampling_mode_available" custo=
m
> > > > attributes along with the according documentation file in
> > > > Documentation/ABI/testing/sysfs-bus-iio-adc-ad7380 since no standar=
d
> > > > attributes correspond to this use case.
> > >
> > > This comes to the comment I stuck in the previous patch.
> > >
> > > To most people this is not a form of oversampling because the data ra=
te
> > > remains unchanged. It's a cheap low pass filter (boxcar) Google point=
ed me at:
> > > https://dsp.stackexchange.com/questions/9966/what-is-the-cut-off-freq=
uency-of-a-moving-average-filter
> > >
> > > in_voltage_low_pass_3db_frequency would be the most appropriate stand=
ard
> > > ABI for this if we do treat it as a low pass filter control.
> > >
> > > I'm not necessarily saying we don't want new ABI for this, but I woul=
d
> > > like to consider the pros and cons of just using the 3db frequency.
> > >
> > > So would that work for this part or am I missing something?
> > >
> >
> > I like the idea. But from the link, it looks like the 3dB frequency
> > depends on the sampling frequency which is unknown (e.g. could come
> > from hrtimer trigger).
> >
> > Would it be reasonable to calculate the 3db frequency at the max
> > sample rate that the chip allows and just use those numbers?
> >
> Ah. So looking at datasheet the normal average oversampling is
> self clocked, but this version is not.
>
> So, I'll ask the dumb question.  What is this feature for?
> We have to pump the SPI bus anyway why not just do the maths in
> userspace?  Oversampling is normally about data rate reduction
> with a bonus in precision obtained.
>
> Jonathan
>

I asked the apps engineers and the answer I got is that it a way to
enable oversampling while still maintaining a high sample rate.

Another thing to consider here is that we can only enable the extra
resolution bits if oversampling is enabled (normal or rolling mode).
The chip might not work right if we try to enable the extra bits
without oversampling enabled.

So my thinking is perhaps it is better to keep the rolling mode as
oversampling rather than trying to call it a low pass filter. As you
said, normal mode is about data rate reduction with bonus precision.
Rolling average oversampling mode then would then just be for the
bonus precision.

