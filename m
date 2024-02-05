Return-Path: <devicetree+bounces-38632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA599849CED
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EDB51F2791E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1A824B35;
	Mon,  5 Feb 2024 14:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NQfc5zvF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7FC28DD8
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 14:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707143000; cv=none; b=eBPS2aF/d1Ir+xrxWKVh1jFrlR8dLq8EP95IQTixRTlDXiiAXb9fV/u51MQ8QmjrxYnhU3PJATqEqeXID60dVuGEcl51rZb6LJhdp5UAQTo3zaZZasFPDYd+Vbmo5LFx2sCa+LcFAvskYpQaXr9+mjs1Zm4ZmmX3GWRAg/1fuRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707143000; c=relaxed/simple;
	bh=5RyMVLemSkWVpyHBi0so1fiYtu5f37OhHrGEU8lWY2Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pJEHttTnhOJJWkopnJ9Hzhl4jbBqOecEhcv9ZHZLCxSY31wDhwcub6WIcZwP8Drh3Ae7KkYI+oa91fjz/afIhkwYTrmfkdURKUZ+nN5VdlpIsebcsUZxsJv9WNzr3HFJi1Pf/ZTqiaaTc8moP6YCdiYZcsfAcgr3dwSi8zhRjjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NQfc5zvF; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so4044684276.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 06:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707142997; x=1707747797; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+5NlV443+B7q3oSMetmnKtZavUAqBXHNm5S0epsUCIU=;
        b=NQfc5zvF8fb4Iv1czlnFnsrAGQULSpqyTntEPy8R0ej0wzEa/OfOKOMfoTYEgjkwsF
         oxc5xMVesQO/nN0FJUQlYcnUdroO2tU77lx/+LWQ/ieeeLAKaC0GB/p40j2syrtiLpR5
         r1KcUOaWLgOf06uVXrojPXonDNfW11SCyF34blWNBsufyh1YJ+7t2dtKUt65cXwJlnv1
         BgETtjgFC6Aruf6oI3H5Hj5N3uN49EHQB3IxGS8J2XPoI+/0oF8xx+VdDuDSDFVrcCc2
         p+e2gvEWNzkYft7AdwSSXZtaek7+xaaN5lljO8fJsWDDSmLEXPXp9vJerMe5zGvTxnfn
         1mbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707142997; x=1707747797;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+5NlV443+B7q3oSMetmnKtZavUAqBXHNm5S0epsUCIU=;
        b=SaH8Z+nbDuXZn7b3gQYS7erwmKeaGlDmUyHnwbw6kernBAfcpCUMmgsj0kN7V0UM99
         /wgK4esDX6TKDUvWPwy0G1ryQ1UZsETwJLzGPvgfBlK56+GBZcM95TwbuxREald3TzNM
         p4Zd5JS/ti/2/v5B5mMegra/vhHJgonA7q92dtyQkr4kWPN/6qzOZbuk9fQ78nFezk7z
         pG44eiAC+iO9teHunm12fvlP0pfS90Gqt/544/bvXzVuMm3U4IisSOywkXmINbgThfKb
         MwROr6KmXYvgt1yC3s8hRAr2eKueNGPW32+djvNlfBNc749s7aKjXJ9drxQgu4dZk3No
         d4RQ==
X-Gm-Message-State: AOJu0YwXYqT8EOkm2t5n3TCyxlm1wn/P2aaYbIvsEJn7Nlt9Cdr+5RiB
	tcf71aOoF0xF6c3kjeKl51nTFDVuXwWJONLRpo6bDlHQkcdeOJ2Rk3wkNxUlt7nB8HUiERIOf/E
	OJDQwpw+2XsWp+P88p/c52JIQS+yu0LKZVxBKTQ==
X-Google-Smtp-Source: AGHT+IEUlohlidLYzYqnXenkXiTLg3hicV5YhqMEsU4zqFnIKrsU4uVbegoKrmAkB3WpX/zLBRuIrICMW8TGUvdgVxg=
X-Received: by 2002:a25:acd2:0:b0:dc2:35c1:7d9c with SMTP id
 x18-20020a25acd2000000b00dc235c17d9cmr8131574ybd.60.1707142997250; Mon, 05
 Feb 2024 06:23:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240205115721.1195336-1-quic_jingyw@quicinc.com> <20240205115721.1195336-6-quic_jingyw@quicinc.com>
