Return-Path: <devicetree+bounces-225741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FD1BD07F4
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 18:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 419A01893112
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 16:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440EE1C5F27;
	Sun, 12 Oct 2025 16:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BR6XTV9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867F3749C
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 16:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760287981; cv=none; b=GU0iuY0QY9MYL1qhDddoY+lru8qX4vKg2SRYhO74nbAeGQWHYy33U/mnaWjet7fG6XAcSYH6rdCDa3vVYH76v+OtRQnKv6BnyK9oUdrnxMyuhr4N9ok6S2ehD5epnNBEI7sNDCKlEWqDn8fCYTsBPY+DSA5yKiMT+1ETzRvq8Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760287981; c=relaxed/simple;
	bh=is6hqOlUkMzHTcnRZLMTBo5nWV2BPzV5Tey9TxfEm6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YisALlH6T9kUo09ELctRjPPvrZK6I49IoYZPrTFXmbo6ZBI4yhSQ0j2v+iy8DCp5bjvSGH4l9DMDkK1ltfF65azA+gcCr8PPE1hHAqPwVP9nY00l1o26aFQMkYQaWcHYVSnF04onlMsB2QtDGlHaV4gWQ0QWf0fh79alqwpzxis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BR6XTV9T; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b3e44f22f15so506010466b.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 09:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760287978; x=1760892778; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JZxGJaBIG3WMNgOZk70IosVrcFGLTtGDI3zyIQtP54=;
        b=BR6XTV9TPGsCSsCXhUaHq2QW0sq08dFwDbXfd7zBz8v7PFy5s9Kq8fXSv5565AOn4Y
         5XT1yRKB7IYwmBtUOC97BjgfqeECAG3KWJ96JYaGUtyiLv6fSDIwYKhY+LR7DeoJjQeQ
         fNSYAgdLvjekMdhlULKceP3kCIbbYx1vc7VV3okYYHsNZPd/2qd5wZ3MakJwg1opjKBt
         D+JXY/YWFzXJO4G3LB17sjS5PFbwLiYB46aQQMMKXL7Gk8ZgZo6V/LnFWxBi+OTnpe06
         w1Vq4nRziatDjwJCmca1G+5niaNMATm5GRSwmZC6gfSrYi8XnpiL8jDdQL4cc5md+x1n
         Hxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760287978; x=1760892778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9JZxGJaBIG3WMNgOZk70IosVrcFGLTtGDI3zyIQtP54=;
        b=XacG5yHV88N52OEOL5xuIC8S5wSSi4MK0b7wxL0IU6xbKhSQYyq7ku0k5NPvv2cCCj
         RMCwhHM+Qhpxem1npRAqiSbSk6EK2EIuTY6lLxEYJ4O7tVEpq8QOSqwB6hXLlG+Fd9UZ
         IOuuJilQna/jQf8WSdaAw5DotmclpTGXLk6cJu2aEFWYa1QWKBLI+xgbj6sMIgnCUFtk
         DDxVWdmKt1Nc7P8qwYWeI9vnoGmpbeQ8Tzkqhqgon0Qs1BRTzGo4BF7+adOB79HpwoeQ
         tx4xrvRLI+yRNiYjirFW/gZY+jku6Q/MiN77gyzXv/nDvpDMabCHTOobkfjscVWPU1ml
         en4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVIZe/iQCGN7HRgZnTHBlzBksNvdfs1cX5lgEVuMZm4IOs2VbPOwZHUIvK7i1rbbb6BnGaSyfndVwhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YztsBNsks+fZGSXBVZePl8EThlcW8LMhTvY+B1C5NtynZ+aRMH6
	/x0Eczi2sTq5wtj3JYDaQynQfIs9397wKRQWA/S6iPkFArUM5zNHr2V2RnUYgPulD3S7/phn8ua
	clhD8Zm1x/XlDSMRb/cG3A2k5bcPXmSo=
X-Gm-Gg: ASbGncsBo3MMFGkdEYQA8q33aPBxeEwoULASjncokHb9vMAFhO17A4qkN2kbB4C66sy
	lVyuTUvbQZMwimCI0IJju1SFWGi5O5V1IVSyQO8n5cousBtr7INIrGNgUxZByb+SiT+J3uZLw8B
	g02xrs/Hvfp+1F+UfFg46vPG+Q/9jye6DxoXffqhMxH1f/i9fBSpRv/iob3CXDIcwY7gWwn9WRS
	PPp809TvURq8BTrgaeOCpKFHKjfb8VKeymP6w4m1v6j8VA=
