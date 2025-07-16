Return-Path: <devicetree+bounces-196966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFDEB07B22
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 18:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E51EE3BED5A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FA923F26B;
	Wed, 16 Jul 2025 16:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b="e7vtwJs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432782F3C3E
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 16:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683172; cv=none; b=HH5JiDz3sChYiLAxbz269c3UJdkqOSEymtRPBUG4qwwpVRBRJPk5IeaQnMbJ+4vWax1xtjF2D9Aqdo7IWZhxSDesmTz4ylWxmvb77LDFkgelXBwa6Yxqsnurj7sdVVirVhuFOF+ViNUJ7+Y/PF7XewpzNvdasYQOoqvnEWpBxNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683172; c=relaxed/simple;
	bh=fI/nlZtWQ4pC2P7MOjkxXgbIHf2qHg0OWIthO5YRfCs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m5WmAatXZQa+ZFVaDP8dNlTAdG1rUltKBGLTNdEy32d10+N7P4JAXPsAcwEUI5z9itWSuT4mrlYl69ouBmFk6vcVwNx2w6Y850fBWVWKdBr713yBfCbahjscZRIfMKKIYqv5IROFGwQKzMJTUYwDKiC6W0WRccuGD6SgUadGUyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com; spf=pass smtp.mailfrom=lessconfused.com; dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b=e7vtwJs3; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lessconfused.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3134c67a173so111786a91.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1752683171; x=1753287971; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/zdp78iLIc3P2fVZKQ4uEJjSCWzim0zw7IS4uVdvyY=;
        b=e7vtwJs3U7CM+jOf7CCjHT5UhIKMZjMTQMKnbmW2cO+vImQiwpusImo65QrprkeYx5
         T9tEKmReNcSg+GqBw8x7k+gdoOPq1G0R5DuCvDDt1eyafkj0IYkbhwQ+bSwfWDbsEuAg
         YpkhYwcI1vSs+DSDejyRVKlTAEC9CrpurvF7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752683171; x=1753287971;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/zdp78iLIc3P2fVZKQ4uEJjSCWzim0zw7IS4uVdvyY=;
        b=AtWOIcwFMAQRS6qQwp9cO3MkP6BEFEZUN8Dn8myPd1kl+H5mUKxSec2PvgUVMB+282
         pldJJB+FE6pc+bNpnPOEgNHp1r4aBu0CaYr3DF/sdwB4kO/y7ciGGdchGrqOS0bWgbFH
         H7vH9R29LuC0II4tckOLS9lS+twpO825HEB8xt2OZ85X0g5alQHneF9yyX3DD/s98DpC
         uhdGahUAvpSzhvb+ZtZmAkVN+KlYi8/9ouabSjMRgtq8u12XBBE7pGCF4+1hzKj7eVHS
         6BU2N1hOn82NdacoJHXeOLzZR7WcZZLn48ZCVgLmIKDMxZfKTxPuE4UWwwIUz1iNdqOm
         0K6A==
X-Forwarded-Encrypted: i=1; AJvYcCX+kFBzuKh4P+5ORteqfkaXItLCvUGVxCP3kzy5JVR5mCPqyU8XezSRSEZnhiRuSW1zjjHk15j+V9n9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy1rij74/gGG5sqh2ZlfKpyxy+NPUl/D20npzYJqTSx5dJz9Cc
	aJR5DqAyI8HCx430fkKfiDUow001BVM/g4dA3U/IY5gw7CkoD2ciLaXe35uL7Lwe4CDALgiONNK
	DB4Ma/4fWbWtoNiAeuPGo1SUCSOsSaOaE6MmuVA0fag==
X-Gm-Gg: ASbGncsqs9aBq7Pvld1IswXD07I5p+xu6DRfOc/qMHYi6PHtsZKESpkxCJV6Caa4yEC
	LiDKA14qAJxvAGQJj3SsTwYB+ES0sZKdF1VBasdei0oePmMUhHKMGfnLB/Wz2lpyFL0kAhElMlX
	uQmZn76qqTctxlvCZTJNgALGz4sekDYPDVUcUUtkQBZGAXBsxOjjTm1Ea4nZz2uQEOyVKYPqxbp
	GQpxJOPlLnF9S2yx/i7hzGOd0Z3Xk/lSq08tA==
X-Google-Smtp-Source: AGHT+IEXLTYLB8rxtv+DljzVrxvv6tPAbP6Q0A+w+KsPDRks8QKJ/HUbgCCkgyjvEFxKjNAw8BAVT3MjLvLHwtKFsLo=
X-Received: by 2002:a17:90b:5485:b0:311:b0ec:135b with SMTP id
 98e67ed59e1d1-31c9f47c799mr4745522a91.24.1752683170555; Wed, 16 Jul 2025
 09:26:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250704-spisg-v4-0-6b731dfbe610@amlogic.com> <20250704-spisg-v4-2-6b731dfbe610@amlogic.com>
 <3ac88119-9980-42df-9e1c-c0ec30bbaadd@sirena.org.uk> <55ecc836-7fed-44d5-aa4b-94bc17894ef0@amlogic.com>
 <aG0hU5nbjLjTWS6p@finisterre.sirena.org.uk> <03b7abe4-95d5-44f4-96ec-989c736e58b0@amlogic.com>
 <b42995ed-d1d5-4624-88ab-4ba1b6f54ebe@amlogic.com>
