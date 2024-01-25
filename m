Return-Path: <devicetree+bounces-35325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F8983CF6D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0CDE1C22DCC
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4726910A31;
	Thu, 25 Jan 2024 22:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VO+BhBcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C26B1118A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706222103; cv=none; b=Y66Y/LkGYkUrY+aiE/9DhoNyYX5zYX4nM2y8LBrG7HSFSeOpNmEe9SEWJ8NOLMYxacFNBaSUtBIKc7OTSquSXOVoBgzma0XA8BFVHq/9xs+89BBqvgUveqq/FzCYeTKx5VdVv5aaU//12TWlgogoPCpq9roMdiHDeZyH5Uv7cT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706222103; c=relaxed/simple;
	bh=PWubl/XtYBpas/AdivCCWYMQQNqPtjT7WZPtVgnZW+E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s4cKE/1d7EW8QhOKtB8x+yYC2zmqsthtTcmvq+KAapH5Yy4WwbIZZr2AG77Tp2dKThltleFpFO39Rz1tf+YCn9rn23h4cThYoDn1hfYUxUrJNeP9l1XzSQ3L01kGsItIlI2Bg72M8DcG6agtz5Nr3WZWtbyj6dFjXNUfhqTwvng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VO+BhBcB; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-5ce9555d42eso5834554a12.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706222101; x=1706826901; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Eb0c3haY7NyGtB+8UjAu5Wtfyd5HZxv9SnvbZwJOFM=;
        b=VO+BhBcBfOPmcG1cPgDAU5nnE9lVBnxh4uTePyfceSP+NDbNp+77ub6+WkdDe2IWGh
         //oOTFgFYLmVobOMyrt3vO+Fp9VefZ7ZC/Y07TKGM+0vDiL05geJOKM0DtKiOlzcq97q
         ig1UYrbMCjq3bDQCUt6bTIgqmidkKMkzVvb8wMvNd+52YMdTDhRBJLB66eygo9dZJnZy
         1pHmHEsshFa1TViFRsy+va8Qi8aAKLFoER0dYXy85NZpYa4zvdmRTykZNxtxNCX/Tf6D
         oPpxwPMmQEsEWrhoPphPT+zmUd27avLnH+OnK8HJGY4uANbt3drRJkNwK1qnzwtxZGvN
         UBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706222101; x=1706826901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Eb0c3haY7NyGtB+8UjAu5Wtfyd5HZxv9SnvbZwJOFM=;
        b=U4hhdjwhXjABT6viHGtvIKjGGaV7zdPcXS2X5lOPDuOo1vtMqEK6AJNReW2+VZ5iAH
         Fl81r0JX5q1w9aMt5l8BUfVY36YRT6bST5kdOw3QYJimpJe35AoS8rIhTSwESTAMUAK3
         VXvm+PXeUQnYYB+yis+iG2FcpJV7bHIIOQNiWnR0AZBnqG7zHEYMfh5KguVsCFxLqagm
         /vh62/q6iJGUt9RlUYOwpc0K9D2aXH3JQkZCk6Tqma3a2RU0jyL2laSj0ib7nJwO5s/M
         RjGKyl3fuvGsnvnu6dE4Mvqh56WwAZ/OaxBuqhZFTYCfw4wjvK6GqCbUEPXyaDztJZcC
         +N+g==
X-Gm-Message-State: AOJu0YxKQGbUwdndsf6YDKpUQAZ+AbVcUHNIxFEmMKr6RTfRCuB7WHn4
	LqX/gT+Vb9EPvnvHLNOigyxpOv/i3qm8/Ou23oUx+Uy/Fg34sGiI9ry8beFtaOVHZIzyJ5E9bQr
	LdwLwS3vZXSBsw8otZunnKEhD5RH6qHCK38LhTA==
X-Google-Smtp-Source: AGHT+IHK8NjbfVjiOJVvhHwvTy+ErZQG3JChXcCNJ9tq7pj1tBuCcj9cSgMmIm2WuK9z6omDkmihzA64FOxWzj9qVZk=
X-Received: by 2002:a05:6a20:2453:b0:19a:66a4:7966 with SMTP id
 t19-20020a056a20245300b0019a66a47966mr509176pzc.55.1706222100868; Thu, 25 Jan
 2024 14:35:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
 <e233f4ff-9ed9-42bd-8ffb-17b66bcf2b5b@sirena.org.uk> <7c998d34-919b-46e7-8942-75da94d5ac21@linaro.org>
 <zbxkm5jbngci5dp3oxcjccnltpht7wsyrvvekozwcsfv5ly3r4@ms3c3bzxgqqx>
In-Reply-To: <zbxkm5jbngci5dp3oxcjccnltpht7wsyrvvekozwcsfv5ly3r4@ms3c3bzxgqqx>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 16:34:49 -0600
Message-ID: <CAPLW+4m_AAnsXdpcwrDL2dJNq6+2sRg0fv4nB1tpF3ufMX=TNA@mail.gmail.com>
Subject: Re: [PATCH 00/21] spi: s3c64xx: winter cleanup and gs101 support
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, arnd@arndb.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
	Andi Shyti <andi.shyti@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 4:25=E2=80=AFPM Andi Shyti <andi.shyti@kernel.org> =
wrote:
>
> Hi Tudor,
>
> > >> The patch set cleans a bit the driver and adds support for gs101 SPI=
.
> > >>
> > >> Apart of the SPI patches, I added support for iowrite{8,16}_32 acces=
sors
> > >> in asm-generic/io.h. This will allow devices that require 32 bits
> > >> register accesses to write data in chunks of 8 or 16 bits (a typical=
 use
> > >> case is SPI, where clients can request transfers in words of 8 bits =
for
> > >> example). GS101 only allows 32bit register accesses otherwise it rai=
sses
> > >> a Serror Interrupt and hangs the system, thus the accessors are need=
ed
> > >> here. If the accessors are fine, I expect they'll be queued either t=
o
> > >> the SPI tree or to the ASM header files tree, but by providing an
> > >> immutable tag, so that the other tree can merge them too.
> > >>
> > >> The SPI patches were tested with the spi-loopback-test on the gs101
> > >> controller.
> > >
> > > The reformatting in this series will conflict with the SPI changes in=
:
> > >
> > >    https://lore.kernel.org/r/20240120012948.8836-1-semen.protsenko@li=
naro.org
> > >
> > > Can you please pull those into this series or otherwise coordinate?
> >
> > ah, I haven't noticed Sam's updates. I'll rebase on top of his set and
> > adapt if necessary. I'll review that set in a sec.
>
> it's a long series, please give it a few days before resending
> it.
>

Also, I recommend splitting it up in a way I suggested before:

  1. First add gs101 support with minimal amount of patches (without
.fifosize introduction, etc)
  2. Then do all those cleanups and reworks on top of that

The reason why I think it's better than doing that vice-versa is that
I feel (2) can take a lot of time/review rounds to get polished and
accepted. So this way you can make sure gs101 support gets applied
sooner. It'll also make it easier to do the backporting work later, if
that's ever needed.

> Thanks,
> Andi

