Return-Path: <devicetree+bounces-190903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEAAAED215
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 03:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9160E189445E
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 01:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C0426AF3;
	Mon, 30 Jun 2025 01:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DbU/Y52z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FA01EB5B
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 01:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751245380; cv=none; b=tU6i6zSfLmGBANkECR/9GXljB7VJKiaGi9OoSU/p51YxjM/u00qG0XoqXsdRFH7v9rlVK/e3Ns7AircYH8gL6jSE+8p6p/Ng7GGjbu7MicH7R6VJYq3vMftv+NPTuxPeAXkS3iAIt7XZDJx0rdennQAJkfQDNVuuxu7KIqC5Pik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751245380; c=relaxed/simple;
	bh=uSTgHYx4C4kBqf1HLkMQN6sxONduD5cTV2ZutL1GEdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUgMu+ddKA/Hs+Q8JKQ3z5yNC1svPgZjXwE4uNNA88SSs3t+7kfY6APC9UMGC+xtMUrcwIe6DAEHRmVO3KmQBEwgNO7R7j9DamekEf6JXdf4HnuhA7G4oiQOxu222sTXgEc1wI/Q8rOi6d42/JFF43WHcucDmjMf7X0DPbEytjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DbU/Y52z; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-748e81d37a7so2841959b3a.1
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 18:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751245378; x=1751850178; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lHC8G37kFyRpeOrqLUvPPIOdjSNN7VBUfiKPLfHZcIs=;
        b=DbU/Y52zsp2ru5YoOCxlHgr73TRes0Me/DuRHSM/biPCB9lBfrtYZ49ki2x/jvPxYr
         JqG31xL3DjWyS6/rV/3yQ1g7n+yOxKBjyhH0c/E2fNa0Xt72Aqcop0w4ZmKPJ+OnRzMW
         sstMpGXs1FipaBp24tX6pz8LJPFI6TnP6fEFd/zYufp/vbgMCbVJYZ4rfv0i3j4TYSC/
         If+lCYIdeQD71KmDtW2/41KKnwAykv8NTcXf0RJVBBg4/lv8z175SfpQ8VW+fmTazhqs
         K2Uav3a8j2uuoye/FwTduqtI1Kububx4CpXfzM50KH1hJ+VX080UVPNLGXwLMyRFayhC
         Nc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751245378; x=1751850178;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lHC8G37kFyRpeOrqLUvPPIOdjSNN7VBUfiKPLfHZcIs=;
        b=NhVFbkIvVBjpxgER1I6ELPrmmvNeORh5H8mPhMc4mWpdFBh8JJpND4Bt9sVd3APLNW
         533BbVjCkOVKHUKkG7jnd4DOHKmFOROLEBTzWhj+lRZAxnUxzIJ2st+vL+2uSSBa5zi5
         tfKPmk8bcDU+T6GOVWWqU2WbhSA+CslnJE7yyUoiZIH241wn/r/XmCSx5SrLvNun9+FV
         ZR8Ah8pD+C19wosdPor6395yK2OxIopd6l63LfCuj4CrtwqnkPTZl5sQyCnwPnLOkQt/
         +yzcwTv5kG6O19mZZG+qu7/xGcudWt5w5Jmhk3KBlqxqfThh8fiVs/h5RAxYVRJKDzaq
         M7PA==
X-Forwarded-Encrypted: i=1; AJvYcCVTripKci31RPnnIyJ/iFcXD+o2rXRos9mAC2/EGLSH27U5r6WtlYEQvY+aZdLXPlw8iqnFoPdiKWGl@vger.kernel.org
X-Gm-Message-State: AOJu0YyK4u1iObnpQgH/k7db1C07B1cwT4FDMU65CPbIY+LjZi6v86u3
	2rCu2A4tHaVmNKR8ZITfqHaSkFgWzqiyiLLmT2zMDMu55y7cJQ5ZXPmDRpDz0kgjI0Q=
