Return-Path: <devicetree+bounces-37183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F16843F66
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 13:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 892BCB24E08
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 12:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839C578B56;
	Wed, 31 Jan 2024 12:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hok1Zh06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0E878B45
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 12:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706703968; cv=none; b=ADnJeVhSNF3X8sQl0MXDLyyaww4ktIXE/bjikAeGQCHeTC3AVhEMAua55FBZgjZm3JvphOl2tujH1kyA1He7Wn0NOUjBLa36OqGIPdQJ1LpBUarXXYu4ks3nteo636wWkHkQSSCC2W+irhbMRnLwRUX6JYbz9jwxgEZRyjTjFg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706703968; c=relaxed/simple;
	bh=P2snzUQaV78T2UXte2q2QP64eJ4+iF8/LbiWUxjGA0I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A7jBXLcdokIoIkE/9HXpourWppYTvn91cV9ChMSB55mtnAIqCjqJTnoTG1ZyYFKkPCuHJXlp1XNAe09J6Rxavkua3BJYLozYHqtJj8hgMi4WxBtmhwHHLiq4IkDyfQCQoSazwRmsO60cnaiGOtRJpMu4fZi7aKDkz62qmql2UnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hok1Zh06; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6040d0c9cf1so5507387b3.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 04:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706703965; x=1707308765; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lNAQWe7GlakSWDmg7q0hi9akDhI0G3cV17++87SbIMA=;
        b=hok1Zh06MVNrr/F8umCt9mbhhYjWBKqF/Du6MdF2MPvXUJgBxHE26wuKOacUhMn7xb
         tQUu6Gpi/N8X7GJQO2hUat3Ee2WutJA2SvJM6hGY7uf8ungzYvibwJmyC0kFgINbRdDv
         EKmjAyDqrjYTNFEkQZsltOaOC+x/8x3kZeqK9sO33eTZu533ncETYlkU1ntO/p6hzOHT
         Mj2NkGovtmeb5ekdrZrWwSq0dfMX22DevAXTbI0cNYRyKinnAIWrf+Rqtnx/8b05mz5M
         WvM1XZrCyhq3/QSNNpsJQbZgh0XW8CYINAWjZdjoG41NaI6LQUolkZfMblQlczt1O0vr
         vPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706703965; x=1707308765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNAQWe7GlakSWDmg7q0hi9akDhI0G3cV17++87SbIMA=;
        b=Pd3YIS7xMckiGtfRZLkNVo5qrB/5bJ5QIDYRjmJpQsmvcXwuhbhdWLMBAka/BefAHZ
         oI/KDJROmp4x5/sIYOshHxVePjwSBuuu6nAlhNluPo05FlnQ/1F9tj05FwH80PWgW5++
         PYAbBcLkxa0w0v+X53lT2L6uYmQtB7WGyVN+Y1lG0j1ndgH/3FnGJuqSzxTbfG4RVQ0D
         zxJpHHrBBe90NjBQn1TjjDtcIxdS08fa8oCMUQF3TUZLL7rTkI4zqHsLqFhnsSvJOaTg
         8ZwLeGWsLWTJFZVm/BzCWH9a9dp3P0TAw7Df+IfvSpytGwkbQhrwcVUiQFjT093SOBZ6
         qQUA==
X-Gm-Message-State: AOJu0YxGalvQKa8lv6cnp9mOzRxU41SlP4iEvpRUncQTJ7g7YQp+m28L
	i4ltWxBr8SJcaZnfcrtuB8ZsrN2U6nbHD/EE9W/EwQyRi0RXrF/4FcIBeY1P5BdArtABEVlaJpg
	93sJNNyeggCCO0tELaMGVC7QEyQOjlYl86JA8sA==
