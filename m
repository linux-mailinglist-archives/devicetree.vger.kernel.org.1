Return-Path: <devicetree+bounces-51586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AD987FC31
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A8B62876CD
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0EB7CF03;
	Tue, 19 Mar 2024 10:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XUOq0NVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF0932C84
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845464; cv=none; b=vFaf95UAbwboMvlrrPuqI8MbU7pQ8JVgnhraY/noFSvbniveNDl4oh1vflVfuwpay/mKdQL0YuJAr6zTqI5f8FJtOBDwebAGck2bDVxEvnJsDQ/YlwUnFpF9vJjs6nUrxQhqwmw40JFa7ZTDc7MYaI+P7tRhWube+F6X+E5buUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845464; c=relaxed/simple;
	bh=/DOvHVSOVMluK8I+tpm1539f+hV2X5lomXUGnvZ9uu0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JqYjazxhVw4cpxdu9FoRrVhx46auz2x0S7C5Hoy+/XcOnaf2khLfwLjpxa2pIEGBaKTz0Ct5xezqpmAxZj1mfvxa49kjEqHJBaECK7mB5yhz0q8cy8InmSpu9rUDphJydjuOL0pJ+74oLcbtEcGykENVuwKyCsfPOyTB/YyYur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XUOq0NVT; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-60a057b6601so53177357b3.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845460; x=1711450260; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wzawuu8hFKU1RvK4lgLUgZN5WdTja0Pdn2+gmpJF2Io=;
        b=XUOq0NVT7sxqdnc8vDFqwCoXAbINKu0LltQ9LSBOOEgH39u88SYKm9jzYTMkJvYv49
         eXJeTeQAfJOht3oZTsLva+DSvp7h/6lofFti8Q0KJ5rxjtWYoakSknrhyHK2DCWzF1Kq
         QyZWZU6S/kBt/ih5sv6kMuM25dxAq5u0v9WIO+TOl4ZVUSx1Zf1IPsEJsjQyQleqsjbf
         K6vHZaG9YRgblKkVpuM+OGlTavotwFM4O7id5kLO5KKX3wtaO+q0Jz917wZhYAKYH2HU
         aBA/v011a011ZmIDiPx04ftdzlIY/PeOzPDax8U4U6PaIRxb9NLlUGBjNmZ/kY1ZCbAo
         umTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845460; x=1711450260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wzawuu8hFKU1RvK4lgLUgZN5WdTja0Pdn2+gmpJF2Io=;
        b=GGOgAm5KMrK68P+LEo1aY3LhAt/2TkKRXI4BRhO3ImST/DbtHbmH/rZnJHamT3UVOP
         GKh1CDwZKjeum2PAG5b784UEfaZOWxUPydFp1wCsvDY779ac6wGszPcIfjK1ef/R9lVY
         hUnFyyTaL+uYd20sowdg84/xhyMP/YQwL5ONI9FuTQyHVEgjrhXMENAD94wUyktihH5Y
         TQ/5N9SKTJh0hfxD8f5xv2wOQrgEJ7aBTotg8/EeOAqCcwGT9AZcMGbJpCMntfJmvmnp
         xAsOi8C0sb2UdFWx9mJcH89geQrbrQVpM8foc0vHd0aNGMsXigX6zlwNNmVhNpq2ZRCv
         t7Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWjuQD8DAtfuvFzQponV/rPYbLtylzcW95Bhnjih5HOc4syAT3cddwHAmoqWgOiP2C1TKiLxrwLwIMWh9SvbmyXwKWPssvWgMwIOg==
X-Gm-Message-State: AOJu0YxTr4vzo2UPAxPg3FuZV3gNw9M8PbuamHRtHBrqOS/YBfO2zG6C
	NX1hfMJf60zkOOlRdEXMdK/RQh2+ZQJoRJdlGA5YzyJM3wJxDPo3dMxBzJ6+KtSEG9YPKoy3gPO
	4B1BoTPMcE1H5W3RfQAx+fCpV67aFOzEBLLjXDw==
X-Google-Smtp-Source: AGHT+IF6/EuqMBnZAX9r4gMKX9xc56hM2A2d3pzv6I0+nw/q8t6zrphceVRoZ2/ZcznRqKX1df24xMZiYzkbloy8K6Y=
X-Received: by 2002:a81:4702:0:b0:60a:3e2:2a35 with SMTP id
 u2-20020a814702000000b0060a03e22a35mr2384855ywa.37.1710845460142; Tue, 19 Mar
 2024 03:51:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:50:48 +0200
Message-ID: <CAA8EJpqbhc_Y+EBTdz1WTnAnZN=vkTUAzc6feH4NYgbdR-ZibQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: qcom: qmp-pcie: refactor clock register code
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> in order to expose it, split the current clock registering in two parts:
> - CCF clock registering
> - DT clock registering
>
> Also switch to devm_of_clk_add_hw_provider().
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +++++++++++----------------
>  1 file changed, 11 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 8836bb1ff0cc..079b3e306489 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3635,11 +3635,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
>         return devm_clk_bulk_get_optional(dev, num, qmp->clks);
>  }
>
> -static void phy_clk_release_provider(void *res)
> -{
> -       of_clk_del_provider(res);
> -}
> -
>  /*
>   * Register a fixed rate pipe clock.
>   *
> @@ -3664,7 +3659,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>         struct clk_init_data init = { };
>         int ret;
>
> -       ret = of_property_read_string(np, "clock-output-names", &init.name);
> +       ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
>         if (ret) {
>                 dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
>                 return ret;
> @@ -3683,19 +3678,19 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>
>         fixed->hw.init = &init;
>
> -       ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> -       if (ret)
> -               return ret;
> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> +}
>
> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> +static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
> +{
> +       int ret;
> +
> +       ret = phy_pipe_clk_register(qmp, np);
>         if (ret)
>                 return ret;
>
> -       /*
> -        * Roll a devm action because the clock provider is the child node, but
> -        * the child node is not actually a device.
> -        */
> -       return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +       return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
> +                                          &qmp->pipe_clk_fixed.hw);

No. The driver has to register a clock provider at the np rather than
at dev->of_node. Otherwise legacy DT will be broken.

>  }
>
>  static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
> @@ -3899,7 +3894,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_node_put;
>
> -       ret = phy_pipe_clk_register(qmp, np);
> +       ret = qmp_pcie_register_clocks(qmp, np);
>         if (ret)
>                 goto err_node_put;
>
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

