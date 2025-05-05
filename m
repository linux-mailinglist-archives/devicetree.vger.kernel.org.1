Return-Path: <devicetree+bounces-173584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C30AA8ED7
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6148D1896FC2
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B311E378C;
	Mon,  5 May 2025 09:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MlL7nBW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F0F19E819
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746435955; cv=none; b=frsKxV1ennOvBUATOi+Cq2U5r2We93xoezdv98Wic7Wm18owoTwQoDKc0dANLB8bEJTSwgcPjQN1Dxm0Ru46Dq8YKgzQD7ojwoZJIqP4ym1tM0+A9FDZPmtXwT0ewPixgXLd3b7hWeMgmq+WXYpgdGRMe+YCrnngrs3jrsfrnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746435955; c=relaxed/simple;
	bh=jaVB3sx5ejThu8wEUg5nUqvMM3/yIkqZP4MpKH/Gvus=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rkZ9t8t5T8jxSjaXkomraYAB3sVW66l2S6St5waIMOMFT5sT9oYT8D+3Io+unnE1L/e67JdFf0IchKm0amwkynX/arTTtTg2NSJ0pcXV1umrigTaBfLVy8y4NKlqZ2NPBkltKPAKUFX9b9fuqsmx4erJBStINusqRSdiRK7gncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MlL7nBW/; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54c0fa6d455so5081907e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746435951; x=1747040751; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jaVB3sx5ejThu8wEUg5nUqvMM3/yIkqZP4MpKH/Gvus=;
        b=MlL7nBW/px4/CIrOcDVdTNLRXOHn8yS4tkl8gahouAGayJGPJqKG7TovPRz6OZflQ7
         HrxkSxMMF2EGr29W1/2JgxnxPb/qX9uIb23pv7gXw8tqn0fB/SaqXK1Lp+p0Vk2xU23l
         LZZRy5uq+6LmDkYfAOtc4U3E8P4ZaMU0hFF6m9aX03TaP3+twc2rXMw+f83YhOABl0S3
         hB0EUgKimx8KloaODdiVeQ0hw9ejIGmwvHM23m4Jy6jqECJthkTg9Nq4OFj7UcJIREOw
         ZJUDneEhIBtERekDd9C4bih9FI56DBBCMu2BDfDBp9vbmYYAurypYzemB/N3Co+b9dlc
         +E7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746435951; x=1747040751;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jaVB3sx5ejThu8wEUg5nUqvMM3/yIkqZP4MpKH/Gvus=;
        b=t2QUaNmqX1tJcLHLCl9EAkY9fJcvQLEhGkww+D2KKFDumRRitGAYcjy1+UwP8ruFq2
         GyCcl677F4jnFT3ank+WFjZrCABVOAQYdYKgdEoTvZHn+N6Bx4AN/iM1qlvWf7pyOw83
         oE3iLEBTTY7sIwAqdr4wmZcypNVE6UFhNVPVqPKVFjptK+ZyaDgXr+1tclJryPzIRVII
         qMZ65lN/js/FfjcjhlRb2xL8xAvErltcuGq+E2PyVbzuyvMacxXXv14F7k4EGT5wUUUM
         RfC593J94ADoyLLaHIsykWYcSGYJThct/iyJxKfr+ISyl2mH7E10L9n2lXGelDWaaf88
         +Z2g==
X-Forwarded-Encrypted: i=1; AJvYcCWXdzasRumt+1eMDhvDdgcQqBHLmeyYfnbdVuOD/KiJmEpOWNkbsjlJb/xII/7+7tBLR9yqDaHrtBzp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw11Sx7dSPiK8vjn2Yk+5xcRBKfdzWFCntq9wjRYC4nMRpxrBvN
	1QXcQblwkVtgyEXrEwCSlye2UWX015kZB/udvLhoZozuxhSnpZdWAJ1zakxC779ETzeCU4RwTvK
	3O0tcurEynpHwMvDdMn+BEn700N+X2i5hhbI7lA==
X-Gm-Gg: ASbGncvwhbpezJ4n5q7RNMpCtee95Bd5XG69oVSkLyyLFTvjLw5lRKRsLB6FqrGgXXy
	c0li86RghY9hEdrt3po93zxDhpr7BiH6FM+XoCj/yIWBbQ6tAgignM14gCQA22TUPz6rr9piv/k
	tJo7665/8ksIDTQXhvVjQgJA==
X-Google-Smtp-Source: AGHT+IG1Gg4cqaY2027Xkt9vszcojc1RUUWP69uzjNjCzPb0+lNxfxbfad5R/RgzScrc0f+PobFDAQA8A6a3BcrID1g=
X-Received: by 2002:a05:6512:118d:b0:54a:f76a:6f83 with SMTP id
 2adb3069b0e04-54eac200d31mr3042013e87.13.1746435951218; Mon, 05 May 2025
 02:05:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250503-smc-6-15-v4-0-500b9b6546fc@svenpeter.dev> <20250503-smc-6-15-v4-1-500b9b6546fc@svenpeter.dev>
In-Reply-To: <20250503-smc-6-15-v4-1-500b9b6546fc@svenpeter.dev>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 May 2025 11:05:40 +0200
X-Gm-Features: ATxdqUG40K92Q6cLhA-jiK9adWrE64up9leFqXIiQtBvPLIG9_nqRk1Z9BFEJZw
Message-ID: <CACRpkdbCfUEZd06yeZTNecGFPwBgJkpMH3hqkvJw4J+iSENG=Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/9] dt-bindings: gpio: Add Apple Mac SMC GPIO block
To: sven@svenpeter.dev
Cc: Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
	Hector Martin <marcan@marcan.st>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 3, 2025 at 12:07=E2=80=AFPM Sven Peter via B4 Relay
<devnull+sven.svenpeter.dev@kernel.org> wrote:

> From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
>
> Add the DT binding for the Apple Mac System Management Controller GPIOs.
>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Sven Peter <sven@svenpeter.dev>

LGTM
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

