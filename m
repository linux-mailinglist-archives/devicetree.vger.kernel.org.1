Return-Path: <devicetree+bounces-195583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D84EB022AB
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 285695483FD
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95B52EF667;
	Fri, 11 Jul 2025 17:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b5LzoRgk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68EA2D3752
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 17:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752255477; cv=none; b=kqbtBxzMAfMMhtP1j9rrpLzF+Igd0vKtVTgmLxXD3JttRLyBGQGI8LeKKiPohS34+pRwEo90qn+wpiQfVSLljEUksOj7MVV82JtQQVEOxqSIq1lgGGIS3cJdYJSw9J41jG8MjHkAU3SmATelW/uNe7R7DQ8gRa6wcPt71hjvfJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752255477; c=relaxed/simple;
	bh=WSWrLavcQ9CXJTlboRDcQK+c9Ni80a5/QZp2bnjwdSE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pk1hh25xXQS1MGvzQ6dY4GGcs4lWHAj1hcVUUMQD6KcfT/N6cMjuar7kqwe9bVyX2GWRSuF1SDcHJCg+CGa7/ISdCPLDyNvk5yQB6bx4IrPCh11nmliFqQHSl9A++YEbtJ4uW+yO6j6t71HeKIYUfy2YoSoWWKfnE4ilmTEED6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b5LzoRgk; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-32b4876dfecso35130061fa.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752255474; x=1752860274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K/wPhaNRFFlkJO+qFiqBH2aleBY7cnhkdPVonssJv5Q=;
        b=b5LzoRgkHk8Q1oHEjX3v1VdpjCg0aukrD43iMhhYsRpgz7C7WK8kzvjM6raxgdGMe2
         pwcefArlBcc92UVxwHAW/WWSvuXKn2zUMleGsddAC4NO6Iw5+U/S6W1sMSsJdzRXswtF
         shjdgfUAkM0eM9hww9IcSgjAJPT1aJPdc5ch5AJ3C4A4VUkM4S0ck4IJcliqg9FojGgg
         oaAuVNImKWtiEvwrnf0vSp6n0qZ4UaQsy4FV/LVdHkRkIMBiNu5f+TsaxeN2mPv48qPH
         +HQ4m7L7HMvxRHayKPtH+R5Awv7v+Xgs+//mIuFp/ykryviNXlAirBmsjmzAPK/7iMXv
         Vn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752255474; x=1752860274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K/wPhaNRFFlkJO+qFiqBH2aleBY7cnhkdPVonssJv5Q=;
        b=YAAeNNnGXIu6IGRoD4v8Q4JFad9pB3q5eMT8Zd8ZgpP9ls2Oh8bvU/2P8JfjC8TGgU
         I2kOT7PmpDS6K0Xb66EntSfuqOyMybkTRNjVjGmjl9/d794KV5enuw9Bmn2ZtB3VCXwr
         QQC6UvDQPZRBLQ0GJah9ZRNoRpSa7jx3FYClcL7t2IpfZsUGPdteFykZmwK8EwQ7/PLN
         PGbMdIZuI3JjzUkL2WSy2YXpPw/XzeLDQBMK1X4dvRkXFuBKdcTYbVq23Nz+W3x4iF/U
         dghoDhEC+fGCgHvwbGmoD/q3QJbEBht6VCGpn+DTuThI0ZLZdDT9XvwoX3daJHnspr+B
         Z3Dw==
X-Forwarded-Encrypted: i=1; AJvYcCUr1vcmQK3U7Oew1ZGljNDinVwjdH7S7SrcIxkyD+agwJZynU/HxBynExdng/YY+5Hk5JOCqf6egcxg@vger.kernel.org
X-Gm-Message-State: AOJu0YyLCLaEwlr2BIXtM98J6W8IM2y+WG9Cpkr8rrmkd4sgUspzNuPq
	KgTA3mLaIiudwH7QrlZR/hkl8aLQioE0LS/uftidoj6Dz3fo7yxcactM4MFX5yhIbQED7gqUTKJ
	cJV13zmQoVQkCmlrnZ+DbvrWbyieswMKpBAW1YHTxAA==
X-Gm-Gg: ASbGnctiCsWFvqaC9dcG1BjYPTcUmsTmcBplMgDkk8WNbFxgehbDTCkQmklxOTlT6yK
	TALLr84ejbEnHPU5Q1GUUsyfGDYc7ZAHsC8ypRz50WYmDvBNpKPl/w0eDs/BCl+1uMcVTRA7Mfh
	Lv6MBhvXMlExkeeAx5SCn4CJcpeGB7xopi1rTQ8mah+b8WkLJGjVj5+tf38wqi+CZdqzwJpLpkK
	ORBkVo=
X-Google-Smtp-Source: AGHT+IF+cfvK3eLqa9K9L6DPCT6kgf+Ev/B+izhCVZVm9WicyNxBl8mVC5xyefEXRVZSA1/13oXp75ELxU2ct8lREZA=
X-Received: by 2002:a2e:8716:0:b0:32b:952f:3e0 with SMTP id
 38308e7fff4ca-32f50c498a6mr25667221fa.7.1752255473954; Fri, 11 Jul 2025
 10:37:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613114518.1772109-1-mwalle@kernel.org> <20250710094906.GG1431498@google.com>
In-Reply-To: <20250710094906.GG1431498@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 19:37:43 +0200
X-Gm-Features: Ac12FXw8EnbD9g212rQmKvQg1i0JlZJ9eQIjIj5cqOOd4iGxNk4FlRT64r5hG3Y
Message-ID: <CACRpkdaQdV-baLz9Deh1AK8Ujd_QRnk9ViHJzqerH4vdrwCEOQ@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD, Misc and Pinctrl due for
 the v6.17 merge window
To: Lee Jones <lee@kernel.org>
Cc: Michael Walle <mwalle@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Julien Panis <jpanis@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2025 at 11:49=E2=80=AFAM Lee Jones <lee@kernel.org> wrote:

> The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd13544=
94:
>
>   Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-misc-p=
inctrl-v6.17
>
> for you to fetch changes up to d90171bc2e5f69c038d1807e6f64fba3d1ad6bee:
>
>   dt-bindings: mfd: ti,tps6594: Add TI TPS652G1 PMIC (2025-07-10 10:40:21=
 +0100)
>
> ----------------------------------------------------------------
> Immutable branch between MFD, Misc and Pinctrl due for the v6.17 merge wi=
ndow

Thanks for shepherding another successful MFD driver!

I will optimistically assume that this merges in under the pinctrl
umbrella without any snags, or that I can push any merge conflict
into Torvalds' lap during the merge window, it usually works.

Yours,
Linus Walleij

