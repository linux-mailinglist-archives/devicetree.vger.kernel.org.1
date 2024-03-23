Return-Path: <devicetree+bounces-52699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26505887A4C
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 21:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D936B1F21767
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 20:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0CB6110;
	Sat, 23 Mar 2024 20:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iOA1vw0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A5A63D
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 20:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711226328; cv=none; b=Zas1B/2W0BbvDu9+6pjYxPAyt4COE6oIpff/kpl3hvUy+lzfAlaPiAGPTTbUCMuUUzqXF9m0zFtlikT4KzYBSZl2tqYzP2evyZrVK8jCNNAZxb71YRr/LU3vvrAO5Uj9rDCoC/Fdb/WNFEXZhDr6aNNpvONmLCVD4nDzDKt8TcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711226328; c=relaxed/simple;
	bh=vcSa+/XZIEqadCu5SXdhOSO9Qef7nSbtGvHRiqFxrGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OkzhMFYHD65D3kpCaRqAG38hvj/9aWrGneIvKlD5kzzJhiDvUFX29Zzctk4GxeexXHowTbTspcRrCdCSMTfvsnmWNUjYGo46T812QasCLLR6tSMUleOqBdF4lhqtPaEYPNpNX4i1Go7zSGBfoaG/m8OO0C8UZdyR8XT/kT3x8dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iOA1vw0C; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d46c44dcc0so38704661fa.2
        for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 13:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711226324; x=1711831124; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDxvg9UbnnX+rObAJA4VzsyPDBq51ZQBy54uGmarkxI=;
        b=iOA1vw0CXvBljxsIEAd0sWOL057EOFDWjcSrhmLgjxf4TO+m9p++NBDSH4DodZVEC1
         a1B+V0iuTtBergqf8TzLu2hko94nv05zgHaxUYPhBCxczC97lWQvk8EATNRtSaiSuZ/2
         jAmv2Jgpd0poHCqXw/QCG9IBaIhZEF3QxrdeO2tfoFAKhwgfUOjgVaQV/+KGU3lXq5Lj
         X1wOdgpALol/L/8bZ/hJXK11+tB1cmePSHXAun1V5S24YT1I14/d0zxqyDId4uVwPnUi
         3NS30gx3M6kOES54Q06kSHeSRDDu13Pxf4ANfNPd5mP4GhBAPOQLsMAYiCENp8HunClH
         iyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711226324; x=1711831124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDxvg9UbnnX+rObAJA4VzsyPDBq51ZQBy54uGmarkxI=;
        b=kQEnhI7njQWRTX3mV61HHd5ialaHNzhIpg5sKsSstf3ywfAOKxiGXrh9GtZpQ/6b+M
         xz/6KkiJyomSA5yDRXjszytsywME5vWcquPDc5vVc/jPJij2okGuKu/4aEI+diOViUEa
         SsHPhvz/yK8by/YYEK4vTBPWDW9JuZ0tasviftkCQ5jBVRaMzSPugvONWP9T5RwEFx2X
         bix9ai8UeDjQcIfyZTMxR2QaVeADvOTKfSXDWZY2WeCm3sdER1hLwE/7tJIAFyHLdiTG
         6h6mRWHYdJFQV9zyyOGaXSQff1gDbYfO3EaIAupioKW2FwySyjfMC2aImR/SP5mCfkso
         JBpA==
X-Forwarded-Encrypted: i=1; AJvYcCV/kayPaACKh409UQaZBgsOBTKFMQkn6x97wMzHA0SJWhlljBcRU0MStPx/Rz3K5YJeHT/z+aDxPMXigmbmB/lWSIxaUH6pGH+y5Q==
X-Gm-Message-State: AOJu0YzT+RsJNauQO3WBqDFJQwXjuujriH13Ot+nQhezdLFqsSh+ndc0
	UYRztmPbcG5U5oMWXmqTZiErH9y3NDWdFk7LZ62i5D0nW+Dmmg9iTlEuIDMWq+t0HIIbzaNO2TR
	mj7Fn9TUsIse+ScVh3JZUkrnXsrJVScm1X1RNYQ==
X-Google-Smtp-Source: AGHT+IHr0pE+R57iPjnjYEDRZYdDxbFdYp7TmFmdO2MPAFrT/tVKn7D5ShflgfmdKDfqHqMrZkB3iCx040qJhegMFII=
X-Received: by 2002:a05:651c:386:b0:2d2:b840:1c78 with SMTP id
 e6-20020a05651c038600b002d2b8401c78mr1744597ljp.48.1711226324183; Sat, 23 Mar
 2024 13:38:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1711131830.git.marcelo.schmitt@analog.com>
 <81665b5f0d37d593e6d299528de8d68da8574077.1711131830.git.marcelo.schmitt@analog.com>
 <20240323184454.201edbc3@jic23-huawei> <CAMknhBFRa-AwM3o-AdDDmPnwLAer8x=9TJNasSbY2bu5h9mMdQ@mail.gmail.com>
In-Reply-To: <CAMknhBFRa-AwM3o-AdDDmPnwLAer8x=9TJNasSbY2bu5h9mMdQ@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Sat, 23 Mar 2024 15:38:33 -0500
Message-ID: <CAMknhBFZa4eQ1bbJQb+ESZdsbLh5xSBn+feMwmWbc58mT2UWPA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add AD4000
To: Jonathan Cameron <jic23@kernel.org>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de, 
	Michael.Hennerich@analog.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	marcelo.schmitt1@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 23, 2024 at 3:18=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:

...

> Here is what I would consider a reasonably complete binding for the
> AD40XX chips (excluding ADAQ for now as I suggested).

I missed one...

I also think it makes sense for the High-Z mode selection to be a DT
property since needing to enable it or disable it depends entirely on
what is connected to the analog input pins.

---

  adi,high-z-input:
    type: boolean
    description:
      High-Z mode allows the amplifier and RC filter in front of the ADC to=
 be
      chosen based on the signal bandwidth of interest, rather than the set=
tling
      requirements of the switched capacitor SAR ADC inputs.

