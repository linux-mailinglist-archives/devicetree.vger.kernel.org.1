Return-Path: <devicetree+bounces-10016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 001F57CF5CD
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:51:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C2DAB20CF6
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CE8514F85;
	Thu, 19 Oct 2023 10:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MeFM5FbI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC2523B0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:50:54 +0000 (UTC)
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89B5AD5F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:50:41 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-d9ac31cb051so8514350276.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697712640; x=1698317440; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W7s/8+3r7RFx6yWj1hujuMRvbCyWrWX9uW8mMRBRCYM=;
        b=MeFM5FbIGVnkoFTob4eJMR+iSEl5tnE7VuhJsz/BOv2m5udYpHZosn7KqFp9HkdxYJ
         4QsGduPPzcKJ3QdHDVjIgNNDqVE7h7RM3tXrZzbp0m8qZuuvokt9Tmqsj2k51HJbtfYS
         3XHw6wnKZ/0CydW1EkHDGUy1kxJG4sPSHvpiWGoPlaQnq4vky00N0UOfGrdSwAWPCdkq
         vBN1tAHGnFgdj8uWA6GkPuilA+KIZ9ih0LFVg3GGXdJIcWyH266vBAp5yl0uAGfAW6QG
         WYy47wbp3r0zsfw2Qc1reXj74gFWYbA5lB0shVZ3fK2z0smZ+2kKkItPPDZRjC3euQeU
         ZOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697712640; x=1698317440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7s/8+3r7RFx6yWj1hujuMRvbCyWrWX9uW8mMRBRCYM=;
        b=ckt2Gfhs/bJCa6UUPiPeIGlx3QP3tFpxZFJL23lDG9ITa0/BcyAgS8SfYD00pV2WW/
         +jOlXDUoytxHbhH/M7Wm1tDEE4+TYuAMiXRzIFpfo8ormciN3Crvuk376zlNP47goC8k
         54yV4i4wa90b67FS6/TKL2KnAUeH13b/+S+rYZLFTIu1ZjlvmNxZi3QqjetdcpFFsy9a
         XxOSHTPcdnsUzEDF5EOnyMxlIcHYjKx1oGq2euygnEB84G+hpy4VJ+1H/4PR7zeAOXu9
         YfgcRvE/earQeQAKsVtl3hRyc4B0V/dDW8k5Fc/aO3hrbEls9m+mwsuQ4KroTG3WLkuH
         z9rA==
X-Gm-Message-State: AOJu0Yw+aTo5StKRxU9KjExQ0ytXwLaMbzDjqZfhjf0rKjsTKKcU7wgs
	968RMFPjuD07no4jElMjo981P82sS6FOe77vN/gc/p9mFJSrOujNHdQ=
X-Google-Smtp-Source: AGHT+IFPxBdsxnQPRHzd8OSMsox5Do9D+FzcetAm0MgZTfWyC44uvU469gyS3vnZSEqmbuBz23jJ3l8V1DLvv2UpspM=
X-Received: by 2002:a25:5d0b:0:b0:d9a:cc6b:70fc with SMTP id
 r11-20020a255d0b000000b00d9acc6b70fcmr1899433ybb.3.1697712639886; Thu, 19 Oct
 2023 03:50:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com> <20231018-msm8909-cpufreq-v2-3-0962df95f654@kernkonzept.com>
In-Reply-To: <20231018-msm8909-cpufreq-v2-3-0962df95f654@kernkonzept.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Oct 2023 12:50:03 +0200
Message-ID: <CAPDyKFruPQhkRyWURkEcMbt_EKdGAqr0j+zYZS-+3-taE+y0+g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] cpufreq: qcom-nvmem: Add MSM8909
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"

