Return-Path: <devicetree+bounces-235227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A640C35C96
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DCF484E77ED
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A562314D25;
	Wed,  5 Nov 2025 13:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="F0816Rwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0AD27146A
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762348567; cv=none; b=LrE3di3BdnmcO1bt//addFBuclem2/puKHRIbT9NLu2x5HixtpT3bE8zPYRSsWeE2pZdr7g6QGajFInDWk1tyDBMuWsFwefLi8I9OSXhdmaOedpXJ260ZEYZForHYkgkLJG0o8b0ajwQNEYaAJqyb5Vk1cR8E9V+uxhUIf7X6NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762348567; c=relaxed/simple;
	bh=kSRvFGBBGQKAULKkzsB+rTsc3xCVTewdlEyuIAYxeqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BiZBVbTsyjRr4g7hZ74wcUmBp5rzsOQcp5wwz8qm9ATVE/+fKtq4r+v9aFUoaR9zz17JT/ke531qd86/Jo1dkt1SCXfn40Qoo4nz42SQCeF7o8kbAzpfgxGCG//ZRFShclrc6FjPPCU6pge6UxbWakQdSgslhJnwbu4GgoLDeIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=F0816Rwq; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59431cce798so3104503e87.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762348562; x=1762953362; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBqjzWg/zXa/4S7O+GQN+wAbF8EhqKSL/0KruKQHZ2I=;
        b=F0816RwqhEdMTAXIGhhCg5eNTs/+CQrT6Y7uGBydoTeoTc74Yb8CyCRIlP98AklyL9
         0bq3a7RPImEgRpNNpFtq0cSorpvvXz5JTKocUXRQxSy1YyicoGoH76TjZXUlCVD3nWye
         ekTpNe1uzhwh9i8DpD4g2lmHkPoD14ZxvJUq7LD5Qi2U+CP713QrTNS0Sod1Z0rGbIb7
         IVdQeQvb9NT6jkMZo53VGfKoVChgY7NoVOcRwVylYtE3XD9hYQ+wBzRo2hkMcovnIaGY
         zTGnueqN5uhM3/O643Uke1AmlyG+cb1qJonJXTRPtwhaywQEiQdRnhDLfErP6FM06PTH
         PTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762348562; x=1762953362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBqjzWg/zXa/4S7O+GQN+wAbF8EhqKSL/0KruKQHZ2I=;
        b=ZH443qIO1IDPT/+LCUVliIc9xF1n4OHwCzHShXba8gOq8X58gyjblkKAZ6Xj17Wsu1
         UB770wEQqKxYUdveTu39wqNgngeNcvPuUsCnrBdNdGSuCxbH9jBBSEsCGTDdnOSyHmw6
         ZLQuq6bCtsKcbPKqTj1o7lIQqf19Q7sccUyHf7pZnUD+L/+I/U5mBH+RclGGrFCfFQf+
         bKJN3j8OqKjieoAp0IsC8whjGlLy7p/M1Q9qkAzeAEhJQBhIbeIIQlqG2kYdgF9FBBUc
         C09J1OUir1UTKh04tuKOERcETFkcEEbX8K9AhMuXbEFqz0ap+LCKhXTbbLyS541pRByV
         lPlg==
X-Forwarded-Encrypted: i=1; AJvYcCUe5UsgNr6mZEn8g2EVzMRESx6MZrqKA6VDMjy5X0Yues+1ty9D6kBxJumwgw66xVsgm6ckiCK5IZq/@vger.kernel.org
X-Gm-Message-State: AOJu0YyNm7jy56nqcu15gJemf3A8ZAA/V+Z4Usqns31Uv2T33SCjtiVd
	df4H36yMQcZn7Tj2z1e0+tRNMIUzwZjv4mIU6piy5veOp3/+GpT7XAjwudBjRlepQ1ofns3iMcS
	UtAuem7KqA6jaqJ4+Zknj03CvN81slHQ2xyyNgt3cMQ==
