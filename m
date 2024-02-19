Return-Path: <devicetree+bounces-43568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 318CB85AC57
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 20:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB96228426B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 19:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E549F53E30;
	Mon, 19 Feb 2024 19:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XLmyjSXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83B053E27
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 19:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708372038; cv=none; b=Dz97SN/7AfsuT8VZs3jvOr545yaVn66Sh6wk2dBCdsw1y9CxbGCsqVwR1oAoO/eBMAnCWQeFnW32+J0/zQycuIzenqD0XFLwd3H9SpFXg2+OgFDEImCN3q5iKWXOpYz9knuBBI4w+NENkMvT5pcPBwj0A7b8qPXBgQKfaHSyyDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708372038; c=relaxed/simple;
	bh=DUEcOGJ/rk/h3tWGjgVTrpMETTt0JGs4Wy0hdmAe7hc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IwkF3yHSYXL2NvvLGtkvxr+JPowXDBLcZPjwx+dqgqDeNAY83OkZUqRH9vRS0RXtOx46Sm4WJBjpJvRi7xDDYHjesHJYs78CYthLkDVgckUY4TwWEbfUnaCLSqQQQ44YoVWb/ii23ZGEz9qxaiR94eLq8gl8OK91YBLueBdN/NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XLmyjSXV; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d2305589a2so26392901fa.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 11:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708372035; x=1708976835; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUEcOGJ/rk/h3tWGjgVTrpMETTt0JGs4Wy0hdmAe7hc=;
        b=XLmyjSXVo+QrZsw56/6y5wko9M58YoqckmwPn7YSTnJ/wx3/+LSB05Ry8C67muEgAn
         OSsjHKYvLcBbwIm+e399HA5BszIw5pfaJSIl+Ytmj4z1Z3V+3tyGLOydXaOThogoIN5D
         RGTBfPSy8u5LOp5PBxalDAGEvB+XiFv/pW2ZxbQVFLhVmA9icDJn4PsJV4McbvOPtOlN
         mSbLDBxE9q2d9HZ6Lc1bHmwhStHXAa3n56ngTYxuoPhIg6gjQ+jSWWTP0ttZlo3E0QM4
         jSHXRu2CMe8NO5BIxeJOfZevdGQOXv5H+9tTze39y/fkMOMpCfrnE+8EzNZef6TePogp
         yuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708372035; x=1708976835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DUEcOGJ/rk/h3tWGjgVTrpMETTt0JGs4Wy0hdmAe7hc=;
        b=gsJxWbdJuQ7VNduy+Od0dEZiwjWNzlIzH2nZQloRGFlPkYnV4if+0m1FFZvRNi9Sg+
         7h+NiR7FSM6fZ+vTWX+0nL2LLBpGqQ//fiwyN3TKOxByWa+56jw0ICI4hsgDr8pGYeWb
         E42VJ4f4pdOCjxK2Iez0HG7sF2kdKJwr1J2QpX6J7TT6KHo3QLYdKxFwFCfl/KfxuB4e
         f3OqQdIMBxjxplSVDuocZngzamhfj4ESTuScf2fSxKUSx2OJgwYDMiocBbKWE+SYfRUA
         +U3WNsDmsnc+tV8PQ0QziySIGpQb3aGLGoGbrNHtdnEnX/Daoq62tA+r02yzyx7cN0uW
         7j6A==
X-Forwarded-Encrypted: i=1; AJvYcCUxw0s611L5DXE/58LRTrrESFqJVfCd7G9uZAkfhvdNnRLkmYs5K1UzZ7MzVo7GSbESiDdq68r8Lt8HXtbDeGHD+uS3ZmMHcaLPPg==
X-Gm-Message-State: AOJu0Yy5feBBqIJLvHch6uTCJqEKjuQL9RQfiNBAN8EYlFvVxgU33wY3
	Gaj3Mr2TBXDzh0FQ8DXadJgD8mLamxKchsOTMFIDrTAXm/lh10AlNSbTwp4pwRgNEMx3uVIm1Wl
	GlUomR/wpvn06LNbrbHaPv3XiEZpOopyNSnVzkw==
X-Google-Smtp-Source: AGHT+IHE5s1bWp7Lf0AEexy1WLGcMX0Xnpkd5+kSp3lWcLT3lfjbcJg3I29Wo+/9DZEaxxVZN3gD4R3V3ERbgvjwPck=
X-Received: by 2002:a2e:7202:0:b0:2d2:3a8e:e2b4 with SMTP id
 n2-20020a2e7202000000b002d23a8ee2b4mr2113220ljc.42.1708372034915; Mon, 19 Feb
 2024 11:47:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110-ad7380-mainline-v4-0-93a1d96b50fa@baylibre.com> <20240110-ad7380-mainline-v4-2-93a1d96b50fa@baylibre.com>
In-Reply-To: <20240110-ad7380-mainline-v4-2-93a1d96b50fa@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 19 Feb 2024 13:47:03 -0600
Message-ID: <CAMknhBGkUP2Tdze5Fa_0qTcCP_OgcTxtczKYZiH1icfuTAEe+g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] iio: adc: ad7380: new driver for AD7380 ADCs
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, 
	Stefan Popa <stefan.popa@analog.com>, Julien Stephan <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 2:29=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:

...

> +
> +/* fully differential */
> +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7380_channels, 16);
> +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7381_channels, 14);
> +/* pseudo differential */
> +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7383_channels, 16);
> +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7384_channels, 14);
> +

Similar question to [1] in light of [2]: Since AD7383 and AD7384 are
pseudo-differential, should we handle them differently? I.e. add
aina-supply and ainb-supply DT properties for the negative inputs
(typically a V_REF / 2 supply) and remove the differential flag from
the channel spec.

[1]: https://lore.kernel.org/linux-iio/CAMknhBH2Pqa9xpPxnTCxJegVTbOG-QDeJA4=
YrQUPfj+hfSs73A@mail.gmail.com/
[2]: https://lore.kernel.org/linux-iio/CAMknhBF5mAsN1c-194Qwa5oKmqKzef2khXn=
qA1cSdKpWHKWp0w@mail.gmail.com/

