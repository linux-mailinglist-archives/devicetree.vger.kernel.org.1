Return-Path: <devicetree+bounces-39254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A0F84BD9D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 19:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E07492925F7
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F41013FF8;
	Tue,  6 Feb 2024 18:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qWBNV3WD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA90413AF0
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 18:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707245988; cv=none; b=O6GDmY6FWnZwbsthQepdpImUzXNMMptVFX6px+9lP4SSITGrGrtDNQ7YCRD1VGYx57fXWb2t5sZNMaKWO/Gyez7R338jMO8yAhfI9Y6ExzHE/CTJrhXvs8ePgxvYxt+fif+0B4yEycDt10KNuU2bCIp+KCfljtv8u9xNTC+B4SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707245988; c=relaxed/simple;
	bh=Wf1u/K7cqpPvvIf8VkU04/Nn9EPNlzss+1dDdFad+Eg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i2+rOUtdju9G8GFoq9zpcY8lY9MVEyH7fkpF4ilVgDDxwIWu0CYLyHreYMgNRA28aVd1DTWbCYI4Ud5JhTfEioOfmEzR08sZdJKTLY9XsTPhnvPIL0mBP0uguwU7Sic+FEYIzeAKiB4hkn78s3In5Xx1UUlXEG9UEWh+YIkNSds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qWBNV3WD; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6dc36e501e1so4167333a34.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 10:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707245985; x=1707850785; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N1vP2tD4oba/oi29yYsZV4fMHdfaG3LQ4rAdhQQXQVE=;
        b=qWBNV3WDQsiYp91PymhsLUMtCNsBv+kd5XrS+cthSYkJU8lCTTxCMahkPuUTd5WT1u
         7gkU+Zu3fztYW0ndN8kH/eCWQifQM5EktMQbtch6xAMDQG/sAtA/LFzsWnHUgOsy8M4m
         1Ah0xGX8RDvzatJWsb/TUBmxgNgtJLM9+UacfQTDNkVKfGz7y498Q55AncO4XckIDZ4T
         o5+dUGy/XNHXDIXOSyiCAbF5LQLSorQ9ZDPTYpRLEbGvWEq8bh5520ic1ZryUSyUZ8jk
         knAUO6idNjSLpLWchythE8r3ENhRErMR0XIFw5VI7kboUXSlImkzXa7WnKTDN95m84V9
         aWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707245985; x=1707850785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N1vP2tD4oba/oi29yYsZV4fMHdfaG3LQ4rAdhQQXQVE=;
        b=d4yJilFk6gM9+4bkKogCygEbp/EYYq+yPxwIDOyH1Her9yL40wFyFP6a+k7jOBKclh
         MmyfK9oBPu7d5+LiKrCZCipu/I6SbOvoolarRU1iFLHLR14tUAuY6WU4w61mCpjLYP64
         SaXm+e4W4M1kkhg5Cxh3rlQINq4qkmBSokquwpeie9DPlLmEcpEF+fKxf4E33PIDmZ5q
         vxsPii+ro5OIppF3OrnaCbQwuEkX4IqpxcNlZ3Jx5J6pgdeC7f2TMMMKyhsKVMI4RQ5V
         E5iTrpcwhGxHcrYyB+veex0tt0Eqiq+rdR2UFjXsriNJ1mTReDi16SMtAu0WfdBjPK7L
         wTWQ==
X-Gm-Message-State: AOJu0YyMQu0HYjAXnZoBrKloIYBHhnYj27Em5f4vB+J5LQPpg5N8iknC
	ufFCXhvLGih/20umI/KmnBm6RJ9Au6TQtmt/AhYrSBbu//VFEIQ0Xqz/R+cLRMPr1AKhTk38hVI
	Rm2zOR99x8mTlLVA01MmX0RkedE5xVgRTk1DbZA==
X-Google-Smtp-Source: AGHT+IGNS0Oe8KJpF+kSyUJKGwQnf7SQKD89Hzf8ag94E2qGy0uUAETcBpz/zFnwxMj0ha/tlZ3iPN8n3xLEWVVj8nA=
X-Received: by 2002:a05:6358:cc15:b0:178:7fc9:3991 with SMTP id
 gx21-20020a056358cc1500b001787fc93991mr404491rwb.23.1707245984726; Tue, 06
 Feb 2024 10:59:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
In-Reply-To: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 6 Feb 2024 12:59:33 -0600
Message-ID: <CAPLW+4kPib_3MJeGL3bHT__rLoJOS=GS+gNZUbZ0dpyey9E-Hg@mail.gmail.com>
Subject: Re: [PATCH 0/4] spi: s3c64xx: add support for google,gs101-spi
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, krzysztof.kozlowski@linaro.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 2:52=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro.=
org> wrote:
>
> Depends on the simple cleanup patches from:
> https://lore.kernel.org/linux-spi/20240205124513.447875-1-tudor.ambarus@l=
inaro.org/
>
> A slightly different version of the google,gs101-spi support was sent at:
> https://lore.kernel.org/linux-spi/20240125145007.748295-1-tudor.ambarus@l=
inaro.org/
>
> Let's add support for gs101-spi so that I have a testing base for the
> driver rework patches that will follow.
>
> Tudor Ambarus (4):
>   spi: s3c64xx: explicitly include <linux/types.h>
>   spi: dt-bindings: samsung: add google,gs101-spi compatible
>   spi: s3c64xx: add s3c64xx_iowrite{8,16}_32_rep accessors
>   spi: s3c64xx: add support for google,gs101-spi
>

Just a grumpy note: I wish this series (except for the [PATCH 1/4],
which I'd argue doesn't belong here) was submitted before the rest of
SPI cleanups and reworkings. Would've made reviewing much easier,
because this series doesn't apply without SPI cleanup series that has
to be applied prior to that. There are other benefits to that approach
too, as was discussed earlier.

>  .../devicetree/bindings/spi/samsung,spi.yaml  |  1 +
>  drivers/spi/spi-s3c64xx.c                     | 89 +++++++++++++++----
>  2 files changed, 75 insertions(+), 15 deletions(-)
>
> --
> 2.43.0.594.gd9cf4e227d-goog
>

