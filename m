Return-Path: <devicetree+bounces-4413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6CC7B2749
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 23:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 300B3283747
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 21:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0335D168AB;
	Thu, 28 Sep 2023 21:15:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C029CA71
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 21:15:19 +0000 (UTC)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 629B3F3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:15:18 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d81d09d883dso15235915276.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695935717; x=1696540517; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMae55Fx7PiApDYXyPzKPPdkwhRMRqPd7wXKmf/Imiw=;
        b=V3QrO3PKQm9H77cDdo64Sx3GKFC9R0/AE55TYuvlRWvAc38QhOX3skh4W/5A8B3S6v
         wRN7Clf1QRkmqa0FYiqOW0Mz0H02ARktho3VUFYk2r0SHBqvSLyWa5f9wz6FaTJjd2Ui
         HR0QYYZQlkvV3wnTLuUYGizNl+F1B3P7TTKaUICfy3dfiLsRYJDgEVX6NkMtoEnQF63/
         ckabajfDmYZXifx0zoG/OlGFeXeGetgLsiDevIs8+JeJobnnAm2oKeOnOyeTvOel5AZQ
         KYsjBRbsecZVyJVmHK8fIKhOzpU2HW9p0Y9BtMwj1z0mnM81SJ0+eUH/3XOQpnWLleUS
         +AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695935717; x=1696540517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMae55Fx7PiApDYXyPzKPPdkwhRMRqPd7wXKmf/Imiw=;
        b=TbxBk9p1Z42rizF7Qg9RR0lCEJ3uar9ClyuS8u5udE4t1kkE2Yk0PXR3qZSnhmvF6D
         cn1Teck8/oFRMIUQI4Y1cNTbkZ1xOsd56BVYDHo5NAMr57VfEYbKnibbQ03xhJhEk0KT
         Sjm/TZDsLoq/b8Ni2TrdUAbDrXh4WleSYhi0k87zeTDMUaFs0xxX/Gzh6wcsne7uJxp+
         14EryL06F1D62GloRje4eI1GZgprZYR5NOM4werY7qPmBDSQjxyOXeUqQqmbX4TwFs/R
         k05ptS5Ac0ZhoxhG8GMdn64LKz0++Y6I2LHJQ2qQhrHhsH6Zycu2XEWSilKYJk7+x91L
         4yYQ==
X-Gm-Message-State: AOJu0Yy1LE4pqPa4tGqRQOewiivJ2gaPm4NY+JILG7ILmFj9su1n5EvM
	CafsqfjfSOsPWEChB79C+jVZXOcYnksRzlEnTlB+lg==
X-Google-Smtp-Source: AGHT+IEx5vmOlgc90YGcN9ELfymxnTjl5jH5W/7HnoFi7r9aFnJqkqfFU0S8v8Bpml17IwCuy4WjLkmqcJSWej8jc+E=
X-Received: by 2002:a25:ca8b:0:b0:d80:9ed:5038 with SMTP id
 a133-20020a25ca8b000000b00d8009ed5038mr2385007ybg.21.1695935717623; Thu, 28
 Sep 2023 14:15:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org> <20230926-gpio-led-trigger-dt-v2-1-e06e458b788e@linaro.org>
In-Reply-To: <20230926-gpio-led-trigger-dt-v2-1-e06e458b788e@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 23:15:06 +0200
Message-ID: <CACRpkda0XnLtNwp-sQhS=SKqPB+zce7ZJpEeKnJbGmfsL=p_Qw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] gpiolib: of: Allow "trigger-sources" to reference
 a GPIO
To: =?UTF-8?B?SmFuIEt1bmRyw6F0?= <jan.kundrat@cesnet.cz>, 
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-leds@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 11:48=E2=80=AFPM Linus Walleij <linus.walleij@linar=
o.org> wrote:

> The "trigger-sources" phandle used for LED triggers are special:
> the DT bindings mandate that such triggers have the same phandle
> references no matter what the trigger is. A GPIO is just another
> kind of device that can trigger a LED.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Bartosz could you queue this patch? Lee already queued patches 2+3,
and there is just runtime dependency with no in-tree users so it's fine
to merge them in the different trees.

Sorry for missing to CC you directly on the set :/

Yours,
Linus Walleij

