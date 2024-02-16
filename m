Return-Path: <devicetree+bounces-42785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D4858765
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 21:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13DFAB274F2
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 20:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5281468FE;
	Fri, 16 Feb 2024 20:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wT4O/rqn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D26813A88B
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 20:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708115656; cv=none; b=g4kyICV6NnqKUz+kRcFloa78/p9xeW8PLu9XJdZFlcKXQSlKjMvXn4rSLYAL+FZvDX922aqs6T8DhyRmsmrvNcu/uEaqw7KicsCuiUUBlegymzqSFiMm5As//VBEhEXJSthqrLeCpQUAxIIkB4aAyATJ34UiLY1tXYqbT5xV9xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708115656; c=relaxed/simple;
	bh=pq5F3XT3b3maOzXC0OSg22Jr/nnhiqkbRrjlg8Pw5WE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uX7+hjp01RcEEccFrdxJozege/qACm5TuVn18a4s+KseWjHvspg2CjG8T8rkSmkVRrn6zkjewm+xfCKFgCy0HDhO4M0djiufMfOhcdmp/ajXwtwGISc1bhhUqJxvkGiokNMvyKMUzT2GDVFNEWDOdBvSpJiJFm3HhciT2Xk1fTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wT4O/rqn; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d109e82bd0so30003511fa.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 12:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708115652; x=1708720452; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pq5F3XT3b3maOzXC0OSg22Jr/nnhiqkbRrjlg8Pw5WE=;
        b=wT4O/rqnQnHYkJ+OGK4uqgSCbJ75ZT/GDd2HCyCTefVXNHoj0uatbby94nU7+APg2j
         ojQU/L3tlblxeUBwyI8UTOxJLz/UXfluju5yXghvWXmLRa93IbeyD2Jnj8OpNcwZZL2R
         baIiUZmzBd21QuTercEH+stdjzfDdrtvE9D+mJ0Ak2cn+5zlnciIZhWb1D8EjT/UaPt0
         HY0g/McLnSQ1nV6i6Lh4JEr+ryvcAKe8ayNSnukVMGbI30FykULzn6EvAMpCrRDi1h1K
         8h+AR7upzu08uwI+OblGmhQNGhhtqshXNCFQuacFDD7WfuCvrRch4sMmet29mECf+YT8
         +Ypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708115652; x=1708720452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pq5F3XT3b3maOzXC0OSg22Jr/nnhiqkbRrjlg8Pw5WE=;
        b=vJAZ85qBboUVfrkCX7/ZJMpARa5Q5ZUm0nPPPjiSWEVFzl389LR6xIWvLiTAUVgqbr
         7kcZIK6F6dBqYFEUY0gNiThhaVUo/0elqd3JO5EpBr8T7ntM6qhtIlG4SzHJ200Rkkwj
         3K1zjM0qDe1QvtHqG8ysNOCR5qakbUx6i0ovdAvrw8qmLMOut6chRYqNEpUOtpD2ypp+
         3QnSHQ391hhPqhIkQncxt9Y2u685rQKKIv+r5n1VNj4YKyT1qC1l6IDkpujsTwqA07If
         g5rjzDMb783IIhlYk4YANhN7J/jqC2poMw15JpHGIgClHd624xI+4VCR05URGdFFgBoY
         BwzA==
X-Forwarded-Encrypted: i=1; AJvYcCX5TR6UqkMDTDTVTxqMCpb7Mj5XBY1xE2/yrv2o3Ci01IhQn4oBa12EqyoVPMzNPK65iaeIjkeJYDWgfhwrdH2+fBUJ2u5ZpeIQMg==
X-Gm-Message-State: AOJu0YwqoyellRQ0t8ZgZ7AomIwv7fUNqnktciuMwINJ2+mGxYsx314K
	rgmLlo/pKpWSXtyoP7347oUdF+QshVTYHZqRtQusAQh6quQrCzCLXn+QhMPtLRgYQyHoqOVP6mR
	rjQwQa5a8S3a7iSwKONePfsabuK87ZqLI9BgLMg==
X-Google-Smtp-Source: AGHT+IHwHYpVzlRcp1qiboXEECylduunaBTGnGyNLKtqMnvOz1KUNJk4Xuwg2AY6zQSSCnxMnQ6+42b4qDDvaFHsTjQ=
X-Received: by 2002:a2e:9198:0:b0:2d0:cfe6:4364 with SMTP id
 f24-20020a2e9198000000b002d0cfe64364mr4326730ljg.36.1708115652363; Fri, 16
 Feb 2024 12:34:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110-ad7380-mainline-v4-0-93a1d96b50fa@baylibre.com> <20240110-ad7380-mainline-v4-2-93a1d96b50fa@baylibre.com>
In-Reply-To: <20240110-ad7380-mainline-v4-2-93a1d96b50fa@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 16 Feb 2024 14:34:01 -0600
Message-ID: <CAMknhBGg0hHXrd3K92tgHHTnfbk7dLAMvtTSZff1P-C3=9nFaw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] iio: adc: ad7380: new driver for AD7380 ADCs
To: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, 
	Stefan Popa <stefan.popa@analog.com>, devicetree@vger.kernel.org, 
	Julien Stephan <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 2:29=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> This adds a new driver for the AD7380 family ADCs.
>
> The driver currently implements basic support for the AD7380, AD7381,
> AD7383, and AD7384 2-channel differential ADCs. Support for additional
> single-ended and 4-channel chips that use the same register map as well
> as additional features of the chip will be added in future patches.
>

Hi Jonathan,

We have some additional features to add to this driver we are working
on that look like they might affect userspace. Can we hold off on
sending this one to Greg for 6.9? That way we will have more time to
sort that out without having to worry about breaking userspace.

