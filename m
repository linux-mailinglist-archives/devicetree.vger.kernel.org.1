Return-Path: <devicetree+bounces-7196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CACF17BFA91
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06FDE1C20A79
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1518319450;
	Tue, 10 Oct 2023 12:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KZiCpfmA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2C16120
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:00:55 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E831719
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:00:52 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a24b03e22eso68242677b3.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696939251; x=1697544051; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=URqL7nDWUnzyuM8apl7Oe6clHcQ+q18wy8Bzu+Hd0z8=;
        b=KZiCpfmApCbJ6HuyB2vfz2w2c0dYAxh7qq5doiDDsLV6B+96ePI90L+RjUmqtF22Xg
         Xg6Xj65l+uXOdWv+50EuYDjvbW2/57k82IgTqMg3eUukh7c2lwUXAd6NSI8sXKb+i+uU
         FEHFJW1NwGbw06hKJmQKQL0OcucL75wEMSRGBCjrxBZAnw0iDKZmKmihdFf5xPzcjhC/
         UuKV1Ob0fI+Sxp9B3kiWYqa23qVtAVsj5JFNBwwFjtUsSBdLyCydvk9OCbqWBgNxoqfG
         8FUsxuL25gshmVrbLMvOnoktX2/dBSYiqtw4aTleq03B3xhg/WDzadU4f0JcSPcxmWdz
         X0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696939251; x=1697544051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URqL7nDWUnzyuM8apl7Oe6clHcQ+q18wy8Bzu+Hd0z8=;
        b=aralm+H9DtzIumW46m0c/nI9f6dZJDx6q0o1BNx5KrKuYruhwZAFWSSrCZZuOv3mE3
         mooC3kdubbbqx81EwtSPDm98O1PIr6q8CfP7sFAgZ/PF1mmFlNnpzX1+K8oIW1E21wrI
         nlNjAcnQqKCUBrrSlaIvK0W890WNX+rwtoXLLzuXU1hZhbM16jKms7HFKtNt+p9R9ovC
         17z5SZ1mGNFMGhV1NW2YS1SLWrqWoqAsg2ZCyFBm0XlwzmRvCD5DIrTj0ujVNEWouSKf
         0e38FzAeKcogYQ7JJ9uqxIJiw5rwvWxjPdcp9QJNsfOhOopYLYyrUnlhzmNZtbiM/Ow5
         Z0EA==
X-Gm-Message-State: AOJu0Yy2ITOINTGeGCjm9bmaF0rQ5H1AVlEk+dTIj7eONxEICacO3zMq
	lC+2j6MESkxlRVYukOF3+3Uxm1R3Nq5sAHfsbAu/iA==
X-Google-Smtp-Source: AGHT+IGo2XtEzZbulptDKQTrpieV3yJduSWeYo0qpafU5hcwHDsxvZ0/86qGfIIJkxSBtmNHxpn/l5w8e1nfId9CER4=
X-Received: by 2002:a81:7309:0:b0:59b:2458:f608 with SMTP id
 o9-20020a817309000000b0059b2458f608mr18960119ywc.30.1696939251412; Tue, 10
 Oct 2023 05:00:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org> <20231005025843.508689-5-takahiro.akashi@linaro.org>
In-Reply-To: <20231005025843.508689-5-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 14:00:40 +0200
Message-ID: <CACRpkdZ+QkZp7_se7vN7i_Nx_c3woT_OzVnj3YHju3mZS+Ku8A@mail.gmail.com>
Subject: Re: [RFC v2 4/5] gpio: add pinctrl based generic gpio driver
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 4:59=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:


> Some pin controllers provide not only a method to set up lines but
> also gpio function. With this commit, a new generic gpio driver will
> be provided. It is implemented purely by using pinctrl interfaces.
> One of such pin controllers is Arm's SCMI.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> ---
> RFC v2 (Oct 5, 2023)

RFC v2 looks very good to me, definitely something that can be merged
as a starting point once the hardware has been tested.

> +static int pin_control_gpio_direction_input(struct gpio_chip *chip,
> +                                           unsigned int offset)
> +{
> +       return pinctrl_gpio_direction_input(chip->gpiodev->base + offset)=
;
> +}
> +
> +static int pin_control_gpio_direction_output(struct gpio_chip *chip,
> +                                            unsigned int offset, int val=
)
> +{
> +       return pinctrl_gpio_direction_output(chip->gpiodev->base + offset=
);
> +}

IIRC Bartosz is working on a patch set getting rid of this kludge having to
call with base + offset in every driver, replacing it with generic calls th=
at
you can just assign in the gpio_chip.

When this gets applied these changes will likely be in place so you will
get rid of this too.

Yours,
Linus Walleij

