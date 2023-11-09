Return-Path: <devicetree+bounces-14752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2CD7E6681
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38F071C2074A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E8211195;
	Thu,  9 Nov 2023 09:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eozzNk7M"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942011190
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:20:00 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B78D2590
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 01:19:59 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5afa5dbc378so7686747b3.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 01:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699521599; x=1700126399; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IMqzOhl9WJdB/fNzCLgAfODP7qyR0cWrCHRSWDr+Pj0=;
        b=eozzNk7MQrpb00EzZSTP+MyjbgBR58IXVyyVIjuSJ311RdgF0dg/XLO7icXV2sImmZ
         ReEc6cZ5LEW31QXd8fvnkaq1pbc7Ac0i5ccaBCvLKwQZouOflbxwgmcYKb8/wonB8qzv
         5k11Y4hpJdInQp7gORgysFVHxope/jCywS+Xf/IwjUpwNtfU6NlGX5ObSs/Uvk541n9o
         D67NTcZGRtc+ormqXQaJJlZ1w70Oh4V2bNizbEy7C1wZko2iwhkuB3FDgl2yrra0oK7q
         GOnrXy4XirTj72WZIq2I2eUnwdrarhSUJIoKLcg0LOEOpJvnEIkrDMu9nh+5yJv9dYqR
         oq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699521599; x=1700126399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IMqzOhl9WJdB/fNzCLgAfODP7qyR0cWrCHRSWDr+Pj0=;
        b=qUM6/EWmUrcUYajEpfCkeSRAjTJ3rukWUc6914fPsFMK7ZSrItB2uo4pI8zvgxzUuT
         oyBP6pwh5fKBiRVBYsIGdVMbtTV3hsT/3NrgCnLk89emPklHxEae8k4ckylvC+ft2Vso
         jp8mp3pGffgmqUU9l5pRsx4ryG0otSjGGiPurnsa0XwxdBzH54EyERjOVoF39mpCU8e4
         X0h8rb0ERhuqg1fsaHGKspdlUU3KGSI3rf7QLiQNG47BWtW2cJ4fx/DTvpsfBP6faKLh
         xARU61tIhmLvbptBuSmNgcpFSiaf44d2szGCLMZg9b8jJ3lKipFck3aUfII2EKg7MRtc
         Wuew==
X-Gm-Message-State: AOJu0Yzsp3WyhkXie6NUHQox/gv8iE07s/iGkDhmJTIaS76cAPFbDv0J
	njRvID3oShWJ5BEQuJIfUTe1K4aXXf5qufHMMMx7Vw==
X-Google-Smtp-Source: AGHT+IHGslikWjLVflnuZnU/FjwclWe1/pFMwApskuuBpFlo3DBr3i51zm8GUoCtqVS2TkIt+0zIc+bYLe0M7YFt/uM=
X-Received: by 2002:a0d:e894:0:b0:59b:c805:de60 with SMTP id
 r142-20020a0de894000000b0059bc805de60mr4100178ywe.45.1699521598749; Thu, 09
 Nov 2023 01:19:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109090456.814230-1-anshulusr@gmail.com> <20231109090456.814230-2-anshulusr@gmail.com>
In-Reply-To: <20231109090456.814230-2-anshulusr@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 9 Nov 2023 10:19:47 +0100
Message-ID: <CACRpkdYtawfonnkGXzTD65fx4CMbbTaXe359tm7=57saHSNfqA@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: light: driver for Lite-On ltr390
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-kernel-mentees@lists.linuxfoundation.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anshul,

thanks for your patch!

Overall this looks good to me.

On Thu, Nov 9, 2023 at 10:07=E2=80=AFAM Anshul Dalal <anshulusr@gmail.com> =
wrote:

> Implements driver for the Ambient/UV Light sensor LTR390.
> The driver exposes two ways of getting sensor readings:
>   1. Raw UV Counts directly from the sensor
>   2. The computed UV Index value with a percision of 2 decimal places
>
> NOTE: Ambient light sensing has not been implemented yet.
>
> Datasheet:
>   https://optoelectronics.liteon.com/upload/download/DS86-2015-0004/LTR-3=
90UV_Final_%20DS_V1%201.pdf
>
> Driver tested on RPi Zero 2W
>
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
(...)

> +#define LTR390_FRCTIONAL_PERCISION 100

This define is just too hard for me to read, can you rename it?

Does it mean LTR390_FRACTIONAL_PRECISION? It's fine to spell it out like
that instead.

Yours,
Linus Walleij

