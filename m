Return-Path: <devicetree+bounces-67197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A26D28C6F31
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 01:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5906D283413
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B9D15B0E2;
	Wed, 15 May 2024 23:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RiQwMQYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838BE4F60D
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 23:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715815950; cv=none; b=pan+vOHZzoyO/f53Ouk8px8tb2FgM5drbtGqr5wQUNS+xrE/RFc1xWOcqF8mRDmz2VmY6O6gTVpzQNJgxYT+2ktqD+16MnuP8MewczpEJFh4iKmgQNp6ZItl95Wn/NX0GGheczLXAFSQQMEzAHMF7S6RbqtkgBOozpY0+/HojyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715815950; c=relaxed/simple;
	bh=51y8HwJM2qS3c+mMyYj9D7uQW8yhOLy0aRBELMOir18=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nmqSNj1W9HnLbwAuqHFuxcNUOmm+xHxeGZbkCPjrXYs2XL8cPBJIjj0nrxrXYI/A5UZbHfU8CWYH1Jc6vhX5iv2yd/jorvmLjyoXFEfa5iZezDqD/d3k4jGhg2/DtKubIx7lXnB6U4SZfFmkmmY1vhKcLOGF8TJCNV8NFg81f/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RiQwMQYw; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51f40b5e059so196736e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 16:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715815946; x=1716420746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdRKtyhf85WSnK/CMXlG6hs3DSx/ILdtglyzRaSnuG0=;
        b=RiQwMQYwTNKC8I1fdgbWxmJ/WiE09cKHYL2gK+Va95Lc9ix2RrcROM6+CWkncef+7u
         JjfdzzYlRh9ox7qFmwwBQ4Oy0ptZ6a8NP/f2f8BEDYFZgfnt9JgFqp6f8Dxmfz3e8qtr
         XdBo08VpER2qfFxP2M5FhN9LvbZStGAQ/YCJR6EVqhhz/pBshO6VD0sxkuGzxOc07gw0
         vG4fC8/fxaIBX3Gj3KCcFMs9cgYZeF7yWrGACm9OrSEDyDd6fUbTsXfp6Dt0d/fYHAVG
         9qBKrJ22iMB5OCC3u97ePgdwF9wYyO3RBJPfybJoWq6102SMB2UbR5L3eHgkmzVetlXG
         sC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715815946; x=1716420746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdRKtyhf85WSnK/CMXlG6hs3DSx/ILdtglyzRaSnuG0=;
        b=SD6iLySlTYud2QHsTPf4AR5+FuQa6SvBF9qw/TE6OnJq1Y31nxLSegCqhhdGSkRzpc
         vyRrefcARY+YHSh4aXKwVAdogSyX3Dqg0Abcict3OAFhxvyPOhulPEXtvggsB8IqB2x7
         xeuCdvmm4nhv+ahG7qkZ5QbFpWjFtL/sB4dRATBs8EuT5Bvcq4KittZoeCu2XvUdF1A6
         VYOpmHaIocO5NwY/6gYp9+YETnBNDFcXn34ushgDxOo3Hvm9YWAmUU3UUp+9PWMz07Oz
         lvUfXDklaYEIVLO+iadwENwDBg1gHq2zX97aFmR0jCSv2GQFmLSixUJC46I+W8Ok57lm
         Z1gA==
X-Forwarded-Encrypted: i=1; AJvYcCXLD8ZVdRg3hc6NhvWBBomddD2xzza7hV0JiA1tHK8BEAPv6wmeAv1AP7BXepavIS/IDVmtPM9EDR+TZEoOQFvWZkO0C+JSgO+uag==
X-Gm-Message-State: AOJu0YwpMblAE+F4hLXN7W88bRVE4qaRp+C+AzjD972zuTC8X1xLibEd
	ydQEi033phbwtvShKzZxqiDCgH61dkchZBI27onqUWwNrx/gTS1cuYchY+taVBiU2pzpNmr1bwt
	SAi86f30R5FHYY46W55IZ240mGtXaX1Nzm8/bGA==
X-Google-Smtp-Source: AGHT+IEvUtL0hev1wzuyKVroWKpXfqaEF7Sf8d0mjILjXLcLLCAUNt9PP+ek38/FW15dkm6S+pJSt3rL4LvjD+uZ8Ro=
X-Received: by 2002:a2e:9c8f:0:b0:2e5:685a:cd28 with SMTP id
 38308e7fff4ca-2e5685ace48mr91345701fa.10.1715815945685; Wed, 15 May 2024
 16:32:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514-ad4111-v2-0-29be6a55efb5@analog.com> <20240514-ad4111-v2-6-29be6a55efb5@analog.com>
In-Reply-To: <20240514-ad4111-v2-6-29be6a55efb5@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 15 May 2024 18:32:14 -0500
Message-ID: <CAMknhBGrn+dSF=QJngUWaQ04tAwQf-9wmq0V2OgYS7sFKHroUA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] iio: adc: ad7173: Add ad7173_device_info names
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2024 at 2:23=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
> Add missing names from the device info struct for 3 models to ensure
> consistency with the rest of the models.
>

This affects userspace, right? So probably needs a Fixes: to make sure
this gets into the 6.10 release?

> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---
>  drivers/iio/adc/ad7173.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/iio/adc/ad7173.c b/drivers/iio/adc/ad7173.c
> index 1e9ba3070770..d965b66d4d5a 100644
> --- a/drivers/iio/adc/ad7173.c
> +++ b/drivers/iio/adc/ad7173.c
> @@ -227,6 +227,7 @@ static const struct ad7173_device_info ad7173_device_=
info[] =3D {
>                 .num_sinc5_data_rates =3D ARRAY_SIZE(ad7173_sinc5_data_ra=
tes),
>         },
>         [ID_AD7172_4] =3D {
> +               .name =3D "ad7172-4",
>                 .id =3D AD7172_4_ID,
>                 .num_inputs =3D 9,
>                 .num_channels =3D 8,
> @@ -272,6 +273,7 @@ static const struct ad7173_device_info ad7173_device_=
info[] =3D {
>                 .num_sinc5_data_rates =3D ARRAY_SIZE(ad7175_sinc5_data_ra=
tes),
>         },
>         [ID_AD7175_8] =3D {
> +               .name =3D "ad7175-8",
>                 .id =3D AD7175_8_ID,
>                 .num_inputs =3D 17,
>                 .num_channels =3D 16,
> @@ -302,6 +304,7 @@ static const struct ad7173_device_info ad7173_device_=
info[] =3D {
>                 .num_sinc5_data_rates =3D ARRAY_SIZE(ad7175_sinc5_data_ra=
tes),
>         },
>         [ID_AD7177_2] =3D {
> +               .name =3D "ad7177-2",
>                 .id =3D AD7177_ID,
>                 .num_inputs =3D 5,
>                 .num_channels =3D 4,
>
> --
> 2.43.0
>
>