X-Gm-Gg: ASbGnctoNUsrMzjWDoPB6u8hTF9T94WdRGwSnp6AYsPIhBQkd9XI6qUU0UgeMulv4xD
	JbsVfYPahuR1WetSiR3kwuVY3e8AfdK7eyUi7JgtVbpTYI/oRnRHlQcbOCDMLTjV7spXG15ICKJ
	KYfycgDiAiKBLzvQbQ7AgKjoQc92AFHrQRJJvuy9h6IslPGI2vFMLm/h4y7vXaE2QtT1YE47J0Z
	/9fdXEw/oP717vNInvNQNP2NdUdjwO0rPFLAti0mR0bnmU2Yuicot6zmPWuDjRPftZXbsYZn6lC
	A/z9RR4ueCrESPck
X-Google-Smtp-Source: AGHT+IFzvw8EAiJ1AtQtHhnkTf9GQZd1bbxP1QFz1p5Ls9+5+KfIoHsa3IeiIjfuKZ2962zqcsqWhaJynFcQACVzbhk=
X-Received: by 2002:a05:6512:3c86:b0:594:27fb:e80f with SMTP id
 2adb3069b0e04-5943d7cbaf4mr1093090e87.37.1762348562289; Wed, 05 Nov 2025
 05:16:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105103607.393353-1-jelonek.jonas@gmail.com> <20251105103607.393353-3-jelonek.jonas@gmail.com>
In-Reply-To: <20251105103607.393353-3-jelonek.jonas@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 5 Nov 2025 14:15:50 +0100
X-Gm-Features: AWmQ_bm2m0RNHt-e4OYqIt-BH3glQr-rrVxitK8MhlbSJhT2MTMEHnAhJC-zLrA
Message-ID: <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] gpio: add gpio-line-mux driver
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Thomas Richard <thomas.richard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 11:36=E2=80=AFAM Jonas Jelonek <jelonek.jonas@gmail.=
com> wrote:
>
> Add a new driver which provides a 1-to-many mapping for a single real
> GPIO using a multiplexer. Each virtual GPIO corresponds to a multiplexer
> state which, if set for the multiplexer, connects the real GPIO to the
> corresponding virtual GPIO.
>
> This can help in various usecases. One practical case is the special
> hardware design of the Realtek-based XS1930-10 switch from Zyxel. It
> features two SFP+ ports/cages whose signals are wired directly to the
> switch SoC. Although Realtek SoCs are short on GPIOs, there are usually
> enough the fit the SFP signals without any hacks.
>
> However, Zyxel did some weird design and connected RX_LOS, MOD_ABS and
> TX_FAULT of one SFP cage onto a single GPIO line controlled by a
> multiplexer (the same for the other SFP cage). The single multiplexer
> controls the lines for both SFP and depending on the state, the
> designated 'signal GPIO lines' are connected to one of the three SFP
> signals.
>
> Because the SFP core/driver doesn't support multiplexer but needs single
> GPIOs for each of the signals, this driver fills the gap between both.
> It registers a gpio_chip, provides multiple virtual GPIOs and sets the
> backing multiplexer accordingly.
>
> Due to several practical issues, this is input-only and doesn't support
> IRQs.
>
> Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
> ---

[snip]

> +
> +       glm->mux =3D devm_mux_control_get(dev, NULL);
> +       if (IS_ERR(glm->mux))
> +               return dev_err_probe(dev, PTR_ERR(glm->mux),
> +                                    "could not get mux controller\n");
> +
> +       glm->shared_gpio =3D devm_gpiod_get(dev, "shared", GPIOD_ASIS);

Hi Jonas!

This looks good, I'm ready to queue it but I'm afraid the consumer
label "shared" will logically conflict with the work I'm doing on the
shared GPIO support[1] as the shared GPIOs will appear as proxy
devices containing the name "shared". Do you see any problem with
changing the label to "gpio-mux"? I can even change it myself when
applying.

Bartosz

[1] https://lore.kernel.org/all/20251029-gpio-shared-v3-0-71c568acf47c@lina=
ro.org/

