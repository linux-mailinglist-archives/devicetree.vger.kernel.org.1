Return-Path: <devicetree+bounces-113254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BD49A4FAB
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4229EB22ED2
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5562D16F0E8;
	Sat, 19 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Toqz0qpo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DB7DA6A
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729354553; cv=none; b=OEdQiCos5+/IoLxpULZBdKU9PaCQXKU0dxpclTje0PwQOcQeAOMRrSok1JJfVSvBNFQnXJ6YOnlp2nQFHKmuVzZYleuYgftLDoUY49tBQi1xi4ykBEYNv4NNZ9ZLaX31yLLmVJgBw+RkRc+mtLR5hw4ottPkKj2VzA8sCvGxXd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729354553; c=relaxed/simple;
	bh=5C5qyBLgWIrfE457XINNwkq3HfSvCZGx4PnCA0qoXh8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n7Ss3F4IfgrW0lBz9lsKxeaRQuGplyC/HQbCE1oiCulRP1LOl3GVZQ5oLFNg8TXLXKF7uol9lUwuPpwOrlOyqIi2EoIG80H4WUt758E32Ieu5A0WIAjwKkiZmrzz8JjSeXp7FwHpMNjHGZDGrvhbA1fg1nXyO616MZ1Aesg8DdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Toqz0qpo; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-84ff43e87cbso846614241.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729354548; x=1729959348; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3u58XsUUiGWV6LWcE6ZOUn+uHZgFKcAbOtLk2LCguY=;
        b=Toqz0qpoPDv4olB1m2tAYkRWU4WXJQlgLail41vX2FAT9H8Vwm1ku7BSgyI7Lpf3ve
         h0wFYVXGs6l80IMu9WEqhh71gTbNcl0+XJ/TinxizWxAS3NMq/vUZYgBC58NmfLsZhy/
         83gMNPUf0dmMCpUojvwjNesDcLNOBLqIX7o00pAAVZedHPZsu9fE+1QwHGe2XK1XCexU
         sKJCMpkzvGXPFacYRMuj6B1I8vYGGl8j3f1EqmNU8V/33KUU8g2rlMzhRJvcNygT0eJ/
         +K1pCdvrdBBWilf2Z3NhsyU7mW1UdXApVGBF2PfdNoQ5BP+jHGQ+E37jmPh08CfngCAM
         TdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729354548; x=1729959348;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3u58XsUUiGWV6LWcE6ZOUn+uHZgFKcAbOtLk2LCguY=;
        b=MAI+EfRS9Q2zBvFVovJhdCgVjI8G0I6EH+OGpEBYQg4yNl9KJ87PcYHo9wV/98Vy+3
         q09gZRxL6aeao/SY+zFknURcHpk6Lx/Px4BLVcGLpcmv5L8MhUH1K8m+BcwJHUPAhs/4
         vTILlW1qHwzSUTChY31lgvV0LviQJSdlKucYByz0sKgomfdxryqXJP2lBoG8Gf27pjWt
         LupQpFcS0rIvi19Q8M0WtKhR9PlQaqY4LNWnXMmfytH1YJa6p4wpc59xgJtgNUq595rD
         epqMfXrWFSKhQiLtKe6779Tu9h5ruFJkUcX8tFXnBdmPR+3J9g+izRBo/49tNVsDnWEr
         5ejw==
X-Forwarded-Encrypted: i=1; AJvYcCVrZsXD8h5k7kWbuG/pjTKCqr+/TBvMXgP6cTZJcC1h2i8fw0VGKpFmYpWbuj8OsYodWHaPINwqAx46@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0cbOFFUGLMbaLOV+n747hebWxXNMjKwRNI6aD964nNmgPbLiu
	rppsea7eEBMQUspd69+UKEOJr1RHCUlFxDfxMMm2/hOK6ts6rLx64iMfmJJqDAnKKs65YsrcVwO
	LOSfgPTMrqVSMe7BF56AJ6Pvs7G0K8XzR/t6vzA==
X-Google-Smtp-Source: AGHT+IGdKVZIPCeVV6Y4u/yREcAyMHGDbDJWF/uxM/G1QIm3v+y/SC/LTVTBR9Dfx5scEebN1hmJIxRYfiSMzgmL/fg=
X-Received: by 2002:a05:6102:549e:b0:4a3:b506:56ac with SMTP id
 ada2fe7eead31-4a5d6ab75demr5471901137.7.1729354546730; Sat, 19 Oct 2024
 09:15:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919130444.2100447-1-aardelean@baylibre.com>
 <20240919130444.2100447-6-aardelean@baylibre.com> <20241017185050.0ed82a03@jic23-huawei>
In-Reply-To: <20241017185050.0ed82a03@jic23-huawei>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 19 Oct 2024 19:15:36 +0300
Message-ID: <CA+GgBR8J2b+tctXoHsPUOPWqVcLtX5H4Eqbstyg-g96uqTu94g@mail.gmail.com>
Subject: Re: [PATCH v7 5/8] iio: adc: ad7606: rework available attributes for
 SW channels
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	lars@metafoo.de, michael.hennerich@analog.com, gstols@baylibre.com, 
	dlechner@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 8:51=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Thu, 19 Sep 2024 16:04:40 +0300
> Alexandru Ardelean <aardelean@baylibre.com> wrote:
>
> > For SW mode, the oversampling and scales attributes are always present.
> > So, they can be implemented via a 'read_avail' hook in iio_info.
> >
> > For HW mode, it's a bit tricky, as these attributes get assigned based =
on
> > GPIO definitions.
> >
> > So, for SW mode, we define a separate AD7606_SW_CHANNEL() macro, and us=
e
> > that for the SW channels.
> > And 'ad7606_info_os_range_and_debug' can be renamed to
> > 'ad7606_info_sw_mode' as it is only used for SW mode.
> >
> > For the 'read_avail' hook, we'll need to allocate the SW scales, so tha=
t
> > they are just returned userspace without any extra processing.
> > The allocation will happen when then ad7606_state struct is allocated.
> > The oversampling available parameters don't need any extra processing; =
they
> > can just be passed back to userspace (as they are).
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> > ---
> >  drivers/iio/adc/ad7606.c    | 52 ++++++++++++++++++++++++++++++++++---
> >  drivers/iio/adc/ad7606.h    | 32 ++++++++++++++++++++---
> >  drivers/iio/adc/ad7606_spi. |  0
>
> Magic empty file :(

oops
apologies for that;
this looks like it could be a job for a CI check (or checkpatch?)

>
> Sending a patch shortly and already queued up.

