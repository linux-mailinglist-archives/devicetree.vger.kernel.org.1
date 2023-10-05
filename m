Return-Path: <devicetree+bounces-6264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2F77BA87E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8FCAA1C2037C
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CBE3B795;
	Thu,  5 Oct 2023 17:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="suyWDfAN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C81A38F97
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:54:22 +0000 (UTC)
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 959C310E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:54:20 -0700 (PDT)
Received: by mail-vk1-xa36.google.com with SMTP id 71dfb90a1353d-49dc95be8c3so510947e0c.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 10:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1696528459; x=1697133259; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D76EeSMgKi6+9rAoLhvu8+kB+2vM8hIpa0TeocCPFcs=;
        b=suyWDfANo2frFGih4DlCAmyOTNKXpa/vMIOvukgPrT0z1TV6CAdAwibYSKyh4Yf+9x
         APqMZUbYeqgaFPzMJCMI8wL+5ivAGLQFhLG2oFxKdYaHpwdpfdy0e46JQPohf6mIALO3
         2a8QvVpdIVtzZuFExywRt1ey8Fn1JwAti/AkeeX0jmwSzz6eRKEGI5k60potyYNFh36t
         sZHyBGz1ox7a5mcdNUtSMmlbxfXQsVLLctc/4MCHZFxWStQ/QCnBEX4rHl6zZeFeE8Gm
         tYdDb9UaofGwEUvARYZwD6DbC2D4CQek49f8iroJ/ff6mVxmTp2RnJWRC7PTb6DSU1iF
         oyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696528459; x=1697133259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D76EeSMgKi6+9rAoLhvu8+kB+2vM8hIpa0TeocCPFcs=;
        b=IONkDwzadUZ5rCmwZM9Y1qGov74mXtLfP0kshH+L3gaNpZswJ491AW+vqbcH1UrqgX
         UyXaN4rRPZtjgb1EIlonCht7ap4w7HBESV52JNrwP/borchNVrSAEJDij2EP/P9k6gZh
         Ky49TXVIv9zBachCEu7zUNIIXbi5Bx5dQz4lM53wF62IcHXG62vXuYNm3rsp3MyObNC5
         yGqEHlFYbK9qhjdgwqPfhYIAzAubB1t3CWMSLsy8eSA5D7IHsxfwpumnK49eVbcm9ykB
         JxjE1hY8XAethu/9HcoWbFrRIQmcId2ZmdIfFopDwbAdCz16Y0u1SsaFeclY0DVN9n94
         LUQA==
X-Gm-Message-State: AOJu0YxjedUCVijVVXIsdgToT4e0WdM30VLnQfcsOB3a9WzXCHRQCxfN
	2a0bFZvaW3E1Q1BfbSGeO1bAXDMB4H/g3/28lI3KIg==
X-Google-Smtp-Source: AGHT+IGqd7cRywJrqAx7tLdWplGQ/cpV/JZJxibRe7Uc/F7Xm33Lo6i42WYHIC4HVau1Ml+H0YEATejuGsARVRTWRu0=
X-Received: by 2002:a05:6122:ca8:b0:49d:120c:3c2a with SMTP id
 ba40-20020a0561220ca800b0049d120c3c2amr5902899vkb.11.1696528459613; Thu, 05
 Oct 2023 10:54:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231001-vf610-gpio-v5-0-8d873a8f224a@nxp.com>
In-Reply-To: <20231001-vf610-gpio-v5-0-8d873a8f224a@nxp.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Oct 2023 19:54:08 +0200
Message-ID: <CAMRc=MeNmEuXNgyw9eWCBoVLyo59UTB+45rMUY1uUk+0K_bYUw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] gpio: update i.MX93/8ULP and support i.MX95
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Marco Felsch <m.felsch@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Oct 1, 2023 at 10:23=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From hardware perspective:
> - i.MX8ULP/93 GPIO supports two interrupts, 1st for Trustzone non-secure =
irq,
>   2nd for Trustzone secure irq.
> - i.MX8ULP/93 only has one register base
>
> The current linux gpio-vf610.c could work with i.MX8ULP/i.MX93, it is
> because some trick did in device tree node with offset added to base:
>   reg =3D <0x2d010080 0x1000>, <0x2d010040 0x40>;
> But actually the register base should be 0x2d010000.
>
> So i.MX8ULP/93 is not HW compatible with i.MX7ULP.
>
> i.MX93 GPIO is directly derived from i.MX8ULP, so make i.MX93 compatible
> with i.MX8ULP. i.MX95 GPIO is same as i.MX93, so also compatible with
> i.MX8ULP
>
> There maybe dtbs_check failure if only test the 1st patch. After
> the patchset applied, no failure.
>
> To make avoid break old bindings from work, update the driver
> to support both old/new bindings.
>
> ---
> Changes in v5:
> - Add R-b for patch 1, 2
> - Simplify code a bit more in patch 4 pPer Marco's comments
> - Update patch 5 to only drop port->sdata check, since patch 4 is changed=
.
> - Link to v4: https://lore.kernel.org/r/20230926-vf610-gpio-v4-0-b57b7f6e=
8368@nxp.com
>
> Changes in v4:
>  Change to minItems for allOf: else: interrupts
>  Update commit log for patch 4/6
>  Follow Marco's comments for patch 4/6
>  Add a new patch 5/6 Per Marco's comments.
>
> Changes in v3:
> Update patch v2 2/6
> Update commit log in patch v2 5/6
> Add A-b from DT maintainer for patch v2 1/6, 3/6
> - Link to v2: https://lore.kernel.org/r/20230916-vf610-gpio-v2-0-40823da7=
88d7@nxp.com
>
> Changes in v2:
> - Update bindings with describe items, add one reg base for i.MX8ULP/93
> - Update driver to support one reg base, support both new/old bindings
> - Add a new patch 1 to update gpio-ranges found in dtbs_check
> - Link to v1: https://lore.kernel.org/r/20230914-vf610-gpio-v1-0-3ed41818=
2a6a@nxp.com
>
> ---
> Peng Fan (7):
>       dt-bindings: gpio: vf610: update gpio-ranges
>       dt-bindings: gpio: vf610: correct i.MX8ULP and i.MX93
>       dt-bindings: gpio: vf610: add i.MX95 compatible
>       gpio: vf610: add i.MX8ULP of_device_id entry
>       gpio: vf610: simplify code by dropping data check
>       arm64: dts: imx8ulp: update gpio node
>       arm64: dts: imx93: update gpio node
>
>  .../devicetree/bindings/gpio/gpio-vf610.yaml       | 40 +++++++++++++---
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi         | 21 +++++----
>  arch/arm64/boot/dts/freescale/imx93.dtsi           | 28 +++++++-----
>  drivers/gpio/gpio-vf610.c                          | 53 ++++++++++++++++=
++----
>  4 files changed, 105 insertions(+), 37 deletions(-)
> ---
> base-commit: e143016b56ecb0fcda5bb6026b0a25fe55274f56
> change-id: 20230914-vf610-gpio-46edacd2b513
>
> Best regards,
> --
> Peng Fan <peng.fan@nxp.com>
>

This looks good enough. I applied patches 1-5. If you could send a
follow-up with a comment clarification for patch 4/5, that would be
great.

Thanks,
Bart

