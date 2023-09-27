Return-Path: <devicetree+bounces-3662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4337B7AFBAC
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D6845281884
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 07:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E2F51C29F;
	Wed, 27 Sep 2023 07:08:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762022903
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 07:08:01 +0000 (UTC)
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com [IPv6:2607:f8b0:4864:20::a2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62F0D10E
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 00:07:59 -0700 (PDT)
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-49040dc5cedso3723953e0c.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 00:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1695798478; x=1696403278; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Kv7jmytR7Cl6Bx7jgRq1B3ANrXCvmoOcRtFgOD3gcI=;
        b=pWu1N9kKYNfkf2L8zwU5+ixnjjs5w7pUivF4m8G+A7JLIN1kvI/SwlZIGFmrmy82B1
         v3EYcIk91rM4BrrYZbii++MhHd0ytAFbXWSXpcyk/zl/tqJEah9MmpiQY4Co5Vj8ndL4
         ArtqurEQFS2IVuANFul2AM/R4KApZ+uDKUxwoPLBod55P7CH4es2ubX2OATTMJXU/N6w
         I7kswNOWzNXbcTjvEHo69BdLuwRZxQXKNsYTxoaShZghK9rcxGRUofK70b+IFzrCu45J
         L+N7gEw2aaZFk9kKpp1otPBTzxVo3YIytrTY+VRt/T6KiLm0lpE7q3OekC0zs21GAiDy
         DL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695798478; x=1696403278;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Kv7jmytR7Cl6Bx7jgRq1B3ANrXCvmoOcRtFgOD3gcI=;
        b=sTls5MyMc44yVv8HmzuA88S3H4K56lI/tSa99s4JcXr6D343i2U21cHPHa6XrRC7Jp
         Tr4W1JwaOmg3Setd0BiV7ALGytGTWxHpNMrJAGsclgvPkq/2xMXSEMVSnta7I0M+mXvm
         lgUExrvyctcE6BddQHxsQuRG3KtH0qMH2l2kMLE1g3BduyZc2Cm9hbf3bruMc9uu8Gfb
         8Q9qU/SetqKQRZJs3xgiK3hYok0pF1uSAxJJHPyL108QfbMHhkCZxZIGQAp+W43q1XOJ
         kgTUosC7Jji+wjYfisCn7jR6WYPGCNmOD83M4IaWE2ni2IyBgGWVWvo6pTXdqOxOivUg
         10MQ==
X-Gm-Message-State: AOJu0Yxm3v0t0ApEmgZxHXMQevNbHcZrsDVZtFv8GFL/RrfpR5WKzeEW
	7ajiZZ3D0n/Ip8AqvmF+Il/mlO51cVruV6C6yefDcw==
X-Google-Smtp-Source: AGHT+IHDPQqjVDxDkNQNRwSlqWvkdkMkG91cF3xhgI47OCkvieSGjCc5ncnHUbGVptN6z7XZUtIZRPt8+tugLd6HTj4=
X-Received: by 2002:a1f:d5c4:0:b0:495:bf5b:7e49 with SMTP id
 m187-20020a1fd5c4000000b00495bf5b7e49mr1005244vkg.13.1695798478435; Wed, 27
 Sep 2023 00:07:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921015247.23478-1-zhuyinbo@loongson.cn>
In-Reply-To: <20230921015247.23478-1-zhuyinbo@loongson.cn>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 Sep 2023 09:07:47 +0200
Message-ID: <CAMRc=MdHcqd=3-Sd5U3nUR=fkzTEFo=UFn91E5G3VHTu=Y9qdA@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] gpio: loongson: add more gpio chip support
To: Yinbo Zhu <zhuyinbo@loongson.cn>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jianmin Lv <lvjianmin@loongson.cn>, 
	wanghongliang@loongson.cn, loongson-kernel@lists.loongnix.cn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 3:53=E2=80=AFAM Yinbo Zhu <zhuyinbo@loongson.cn> wr=
ote:
>
> This patch was to add loongson 2k0500, 2k2000 and 3a5000 gpio chip
> driver support.
>
> Change in v6:
>                 1. Add a reviewed-by for gpio driver.
>                 2. Rework the commit log.
>                 3. Replace changes to "u32" in loongson_gpio_chip_data.
> Change in v5:
>                 1. Use boolean initializer for lgpio->chip.can_sleep.
>                 2. Remove the code that about io width gain from ngpios.
>                 3. Fixup the ls7a-gpio and ls2k-gpio items in yaml file.
>                 4. Add the reviewed-by information for dt-bindings patch.
>                 5. Add some comments in loongson_gpio_to_irq.
> Change in v4:
>                 1. Reword the title and commit log information.
>                 2. Remove the offset parse in DT and add it in of_device_=
id and
>                    acpi_device_id's data field.
>                 3. Add more gpio chip dt-bindings support in yaml file.
> Change in v3:
>                 1. Reword the dt-bindings patch commit log information.
>                 2. Add "loongson,ls2k1000-gpio" compatible.
> Change in v2:
>                 1. Reword the patch commit log information.
>                 2. Add some GPIO register offset description in yaml.
>
> Yinbo Zhu (2):
>   gpio: dt-bindings: add more loongson gpio chip support
>   gpio: loongson: add more gpio chip support
>
>  .../bindings/gpio/loongson,ls-gpio.yaml       |  21 +++-
>  drivers/gpio/gpio-loongson-64bit.c            | 119 ++++++++++++++++--
>  2 files changed, 127 insertions(+), 13 deletions(-)
>
> --
> 2.20.1
>

Queued for v6.7. Thanks!

Bart