X-Google-Smtp-Source: AGHT+IHYC6gZQ7sVGps73WqhA1pssx5WiOdWA9NawCEncOKl23yyV6N76hIZIr600VGaUVKRCSjt6piNcz8DHQRfwsg=
X-Received: by 2002:a17:907:7f8a:b0:b46:897b:d759 with SMTP id
 a640c23a62f3a-b50abaa3309mr2018683466b.40.1760287977711; Sun, 12 Oct 2025
 09:52:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251004015623.7019-1-raskar.shree97@gmail.com>
 <20251004015623.7019-2-raskar.shree97@gmail.com> <20251004141231.632c311d@jic23-huawei>
 <CAHc1_P7MU=BYf_8sbZqikpXpfuvAtLNJ2E_hmi-50ohoh+gQcg@mail.gmail.com> <20251012151130.797450e3@jic23-huawei>
In-Reply-To: <20251012151130.797450e3@jic23-huawei>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sun, 12 Oct 2025 22:22:46 +0530
X-Gm-Features: AS18NWB6k3kWKKLVTx0bu_UemQDkCkAOaqI3qRe-tlwz4EjAekbo6ZOk5wZIcpw
Message-ID: <CAHc1_P7heCXwgH1tnqKTPAg0RpTPEM9Q4NUsGoOJMk6gqyXnmA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 12, 2025 at 7:41=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Mon, 6 Oct 2025 08:34:03 +0530
> Shrikant <raskar.shree97@gmail.com> wrote:
>
> > On Sat, Oct 4, 2025 at 6:42=E2=80=AFPM Jonathan Cameron <jic23@kernel.o=
rg> wrote:
> > >
> > > On Sat,  4 Oct 2025 07:26:22 +0530
> > > Shrikant Raskar <raskar.shree97@gmail.com> wrote:
> > >
> > > > The MAX30100 sensor supports multiple LED pulse widths (200us, 400u=
s,
> > > > 800us, 1600us). These settings affect measurement resolution and po=
wer
> > > > consumption. Until now, the driver always defaulted to 1600us.
> > > >
> > > > Introduce a new device tree property `maxim,pulse-width` that allow=
s
> > > > users to select the desired pulse width in microseconds from device
> > > > tree.
> > > >
> > > > Valid values are: 200, 400, 800, 1600.
> > > >
> > > > This prepares for driver changes that read this property and config=
ure
> > > > the SPO2 register accordingly.
> > > >
> > > > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> > > Hi Shrikant,
> > >
> > > Explain why this is in some way related to characteristics of how the
> > > system containing this chip is built (wiring, lenses etc).  Otherwise
> > > this might instead be something that should be controlled from usersp=
ace
> > > not firmware.
> > >
> > > Also, give a little more on why we care about controlling it at all.
> > > Is there a usecase where power use of this chip matters?  Mostly I'd =
expect
> > > it to be in measurement equipment with relatively short measuring per=
iods.
> > >
> > > Jonathan
> > Hi Jonathan,
> >
> > Thanks for the feedback.
> >
> > The pulse width configuration is indeed dependent on the hardware integ=
ration
> > of the MAX30100. It affects how much optical energy the LEDs emit per s=
ample,
> > which in turn depends on physical factors such as:
> >
> >  - The type and thickness of the optical window or lens covering the se=
nsor
> >  - The distance between the LED and photodiode
> >  - The reflectivity of the skin/contact surface
> >
> > For example:
> >  - A smartwatch/wearable ring with a thin glass window can operate
> > with 200=E2=80=93400 =C2=B5s pulses to
> >    save power, while
> >  - A medical-grade pulse oximeter or a sensor mounted behind a thicker
> >    protective layer may require 800=E2=80=931600 =C2=B5s for reliable s=
ignal amplitude.
> >
> > I believe it would be appropriate to describe these fixed,
> > board-specific characteristics in the Device Tree,
> > since they are determined by the hardware design rather than being
> > runtime or user-controlled parameters.
> >
> > Would it be okay if I send v2 of the patch with the above explanation
> > included in the commit message?
> Hi Shrikant,
>
> I'd have this excellent detail + examples summarised in the patch descrip=
tion
> and also a small amount of description in the actual binding even if that=
 just says
> something like
>    Description:
>      Pulse width in... . Appropriate pulse width is dependant on factors
>      such as optical window absorption, distances and expected reflectivi=
ty
>      of skin / contact surface.
> That's just a quick mash up of what you have above, feel free to not use =
this
> particular text!
>
Thanks for your response. Sure, I will update the description in the
binding and will
update the commit message describing the details and examples. I will share=
 the
updated version of the patch shortly.
> The inclusion of target surface reflectivity in there makes me thing that
> for some applications we may also need userspace tweaking or some algorit=
hmic
> way to increase or decrease the value according to skin characteristics. =
However
> I guess maybe it isn't that sensitive.
Need to check on this point.

Thanks and regards,
 Shrikant

