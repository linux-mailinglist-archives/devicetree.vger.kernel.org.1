Return-Path: <devicetree+bounces-93381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06548950B60
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38B011C21D57
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 17:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6E21A2C18;
	Tue, 13 Aug 2024 17:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aWnMDcZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FE01A08DC
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 17:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723569991; cv=none; b=XIZCmjuoVbgEIYCKovpZiyQLusY7/ds5K2VjQXcGY1mcrSC1DVq/PevZlkWijFG1qelWP6TvBeBonELkvl5cMhiYCFAtmyzuDN9gdI5alEqyGYFXaAAxGI3oZ3du84GXtR4sm9AsxR8dnnO5kTOPm2ainOXaDPJp7R4IcSGuGEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723569991; c=relaxed/simple;
	bh=g5luCYPRUnOaUTfxUADhYc+LBS38OEZ8tTN4hBNkyGg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mjKI5vcqmgTti7+F3ShBeeLdATfRLXh13GNg2pRqGtaLMt0KAOCI4RKw2ZhTxaGjvED8niOv2fAiTMqLrdtXv5SzU/Wz4ixpXW8GAYFWv5NgYkwOg+TbqmgDQhapDiziecgxvshe1AsC1BF3En5mm+EF2i9x6ACFds6PVIJhmGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aWnMDcZI; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-260f1664fdfso3278086fac.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723569988; x=1724174788; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cL1n98BYjvpNXBfsENT7L2FFIE+k6G4EwDvpPJWlOW4=;
        b=aWnMDcZIeaZZ5qmC5bQN/KFrsZfjbfZ2cje7vCF79FuxWiyzkTH3kozTYFR+SYKAqt
         IhEEXcoSLdhFJiaL4iT4Myi+3G9fNPGPJJpldMo1Cmz7Zoeq1G/jDuXcKQvia0eqmRsF
         yov0F99G38lh+D6pFVK6mdAMFmIV6yF5b5pBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723569988; x=1724174788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cL1n98BYjvpNXBfsENT7L2FFIE+k6G4EwDvpPJWlOW4=;
        b=BQxg2RCp4nO6GHCoM05o1MYGmRoMVyvGaBmS9xPIT5bpg8J9GkPYB1aUlSGk+lo5It
         I0BlKg9NRn8fQeoV7jRMrlbiyl4/54luxv9OS1hEnZIcmCEGZ2fiJvMlBC9SYY7yhvfa
         Din8Ej89NRxgOewQsqHzBKab2l7MJGViRFS1Ypkla2DSS3obzB57R1yQILpk7Sx9KdH+
         vjWG1EEcaBQXV4nQORip6TAg0UjhOiHGZyVet/SKrbCUD9DV5ZuzaKGdlzBZzuZSJuUq
         2sU/CUmqqo4PszGlACDYju0RHI49k6n7e5haeRtRZFBT/8I+qu3j2sc7MVq5kpJ9ljoa
         JAOA==
X-Forwarded-Encrypted: i=1; AJvYcCWbLJZ4BohIv9y7EcPe3hLUFUxz5TNvNIgKuZHlLk6TA/3ojX2/cllun441okeNzFT/n0jJZgqCUDcFUJKiz8g80Px84QMEBw5JZw==
X-Gm-Message-State: AOJu0YygruNQIhpdRi9EkAZ0f/36Ib4/6KarbeUEuwb3y0IE78/TEvmp
	HiI2hbQ+hdjQgB8a96Q51xNITobeK2X6dVGhpne36jmERnKGKqkxWwgvrLHorkarah01mbJ6W50
	=
X-Google-Smtp-Source: AGHT+IFw8EQQwEzJRwwSkf+b60kDHfA4rBxMBP02KJ+qgxa5FP8han+ge2Nk+vwbX51P/LNlbLj12Q==
X-Received: by 2002:a05:6870:9691:b0:261:1177:6a56 with SMTP id 586e51a60fabf-26fe5a54cf7mr363098fac.20.1723569988588;
        Tue, 13 Aug 2024 10:26:28 -0700 (PDT)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com. [209.85.161.53])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-26c72045928sm2481677fac.4.2024.08.13.10.26.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 10:26:28 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5d5af743b8fso3045219eaf.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:26:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUWaFwPPavDwHxwlmPg24J81Afxw+BwkRUCRLzjRb1t8XCW2AMVHWXrZc3eLuKtiKh6pnwK02MTS4KBSVZ8GC1Ejy+A7M9zS6Dn9g==
X-Received: by 2002:a05:6358:989d:b0:1b1:a8fb:4600 with SMTP id
 e5c5f4694b2df-1b1aac4890bmr14711955d.19.1723569987284; Tue, 13 Aug 2024
 10:26:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240813133612.49095-1-charles.goodix@gmail.com> <20240813133612.49095-2-charles.goodix@gmail.com>
In-Reply-To: <20240813133612.49095-2-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Aug 2024 10:26:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W7rqE+sSbspo6b0un=FbBcxgS24sKLUZ+NTkOdveJObg@mail.gmail.com>
Message-ID: <CAD=FV=W7rqE+sSbspo6b0un=FbBcxgS24sKLUZ+NTkOdveJObg@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] HID: hid-goodix: Add Goodix HID-over-SPI driver
To: Charles Wang <charles.goodix@gmail.com>, dmitry.torokhov@gmail.com
Cc: dan.carpenter@linaro.org, conor@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	hbarnor@chromium.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 13, 2024 at 6:37=E2=80=AFAM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> This patch introduces a new driver to support the Goodix GT7986U
> touch controller. This device is not compatible with Microsoft's
> HID-over-SPI protocol and therefore needs to implement its own
> flavor. The data reported is packaged according to the HID
> protocol but uses SPI for communication to improve speed. This
> enables the device to transmit not only coordinate data but also
> corresponding raw data that can be accessed by user-space programs
> through the hidraw interface. The raw data can be utilized for
> functions like palm rejection, thereby improving the touch experience.
>
> Key features:
> - Device connection confirmation and initialization
> - IRQ-based event reporting to the input subsystem
> - Support for HIDRAW operations (GET_REPORT and SET_REPORT)
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
>  drivers/hid/Kconfig          |   6 +
>  drivers/hid/Makefile         |   1 +
>  drivers/hid/hid-goodix-spi.c | 810 +++++++++++++++++++++++++++++++++++
>  3 files changed, 817 insertions(+)
>  create mode 100644 drivers/hid/hid-goodix-spi.c

As a point of reference, in v5 Dmitry gave you his "Reviewed-by" tag
[1] despite having some nits. It's usually expected that you could fix
the nits and carry the Reviewed-by tag on the next version unless you
did something other than what was requested in review feedback.

[1] https://lore.kernel.org/all/ZoW4_hctu_cSiKA5@google.com/

