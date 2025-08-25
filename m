Return-Path: <devicetree+bounces-208995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1EB34029
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 14:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E25B23AE56B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 12:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273B7246BC6;
	Mon, 25 Aug 2025 12:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="b6hHUyVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF33393DCA
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 12:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756126614; cv=none; b=kD14Z7m2UQuwCs191jFRpi0moYD73ZcNzxAVt/mFQi1c/WZj+yOQspaVy4PVq6PgpEl9iuhD69OLVDXvi5fIhaR1wU/Ou3+uqttm7Xi75SqzSwNR3Jhos6sG/1JHWU8TDUbVpXtwYkDoJ9Cxluk2GU0f/JXb+ohn2fLYQEqbf6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756126614; c=relaxed/simple;
	bh=AiRdSUneN/IHEMxz/2390+MMo6RGIcoLqIA6r4/MmWg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xdd6BF8oRPqq5JpLNnietoWHRwP2pF/1xXEP34bleknyIAzxfmOFwv8iGo0u17XGOYAuXDp5/LpReoUt6FnAM0JtNZqZgZqmd4USGDEEunvRbGp4H9mkzXLM4s5hakuUbvnIjhOIw1BDuFrWdjXEX54+TN3eRBCfFHx0+NVIhuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=b6hHUyVz; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-333f92a69d4so31695401fa.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 05:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756126610; x=1756731410; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnMFRUI7OrpeFHOHQnTbYDUskSBfz/K49TJPo7jgp3o=;
        b=b6hHUyVzMJlduq3zU7G/7jfkvA+1tI33ljc7jbxBddnIN18QwkILh7NfmU/hTEX54G
         LV+Yh1e9/uAcSwlxO+sdw7BBzzVD3I+hpU5dKwaB7U0x8BYdSFQUduEPaJwJElAGtNP6
         nVvPVjTnEP0wCTbJIWrB6UtBVKuL9wWnZbiDv8k0k4fRZ/wYnKUL8MiLS7+Vj92iP2Ah
         WA+0ezRfXgoEKKaoERSTlrr36WxK5t6tJLZQh+JHhQNvVDmejudMT7RMPrf2tr7ve54m
         FB6jRxvByMSkJeQBDb6FZXCcNBxeH1jA+0Wt01V3A2C/iY2Q+RqsLTRqvY7S6+Il6stu
         2ovQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756126610; x=1756731410;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnMFRUI7OrpeFHOHQnTbYDUskSBfz/K49TJPo7jgp3o=;
        b=UYMSa//O55RQpwLv3lA7d0Yya2oKnJmAiY1hs9BvMwdTuaON7W9pjGzuqTyQwM6L+9
         ph6jDk74R5NuL3PiLcN4AgdStx9b/loFYd/C3va6sPwu5NDPTPDpfwz/OvCMi441l6Et
         DZQlhrIJoNWBXNsuLLqRMf22PCiiIFGfj3uQxO29ggf/0V/UxNCvK7j4csMJMs+HYFwY
         If4BI9nZ5J4I04r3uD5X317tZOmIdNrTCHFoB4AzatB8AAyMKhN1uDn4Isqo+e7zBaxC
         mc+rN7BE0iWNgGFlHJVQW5AWCRwPucRJZwVWpH2yntxlNIcwsiPEF/GvWHrEwTfYiK7j
         5iFA==
X-Forwarded-Encrypted: i=1; AJvYcCXoxBQDR1+lzqtQ85oQKvXdGHT84FkYi7vUAPEcaF2GqqH+vor3FjU4BiX+JIER/se6cstwKEtKXO54@vger.kernel.org
X-Gm-Message-State: AOJu0YwZe6tWBtVVriR79r4SN0E/DdZKDlmy/5EEUn0DiEKxCNUJn7Bd
	Sr8MuXII5YfWNLYlkodnMdiKBhK2iyDZ9mowvrizzENGniROVFNoMEhX9eGoFK9QogluQkXI4BW
	oWIEZm0QjIDT3qPN53pTs8MCz9DvCSm+6ZKXNGbDArQ==
