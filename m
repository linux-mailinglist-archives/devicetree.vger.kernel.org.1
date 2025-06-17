Return-Path: <devicetree+bounces-186778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61767ADD462
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 18:09:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B08E51945D89
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 15:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7661F2F2C75;
	Tue, 17 Jun 2025 15:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="jxQ9Tce+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1337E2EF2BC
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 15:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750175701; cv=none; b=YM7nAqqezmRtX1BZ8cWJyADCFuenIY9Y1cL7QjMRiB4FxN2XS5k+ghWWB45XV74Z46gYPtexZGJf8qHnqubp2um2vQBn27l5qaPaxADkOWY4uSRjm9/9QZOskL3FbS6TveLJo71l79Z7AL71pZOvccgTIHImQJbLO8M+xSEx744=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750175701; c=relaxed/simple;
	bh=DgmeVtT0WIbCRRv339k+cmX+mpoOuUhSgcVes2asjCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WcKjqOCtjtu4lPfVSKrZsYAMswORv6tLt1B44CqU/R3oxU9G/2ZQ+6O+KqFxWHXR4i7kzjQxYWz4zCzTPPPtuZORAlpnF3wdIdZ5j+AwaCLbafr9U4yF97rR1dNaNgfIGMscu1h4Ovgl6vyK0sw4gpueXVhA0j11n4LPv+5g530=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=jxQ9Tce+; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5535652f42cso5885468e87.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1750175696; x=1750780496; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7491lPqRbW4F9hQ07LYAxQPIWHZ/u23nfZ8i+9TOWv8=;
        b=jxQ9Tce+Jm5wydAE+OuBCHVuQVG+bAH3Sm5XzdurWqbrFXWfIsilRrCao2Lwc7dyYS
         Ye5p2yq90E0uOqclB+pPx7qpWV+ipmC44j9d4uqjVENB7L3bAu3YOGJfQLQ3BDFW/1vb
         gprBw6qNJM67wst981izx5UwScG4SyOmS6R2cavF/D8fe7LstSeJycmOuL7/4krSecPv
         SStSJzkdDHfBWVijZ9y1qoQEEckvbrgc6R+HXLRUtgREqMq0+4GsV5wSb8AbXZLuvaP9
         2uHDmROXWP43FzNivkbRLp6uwvQ3LG63XqIvr+PaaPLM34FAJkq7s2POHcUEbxXSPaL+
         P+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750175696; x=1750780496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7491lPqRbW4F9hQ07LYAxQPIWHZ/u23nfZ8i+9TOWv8=;
        b=BvcVFGZjT5KaJRGhjCvKvDrnx1M8R8Chict6DgzELGmUp30TUagcRC9XVTSYz2pRvR
         p7RT5TflHYUT7tVMiNnGVKFLd9Sx4+9pQNSrB2cnYYjbdhq2zlVROLCHt8vWlXkiPywu
         d3/56J7UTvWWCSJMr8qmLyTGpeI5biRH8ThNJU8kA94OkHW2dBlrUzaa0fiHe9idWx3e
         /Xa4R5Ur1pbTD0+C/n4LmHUCoGBV46Ho5HWVU3aaza/YMzSO9rHIKNWJnTguTb/cFkPJ
         Td8+jtOnFS9rW+MkfJFG0CUNMvNYU22nbU7HD78nivyi3ZZF+OfunuWFnHYbmkYfz011
         ot8A==
X-Forwarded-Encrypted: i=1; AJvYcCV3xKcYfUnsWm/DfHTM5GtB/qe5IktWGpcJvCaq+O9wHyTFbXMLfP87QAgv0915/cNvfx5j6aXpZtgX@vger.kernel.org
X-Gm-Message-State: AOJu0YyQRzPJZdcZtDz31wkVuorlGGZmin29cza3tBLeMMFuXIU8bAno
	wjEXVoPbTrSQJwpxAIoo6pSrT7HpqHlQ9Li20BbYiFLq5MAsdZ2b+EEu0s7F0IILBoaJ2Kb/V5U
	T+F/36I/+u1fyS7sx39TLeOuzb2oBZvp6dBjASTqF
X-Gm-Gg: ASbGncv9k8L9RRI5S4GYP+gbTKMBteUAku/zYlQ3FurnPnvtR2g35RnA1taNPayKmrz
	u9U231S4mUnTz3jPFFZb0Ky82Jdbs0D2RIYrxh8iRhHTnJZGl8YkorvEBdPawvimgvAb1QsaV+h
	Xy5VSvf8+F+XPInT6sxBNhben+Dfz350wZHUTlBNgkrti1snMDC+Oq
X-Google-Smtp-Source: AGHT+IHb1aCFJPoJFf9UDRiwIVaRVYSfkm4626qafulBbisD0pCHZaBHpY5By1h92m6KS0F+VPFALhCVjE9/87XOTQY=
X-Received: by 2002:a05:6512:398b:b0:553:3532:5b30 with SMTP id
 2adb3069b0e04-553b6f1377cmr3734810e87.27.1750175696058; Tue, 17 Jun 2025
 08:54:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
 <20250520-linux-stable-tps6594-pwrbutton-v1-2-0cc5c6e0415c@criticallink.com> <20250613140913.GF897353@google.com>
In-Reply-To: <20250613140913.GF897353@google.com>
From: Job Sava <jsava@criticallink.com>
Date: Tue, 17 Jun 2025 11:54:42 -0400
X-Gm-Features: Ac12FXyfNbK2pB7IPkCZD5SA804DLNcmvGU99uvVPgKiMdJy7x-SejG9WptqFuo
Message-ID: <CAKMwjwSuPRZO2Oyy56C-_QCf-gh-jcCmW_Xc8NCQ+yioRTumNA@mail.gmail.com>
Subject: Re: [PATCH 2/3] mfd: tps6594-pwrbutton: Add powerbutton functionality
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Julien Panis <jpanis@baylibre.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	jcormier@criticallink.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 10:09=E2=80=AFAM Lee Jones <lee@kernel.org> wrote:
>
> On Tue, 20 May 2025, Job Sava wrote:
>
> > TPS6594 defines two interrupts for the powerbutton one for push and
> > one for release.
> >
> > This driver is very simple in that it maps the push interrupt to a key
> > input and the release interrupt to a key release.
> >
> > Signed-off-by: Job Sava <jsava@criticallink.com>
> > ---
> >  drivers/input/misc/Kconfig             |  10 +++
> >  drivers/input/misc/Makefile            |   1 +
> >  drivers/input/misc/tps6594-pwrbutton.c | 126 +++++++++++++++++++++++++=
++++++++
> >  drivers/mfd/tps6594-core.c             |  25 ++++++-
>
> This should be a separate patch.

Hello Lee,

Thank you for the response!

Sure thing I will convert this into a separate patch.

Best Regards,
- Job

>
> >  4 files changed, 160 insertions(+), 2 deletions(-)
>
> [...]
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]

