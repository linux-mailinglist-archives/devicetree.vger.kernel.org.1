Return-Path: <devicetree+bounces-183048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89183ACF036
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 15:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D58E53ADBB0
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D69226D09;
	Thu,  5 Jun 2025 13:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GIw4aSdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45A52153C7
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 13:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749129591; cv=none; b=UWcVISsGRg526dCpkRIbpet+/uIfXak4mbEOCspaUj5Z4ZVq+NM+ZpAn436wnUsDzi0b+ODb4TFPWyXXZwqH0pIcQn4VdUfxlqT8aZuBft4ubwHVL18cNsDP8Z3OyrceSf0sV4v7FvUhLlvVcmsDjXzoyv4NkHA8lLMmogCPYsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749129591; c=relaxed/simple;
	bh=TkWDs4JGWp0j+4kyNI1AACr8Xjcxd0tpmZ5qU16RpBs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ut11OcvBzzR8kTI/CsK8LlR8Quwwf3p3eSU0SRh9zJ1JSNgM2RqdLoyCZe4h37M8Hk/1DiuoYhUPYLyoT3StanYAjjJldmbjTO3JSbx172M2+mmWlevz8C8OqiG+T4qaTgtltAU3utoWIdAnyBIWczukxnm9Aldj/SejG91v298=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GIw4aSdu; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55324e35f49so1029854e87.3
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 06:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749129588; x=1749734388; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TkWDs4JGWp0j+4kyNI1AACr8Xjcxd0tpmZ5qU16RpBs=;
        b=GIw4aSduJaHRZqHhbhmNcIhOuzisxSXLzMTlkl6S7WAJVWCCuSNGNr9gZNLvaoCVss
         OXV9R5LqviINNmIXXP61p5qU2CoMjRZwHQj4MqqoZG2XenzkMb8AaECym/XCYtBueNpu
         loPECGK7Xeqfz+zzaRRvbS7HIKc69uwG6xMa1r8EbOW2uIpdLSk/kO6pnn6m5Aaq+7p3
         dRTtxrHVn01scW0VYgnqPYoxRz77DyWQDwaiYZ/eYpL5LqVCq9/oMKfxInfb73abWJq2
         eLl6t7NLk2gbsebTtgbZ7MEc22+EyzhpLtDbfdVTEisovqPxQRvXyKcqzSRF9MKzk60c
         5bIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749129588; x=1749734388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TkWDs4JGWp0j+4kyNI1AACr8Xjcxd0tpmZ5qU16RpBs=;
        b=dv926OjGkpsDuxs/Pau+YPfuRzgXWlsn+UEGE249T3VohPQxmdiFOCzjiAkq5r6bHL
         QZC/FzOG//nHXOZQROyBny2OILxJ0+SLorVKEGok6N4vl0hIy05sdEtLNmxnkf4Ioj+/
         T5KkphOnmSelTXIcF87lN2YPl8L+wIBMYP8UrvT3SGXTFQGMFcZKGVZPdkKl7Ozmduvm
         zH062kOCdJ5aRG/F+JLNP0gB2Uw/8xgF5TN9ccOyKoHt+F0VxXf0OOt4P45w7m3P7dAE
         O7fmuem2B2eS6r1mD2mjkaLnDqxvMR1puXQNEUgXQE542lIFg3scNSgdmcmk8cJkwPoj
         b5fQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6kbAohJ2cF2yWZHv1x2AFfIv525FEWe0XwtfQzARsL8YHsEM+h4akDQG0XEedWkgWXOQeR4KzS2n0@vger.kernel.org
X-Gm-Message-State: AOJu0YwZrP+V1oFvvDG64C94tlb+vrjTQ1JbgtKKTtMHlnwO0Ax1bVzX
	k/j+4vXKhqIB39XeONGVg7j5z+Ho0fbTIFfAYIRCwAi0tZg6yZzXonKK9PXkUSd+qg8dRfXAYHJ
	Axb+l3GwoDUBfV8C5t+xkDF+dGOhruToxPyn0f6QUQQ==
X-Gm-Gg: ASbGncvbK1pXFpxV+3zgrK/rKe+7DJdHr3xAoQs2qUKnPqpbyWhdhBGpHhyiAv4Lqnn
	CkWv/Z9xI58XUVyE/nkgG9Ry/Vv5+l0m2mCHO05oZNWrMDo4E70klBvqc7PdC2a/KsmIkdnnj07
	v5F4179kHHbODRnEjQDSSKMJKnJ9vXt7DE
X-Google-Smtp-Source: AGHT+IHwUg8EOutUqp3GD21CE8boOlewudk+gIWQR9a77PpxijELTwnpqH+LGR5idjK89e9n3Wb11FOM+mCZanmNr04=
X-Received: by 2002:a05:6512:224c:b0:553:29a6:3398 with SMTP id
 2adb3069b0e04-55357bd6ee1mr1908588e87.55.1749129587841; Thu, 05 Jun 2025
 06:19:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429-tegra186-pinctrl-v1-0-722c7c42394e@gmail.com>
 <CALHNRZ8ndcd3mvGP+W2DVFcm65t4Ai4epNeGigPv=Oo8Cf3LkQ@mail.gmail.com> <CALHNRZ91nUSUNPjMNF-4ORvVRCaBSKG+0UKzG4T=ehPaHwBTgA@mail.gmail.com>
In-Reply-To: <CALHNRZ91nUSUNPjMNF-4ORvVRCaBSKG+0UKzG4T=ehPaHwBTgA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Jun 2025 15:19:36 +0200
X-Gm-Features: AX0GCFsdxa_RA3yrubFbUtjyotAsDp7hdaFyuBIGBs0nGmLZ3CxnTUhX5K5TYXs
Message-ID: <CACRpkdb6Qaa_0wahFLG4o7-3gBGAzdKDMVb=ohgiN20dKbrNTw@mail.gmail.com>
Subject: Re: [PATCH 0/4] pinctrl: tegra: Add Tegra186 pinmux driver
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 7:37=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com>=
 wrote:

> Friendly reminder about this series.

Can you rebase it on v6.16-rc1 as it comes out next monday and resend?

I will apply it if noone replies with review comments quickly because no
way you should have to wait so long for reviews.

Yours,
Linus Walleij