X-Gm-Gg: ASbGnct7nIwjdZcYxvFJhPFndvpPt8iumsijlm29WrdQ6aQh0TZbCR5nmoagn1Yz13d
	Uw83XiICdL5iMv6gYdJVwrMRK8yU3NePMwCVLZnP1s8AXMPz/LoCByP7SyF5tMgdKhh4Mbqtfs2
	M1fniFRpzJfWjRECZsqddjC3sC1BcsIbY0G/BPrVqqGivm6MBSVj1O6vzihQZV6tjmTS+gH9Yek
	zqI6Kyzzsvq0C57QCd+z1Iijl3EXtlsrzHZAvQ=
X-Google-Smtp-Source: AGHT+IEKuRSYDRBEFcUoSaQJpuUMdlcesI/FHii7hOjk4oxM01a0EqmTFPiCYNu0z4GmlScnxLvw71vWU7C0gmCrYWM=
X-Received: by 2002:a05:651c:e0a:b0:333:faea:760e with SMTP id
 38308e7fff4ca-33650e28035mr29572141fa.4.1756126610386; Mon, 25 Aug 2025
 05:56:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756104334.git.christophe.leroy@csgroup.eu> <e05a0959d794016bde79e48e25ff71253cf51aae.1756104334.git.christophe.leroy@csgroup.eu>
In-Reply-To: <e05a0959d794016bde79e48e25ff71253cf51aae.1756104334.git.christophe.leroy@csgroup.eu>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 25 Aug 2025 14:56:39 +0200
X-Gm-Features: Ac12FXyribtDrV6nGrkt8B-SxFaigB01Pq-K7rMjlp_S8j2j5Cn5-EuT5Gchlm4
Message-ID: <CAMRc=MfPTtdFtE63UKfbuK3h1mLEk2aUGazBsbRS-OLZzm7e9g@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] soc: fsl: qe: Change GPIO driver to a proper
 platform driver
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Qiang Zhao <qiang.zhao@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 25, 2025 at 8:53=E2=80=AFAM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
> In order to be able to add interrupts to the GPIOs, first change the
> QE GPIO driver to the proper platform driver in order to allow
> initialisation to be done in the right order, otherwise the GPIOs
> get added before the interrupts are registered.
>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Hi! I retracted my review tag under v1 because...

[snip]

> -       return 0;
> +       qe_gc =3D devm_kzalloc(dev, sizeof(*qe_gc), GFP_KERNEL);
> +       if (!qe_gc)
> +               return -ENOMEM;
> +
> +       spin_lock_init(&qe_gc->lock);
> +
> +       mm_gc =3D &qe_gc->mm_gc;
> +       gc =3D &mm_gc->gc;
> +
> +       mm_gc->save_regs =3D qe_gpio_save_regs;
> +       gc->ngpio =3D QE_PIO_PINS;
> +       gc->direction_input =3D qe_gpio_dir_in;
> +       gc->direction_output =3D qe_gpio_dir_out;
> +       gc->get =3D qe_gpio_get;
> +       gc->set =3D qe_gpio_set;
> +       gc->set_multiple =3D qe_gpio_set_multiple;
> +
> +       return of_mm_gpiochip_add_data(np, mm_gc, qe_gc);

... I believe this can be dropped now and replaced with
devm_gpiochip_add_data().

Bart

> +}
> +
> +static const struct of_device_id qe_gpio_match[] =3D {
> +       {
> +               .compatible =3D "fsl,mpc8323-qe-pario-bank",
> +       },
> +       {},
> +};
> +MODULE_DEVICE_TABLE(of, qe_gpio_match);
> +
> +static struct platform_driver qe_gpio_driver =3D {
> +       .probe          =3D qe_gpio_probe,
> +       .driver         =3D {
> +               .name   =3D "qe-gpio",
> +               .of_match_table =3D qe_gpio_match,
> +       },
> +};
> +
> +static int __init qe_gpio_init(void)
> +{
> +       return platform_driver_register(&qe_gpio_driver);
>  }
> -arch_initcall(qe_add_gpiochips);
> +arch_initcall(qe_gpio_init);
> --
> 2.49.0
>

