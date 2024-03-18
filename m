Return-Path: <devicetree+bounces-51278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6538987EB74
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19E711F2168C
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 14:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EBF4EB2B;
	Mon, 18 Mar 2024 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tvSHEkUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D3B433D2
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 14:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710773733; cv=none; b=Dh4ripVGgd3Bw//CTTTKfkU2N+elmQIDJgok9NBtWZLMKG8V4kmdnltJUYqwuX0OA/GP1FNPRw8Fa6b8VKhv289n6xzwzfL7xICvYD5fRIyJrGQez+CiAJF//oR47FH6MoZmqPZAbcYxk86ar9CeaXtufEYZhUPuLp8q3BRKKtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710773733; c=relaxed/simple;
	bh=7nofET7OQ03Sq7cIC4DoYn+Bc4Y8IIymjcxEXaOPJXo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rGDFkb1QL3MlQ8z5u8DNKGz2uLF8PfxYmrjq7/0twAMswGfp5VKCPm6QF7bLTa5knlWaKjw/YHQtYKY3Cr6sXO6OBWp/hnD1CP7tO0Wr3K6BOiI8oPClBJNkIgpRA1dsPYJeBeoLDWIXI3TPZkkql7imIq+iKZXlH+K1lan9VAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tvSHEkUh; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d485886545so70917771fa.2
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710773730; x=1711378530; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7nofET7OQ03Sq7cIC4DoYn+Bc4Y8IIymjcxEXaOPJXo=;
        b=tvSHEkUhmDpqpwsrcoPrJZBss81bgCmCIj3q3vnxXjplKGxthK6N4rDJzjQ35lb/Nk
         St5RHp0/BrzSCEvQtgr4uInNJv7r8tFWmC77VMV2phjdJ8dr9rQZXVB/rGAr6lVXLkkE
         ebrJVmKsPa8Yo/AgQO66c6XouccmUMRGDoxPvsz/ePcu7G8QHOfFhC2ad573qjDFipov
         tZKJzaXAWI0AEDO6r7fzThAcmZwbzcjk87Xlyq1k8uH/zbsioP7NTAI9Lbd6Kn1OXKAr
         XQdUWQDjz40GAp65SRSac0kkuSz9ITOeepzUaFL9l9SxxfdhEM1VXBaT7wQrmABm3MWW
         3H8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710773730; x=1711378530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7nofET7OQ03Sq7cIC4DoYn+Bc4Y8IIymjcxEXaOPJXo=;
        b=IesWCYUyzF3Fhe+SIjHzubdK9TaLSa2N8681JKLteqPcmV3aoAK4yPfTIrao9jkaR5
         Ak8+LdUmmto4JIwYKN/5vOfcDT0aXuA2rO0+fkUkxlOIatzPYYuGuzaTMdFXvfQPFtNz
         SM9An/7qVdJRg+AR1qezcp7O3uek5VDQ2iqwRVxnaScYRBU5kf6qE6WCCkpDqwk5thty
         h9GsU+96/bmEUPMhfvevot1XCwmZAeEL5SugHJYJoo70zLDWGLXKiiJMAp9TBq8bv2g/
         s5uBevyhp8vfl+ggKT1o1QqBdVLepa3dn4AQkNx4KyVud58O+Ck1a6fzn01l/KfNUx9i
         xaPw==
X-Forwarded-Encrypted: i=1; AJvYcCWGGgNxYgC1kaUkXibLia0OCyPE45ZmZbedqBXPmG0UkqaGHRBCzs3oce7xrBjnm7S307mdp8NIoRrHFasnr+QAkCDBXdG7EXmrHA==
X-Gm-Message-State: AOJu0YzyeMDpril19iGJFl3ylnoPVNvHYnwWqmByB2WiNTzD0Jo9FMAp
	05FyAblg4SmM4FylQ7RhJhgoEInYMc/e4AttbnihnTvItuBHlWmSXclq5BlmtpCdqBDVJlJpQSr
	P1gw1lu6FWEVDwKGFYRD0G1Hk0nemN5+4UrXFlQ==
X-Google-Smtp-Source: AGHT+IEv+eYCy5ghVxZ36mlwbWIcp/u04B6R1KZ1C++5boY7huigSjs+Bx5vZUUBldatlWRtSLbpYO90M7txRtasPcU=
X-Received: by 2002:a2e:311:0:b0:2d4:9647:a01d with SMTP id
 17-20020a2e0311000000b002d49647a01dmr5901266ljd.0.1710773729931; Mon, 18 Mar
 2024 07:55:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228051254.3988329-1-dominique.martinet@atmark-techno.com>
 <7f03bb12-0976-4cb7-9ca9-4e4e28170bdd@linaro.org> <Zd7hSOw3_zosyrn3@atmark-techno.com>
 <daed8ada-9e01-41ad-82af-5da5cbbc865c@linaro.org> <Zd7qz1Qte8HWieF_@atmark-techno.com>
 <20240228142441.00002a79@Huawei.com> <Zd_zB_ymxkx0HB3q@atmark-techno.com>
 <ZfPg-nMANUtBlr6S@atmark-techno.com> <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>
 <ZfejyEvPIncygKJ9@atmark-techno.com>
In-Reply-To: <ZfejyEvPIncygKJ9@atmark-techno.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 18 Mar 2024 09:55:18 -0500
Message-ID: <CAMknhBHwVHOS742aVL-pmHzpheicb2=6Hi2Lgz0DvTcXcMoeCg@mail.gmail.com>
Subject: Re: [PATCH] iio: industrialio-core: look for aliases to request
 device index
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jonathan Cameron <jic23@kernel.org>, 
	Syunya Ohshio <syunya.ohshio@atmark-techno.com>, =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 17, 2024 at 9:15=E2=80=AFPM Dominique Martinet
<dominique.martinet@atmark-techno.com> wrote:
>
> David Lechner wrote on Fri, Mar 15, 2024 at 10:53:36AM -0500:
> > How about using udev rules to create symlinks for each device based on
> > the label attribute? No changes to the kernel are needed.
>
> Right, it's definitely possible to make symlinks for each "device" -- my
> patch comment links to such an udev script "solution":
> https://git.toradex.com/cgit/meta-toradex-bsp-common.git/tree/recipes-cor=
e/udev/files/verdin-imx8mm/toradex-adc.sh?h=3Dkirkstone-6.x.y
> (the script is launched by udev here:
> https://git.toradex.com/cgit/meta-toradex-bsp-common.git/tree/recipes-cor=
e/udev/files/verdin-imx8mm/99-toradex.rules
> )
>
> My conceptual problem with this is that this makes symlinks in /dev to
> files in /sys and it feels like we're crossing boundaries.
> As far as I can tell there is no way for userspace to create arbitrary
> symlinks in /sys, so I think we could have an interface more
> user-friendly by allowing paths to be static for users with multiple
> devices.

How about this: Use udev to create one symlink from /dev/frendly-name
to /dev/iio:deviceX. Then in your application, look up the device by
/dev/friendly-name. Then resolve the symlink to translate
friendly-name to iio:deviceX. Now your app has the correct iio:deviceX
and can use /sys/bus/iio/devices/iio:deviceX/ directly instead of
making any symlinks to sysfs.