X-Google-Smtp-Source: AGHT+IE4QdPfvM4LOGGKevW8OxSEANsb2HyagWTnfsuRpwSCL1XKO8bnNBygoLJTlT2T1b89u8q7/jm6oUOkngcwVcY=
X-Received: by 2002:a81:b608:0:b0:5ff:b07b:fb0b with SMTP id
 u8-20020a81b608000000b005ffb07bfb0bmr1223691ywh.49.1706703965301; Wed, 31 Jan
 2024 04:26:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240131102003.2061203-1-amadeus@jmu.edu.cn>
In-Reply-To: <20240131102003.2061203-1-amadeus@jmu.edu.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 Jan 2024 14:25:54 +0200
Message-ID: <CAA8EJppDQAdnceYhL_=Di0n5j3W0F2+7ntpNMxpXBXgnYoh_uQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: ipq6018: separate CPU OPP tables
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 31 Jan 2024 at 12:22, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Some IPQ6000 SoCs do not come with PMIC (MP5496) chip,
> which causes cpufreq to be unavailable due to lack of
> cpu-supply. Separate CPU OPP tables from soc.dtsi to
> support versions with and without PMIC chip.

I went on and checked ipq6018.dtsi. It will need to be reworked before
we can continue with PMIC-less devices.

Obviously, the PMIC is not a part of the SoC. So please move the
"qcom,rpm-mp5496-regulators" node to the board files together with the
cpu-supply properties that reference that regulator.

The SoC itself supports all listed frequencies, so it is incorrect to
split the opp tables from the ipq6018.dtsi. Instead please patch the
PMIC-less boards in the following way:

#include "ipq6018.dtsi"
&cpu_opp_table {
  /* the board doesn't have a PMIC, disable CPU frequencies which
require higher voltages */
  /delete-node/ opp-1320000000;
  /delete-node/ opp-1440000000;
};

