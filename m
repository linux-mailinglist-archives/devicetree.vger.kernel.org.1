Return-Path: <devicetree+bounces-39581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7CF84DA77
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 041C91C23184
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 07:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E60A69301;
	Thu,  8 Feb 2024 07:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gon8il+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC043692F6
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 07:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707375767; cv=none; b=RPM7srMhsSbkUbKE7N30aPeENq0ipHjZA/QCNXsgwvqFM2MTSmfXs50wFaGv7Hf8lS9TXYhVdu49nSkc9K4FoDne6RYtnRzAogEHdNHbcp56udlZgoAvgz33AZi01S/p9408gxDjZZ/sPkYslkt5AUD8pAQKFgsEmkfIj4eDH0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707375767; c=relaxed/simple;
	bh=UOvPRAo6yU7uhAscNZqlVTzyS9Fqzjv1X3eKtZV4qL0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c4KzJbM5Ak4YhWcTnSnTuwmtILHjue3lXQlvB62iB+ss2q6aLhrXfAuGxUml/qHS8IvUpUrFn5DmrEigUq2uI1Zf5pAlgMVbbZy6PL39hkyxel1BazUbwByXJ6TqQNIpld4iI4mn9rKiaURTLHQLzmwlGybD2TpA8J15EhzZ7i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gon8il+R; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-604a1581cffso7679747b3.3
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 23:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707375764; x=1707980564; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NtjhvkCTsupNHiRcbmushS8AR8fWxZ5XeczzVylDpVY=;
        b=gon8il+R7xJwIQHf9rsg3tsHSI3iUMIZUazxx1D8F+YRFNshBcw+fkHswHjN6gFGQx
         BIelEfeeOF/UIYeQXfVf10vOkJndm8342fmPH4F3e8WlhuBng6EWZ7huh1J9nd26OHS4
         rZOIuqqLy0ajhETckoKU5nAS3V6+k430Mi5TiAblEtmTpfBYEDZm+8w23WyBm1zTdPnI
         r1RebwDbWb0nnZMkr0L3lZKdYXqf3y82Zd/L6y0f/WPx6T0ZNpj9XF9zTkIq9ceV9O4v
         LzuH6tooHVAauJWQGKqA1eNOkExk44fHgSV8zRHsmzlztPpQe2bEblnm33vwEjXeGFQb
         9QAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707375764; x=1707980564;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NtjhvkCTsupNHiRcbmushS8AR8fWxZ5XeczzVylDpVY=;
        b=MQfGc2QRQ6xKQL1YugY747r3VGL2pgLlC38YY1mTq9IRc3Fh/JXTtnJn47B7eJfT+k
         wlYf74wXoJfi4bhBvwWFqKdKW1LBWALVCsgLFJ7Q8Sp7vMmZQO62hbsTusbbe05bfgPf
         /Y3oXAGjGRo8wwqNl0jVfIblpKY1iQyOfu+L/KAmLxtgF5Go7r/smLK3ufWqw+SYtHp6
         ci/nG4rzuIOSf+aHXqWpriCnwIUTGVPp/iXv7fNh+6FhpRBnfCZ/hUX5OLMNkCWgB3UF
         BrhWh3dT/FiMDJqHVSvz/ZdVVcPIl33ZAFJNvlzwIsQ1DmbhB6OmSjWX5qZXUgoXFJft
         ZQbg==
X-Gm-Message-State: AOJu0YxZ0JivOt9lpa9eEtEl4eP2YnpsHvpcYZUMgHavWiPX+paAj5it
	ip+aWwqWb3L/TjVEHgjXPqeJ1YcuJEdpSD6h5M/7iNHSzjRPgXiG0Hrji+BlrA+zL5NbrvGTzot
	JYoeOukojMBGBJA5vhWrZ+axq3veT6FgLFyOIyw==
X-Google-Smtp-Source: AGHT+IFZbg21CI2RlYLxUCFIJxo6jm0QjIMANZmNiamDHHuFVtORyDoDAFU93Jr3tbJ76PzdLJiXUIqxIPwYaNiwO6c=
X-Received: by 2002:a81:d202:0:b0:604:20ab:fc32 with SMTP id
 x2-20020a81d202000000b0060420abfc32mr7896414ywi.17.1707375763454; Wed, 07 Feb
 2024 23:02:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208062836.19767-1-quic_tdas@quicinc.com> <20240208062836.19767-3-quic_tdas@quicinc.com>
In-Reply-To: <20240208062836.19767-3-quic_tdas@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 8 Feb 2024 09:02:32 +0200
Message-ID: <CAA8EJpq2MpZitzspd9RksTY7WWKAaLwvb30x8ArBfed5Ee8buA@mail.gmail.com>
Subject: Re: [PATCH 2/5] clk: qcom: lpassaudiocc-sc7280: Add support to skip
 PLL configuration
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Feb 2024 at 08:29, Taniya Das <quic_tdas@quicinc.com> wrote:
>
> The PLL configuration needs to be skipped when remoteproc brings the
> LPASS out of reset.

Why?

>
> Also update the lpassaudio_cc_reset regmap name and max register to handle
> the regmap conflict warning between lpassaudio_cc_reset and lpassaudio_cc.

Separate patch, please.

>
> Fixes: a9dd26639d05 ("clk: qcom: lpass: Add support for LPASS clock controller for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/lpassaudiocc-sc7280.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> index c43d0b1af7f7..2619a8ced9d5 100644
> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/clk-provider.h>
> @@ -766,11 +767,13 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>                 goto exit;
>         }
>
> -       clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
> +       if (!of_property_read_bool(pdev->dev.of_node, "qcom,adsp-skip-pll")) {
> +               clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
>
> -       /* PLL settings */
> -       regmap_write(regmap, 0x4, 0x3b);
> -       regmap_write(regmap, 0x8, 0xff05);
> +               /* PLL settings */
> +               regmap_write(regmap, 0x4, 0x3b);
> +               regmap_write(regmap, 0x8, 0xff05);
> +       }
>
>         ret = qcom_cc_really_probe(pdev, &lpass_audio_cc_sc7280_desc, regmap);
>         if (ret) {
> @@ -778,6 +781,9 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>                 goto exit;
>         }
>
> +       lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";
> +       lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;
> +
>         ret = qcom_cc_probe_by_index(pdev, 1, &lpass_audio_cc_reset_sc7280_desc);
>         if (ret) {
>                 dev_err(&pdev->dev, "Failed to register LPASS AUDIO CC Resets\n");
> --
> 2.17.1
>
>


-- 
With best wishes
Dmitry

