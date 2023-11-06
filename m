Return-Path: <devicetree+bounces-14129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C08377E211B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 614A3B20D33
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38501EB4B;
	Mon,  6 Nov 2023 12:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iVKi3UrY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C71D1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:16:52 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D51292
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 04:16:51 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5a7c08b7744so51115647b3.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 04:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699273010; x=1699877810; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EG5hPBkq6PdY2a7ADFXt5X7TvO05wy+79EbofVcknJU=;
        b=iVKi3UrYIKExlErMrrMt/p6fGWPgVTndPYFq5Ijsg1jAJorYt9P9uw9z5fZfhvH4h+
         eyhJ4IcBtyl3O2gVQJvDBKY/fX4mzoW978nG0isdTejvt2DUixctMT4ty4zPJn/w9cVF
         M92Vm+bgc62Nx+dQ/f87myQBMY+foYyBVxvjIFvciYmsfuEphpqapFyWSqgloISMJS/i
         SeGJHw0QpzDNQJ0vF9UwKDWmGjun24v6iVPdCfjQR3DSkYdDrBFXDqZ4GzeKhHvVE99x
         W+Jsx8jl1A0fnTEwIANY6kUWb5N7GoA+tgdT4vc8c9t661Lf2ob/uiVmdE5cFxh4ka9l
         Emdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699273010; x=1699877810;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EG5hPBkq6PdY2a7ADFXt5X7TvO05wy+79EbofVcknJU=;
        b=WGW/MueJk9bVIoDCsRBENXo/c6ztZ9vL++BQny53NC3OqJWI/NG5sUB13HVzMjeqz5
         vEZxd8ZevTLtZ/Adv2G44SExmlMxFWfkCT8OgtATMP1WYMkhkrAYJdtBPUzbGH+Zmkq2
         tyFF7EJ8hDvuUzO7eFeD7Vl8a+9o9T0AMd+pV3la5+s1m/3JWIbmeypX+29at0mLYnGo
         dfS12xHhg1f6YzviNSdUnv/7fTM4tObW08hwLyRWimGBdWDt149Q3S7yzOU1ua7us+Cz
         hwd342N/mpsdSGaXdk+fHiFngRk5pfrjXgChoo60U3kQHnRpBDC7d7J4/btU7+YrBvW9
         jkHA==
X-Gm-Message-State: AOJu0Yyj5WhfK5MsmMNGz3bBB23hlKjD1bM/cO7dqXDFKFaM0H9oso4b
	gVad6DYMzK0KsUnm4iNS3HCSM7i+n83Lr3iC8uhAvlqXOueFwDvP
X-Google-Smtp-Source: AGHT+IG7dtNNGP1ku33ub7+LjOzGjTE/fFbQpbNgMJ2o1/7LKgwSis/m8AWYoCjq4YmlJ9tbh+mHzEnAH0AONcOeeAU=
X-Received: by 2002:a81:6cc8:0:b0:5b3:f5f8:c5bf with SMTP id
 h191-20020a816cc8000000b005b3f5f8c5bfmr11384244ywc.9.1699273010303; Mon, 06
 Nov 2023 04:16:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 14:16:38 +0200
Message-ID: <CAA8EJpoSCVX=Pv1unN+oKzfT3RkwHkcEb5smEYufDP3TMBcDhQ@mail.gmail.com>
Subject: Re: [PATCH 0/8] Add PM8937 PMIC support
To: Dang Huynh <danct12@riseup.net>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 14:11, Dang Huynh <danct12@riseup.net> wrote:
>
> PM8937 is a power management IC. It is used in various boards with
> MSM8917, MSM8937, MSM8940 and APQ variants.
>
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
> Dang Huynh (8):
>       mfd: qcom-spmi-pmic: Add support for PM8937
>       dt-bindings: mfd: qcom-spmi-pmic: Document PM8937 PMIC
>       regulator: qcom_spmi: Add PM8937 SPMI regulator
>       dt-bindings: regulator: qcom,spmi-regulator: Document PM8937 PMIC
>       regulator: qcom_smd: Add PM8937 regulators
>       dt-bindings: regulator: qcom,smd-rpm-regulator: Document PM8937 IC
>       arm64: dts: qcom: Add PM8937 PMIC
>       soc: qcom: socinfo: Add PM8937 Power IC

It seems that some of the patches didn't get it to linux-arm-msm@.
Could you please check, what was wrong and resend your patchset?

>
>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |   1 +
>  .../bindings/regulator/qcom,smd-rpm-regulator.yaml |   4 +
>  .../bindings/regulator/qcom,spmi-regulator.yaml    |  19 ++
>  arch/arm64/boot/dts/qcom/pm8937.dtsi               | 202 +++++++++++++++++++++
>  drivers/mfd/qcom-spmi-pmic.c                       |   1 +
>  drivers/regulator/qcom_smd-regulator.c             |  34 ++++
>  drivers/regulator/qcom_spmi-regulator.c            |  34 ++++
>  drivers/soc/qcom/socinfo.c                         |   2 +-
>  include/soc/qcom/qcom-spmi-pmic.h                  |   1 +
>  9 files changed, 297 insertions(+), 1 deletion(-)
> ---
> base-commit: 12c9e8890929813dc852d9739f8d900ff51d9814
> change-id: 20231106-pm8937-000e423a75fb
>
> Best regards,
> --
> Dang Huynh <danct12@riseup.net>
>


-- 
With best wishes
Dmitry