In-Reply-To: <20240205115721.1195336-6-quic_jingyw@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 5 Feb 2024 16:23:06 +0200
Message-ID: <CAA8EJpr7tHXZHcH1Sbcy0-MCZfMxKBjaPXGdpg3cqyyFjTZOeA@mail.gmail.com>
Subject: Re: [RFC PATCH 5/6] arm64: dts: qcom: add base AIM500 dtsi
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	kernel@quicinc.com, Tingwei Zhang <quic_tingweiz@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 5 Feb 2024 at 14:00, Jingyi Wang <quic_jingyw@quicinc.com> wrote:
>
> Introduce aim500 board dtsi.

So, is it a board or a module?

>
> AIM500 Series is a highly optimized family of modules designed to
> support AIoT and Generative AI applications based on sm8650p with
> PMIC and bluetooth functions etc.
>
> Co-developed-by: Tingwei Zhang <quic_tingweiz@quicinc.com>
> Signed-off-by: Tingwei Zhang <quic_tingweiz@quicinc.com>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650p-aim500.dtsi | 409 +++++++++++++++++++
>  1 file changed, 409 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8650p-aim500.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8650p-aim500.dtsi b/arch/arm64/boot/dts/qcom/sm8650p-aim500.dtsi
> new file mode 100644
> index 000000000000..cb857da8653b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8650p-aim500.dtsi
> @@ -0,0 +1,409 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "sm8650p.dtsi"
> +#include "pm8550.dtsi"
> +#include "pm8550b.dtsi"
> +#define PMK8550VE_SID 8
> +#include "pm8550ve.dtsi"
> +#include "pm8550vs.dtsi"
> +#include "pmk8550.dtsi"
> +
> +/ {
> +       aliases {
> +               serial1 = &uart14;
> +       };
> +
> +       vph_pwr: vph-pwr-regulator { };

Is this regulator a part of the module or a part of the carrier board?
If the latter is true, this must go to the carrier board DT file.

> +};
> +
> +&apps_rsc {
> +       regulators-0 {
> +               compatible = "qcom,pm8550-rpmh-regulators";
> +
> +               vdd-bob1-supply = <&vph_pwr>;
> +               vdd-bob2-supply = <&vph_pwr>;
> +               vdd-l2-l13-l14-supply = <&vreg_bob1>;
> +               vdd-l3-supply = <&vreg_s1c_1p2>;
> +               vdd-l5-l16-supply = <&vreg_bob1>;
> +               vdd-l6-l7-supply = <&vreg_bob1>;
> +               vdd-l8-l9-supply = <&vreg_bob1>;
> +               vdd-l11-supply = <&vreg_s1c_1p2>;
> +               vdd-l12-supply = <&vreg_s6c_1p8>;
> +               vdd-l15-supply = <&vreg_s6c_1p8>;
> +               vdd-l17-supply = <&vreg_bob2>;
> +
> +               qcom,pmic-id = "b";

[skipped]

> +
> +&qupv3_id_1 {
> +       status = "okay";
> +};

No GPI node being enabled?

> +
> +&tlmm {
> +       bt_default: bt-default-state {
> +               bt-en-pins {
> +                       pins = "gpio17";
> +                       function = "gpio";
> +                       drive-strength = <16>;
> +                       bias-disable;
> +               };
> +
> +               sw-ctrl-pins {
> +                       pins = "gpio18";
> +                       function = "gpio";
> +                       bias-pull-down;
> +               };
> +       };
> +};
> +
> +&uart14 {
> +       status = "okay";
> +
> +       bluetooth {
> +               compatible = "qcom,wcn7850-bt";
> +
> +               clocks = <&rpmhcc RPMH_RF_CLK1>;
> +
> +               vddio-supply = <&vreg_l3c_1p2>;
> +               vddaon-supply = <&vreg_l15b_1p8>;
> +               vdddig-supply = <&vreg_s3c_0p9>;
> +               vddrfa0p8-supply = <&vreg_s3c_0p9>;
> +               vddrfa1p2-supply = <&vreg_s1c_1p2>;
> +               vddrfa1p9-supply = <&vreg_s6c_1p8>;
> +
> +               max-speed = <3200000>;
> +
> +               enable-gpios = <&tlmm 17 GPIO_ACTIVE_HIGH>;
> +               swctrl-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
> +
> +               pinctrl-0 = <&bt_default>;
> +               pinctrl-names = "default";
> +       };
> +};
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