On Wed, 18 Oct 2023 at 10:06, Stephan Gerhold
<stephan.gerhold@kernkonzept.com> wrote:
>
> When the MSM8909 SoC is used together with the PM8909 PMIC the primary
> power supply for the CPU (VDD_APC) is shared with other components to
> the SoC, namely the VDD_CX power domain typically supplied by the PM8909
> S1 regulator. This means that all votes for necessary performance states
> go via the RPM firmware which collects the requirements from all the
> processors in the SoC. The RPM firmware then chooses the actual voltage
> based on the performance states ("corners"), depending on calibration
> values in the NVMEM and other factors.
>
> The MSM8909 SoC is also sometimes used with the PM8916 or PM660 PMIC.
> In that case there is a dedicated regulator connected to VDD_APC and
> Linux is responsible to do adaptive voltage scaling using CPR (similar
> to the existing code for QCS404).
>
> This difference can be described in the device tree, by either assigning
> the CPU a power domain from RPMPD or from the CPR driver.
>
> Describe this using "perf" as generic power domain name, which is also
> used already for SCMI based platforms.
>
> Also add a simple function that reads the speedbin from a NVMEM cell
> and sets it as-is for opp-supported-hw. The actual bit position can be
> described in the device tree without additional driver changes.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
> ---
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> index 3794390089b0..e52031863350 100644
> --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
> +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> @@ -59,6 +59,24 @@ struct qcom_cpufreq_drv {
>
>  static struct platform_device *cpufreq_dt_pdev, *cpufreq_pdev;
>
> +static int qcom_cpufreq_simple_get_version(struct device *cpu_dev,
> +                                          struct nvmem_cell *speedbin_nvmem,
> +                                          char **pvs_name,
> +                                          struct qcom_cpufreq_drv *drv)
> +{
> +       u8 *speedbin;
> +
> +       *pvs_name = NULL;
> +       speedbin = nvmem_cell_read(speedbin_nvmem, NULL);
> +       if (IS_ERR(speedbin))
> +               return PTR_ERR(speedbin);
> +
> +       dev_dbg(cpu_dev, "speedbin: %d\n", *speedbin);
> +       drv->versions = 1 << *speedbin;
> +       kfree(speedbin);
> +       return 0;
> +}
> +
>  static void get_krait_bin_format_a(struct device *cpu_dev,
>                                           int *speed, int *pvs, int *pvs_ver,
>                                           u8 *buf)
> @@ -252,6 +270,8 @@ static int qcom_cpufreq_ipq8074_name_version(struct device *cpu_dev,
>         return 0;
>  }
>
> +static const char *generic_genpd_names[] = { "perf", NULL };
> +

As discussed, using "perf" as a generic name for a performance domain
for CPUs makes perfect sense to me. However, we need to update the DT
doc bindings for this too. At least we should update
Documentation/devicetree/bindings/cpufreq/qcom-cpufreq-nvmem.yaml as a
part of $subject series.

At a later step, we should have a look at updating the description for
the power-domain-names in the common
Documentation/devicetree/bindings/arm/cpus.yaml, I think.

>  static const struct qcom_cpufreq_match_data match_data_kryo = {
>         .get_version = qcom_cpufreq_kryo_name_version,
>  };
> @@ -260,6 +280,11 @@ static const struct qcom_cpufreq_match_data match_data_krait = {
>         .get_version = qcom_cpufreq_krait_name_version,
>  };
>
> +static const struct qcom_cpufreq_match_data match_data_msm8909 = {
> +       .get_version = qcom_cpufreq_simple_get_version,
> +       .genpd_names = generic_genpd_names,
> +};
> +
>  static const char *qcs404_genpd_names[] = { "cpr", NULL };
>
>  static const struct qcom_cpufreq_match_data match_data_qcs404 = {
> @@ -434,6 +459,7 @@ static struct platform_driver qcom_cpufreq_driver = {
>
>  static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
>         { .compatible = "qcom,apq8096", .data = &match_data_kryo },
> +       { .compatible = "qcom,msm8909", .data = &match_data_msm8909 },
>         { .compatible = "qcom,msm8996", .data = &match_data_kryo },
>         { .compatible = "qcom,qcs404", .data = &match_data_qcs404 },
>         { .compatible = "qcom,ipq8064", .data = &match_data_krait },
>
> --
> 2.39.2
>

Other than the above, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