X-Gm-Gg: ASbGncsa3L3bCn0pcKHIRF0T/TTGzQgcGydSoAIyF0B+e/6iepCT7H1u11g/DQycpyG
	2fGdEDHjxpxA9Gppmn04+9JSxm0uBf2t/hNonx3EgP7xYqkawvGhff061UhOo3qBTt2b5KbShb7
	jXw3cJzwAfdodPI9yT3hp4qpHHbEawjtNdUFtgkMzszgzKtpdf7exEnMiEYs47BKR1EPVq5RNkz
	mpyD2OCDBnYu23zVivVXX/a6K+hjtXnGdMBLQX/QRISM5SY+oUEkh+rQl3WiVMIIfYOfb/JfdWw
	S3vtt7PbGSLEONLfryZBxaQgLxRgQvOj+ynxh53y52iUhHWa1Cj4A6c7lLh9jDK5pQUnqTLqQhX
	yTM3/uqpItMSQGuCMRgY2eA==
X-Google-Smtp-Source: AGHT+IEm7pC4jQ5wCTQ49NFxc+IKcZR+PXZpSdBzcwoRcmqxvtnLCfqF+Cj6519xtp9p1Fwj8KqI/w==
X-Received: by 2002:a05:6a00:17a8:b0:747:ab61:e4fa with SMTP id d2e1a72fcca58-74af6f08162mr14240794b3a.14.1751245378059;
        Sun, 29 Jun 2025 18:02:58 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af56d91edsm8034737b3a.140.2025.06.29.18.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 18:02:57 -0700 (PDT)
Date: Sun, 29 Jun 2025 18:02:54 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>,
	Nishanth Menon <nm@ti.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/5] iio: adc: ti-adc128s052: Add lower resolution
 devices support
Message-ID: <aGHiPpLeIB6pLb9I@dev-linux>
References: <20250614091504.575685-1-sbellary@baylibre.com>
 <20250614091504.575685-5-sbellary@baylibre.com>
 <CAHp75Vf=zQ+pdo5V1fAq2qWEpdUfNfWdO+_iW0wETWSniXisyA@mail.gmail.com>
 <aGB2Fnv797Wrenza@dev-linux>
 <bd72b92e-bf8d-4fc2-84ae-4f9fd8b40c37@baylibre.com>
 <CAHp75VeXxPum242gE8NoC9f8ZKkFg2FTAkmBXvY9m-BNz6+i7g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VeXxPum242gE8NoC9f8ZKkFg2FTAkmBXvY9m-BNz6+i7g@mail.gmail.com>

On Sun, Jun 29, 2025 at 09:06:47AM +0300, Andy Shevchenko wrote:
> On Sun, Jun 29, 2025 at 2:30 AM David Lechner <dlechner@baylibre.com> wrote:
> >
> > On 6/28/25 6:09 PM, Sukrut Bellary wrote:
> > > On Sat, Jun 14, 2025 at 09:45:43PM +0300, Andy Shevchenko wrote:
> > >> On Sat, Jun 14, 2025 at 12:15 PM Sukrut Bellary <sbellary@baylibre.com> wrote:
> > >>>
> > >>> The adcxx communicates with a host processor via an SPI/Microwire Bus
> > >>> interface. The device family responds with 12-bit data, of which the LSB bits
> > >>> are transmitted by the lower resolution devices as 0.
> > >>> The unavailable bits are 0 in LSB.
> > >>> Shift is calculated per resolution and used in scaling and raw data read.
> > >>>
> > >>> Lets reuse the driver to support the family of devices with name
> > >>> ADC<bb><c>S<sss>, where
> > >>
> > >> I believe it's incorrect, i.e. it's something like ...S<ss><?>, where
> > >> <?> is something you need to clarify, and <ss> is definitely a speed
> > >> in kSPS.
> > >>
> > > Thank you for the review.
> > > I am not sure about the last s in <sss>.
> > > It could be TI's silicon spins versioning.
> > > I couldn't find any information about it in any of the datasheets.
> > > I can drop the last s or mark it as <ssx> and specify the first two <ss> as
> > > maximum speed.
> > >
> > I have a hunch that the last digit has to do with pinout/number of
> > power supplies. adc128s052 has two supplies V_A and V_D while the
> > others only have V_A.
> >
> > If this sounds vaguely familiar, it is because it was discussed
> > today in this thread [1] that Jonathan CC'ed you in. :-)
> 
> With all this being said, please, switch to <ss><p> and describe <p>,
> but with the caveat that the <p> is empirically deducted based on what
> community observes.
> 
> > [1]: https://lore.kernel.org/linux-iio/20250628162910.1256b220@jic23-huawei/
> 
Ok, sure. I will use this in v5.

> -- 
> With Best Regards,
> Andy Shevchenko

