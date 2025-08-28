Return-Path: <devicetree+bounces-210157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E3FB3A8C4
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 19:51:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B317BA005B2
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 17:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10C533EB0F;
	Thu, 28 Aug 2025 17:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD+QQeIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2CB3375C3
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 17:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756403502; cv=none; b=FQpOPQyMRqffPpTHTTkDJ5BQzdiPHQwDgY/TgPnVV34PqaBmGd3Y9Bg3txsnrZBO8zlLkAqbzsUot5NrotDdLKtpGmAByiOED9oMLygPEHvYPVKLbTW8e41v9qH88oGALbr+8wk6eHEbcrVlxd+1QD+Lo6N3/HQwRwsk0+58i8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756403502; c=relaxed/simple;
	bh=FS1bAtuaqWaA3dp/c7591ij1wtT/Ja/4Nu7xI/Zv8Zo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f8sLJj2rzc644bo0PUWPoTU6tw5uQySrssJiza5cxWU23XSZNzbww92eFHgBKEyMO4Q9Din3y9dURgrN3mHvKJq0TsZZQsiwriNFUdMWM+cJ8gd05sll80nxmca5T03GAJr9lzRDie6djG2vg4DpjhzHjD3PqHngBrp8SnWnz/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YD+QQeIO; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55f3fc15e09so1314930e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756403499; x=1757008299; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uX3blM3FxOfI6FrL/xSG64oirzn3bFsI7YVzzapRXK4=;
        b=YD+QQeIOpZ9ua2NoR4hizan3/YRj+xXYeAVbInurCn8NbjCB1hM82cC7eY+10sqUAr
         gdQghFxMzOiGmyN14A2zL/CeN4vctmqq4OFZNOJ1mgQfhG/LUxKTliRiy2rSC4KokMvo
         2Ka/NG3IdI9XeKzPTnHOiqz4Wl2eZz0CwxxT0J//MwR2Q4Y53/C2zhNkw4xyEyu7FDtD
         P6kgY1gr5TFiNByrbENS5Go5j0pzsunKG7dtT8GbU6JihU5I46Opd45A4C+DR6g4Q0Gt
         8kiUZx9VFgbN5mp2HjWU5dAJtpquc1h13LyQGsKly+IJNVExcTPJ4zCjYFG/WSL7Yryn
         VS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756403499; x=1757008299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uX3blM3FxOfI6FrL/xSG64oirzn3bFsI7YVzzapRXK4=;
        b=sbDZf1J3FDfLj4eDQYNgLcnpArc+uwyej91+OOXxh0Cg4dRm8rOkoHJ82pIHd+MGk9
         wyhZp94nBIhMUBTW/rW1rO3jx434m3vs2ECuQqT9DkuQpioKLPs4wBmlT+R9SbSE7XOS
         7bL/Mue/cJol+46yERKLS/8ClNeFjsetflLUg9xx0chZB8Yzr4taXd7Y2JE7ySQHVvkp
         HWXMKo8Tv7t8hnWczgf+bSxZEq64OXneWFVwRAXeua2omFuJET9gmg+J7xQ+xO22r48G
         9Qn18DbexsznZEIk0PtBBT4LZ7Qk+BGI2CL6yEBirz0f3pHFnOKq+UE+IIIpbvQRFrwU
         AbOw==
X-Forwarded-Encrypted: i=1; AJvYcCXpS8QoApTYyhsIMVgJ5VVm2A3kxjLho41955qbXjryyAavl6LJUt9Y7tce5f28FOLdsy8DwrqUbgc3@vger.kernel.org
X-Gm-Message-State: AOJu0YxdOpMcdMUHyJmWsKcYzrSGsLtFditizRyVZfIVmvT5cgQwUZpM
	H22ocwCCipRadDx5btUGCjw68Ffp1Q9Li1h2GW3YU4rs1brSKgTQpHei//52JTQRFxyHdjTni7F
	4bYCNNFZrAhzytfh3mlaZhHT1Ycr6VlB6BTReP6pvZg==
X-Gm-Gg: ASbGncvgua0xJb+wiyEru/BjlbdRfeFKzUXngDBW2VozYRN2sJ8sZxrpr7bsMCnP6EI
	hBTeBJ4feyPB/uZDQclLKWeEauU55oUcOSKYLJYvdl0Po7buWCSpwAF8DhNEQeXdldPl5K7j3VN
	rAb/JizHvopCG1fkRwTlpP1bfcTXGRBkowbQbDDGnYb2elKLmr4Pfxa2W5qu50mPulrRUr+wDTc
	yIAQ06hILELw6lnkv/u6lCiClAH
X-Google-Smtp-Source: AGHT+IHc1XInU209FqeoVG4mqI623oL/L7lqAyVZQE+rz0kpdULCrTtAKuNHwq0R6cD3kZM2Khwq7aLqmLMkwaoBwdM=
X-Received: by 2002:a05:651c:20cc:20b0:32b:78ce:be8e with SMTP id
 38308e7fff4ca-33650faa9c1mr49070171fa.32.1756403499096; Thu, 28 Aug 2025
 10:51:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com>
 <20250827024222.588082-2-gary.yang@cixtech.com> <d5c85ba7-77ec-47f4-8ba1-39199e96da11@kernel.org>
In-Reply-To: <d5c85ba7-77ec-47f4-8ba1-39199e96da11@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 19:51:27 +0200
X-Gm-Features: Ac12FXyoZv6EqZqDroxfxMfWuwjwR1BgoaekrFfImhUnRH12_3Oyl6D0D8ScSAg
Message-ID: <CACRpkdYXy9ZgbAZKUdquxdp0X0m5AHT82K74Ex-ZAyEx=Uwi1w@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: cix: Add pin-controller support for sky1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Gary Yang <gary.yang@cixtech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 27, 2025 at 11:07=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> On 27/08/2025 04:42, Gary Yang wrote:

> > +     pinctrl_provide_dummies();
> > +     dev_info(&pdev->dev, "initialized SKY1 pinctrl driver\n");
>
>
> No, please drop. Drivers should be silent on success.

I usually think this is a matter of taste.

I suppose the reason why a lot of drivers have some "hello world" message
is that missing probe calls is sometimes an issue.

If you mistakenly disable the driver in Kconfig (or due to other Kconfig
changes that just happen ...), how do you know from the dmesg
what error you made, when comparing it to a successful boot. There
are no *error* messages from the driver either, just the same silence as
when it's enabled. With pinctrl, random completely unrelated stuff just
stops working.

If you see that the "hello world" from that driver is missing, you know it
isn't probing, instead of finding it out after combing through the .config
for the third time.

But I know a lot of people are dmesg minimalists, because it's just too
much information and they just want errors there. It makes sense in a
way too.

So as subsystem maintainer I have no hard opinion on it.

Yours,
Linus Walleij

