Return-Path: <devicetree+bounces-213015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F165B446A9
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:44:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 068A6586883
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F9226E6E3;
	Thu,  4 Sep 2025 19:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i0LplclM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9725F26E175
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015088; cv=none; b=p7wSTtlhwBllCtvjq7+lfkKs2H9P1elKaQgCh0Y1wJSpPiebumeHfTDfv7mCTMoFnhp1PIsh00+S56upoIVA1r4gT+lCsEaJz7+E/sZsdbix32lLrEv2fEbBt9VfMIJjPQS7YmHCYGmkVnR2u+3YtOkn8gCXq4xd3sbjUkMAT28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015088; c=relaxed/simple;
	bh=nrsoN2cRsUh6+oDjNodKxMkbhTbg0va/okCb6ReI6KA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=piX1uKJzn/ei2gyOmm+ZSBXLKALLKdom2qhh/Yjo+apAbbMXzacqfLiDr3Il8T9sl/PveZT4Q8MWp4Of/HaS8G0Qvph+QAhKWQeAgQeSNDC3YiFYbA/Fp3BcxZsmM8o10r+3N1PWZasZvtd15taREhPYSprKQryvfAVzaKUzyc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i0LplclM; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-336c2194a65so10664401fa.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757015084; x=1757619884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrsoN2cRsUh6+oDjNodKxMkbhTbg0va/okCb6ReI6KA=;
        b=i0LplclM94LFldL9ko/QvOW6Ciko3G24cPFgu18SC2Kb390tSTAaMgXg1VoynRyO+h
         JiNod07ixWaXyVg9MjoHkp4p/RHWgi40hh9BA4OW/QVC1nxGblOqegSOEnPT53lNSfhk
         CJTVM8xTd3FaxA02cUp/V60yxbZO6+0872xjdtm5fyttblceL4VxLZWMTSL3WR55zbHI
         o7BsI14It8N0anthekCv98klkrA7SNhejV8fvUg6TsziqSXbdTqEDzISXuHqau0me7Zu
         AcjdbtmXY9vy+uqsFHHuPx1KkwfA++QwntBO6+y5OfzmtVJTI2P8R+7Amc9OLhQFlevL
         AeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757015084; x=1757619884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nrsoN2cRsUh6+oDjNodKxMkbhTbg0va/okCb6ReI6KA=;
        b=IjxwsprZr0DGiDMmGFg1PaMxe4e9Oh4O2Cp5HEG9MlolOVZlTCMt15Iu8y1+0N3QvN
         pEcbwVTccy1wdGpEUYZxvk4PJJHB3f8tFbBp1K8t3SrXA6FRWVayfrpdpB1HTIjbuENP
         9EcZDLKVc/QSx1+EH4Q44ljPIzXzujpKcKSi5U0236zq+yGU5lKLYj7brvolbhrPJrbi
         02sCQI+f2xqdxCuASHh+O0g3VCAa8RnARgp05m5XU5vvOh6HmE+u+jvZepOVE48sIFiE
         quS9QQY5JA+XJVhE2atpK7DKTr1j3Sz2VMDtt0Myd9iwEg7iiDkmzRWht1t8hcTzqhBm
         dXQw==
X-Forwarded-Encrypted: i=1; AJvYcCVTSeBqdX5GzUwMOwlYxL8cuwLIf9UygOEwmX/kGwmmr92r1ZzMjp0Hvlh7sA+78sxqMFPye0lxGCAZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxNY6BDmLVu00vOjdRz6+nRdqSp1X7N8wJQGcp06fJ7jeJ8sryg
	w9hjnZxJHQ1Oq4bxWicwn8yM/TpDwQ5SYbpJOplgzo7uXYS2n1Z8VaAOd5wAEs+cN+tnjVXptLv
	gHsTrgsFCq9t/SIm/G9IKjLpGdPUTnKAC2bHwM27MDQ==
X-Gm-Gg: ASbGncsJmIvMWR+/4/BdqWVatU65YcfSVT5J6nL3rbd4nN/Bkam7gommTYV0L3m3K45
	W+0+6zMqPldmJgfF/YPfyjHXrAWFIesqqe7HUWJ/SsQcyv0P06cEJhUdPp80tLEGCBkrPpODCx3
	q4+HsQXhU58JePisCC1qSUTEg5Sb4eRPKtamVMFWfivSveV7NWZtUznc8nA9zSuh8z5d0VThqZd
	v9R+NxztiVY5KzBoQ==
X-Google-Smtp-Source: AGHT+IGW3Q5mVQSa4T86jRPxMcDx+PrjgBKT3CCZeXO2AlCJTgPkak9+H+1Qa+5a1Zu0cS0PJQgLLRFuw4VSi8OlYhY=
X-Received: by 2002:a05:651c:1118:10b0:334:45a:6e65 with SMTP id
 38308e7fff4ca-336ca9dc2e6mr50813331fa.18.1757015083748; Thu, 04 Sep 2025
 12:44:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904013438.2405-1-ziyao@disroot.org> <20250904013438.2405-3-ziyao@disroot.org>
In-Reply-To: <20250904013438.2405-3-ziyao@disroot.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:44:31 +0200
X-Gm-Features: Ac12FXzijnUJnUS4O1_UBtocPghj3eDGF7zfv9ZNj6v1waFbdxgsEZ7rJIcKPss
Message-ID: <CACRpkdZJ16O+t87aB6dVm7kqCNkiFQiExDVjRJCRgNUhDbzV4w@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] gpio: loongson-64bit: Add support for
 Loongson-2K0300 SoC
To: Yao Zi <ziyao@disroot.org>
Cc: Yinbo Zhu <zhuyinbo@loongson.cn>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	loongarch@lists.linux.dev, Mingcong Bai <jeffbai@aosc.io>, 
	Kexy Biscuit <kexybiscuit@aosc.io>, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 4, 2025 at 3:35=E2=80=AFAM Yao Zi <ziyao@disroot.org> wrote:

> This controller's input and output logic is similar to previous
> generations of SoCs. Additionally, it's capable of interrupt masking,
> and could be configured to detect levels and edges, and is supplied with
> a distinct reset signal.
>
> The interrupt functionality is implemented through an irqchip, whose
> operations are written with previous generation SoCs in mind and could
> be reused. Since all Loongson SoCs with similar interrupt capability
> (LS2K1500, LS2K2000) support byte-control mode, these operations are for
> byte-control mode only for simplicity.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>

Uses generic GPIO IRQCHIP which is great,
and generic_handle_domain_irq() so I think it looks
great.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

