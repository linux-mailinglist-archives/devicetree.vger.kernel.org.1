Return-Path: <devicetree+bounces-104457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BB397E79B
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 10:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22C571C21018
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD3C19343B;
	Mon, 23 Sep 2024 08:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YmPukJah"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34932F2D
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 08:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727080506; cv=none; b=YTCkFyX2Llregy29Y+QhhePctncwUDaV2TJQwDaFQEULE6Gnqnm10I0+vpIWIDXw9JaWtNRcoaS9ZQJgEJyTvjIgj3Uck1F+4Y9y0UieLAnmDTEiUeJrjX4/TXQy9L3b7B1x1woMoeyAnw6U30iPcuQfSOeOeZXRuT2EkikzFVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727080506; c=relaxed/simple;
	bh=WCn0BjX16f0sbfaNXaV5vArZJvaoV0TjIkATMCuqyzc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7zRW28FIzKnz8vfwl/S+YozZlJ/V+LjtMRXcU8+bsqtuwk1Qw5ew+km19wFiKpqzSg6Xk0h84DFc/PJWqDjCp3nhWQJu0e6co2drsiv8eHRhoVwruCf7GdGq8GVAmaNGdXMEpIS+cmHqcCB4mvv8k22a7krpAz3oxNvRzrEN/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YmPukJah; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f8ca33ef19so4226601fa.2
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 01:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727080503; x=1727685303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCn0BjX16f0sbfaNXaV5vArZJvaoV0TjIkATMCuqyzc=;
        b=YmPukJahIBWJ4D4MaecjXhemlkGwS2BQFoTIMwpY5qBktTKhdxV6pC7JK9D3Kbm7Qj
         4Ye7Lu3iMOEXaH5tIIAnozRmSFvUzKPv/hQzZY6UkFVGsTJPbYrGx8D2NhJa5TDeG1o0
         03yPubG8wZq18S+xZewQWlDNUl2Gr9/WoRkexoq34VQHHOIZiCv//i4+FhIOW//dnBJb
         e9bPsSvfcNh2N6VnUNVSM26N6hLcFdg+421bZfqqs3LfLxR3hXJvr9THWu9rIpiG4q5T
         dmqNxpR0WUSpbyuYqRJlNiAxWxiPNHxCXuPKpelwC9+DUAPXEW4+7n4o0YndBqNPfZag
         WLyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727080503; x=1727685303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCn0BjX16f0sbfaNXaV5vArZJvaoV0TjIkATMCuqyzc=;
        b=VA0IHh8olX3alWRzrsekOPaRjBYBJS2QNNUL603BnjAhJpRGulPlbUD5Xk1N7RU4Cn
         Cr5oVxIgHn5onq6tiKUzx4Y8cY2UKNnebYgRJCg/VxPPv/KNX8tv/f7uRA5jPGqTOhm7
         6B+3R4vyd3JIymfDKF9lnARaPKkO0Oa/v/zVIw01is6sj20VPROEJs1cQNaZ4Q/S/XoX
         aFHWc66qJQ1szdoDj8Yvr8oUVluGHchjPsG6R3zOpj6e7x+7SKRb2f8luMWbg8szt3gZ
         7Pvy2/Bncxuzfzp1Nt/WQBTNCwOVrCHdkMh6/lSm5W2SwH8Y4im+VMWChcTgXdlPx6Y4
         FhHA==
X-Forwarded-Encrypted: i=1; AJvYcCWgpGpQIAJbSzoE2vADeX4s6h2FFKNqjEvr4WeFaFkTWOLbGrihm6DNrxZ974xPRwmW750V6Uxwi315@vger.kernel.org
X-Gm-Message-State: AOJu0YzA+1gRejWrq1QDAA4rd9qRy+8OVoHfiaGyogSBbPcgBxEeAjWR
	NBJQIzAYHySa0bW7H4aq3rNYiCn5Nd7tgdBuDIUpZbYrKXNG5QZxaW8fUcQ954pVRbphTgpYs/Q
	9xGXr0YJmG0esbhwFtsGXuga/QJPrNSJ7mQFOyw==
X-Google-Smtp-Source: AGHT+IGB0HmD4yUCXfyiEGHZvou7JbCti99d3PK2v6+1ygu6PUNxbcxYam6wZ0jMVxzgb9p/QjTuS1exJPMjEaQahlc=
X-Received: by 2002:a05:651c:1543:b0:2f7:c7f3:1d2e with SMTP id
 38308e7fff4ca-2f7cb31c4e8mr59626701fa.19.1727080502814; Mon, 23 Sep 2024
 01:35:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
 <20240920-ad7606_add_iio_backend_support-v2-10-0e78782ae7d0@baylibre.com>
In-Reply-To: <20240920-ad7606_add_iio_backend_support-v2-10-0e78782ae7d0@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 23 Sep 2024 10:34:51 +0200
Message-ID: <CAMknhBE51oUjNZVE1mq1xtdOzAG2fpxXW7S+haMGQosdweaZsQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] iio: adc: ad7606: Disable PWM usage for non
 backend version
To: Guillaume Stols <gstols@baylibre.com>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Michal Marek <mmarek@suse.com>, linux-pwm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-doc@vger.kernel.org, aardelean@baylibre.com, jstephan@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 7:33=E2=80=AFPM Guillaume Stols <gstols@baylibre.co=
m> wrote:
>
> Since the pwm was introduced before backend, there was an example use
> whit triggered buffers. However, using it may be dangerous, because if

with

> the PWM goes too fast, a new conversion can be triggered before the
> transmission is over, whit the associated mess in the buffers.

with

> Until a solution is found to mitigate this risk, for instante CRC

instance

> support, the PWM will be disabled.
>
> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> ---