In-Reply-To: <b42995ed-d1d5-4624-88ab-4ba1b6f54ebe@amlogic.com>
From: Da Xue <da@lessconfused.com>
Date: Wed, 16 Jul 2025 12:25:58 -0400
X-Gm-Features: Ac12FXxfJqnSMbzdrh4O-b8M583ttxspC2CCEaICBQtOJYZg7EeSoZLGxlH_yFM
Message-ID: <CACdvmAizF9OcdBi=Qw38NH+YHT=4edQzJGuQNvxm+m5xqZE0nQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] spi: Add Amlogic SPISG driver
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Mark Brown <broonie@kernel.org>, Sunny Luo <sunny.luo@amlogic.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 16, 2025 at 5:30=E2=80=AFAM Xianwei Zhao <xianwei.zhao@amlogic.=
com> wrote:
>
> Hi Mark,
>
> On 2025/7/9 15:02, Xianwei Zhao wrote:
> > Hi Mark,
> >     Thanks for your advice.
> >
> > On 2025/7/8 21:50, Mark Brown wrote:
> >> Subject:
> >> Re: [PATCH v4 2/3] spi: Add Amlogic SPISG driver
> >> From:
> >> Mark Brown <broonie@kernel.org>
> >> Date:
> >> 2025/7/8 21:50
> >>
> >> To:
> >> Xianwei Zhao <xianwei.zhao@amlogic.com>
> >> CC:
> >> Sunny Luo <sunny.luo@amlogic.com>, Rob Herring <robh@kernel.org>,
> >> Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
> >> <conor+dt@kernel.org>, linux-amlogic@lists.infradead.org,
> >> linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
> >> linux-kernel@vger.kernel.org
> >>
> >>
> >>
> >> On Tue, Jul 08, 2025 at 06:34:02PM +0800, Xianwei Zhao wrote:
> >>> On 2025/7/7 21:05, Mark Brown wrote:
> >>>> Is it worth having a copybreak such that smaller transfers are done
> >>>> using PIO?  With a lot of controllers that increases performance due=
 to
> >>>> the extra overhead of setting up DMA, talking to the DMA and interru=
pt
> >>>> controllers can be as expensive as directly accessing the FIFOs.
> >>> If the data volume of a single transfer (xfer) is small, PIO mode
> >>> does offer
> >>> some advantages. However, since PIO requires the CPU to wait in a
> >>> busy loop
> >>> for the transfer to complete, it continuously occupies CPU resources.
> >>> As a
> >>> result, its advantages are not particularly significant.
> >> The CPU overhead tends to be higher (you can avoid some of it with a
> >> dead reckoning sleep), but the latency vastly improved which for many
> >> applications is a worthwhile advantage.  It tends to be things like
> >> accesses to one or two registers on a device with registers where this
> >> wins, 16 bytes or lower would be a common number off the top of my hea=
d.
> >>
> >>> If PIO is to be implemented, it can only handle one transfer at a
> >>> time (via
> >>> transfer_one), and not entire messages (which consist of multiple
> >>> transfers). In contrast, when processing messages, the SPI controller
> >>> can
> >>> handle the entire sequence in one go, which also provides certain
> >>> benefits.
> >> It's probably worth adding something to the framework to be able to ta=
ke
> >> a decision at the message level, for writes this tends to all fall out
> >> naturally since the write will tend to be a single transfer anyway.
> >
> > I will try to add new API message_can_dma for framework, and implement
> > PIO for message.
> >
>
> I tried to implement PIO mode in the driver, but it turned out to be too
> slow. Due to the lack of an internal FIFO, data could only be
> transmitted one word at a time, and each transmission required
> reconfiguring the corresponding registers. As a result, the efficiency
> was quite low.

One of the use cases is for SPI-based displays and it transfers one
word via PIO and then a lot of words via DMA. I see PIO as beneficial
for this common use case for SPI.
The efficiency does not need to be high for this one word but reducing
the latency for DMA setup is a significant gain.

>
> The only simplifications provided by PIO mode were in two areas:
>
> 1. The allocation and release of the transfer descriptor
> 2. The DMA mapping and unmapping process
>
> Therefore, I suggest not implementing PIO mode in this driver. I will
> document clearly in the code that PIO mode is not supported and explain
> the reasons behind this decision.
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

