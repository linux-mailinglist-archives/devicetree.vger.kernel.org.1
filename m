Return-Path: <devicetree+bounces-67357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3126F8C7A9A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBFBA1F212EA
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BB11DDC9;
	Thu, 16 May 2024 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z8YZXgUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7267F79D0
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877812; cv=none; b=OJL1BiHelt/RScW+aYBAk4xoDDE0uZqjsn/gQyoWTD5Ny9Uvsq8iYLqjgpU71vnAi9Pk8pk2jJvAeIWcRwbIloM9/mSGQ5wplBciuIHdHD/kNKKZrxumG5HbSMxC1FapSkClJlL4qzhwTQZP2JwAqAE2G1d6ZGkkoP6Fj2B/aNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877812; c=relaxed/simple;
	bh=V+xNFFnANtUhU5jsfhfbAvrlBuDPU5hdXCy13zJAH6c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iiKEfIN5D/P7XpuP74J9kvOl4IykoFMNU4IXDL/FN1QD6MjReC8AReoyw4MESauvOhwCfBBA6NSDm5ZD/OhQ0h4ciRxsILm4moJYg/RGEPVS5YEyEP7skFHYj05mNuOMFLpd5aInlkyzQh2zNzT8jnEoWTFCTGYV01/cTM/bYQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z8YZXgUQ; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e576057c06so12937331fa.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715877808; x=1716482608; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+xNFFnANtUhU5jsfhfbAvrlBuDPU5hdXCy13zJAH6c=;
        b=z8YZXgUQhE7bf0xHlKhmZVzncO5Taz8qk/jxie2nTBtbOfwHLYiaoJoflVQQf3Qi6K
         hOsKgER7bjojBvsmF0qUecdvPne5nTk4LUkJ+gk62IT1fnl5Y2Yftd1MhfWTlhUOV9G1
         kDnqVhUrqbqng0KmOERqzqQLzm0OcQ5wA0pL3ItYHUxYDqb9FJGrHy1qK9mtzm2s7gPk
         5mEOLYs2xqCpJD1sAIqgPQxDVZWhJWAkzGI3xLrQMX6WVv3V99XyW9fJnhptj1guEoUK
         xF/f7h8zDCEaxxcMdKabS/TemEV6NQnv7RuA/KLl2t3pz9G4d+i+zH3eyPeUbUOJAI2+
         Wq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877808; x=1716482608;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+xNFFnANtUhU5jsfhfbAvrlBuDPU5hdXCy13zJAH6c=;
        b=Z7nd6GD03KomIbUszOs4ZtssEUtLDyT6Ge/4x/buVWlKyIdUhHfTX9Os93Z/iCSX9/
         pJMr6McCCQpvG/zsfX5F78MNI9tF9zdUFLhktW1E0xjW3l6DBwKdHWjAxd5yQouNYreU
         KaVVTOQuV+IquVh+vmA64cjssEztjJ8T84bv1CGx1cMNXKuwEWijPPmeSMMFHZ0pSgcu
         nFCXR/MaEAJ7wAjWXZ3nTa3xCYeZg2riYOXPQxIhRTej90qf32VVLh/SFrIrPFzccgmQ
         JReftJfppxxYzI9irHyoIVaa66UfdyfvCgnhY9XBk9+bToeWOqWktMGOEuqGVhqb+2pU
         O6wg==
X-Forwarded-Encrypted: i=1; AJvYcCWgRMMe5K7qGaDVKvEvF25aMJhAnrhWQLDpGzg4kWZYty5AfWwM4PFMNJFK4KJ/n0Wsh02RSIFMWP+2Orsnur002zegfzZaOYRt1Q==
X-Gm-Message-State: AOJu0YxzNYtoEG/AEFHvKTNW+Cd5gNhO6Y4scRpwA2exkleKSKfmLT+P
	7nqeCzTUmV2CCazqSs2iWp87JXf7VhwGiSA4p86dIxw63FRkJ4agnOnXdQFeC0Pxn+wuWYles7d
	k4hDsQGG2TinrEgUwJoGQI+CpwElZaYpFT0RBwQ==
X-Google-Smtp-Source: AGHT+IHGaVneos/R4eScRtYA47Mnik++EhKlRJLGsL79bpCk6oNHbmbT356vHf8dhAzygmD08rORGPQ7fAOEWajOT8Q=
X-Received: by 2002:a2e:81d7:0:b0:2de:1457:9d27 with SMTP id
 38308e7fff4ca-2e56ea3af94mr116091191fa.0.1715877808519; Thu, 16 May 2024
 09:43:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514-ad4111-v2-0-29be6a55efb5@analog.com> <20240514-ad4111-v2-6-29be6a55efb5@analog.com>
 <CAMknhBGrn+dSF=QJngUWaQ04tAwQf-9wmq0V2OgYS7sFKHroUA@mail.gmail.com> <167516cf-303b-48a5-ab84-173cea8e82f2@gmail.com>
In-Reply-To: <167516cf-303b-48a5-ab84-173cea8e82f2@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 16 May 2024 11:43:17 -0500
Message-ID: <CAMknhBGGYztOsP74YEExG0OhAhMFtjh9Q=x3yAvSK=NQeL5e0w@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] iio: adc: ad7173: Add ad7173_device_info names
To: "Ceclan, Dumitru" <mitrutzceclan@gmail.com>
Cc: dumitru.ceclan@analog.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 16, 2024 at 11:09=E2=80=AFAM Ceclan, Dumitru
<mitrutzceclan@gmail.com> wrote:
>
> On 16/05/2024 02:32, David Lechner wrote:
> > On Tue, May 14, 2024 at 2:23=E2=80=AFAM Dumitru Ceclan via B4 Relay
> > <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >>
> >> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >>
> >> Add missing names from the device info struct for 3 models to ensure
> >> consistency with the rest of the models.
> >>
> >
> > This affects userspace, right? So probably needs a Fixes: to make sure
> > this gets into the 6.10 release?
> >
> I don't think that it breaks userspace, just creates an additional file.
>
> This creates the file "name" in the iio:deviceX directory that reads the
> string. I do not consider the Fixes: tag a necessity. I consider that it
> resolves inconsistencies in the _device_info struct.

Ah, OK. For some reason, I was thinking that it would default to the
driver name if this was left out.

