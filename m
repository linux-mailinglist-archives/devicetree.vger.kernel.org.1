Return-Path: <devicetree+bounces-34933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC983BC4A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1EE71F28639
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF821B95B;
	Thu, 25 Jan 2024 08:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="MT2saab9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99961B95A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706172605; cv=none; b=SdPehJXd2iAdaFke2n1YTXPHRGsocm863Qn/M+Mvt4xK2QueiIdQwTq/527MVCs9fClRO+fy/UwBw2TOOPYO/TD1vwqvyORciW4d8BLOCrqtelri/BOKLSP+awOXwkddDUUzRfbSSMYxhyKReRHv7lxxg1em+ZE+TjgB5a2XaMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706172605; c=relaxed/simple;
	bh=p4BO9u8QAGeKIOwzK1sY9h5zf9JQT29Y2W8Ay3uMVC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ILtVe5bn0YiV2BMvxRJ5dd37bH57S5cxdJ5ysUTT+yQpjJDpHbPfgIsn4ctTOxH4Msy4XdqRNG05Yz+GM/GRpzT+7+3MoIFqp73Bvyuz82dbTEwm+lp+iMtUJod2pRZvNqCAKgirC6ntQpupcav7M56XWW+34GRdvdqs3c1tk2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=MT2saab9; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-46b1cb24266so19396137.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706172602; x=1706777402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SsKffEL6mluctf+cUpjZAVkFUNhs9adzeOY5iA4Fn/I=;
        b=MT2saab9IBoZTjEHtNwc+e3YAPImc+zomcBLT/Z0pgH9BWa8k/Hb3AxWLmjFlJmAGT
         0TLiAuz0cPtnWzo4FyiWFDmHTBgagE6Ar9gaRxXI5sLXHPsZwZjiQ+QAIVlUqw88A4zI
         QiMYBUPEEUP/KvRZYyIiAHUBXROiew+YB8vdnk5TA5YYICwHD7VCTYa8+cjbpK15BI+9
         3r5GF8ai4OFseoskISp+36eNNwCVkr94epn5aau6RwKksvVBcO3LpoSKvPWgKvGMS2oT
         E7lKks4Ma/PHKXBq4aymMCF0aAKf5VpxspSA3L7duNklPLUuuLe/ztgPSKxUdj99tsQ9
         7aYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706172602; x=1706777402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SsKffEL6mluctf+cUpjZAVkFUNhs9adzeOY5iA4Fn/I=;
        b=n1Bzu2VxjQNHsyXX5gP4TSzP1WvgWwyLAPwU+i5NB50aNZn0OQIFOvzFLUaVbhJt2Z
         /O7OP4ZJTDk+2uzwReTC4zcDFJFpBlpDzdnC/kRjGnGSr0YgWXV3O+9CEzBGrk4LBwmk
         T7vWI2opim9iakaY88uZl+4XIRWmC7VeTgNBL4T7HsyzcQ9nTMm4sMbYGY7HvclTQti6
         kBIEsJu+hN24ZvoeBEGLyeV/DGWoFf2AoiDw/I4iV08DsDK2oVtX9UjNrI8XQjQUjcNq
         pbw3Z9bB/10uC0h4mcNXXvbOzFmOE3eKvshYDFQHBbN/7thH9C9R2eWflpxgjsl6sAc9
         gCmA==
X-Gm-Message-State: AOJu0YzZCrn3Q5iiy8Ft4xLW1MeuyErtgUq54izSOBStRMvvP/6/MWN5
	RK7eVL4EzKEAmHLPDmxIbtkRqx5my101KwVVBAKm6m27XCs4H0YNiiRKWAE8+JHvD9gFWwSkX6i
	8L5y1Vmfs5m1gNxX7e1TYbPCYgT2I5hwEZ7mCQQ==
X-Google-Smtp-Source: AGHT+IEXyAabzgXxr3HfBXhvXdKu2rg2zJk9uemqtcciakhWkSZRpFr5cM94Z5De7H+I5E8qdr6SFsVNIxfIMEQUhDg=
X-Received: by 2002:a67:f752:0:b0:46a:fae3:d82c with SMTP id
 w18-20020a67f752000000b0046afae3d82cmr366729vso.22.1706172602526; Thu, 25 Jan
 2024 00:50:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
 <20240124074527.48869-5-krzysztof.kozlowski@linaro.org> <cc9683c9-356c-4cd1-a838-4ca92ded612b@linaro.org>
In-Reply-To: <cc9683c9-356c-4cd1-a838-4ca92ded612b@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 25 Jan 2024 09:49:51 +0100
Message-ID: <CAMRc=MexZidVUf=0gHcXTUOxbSAtdDLZ2gBk6-2man1CSv18gQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/6] reset: Instantiate reset GPIO controller for
 shared reset-gpios
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Sean Anderson <sean.anderson@seco.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 9:02=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 24/01/2024 08:45, Krzysztof Kozlowski wrote:
> > Devices sharing a reset GPIO could use the reset framework for
> > coordinated handling of that shared GPIO line.  We have several cases o=
f
> > such needs, at least for Devicetree-based platforms.
> >
> > If Devicetree-based device requests a reset line, while "resets"
> > Devicetree property is missing but there is a "reset-gpios" one,
> > instantiate a new "reset-gpio" platform device which will handle such
> > reset line.  This allows seamless handling of such shared reset-gpios
> > without need of changing Devicetree binding [1].
> >
> > To avoid creating multiple "reset-gpio" platform devices, store the
> > Devicetree "reset-gpios" GPIO specifiers used for new devices on a
> > linked list.  Later such Devicetree GPIO specifier (phandle to GPIO
> > controller, GPIO number and GPIO flags) is used to check if reset
> > controller for given GPIO was already registered.
> >
> > If two devices have conflicting "reset-gpios" property, e.g. with
> > different ACTIVE_xxx flags, this would allow to spawn two separate
> > "reset-gpio" devices, where the second would fail probing on busy GPIO
> > request.
> >
> > Link: https://lore.kernel.org/all/YXi5CUCEi7YmNxXM@robh.at.kernel.org/ =
[1]
> > Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> > Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > Cc: Sean Anderson <sean.anderson@seco.com>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > ---
> >
> > Depends on previous of change.
> > ---
> >  drivers/reset/core.c             | 215 +++++++++++++++++++++++++++++--
> >  include/linux/reset-controller.h |   4 +
> >  2 files changed, 206 insertions(+), 13 deletions(-)
> >
>
> LKP reported issue when building !GPIOLIB:
> https://lore.kernel.org/oe-kbuild-all/202401250958.YksQmnWj-lkp@intel.com=
/
>
> but I intend to solve it providing the stubs. Therefore this patch will
> not change.
>
> Best regards,
> Krzysztof
>

Ah, so this is why you sent the patches. I don't like stubs in
gpio/driver.h but I get why they're needed here. Maybe we should
consider adding gpio/misc.h for that kind of stuff.

Bart

