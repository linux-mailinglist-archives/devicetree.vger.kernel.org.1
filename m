Return-Path: <devicetree+bounces-10103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE927CFA8C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F2B0B213AA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C2827440;
	Thu, 19 Oct 2023 13:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uZx+XKR4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31D224201
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:12:38 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC55F114
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:12:36 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a87ac9d245so55009797b3.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721156; x=1698325956; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihyEfw6d/6Ye9dRz+5lKF9uUOsex/9mwcXLcDYm3qJ8=;
        b=uZx+XKR4SwV03LW4nZMWDzMLO6y4Ppe3CWxFgc79j+XtZ3gdsozWBNUYw2Cm06O1jl
         L2sBcz0Mdr/P/9lq4c7GEkqMoNvyqccshGWIJ+QqQvF0AMzov+wG1XdNsfh7HMePokXj
         k3R/mTtGgGf+YH9Ji8fW9XtYz+EXOxQnHIroQOqbzdpHAUOfuSAT3pH5LS22pmM0qrKd
         F+7370s5J7mmxhgok25mdbKd4gf7/1932ydQyLvTroz4GjO1yRRSBxFdtU0xMPGlHvAv
         I8APdq1sMYo66SDl4bZCgmRqzfLSMBVT5/qsVfwmjCQWBCnFrZICO5PWjSmI8CNOhbwN
         ccYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721156; x=1698325956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihyEfw6d/6Ye9dRz+5lKF9uUOsex/9mwcXLcDYm3qJ8=;
        b=ICp0nDQV0OO+h+c38uynt8ve60hn2Gp5UwevfQ9G2RxH/mumrLf9SpZN0z48EXSysf
         ZQ8RpVaKdTLyEHowxY0asS38ezFW5KpBQygwf8GTwbtyQhIRlJKRXX5aohbImaaXpupL
         P3iAl4CBnyAWpep11bYrDd+VFAgAm8Uh5gA8Bolr3kgKuE0yWX8/NwZDXaIbjyAOdbj/
         Q+BwhBag7sdGp6HACGSR5CEV87zwgvbzHGwJIBsuvOm4iH0MHZ35vdDiPGEGjUb8vbgf
         ChVA5S2vKNCLmZCpP7skSCicsATmvxySmCJ3sdh6HLhiaHRLDhuB+zKazINshHcFIM/4
         4iIw==
X-Gm-Message-State: AOJu0YyBnZY8v9mm1w8oXqwmGkvdM7pgtsOebGQT0QtV4UpxANn1akqY
	n7niqDvtJXWRHs7U1BGBMyOR0bkDvcI7RvPQPXziMQ==
X-Google-Smtp-Source: AGHT+IFlSkOYgC7bYQ65kZNyfSVr6WVa+b6gqEq58/U4wY+1heInRHuynGjWtLgpzZLHn7tzOvDltfRKStG3dFI+yvI=
X-Received: by 2002:a81:5247:0:b0:5a7:af89:c4a0 with SMTP id
 g68-20020a815247000000b005a7af89c4a0mr2416296ywb.23.1697721155836; Thu, 19
 Oct 2023 06:12:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697694811.git.quic_varada@quicinc.com> <9796f8e752c4de94b0939e4512bc646a5e72fc32.1697694811.git.quic_varada@quicinc.com>
In-Reply-To: <9796f8e752c4de94b0939e4512bc646a5e72fc32.1697694811.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 16:12:25 +0300
Message-ID: <CAA8EJprLvQ6Mzo-JLetNDESftRaJGDe46UtWChWx+BQRu1aJQA@mail.gmail.com>
Subject: Re: [PATCH v4 1/9] clk: qcom: config IPQ_APSS_6018 should depend on QCOM_SMEM
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ilia.lin@kernel.org, sivaprak@codeaurora.org, 
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 11:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The config IPQ_APSS_6018 should depend on QCOM_SMEM, to
> avoid the following error.

Which error?

>
> Fixes: 5e77b4ef1b19 ("clk: qcom: Add ipq6018 apss clock controller")
> Reported-by: kernel test robot <yujie.liu@intel.com>
> Closes: https://lore.kernel.org/r/202310181650.g8THtfsm-lkp@intel.com/
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 3194c8b..ad1acd9 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -131,6 +131,7 @@ config IPQ_APSS_6018
>         tristate "IPQ APSS Clock Controller"
>         select IPQ_APSS_PLL
>         depends on QCOM_APCS_IPC || COMPILE_TEST
> +       depends on QCOM_SMEM
>         help
>           Support for APSS clock controller on IPQ platforms. The
>           APSS clock controller manages the Mux and enable block that feeds the
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

