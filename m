Return-Path: <devicetree+bounces-10134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA327CFC22
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2F281C20A54
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB3C29D03;
	Thu, 19 Oct 2023 14:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yPt6+hyn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B2627477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:10:16 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACE22CF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:10:13 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-59e88a28b98so7343347b3.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697724613; x=1698329413; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5wSys4rsbeW6TJksuzBXo91tDTJzxZoqvYBGXuczrwg=;
        b=yPt6+hyn0q8nRh+xJGcVVTd6aBELI925YFc4Hf7saH4IKPLVQO0j8whP6+fM9MGr5Y
         cF0sKckARWxNs6zAB9lHr0MX+N9cnuirub19j7P8mfSrqAoQhrgaPQpzdGFQT4GBhSIv
         Cpx+hP11MQRChRJhNywc2ufMs4f0N9OV862GbTOMzcuKInGUIMJy3GoISH3kdJiXN8/H
         ZnIYq+efp8nqF/j0cLhcilYBZslhCQnFn/YUGMbisQ2VuKq0BVeC10U2McOZXvvF/CTg
         qPldp3+qrQczWdenq+/hz1sEdM/eFFeJe/gyFUspYGiuvXzi8baps++qJof0YLrw9oTU
         cUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697724613; x=1698329413;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wSys4rsbeW6TJksuzBXo91tDTJzxZoqvYBGXuczrwg=;
        b=gqWGrbhcnYKSdJQR7OpIBc1OEIMKu+p1WkdRDrAjj5xA7LL6Hn+oBIIRjNdBCwPuow
         BGCyZdJg2Y70vhf3g5PHBEt+eiXoWAz647Au73V82XFQXQ6seJ9iCKC1ZBicZpaLgW7p
         335SkuwnO74sk694lvfAVbL56UrmgI8szumX2GBcDBx6WueoJHa764w57O4Rvdpou1tQ
         LyqwR36TtA6NDIAifAWIwc1LmolcNkdPYYWGmskSXQuqP7GbnQ47LzwhzehHAR6eLmG1
         9RC/yEOvXQrYWxeZ4s7FXTqbSYecUQSIzmcwFYszsHyn92aTh7XaoOYz00sGXAHwTAqE
         7rDQ==
X-Gm-Message-State: AOJu0YxBnsSwnfNrUppBNJiOslnoF7XOvSgW8Eh3L5IVIUvJShv8HGXC
	yVCNj2uYTOsjG5q4wCHS0WdpMD7TH/ysyB2n0Ag/IA==
X-Google-Smtp-Source: AGHT+IEwlHRy2zOcM/DBgHA9BJNVulUDdOwJQE0MV7FcIHalKrDfpv+nVUZHKKrRg9DXCMmv+RzV1EjO/cCl4dw43LI=
X-Received: by 2002:a81:5251:0:b0:5a7:ba3e:d1d1 with SMTP id
 g78-20020a815251000000b005a7ba3ed1d1mr1315335ywb.25.1697724612881; Thu, 19
 Oct 2023 07:10:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697694811.git.quic_varada@quicinc.com> <7369c6d5186d2b9b5f62a210878e9f864b57e11a.1697694811.git.quic_varada@quicinc.com>
In-Reply-To: <7369c6d5186d2b9b5f62a210878e9f864b57e11a.1697694811.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 17:10:01 +0300
Message-ID: <CAA8EJprFcs471e6Jd6RZxBL4+cFdrvn2oOdsm+oN09A81iYoFA@mail.gmail.com>
Subject: Re: [PATCH v4 8/9] cpufreq: qti: Introduce cpufreq for ipq95xx
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ilia.lin@kernel.org, sivaprak@codeaurora.org, 
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	Praveenkumar I <ipkumar@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 11:43, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> IPQ95xx SoCs have different OPPs available for the CPU based on
> the SoC variant. This can be determined from an eFuse register
> present in the silicon.
>
> Added support for ipq95xx on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
>
> Signed-off-by: Praveenkumar I <ipkumar@codeaurora.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2:     Simplify bin selection by tweaking the order in dts
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 8 ++++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index f43e5cd..4f794ba 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -183,6 +183,7 @@ static const struct of_device_id blocklist[] __initconst = {
>         { .compatible = "qcom,ipq5332", },
>         { .compatible = "qcom,ipq8064", },
>         { .compatible = "qcom,ipq8074", },
> +       { .compatible = "qcom,ipq9574", },
>         { .compatible = "qcom,apq8064", },
>         { .compatible = "qcom,msm8974", },
>         { .compatible = "qcom,msm8960", },
> diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> index 0014909..d44be4e 100644
> --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
> +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> @@ -166,6 +166,13 @@ static int qcom_cpufreq_kryo_name_version(struct device *cpu_dev,
>         case QCOM_ID_IPQ5300:
>                 drv->versions = 1 << (unsigned int)(*speedbin);
>                 break;
> +       case QCOM_ID_IPQ9514:
> +       case QCOM_ID_IPQ9550:
> +       case QCOM_ID_IPQ9554:
> +       case QCOM_ID_IPQ9570:
> +       case QCOM_ID_IPQ9574:

Can we please merge this to the previous set of cases (and maybe to
apq8096)? I don't see a great benefit in repeating `1 << (unsigned
int)(*speedbin)` several times.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +               drv->versions = 1 << (unsigned int)(*speedbin);
> +               break;
>         default:
>                 BUG();
>                 break;
> @@ -417,6 +424,7 @@ static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
>         { .compatible = "qcom,ipq8064", .data = &match_data_krait },
>         { .compatible = "qcom,ipq8074", .data = &match_data_ipq8074 },
>         { .compatible = "qcom,apq8064", .data = &match_data_krait },
> +       { .compatible = "qcom,ipq9574", .data = &match_data_kryo },
>         { .compatible = "qcom,msm8974", .data = &match_data_krait },
>         { .compatible = "qcom,msm8960", .data = &match_data_krait },
>         {},
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

