Return-Path: <devicetree+bounces-47167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5FB86C57A
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9CE81C23C17
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97ABB605D1;
	Thu, 29 Feb 2024 09:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N+NkVQ4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D720A5BACB
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199413; cv=none; b=VjBc5TllMwEU7IKaBYFwIg2frSChQ1U0yPsRK7jws9MKPDAoasnaQlJ5Vh0EyrVi2pzwIJf/ih0VLt5P+F1YuAUMGYpu0D1Vja6U4aG/iVb/wVFohx9UzRLarbpKwJAG1fseKb/sSax1NX7Eudgq+wOcyM1XUgck4QaVZ26u9OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199413; c=relaxed/simple;
	bh=HRVE6hg2C8i2UwVPXbLbNe+/2xcMJm0w38qFCouRcX8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RAzzFWsYEDoUYf1h/Z92NgtSSuQ5U8Wd7T+T9mRgS9PL6sQXr9zmbva+Zys84sFtKBcg96JSewXfRUyYA0/ZkgT4VXK6tH9byxe9siBvZOR+++a6yUzPrUzbtTO5U3sKrfrdOaVPWCmiLZl9227/IXphLKtPviXAEYX0PfC87IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N+NkVQ4y; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dcc84ae94c1so721237276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199410; x=1709804210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRVE6hg2C8i2UwVPXbLbNe+/2xcMJm0w38qFCouRcX8=;
        b=N+NkVQ4ym+hJ++FuHGWxjCQntnhgkVRmzxwVeleBIaOaEfaso+MqdJ7pXEeiqu2l1c
         iTjOgvUsCG4LvuyDV51EmtTIy3iBs4qxbI+QiOhegFj1/+JVpLt01/xc+3/exjI4T7kv
         qBqacYCybOydjJT8n+JR0+bi1qja12bQOGApRr0i9D9yoy+ughHFyH1GOoneyZOBzsro
         /YqneMt7yNFDRMPiziP5ET0Y+zgicspC/OM1Pbeua4idX2n9O4BhzWSZPhI2UoBcen9h
         G/0UMurtPgSZbJizdEbmXq+Bq99wcqUhREtlnXiwul9CZzz7yYn9EiLXJtIIM0OMHKdK
         fTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199410; x=1709804210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRVE6hg2C8i2UwVPXbLbNe+/2xcMJm0w38qFCouRcX8=;
        b=R2gGOOQgeQDQ93wOEINIfHyCoDsTqC+gH85aI3S80PPzebFOZct24+JqbNDuU4T0xh
         bJmr72EJeQUk6mznTUYL/SeD5le0wQWREsCbmdx5EcwPd/G+/4ii4FMQr+CnNuz1mK+F
         iLThw2F3/pZVezyQ7ZjIfRwkGTrqDj2hUa5m7jD95PTQmGAWksKgr3ind099h20pqo/e
         LLHJbQHPA5DJ4oALUfP3HfxoAoVq87hSZCglK3KjL60a60HyyGItmyyZ/abYvNeBVO3d
         wlof4IFtG4K7hvbYcqYI6nozLLIAbjhucaWprkSlnwVyJtNvCI+HNnxG636fvHiTZZnu
         KHDw==
X-Forwarded-Encrypted: i=1; AJvYcCUaduisbviWhZLZfEzW6hygsMyjyMuIelqMPJrY8ynv0NFZJ8cPWxKJnH8UG6HpFp29Q9SDpEFTA7B79q5RRuxo9CVn4cPC4DzRrg==
X-Gm-Message-State: AOJu0YyyzwqJ3k8KLEYxkqWRZH7OE5suFzChcBGZGVUceoHTeTuwX5sJ
	31+k1OHk2V3zKPBtmuKX9tXBwfTKjn+trjO0mIgfDhNpw/FZNY8Bs5mLO5zg2ONLcoEjxRKtIee
	GSd+F1JZKlzdaern2MPQgRpEdmAsLAD5HropgPw==
X-Google-Smtp-Source: AGHT+IHhsAuM9klDDxUX49OMI/K+reZg5M4GVu3UBpyFzS8Yyn8s2dq8RMcE87J3B6/nRu2TcRiTs79BHRiZCfGsL/g=
X-Received: by 2002:a25:c285:0:b0:dc7:4800:c758 with SMTP id
 s127-20020a25c285000000b00dc74800c758mr1523503ybf.10.1709199409964; Thu, 29
 Feb 2024 01:36:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-23-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-23-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:36:38 +0100
Message-ID: <CACRpkdYniG8Mf-Bybtq5t8VGZvMvBcugise7g78H19fPDn24aw@mail.gmail.com>
Subject: Re: [PATCH v2 23/30] gpio: nomadik: handle variadic GPIO count
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Read the "ngpios" property to determine the number of GPIOs for a bank.
> If not available, fallback to NMK_GPIO_PER_CHIP ie 32 ie the current
> behavior.
>
> The IP block always supports 32 GPIOs, but platforms can expose a lesser
> amount. The Mobileye EyeQ5 is in this case; one bank is 29 GPIOs and
> the other is 23.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

