Return-Path: <devicetree+bounces-211936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5739CB415A7
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 013E45403BC
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 06:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF1A2D8DB0;
	Wed,  3 Sep 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s3rFveK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D20442A80
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 06:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882553; cv=none; b=gqHl4kB2EyWqQ+vCOa7gYTAsAkA9LJR5w/gPajknB1lsZuM9cW6TlPkZ4SVzNhFX4ee5Bb5XwiNv3Fce1w4ZaXPM4tJ2A4DSln7McErH4BInTxF9OTjUZ3RhxJljA0Er/8wfcaj7WmoOhfQ5VCHn4JEJUTPFY46Pb0kKF92MSlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882553; c=relaxed/simple;
	bh=IDpAPdDZzSrb50R42xhvKngU2V5A6SF5b3FmEOfvqg4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VJaReqxytKwGjB9QRW3z8/LLOAUTWUOOz5EbEQu0DbBuAuVWfnfz9gKcn6S2/spkSOCd+A104i+ZNUuJ7/VuXR8vY6xxnhMvbZz2slp9uBcH6Ghmon4Ae+0ejMSPmVgpn6hlinhkTWZtcrIah7DXBV96ZG625YZLdMy0iCn2jF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s3rFveK/; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5607c2f1598so2570669e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 23:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756882549; x=1757487349; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3izdWZnZsKRsTL0QdhHG4QsyOhmQjAte3ln1Hvsa9JM=;
        b=s3rFveK/DerufccgV308IX5ZL1EQTpNBvnv2OoPrVxGVnnw70gcoUAIIue6AKS6gLd
         RjIdQCf6Szjbh2cdtMWczIRM9TQps8MJQnaH/skYZDAjwIHNc4eQRj/pfYN54Z8HrPOH
         liDihFO+YGHGavpIBo5sD1GB/OicAG8pSXBPPGANOXEDe9aXxpClBM4/Y1jPZcwUg/3w
         5HRIQJIe1B2JJ6eW/Rx5m8jMrXF84mT1dwpjwOyjeJM+4eJbm/oUmcN8tdeLWAe9KjqN
         ak69+AvDyAKtWAK4GM5odv/j0RDQqPNiFupTLVZTbuSeiy2wQCtrFAntyOTXW4a3dMx3
         9bLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756882549; x=1757487349;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3izdWZnZsKRsTL0QdhHG4QsyOhmQjAte3ln1Hvsa9JM=;
        b=eHBjMvdgUvwcRJJFmYllfxo1eUL7RYla7kAH009lCfiBDh7cWo4V+ImulnBAKrLa22
         Qa6fmQFnTaBo4SX57p0Mani3PdSR4Kv+KJsf8w1ibhBZT0/72qw9sUejyMy8ic9dIRhp
         9DYbvq04ZcV4jeae3l5HErRUxVNyE4fZT/AXzp6Cb80O4N+drtom7D6JEg13TNn3JZqf
         GfN3uLjIblOGlHNJaVcpQjNUdjXdOQfMaJiNXMeTw+ObeDNzMUf3bbe/JW5GcE4NI+yK
         h0Oeij2Uy0OPkErcJs2sTZ4ihJTTNEpTbZnTgiO7EoDqv5WnuZX2rABnad7LI0GHnKL0
         SOCw==
X-Forwarded-Encrypted: i=1; AJvYcCXEgmD+9coC4tsZkkL0gwn/m5rpZddv+7g7aMFd9zfSRpEsomdzmaavuCSOwuy+IlrzaXuapkCGNmtK@vger.kernel.org
X-Gm-Message-State: AOJu0YyupmOr5zNNil4GUEC45y+lleGkNLwAwCbyCebaatvB51MQKQcw
	K3EC2WM2i890p2wU7/Fvm+DDIjPago2jGDYPTn9OwM307UEL3+SMax58fRzXEKYG1d7Y1pytcp9
	7tAm4KVUjPg7N+M76Otmmndiv1uBe3HY8RklrsM5WKg==
X-Gm-Gg: ASbGncvodnP6XMQ8MZ33d8XGqTZBzLzWrw15doKT9HpyydvY3ssiOLnUQ3ATEYl1dcy
	aYvFMbklHAT7bl0oRQx/T9+SwzyKc8cT6lBu5Isj+bd0Ce2A3NwDrwLvjZ6KntiQG/Ml1HM6sso
	2CMIVzPYd5kfMv3t/wdoVsEfmPKt/VAqoAgiLNRnU7t3N0xTxcYH+Xpwp26gehwxPc7yO2ev1QQ
	rdzPsA=
X-Google-Smtp-Source: AGHT+IEmLx7loP9ZecOZBO3528SSI/yRm+MhYRdfiMwPjoy+KPrBG8249IPqTCwY1GOtN0xl5pEKKGRDKB/zlEGXKBU=
X-Received: by 2002:a05:6512:2392:b0:55f:6e87:10c1 with SMTP id
 2adb3069b0e04-55f708db54amr4348155e87.35.1756882549501; Tue, 02 Sep 2025
 23:55:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812-tegra186-pinctrl-v3-0-115714eeecb1@gmail.com>
 <CACRpkdb=U=h5OguMuy9G6avCCN6Aem=2_60C+_uBsrY+UvD5ng@mail.gmail.com> <CALHNRZ-dRvaN_SyHRfAsq2MO-ec8rzkeCy6CtJpYdWTobf1-Wg@mail.gmail.com>
In-Reply-To: <CALHNRZ-dRvaN_SyHRfAsq2MO-ec8rzkeCy6CtJpYdWTobf1-Wg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Sep 2025 08:55:37 +0200
X-Gm-Features: Ac12FXzeaQco56Y2RwPUQv74y9to5SIPZF1IYZUjwIRBuYrEJbptpSe99KCxkJ0
Message-ID: <CACRpkdb46OwzNQuSp0+QQVjy2LojMyhdE7XrNwdsyqGi5okASw@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] pinctrl: tegra: Add Tegra186 pinmux driver
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 6:54=E2=80=AFAM Aaron Kling <webgeek1234@gmail.com> =
wrote:
> On Tue, Aug 19, 2025 at 6:30=E2=80=AFAM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> >
> > On Tue, Aug 12, 2025 at 11:24=E2=80=AFPM Aaron Kling via B4 Relay
> > <devnull+webgeek1234.gmail.com@kernel.org> wrote:
> >
> > > This series adds support for Tegra186 pin control, based on a downstr=
eam
> > > driver, updated to match the existing Tegra194 driver.
> > >
> > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > (...)
> > > Aaron Kling (3):
> > >       dt-bindings: pinctrl: Document Tegra186 pin controllers
> > >       pinctrl: tegra: Add Tegra186 pinmux driver
> >
> > These two applied to the pin control git tree.
>
> On patch 3, Mikko noted that I accidentally amended the formatting
> changes intended for patch 2 into patch 3. Linus, since you've already
> picked this up to your tree, is it too late to fix this properly in a
> new revision? It doesn't appear to have made it to the main tree yet.
> Or do I need to send in a fixup?

It's one of the first drivers I merged with plenty of other stuff on top
so I can't amend it, just send a fixup based on my "devel" branch
(or linux-next, it should work too).

Yours,
Linus Walleij

