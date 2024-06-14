Return-Path: <devicetree+bounces-75901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF69090BD
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:47:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3DA71F2236F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6728719AD91;
	Fri, 14 Jun 2024 16:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="Cjgo+AQs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8627B19A29B
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718383620; cv=none; b=Qtbw+/YF3Hcv5LyAisD2vb3Jkwds75oIxROEM9avnC6fgV4Az40E0q1P/MwgvVDLjw8CIdMfnejHL/JJ1Q1TBAoIu93PPIuTf20rgSAPO/aOQxfpmRklZfHcOvhmv/lCt0PbLjcVlrq78avAJgOhvPayrZ2E24DEqLeosrk6jDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718383620; c=relaxed/simple;
	bh=FLuaLPSxdc133WnTVEOu+S2w+iO0qN6ohvmaKluToUw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qwXKOKo+r0vRiJNqZOG7kF2qPtWzrBk2A+KDA4e/7r8iY5kdD9lbGJuICuJhFnWEjto6FY7NI82yElNu1GP7Mon/+5ApvCP+5A0rckFC8FshHZUlkiD3TLX9FYYKIPt6jwv8YVUAVaFjJE9dEqLFhKCCtHKrGb5jMqSHz8TuQyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=Cjgo+AQs; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6b09072c9d9so18851756d6.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718383617; x=1718988417; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yqs2Bs766IBEpVDwqnHittM7JULZRUAPIPpoZOOswLI=;
        b=Cjgo+AQsKl5aMGZBws658wrQqIHInzxJuijK6wYDpOoM/xFvvme5VKOkH/1V+VBzT1
         +6v9W/TKtjZg3hmvRfWVVxYukXnKus8X/ggao62VnR8YIC0TktEs756W+qJop4N61jqY
         15rk7J+dV9lcwvnHJy3hhwqQ6BrKLoP8kAdf+Mz0rfeXKngDRwbY7gCfAPtGSGmfmF9S
         8hBuy9s96DVv3rnwiQ5O3F5I3OH0LF4GEyqJxC9d7b6dih7lu9SOWC6ZocMpeKoAr/eT
         TCw1+t9W26uMYwdbtV0KKLI2z1OGarq1CHogIQc4fke2fWZh4e1Sd7SVs+HgjPlvluM6
         TaYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718383617; x=1718988417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yqs2Bs766IBEpVDwqnHittM7JULZRUAPIPpoZOOswLI=;
        b=Q3EeEItsV0w2lsrPiFx99xDLFZC1REq+Htu7/XtMLqTSQ4eEo/P2Vbw9jMvKvMm1Ar
         YymiLVEIe0qu4ch3fP2vVAgYrVjOdFeGXfxtU0Rxvov99pwZaJrQa+CpYJJWeVRpqhz4
         PRMUpLenRM43h6OgBTJxa8OMKcC1CB2vFDBYSvyevv3SHaNNyxPC7lbGxH4I+4tvOU9c
         5+8+9dzMyLxH78FwQj8K6XcyC8vbGTFxZRk/SdlelXY9wkYxTaL5LYwyuRpGCn5Q222K
         jbnMf6Fh0MXuOb+MJnn34DiX0I32cZdCrk4X6u71zxIoZmcbLpOpBC8Z3h8qPxRb1crz
         ZCaA==
X-Forwarded-Encrypted: i=1; AJvYcCWDIbfom94HlPgqpQ6ftn4hYXPi8UNe4tOvBR1o4clxfvZ6146SAyJpUC8e85wU1WcYWtndvgPzMXdfMZ4nB7LQEBvTfOHZiPJGfw==
X-Gm-Message-State: AOJu0YwFlg4fXic7nr2RlW0aRp5sAnI0TYLdOGX84g/Vd4Nfd+F/BuMV
	oOswXrFvASLfl5aGr3n4cVVu16EmRI7JJwe37jN2NekmuJ29mmjd3NkHUliIvHjwdxWFwhvM/ny
	dDJqlRAQgKM0KoeU36hwb4W7ZzxgLpeM9uk334w==
X-Google-Smtp-Source: AGHT+IG0IJ7dklCKXgFvzQnpQNQ7ndgkvwrYf/nZPEe1c+OWwBjZSeclPr61zSJ2azVgXqhXLF4vvSLpkv+cY1EpiAk=
X-Received: by 2002:a0c:c486:0:b0:6af:33ed:87de with SMTP id
 6a1803df08f44-6b2af2eef89mr48619646d6.20.1718383617492; Fri, 14 Jun 2024
 09:46:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <Zmgor8accyAiUkUO@finisterre.sirena.org.uk> <CAG+cZ06B+AexqvwZtNP5FX50AmghAFLa=1ebxmKLvMoyVJ529w@mail.gmail.com>
 <Zmxy-xA3YDU06Eht@finisterre.sirena.org.uk>
In-Reply-To: <Zmxy-xA3YDU06Eht@finisterre.sirena.org.uk>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Fri, 14 Jun 2024 18:46:46 +0200
Message-ID: <CAG+cZ05KomezPn0bAuZWrfO=rbyLdCU8_Xx11oEihUaD97gF8w@mail.gmail.com>
Subject: Re: [Patch v2 1/2] ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Chancel Liu <chancel.liu@nxp.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michael Ellerman <mpe@ellerman.id.au>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 14, 2024 at 6:42=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Fri, Jun 14, 2024 at 06:24:50PM +0200, Piotr Wojtaszczyk wrote:
> > On Tue, Jun 11, 2024 at 12:36=E2=80=AFPM Mark Brown <broonie@kernel.org=
> wrote:
>
> > > On a quick scan I can't see any architecture dependency for build,
> > > please add an || COMPILE_TEST for improved coverage.  As for all the
> > > other things enabled in this Kconfig file there is no need to explici=
tly
> > > depend on SND_SOC.
>
> > Ok. Later I will add a sound card driver to phytec3250 board which uses
> > arch/arm/configs/lpc32xx_defconfig config file so that the COMPILE_TEST
> > won't be needed.
>
> Why would a defconfig affect the Kconfig?
I guess when lpc32xx_defconfig enables the SND_SOC_FSL_LPC3XXX then the
COMPILE_TEST won't be needed or does it?


--=20
Piotr Wojtaszczyk
Timesys