>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  1 +
>  arch/arm64/boot/dts/qcom/ipq6018-opp.dtsi    | 74 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 56 ---------------
>  3 files changed, 75 insertions(+), 56 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-opp.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> index f5f4827c0e17..06dfc2cb6b7f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>
>  #include "ipq6018.dtsi"
> +#include "ipq6018-opp.dtsi"
>
>  / {
>         model = "Qualcomm Technologies, Inc. IPQ6018/AP-CP01-C1";
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018-opp.dtsi b/arch/arm64/boot/dts/qcom/ipq6018-opp.dtsi
> new file mode 100644
> index 000000000000..9c0bed2d8bf5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018-opp.dtsi
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * IPQ60xx with PMIC (MP5496) CPU OPP tables
> + */
> +
> +/ {
> +       cpu_opp_table: opp-table-cpu {
> +               compatible = "operating-points-v2-kryo-cpu";
> +               nvmem-cells = <&cpu_speed_bin>;
> +               opp-shared;
> +
> +               opp-864000000 {
> +                       opp-hz = /bits/ 64 <864000000>;
> +                       opp-microvolt = <725000>;
> +                       opp-supported-hw = <0xf>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1056000000 {
> +                       opp-hz = /bits/ 64 <1056000000>;
> +                       opp-microvolt = <787500>;
> +                       opp-supported-hw = <0xf>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1320000000 {
> +                       opp-hz = /bits/ 64 <1320000000>;
> +                       opp-microvolt = <862500>;
> +                       opp-supported-hw = <0x3>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1440000000 {
> +                       opp-hz = /bits/ 64 <1440000000>;
> +                       opp-microvolt = <925000>;
> +                       opp-supported-hw = <0x3>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1608000000 {
> +                       opp-hz = /bits/ 64 <1608000000>;
> +                       opp-microvolt = <987500>;
> +                       opp-supported-hw = <0x1>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1800000000 {
> +                       opp-hz = /bits/ 64 <1800000000>;
> +                       opp-microvolt = <1062500>;
> +                       opp-supported-hw = <0x1>;
> +                       clock-latency-ns = <200000>;
> +               };
> +       };
> +};
> +
> +&CPU0 {
> +       operating-points-v2 = <&cpu_opp_table>;
> +       cpu-supply = <&ipq6018_s2>;
> +};
> +
> +&CPU1 {
> +       operating-points-v2 = <&cpu_opp_table>;
> +       cpu-supply = <&ipq6018_s2>;
> +};
> +
> +&CPU2 {
> +       operating-points-v2 = <&cpu_opp_table>;
> +       cpu-supply = <&ipq6018_s2>;
> +};
> +
> +&CPU3 {
> +       operating-points-v2 = <&cpu_opp_table>;
> +       cpu-supply = <&ipq6018_s2>;
> +};
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 5e1277fea725..ea72fd5739ac 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -41,8 +41,6 @@ CPU0: cpu@0 {
>                         next-level-cache = <&L2_0>;
>                         clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
>                         clock-names = "cpu";
> -                       operating-points-v2 = <&cpu_opp_table>;
> -                       cpu-supply = <&ipq6018_s2>;
>                 };
>
>                 CPU1: cpu@1 {
> @@ -53,8 +51,6 @@ CPU1: cpu@1 {
>                         next-level-cache = <&L2_0>;
>                         clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
>                         clock-names = "cpu";
> -                       operating-points-v2 = <&cpu_opp_table>;
> -                       cpu-supply = <&ipq6018_s2>;
>                 };
>
>                 CPU2: cpu@2 {
> @@ -65,8 +61,6 @@ CPU2: cpu@2 {
>                         next-level-cache = <&L2_0>;
>                         clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
>                         clock-names = "cpu";
> -                       operating-points-v2 = <&cpu_opp_table>;
> -                       cpu-supply = <&ipq6018_s2>;
>                 };
>
>                 CPU3: cpu@3 {
> @@ -77,8 +71,6 @@ CPU3: cpu@3 {
>                         next-level-cache = <&L2_0>;
>                         clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
>                         clock-names = "cpu";
> -                       operating-points-v2 = <&cpu_opp_table>;
> -                       cpu-supply = <&ipq6018_s2>;
>                 };
>
>                 L2_0: l2-cache {
> @@ -95,54 +87,6 @@ scm {
>                 };
>         };
>
> -       cpu_opp_table: opp-table-cpu {
> -               compatible = "operating-points-v2-kryo-cpu";
> -               nvmem-cells = <&cpu_speed_bin>;
> -               opp-shared;
> -
> -               opp-864000000 {
> -                       opp-hz = /bits/ 64 <864000000>;
> -                       opp-microvolt = <725000>;
> -                       opp-supported-hw = <0xf>;
> -                       clock-latency-ns = <200000>;
> -               };
> -
> -               opp-1056000000 {
> -                       opp-hz = /bits/ 64 <1056000000>;
> -                       opp-microvolt = <787500>;
> -                       opp-supported-hw = <0xf>;
> -                       clock-latency-ns = <200000>;
> -               };
> -
> -               opp-1320000000 {
> -                       opp-hz = /bits/ 64 <1320000000>;
> -                       opp-microvolt = <862500>;
> -                       opp-supported-hw = <0x3>;
> -                       clock-latency-ns = <200000>;
> -               };
> -
> -               opp-1440000000 {
> -                       opp-hz = /bits/ 64 <1440000000>;
> -                       opp-microvolt = <925000>;
> -                       opp-supported-hw = <0x3>;
> -                       clock-latency-ns = <200000>;
> -               };
> -
> -               opp-1608000000 {
> -                       opp-hz = /bits/ 64 <1608000000>;
> -                       opp-microvolt = <987500>;
> -                       opp-supported-hw = <0x1>;
> -                       clock-latency-ns = <200000>;
> -               };
> -
> -               opp-1800000000 {
> -                       opp-hz = /bits/ 64 <1800000000>;
> -                       opp-microvolt = <1062500>;
> -                       opp-supported-hw = <0x1>;
> -                       clock-latency-ns = <200000>;
> -               };
> -       };
> -
>         pmuv8: pmu {
>                 compatible = "arm,cortex-a53-pmu";
>                 interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

