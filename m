Return-Path: <devicetree+bounces-70855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB728D4C43
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28EDF1F21B46
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 13:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 955C91822E4;
	Thu, 30 May 2024 13:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sp09dpKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5A317FACF
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717074395; cv=none; b=AKR9BK8MVOxFncdLg7IHi7W8q+wIXSrD3HRl2eeQzlVc9NLtnOdOqNsdfMzkyQSXzcj661wNkYZEdVeElCVUnc+zSsH4ccF+jBtdz6lb9mk5mXrKqoSVqwHo1648+7w6WWO70EhS2QmcQq4XfQ+uY601CG3OiU6Ev9WzMXVKLjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717074395; c=relaxed/simple;
	bh=Nw0C7nJcyUywfnIdk5x6lVQBDyyMPTOBhrJFjwkBj5o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZsijMGFGC0mXL5bOlpanizLdai05r5IBkWPQEphguaufmMOhJpj4pbeLvOGUf4FPWZfRD+j17I/Rz1CYG6xyOTAkDwkjr99O3gtV9Os8HTVwYNergL/ib3dT9nLi0/eGqGRfLaipkx+ahpV82is8RW/rR/2QZz8T29q6r1bkHpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sp09dpKq; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dfa48f505dfso827799276.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717074393; x=1717679193; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c6esGYOm6PWwF6+ztUwretfZOooGDQ0PyXFzrTPWScg=;
        b=sp09dpKq1D0jfY1qpvqcDYPiH93ZGQjkLBEzUo7SwMQXeJsfEiNf86tmcrIVESqzJ8
         U0xc0SgHdZt2uRo1IxQAfurvih0GtKXzctXI+YS4hGyeRBC54iLq/H6ZZ5c+swKRX/iN
         oaSSNh89Sr3O9yTq55vWsufe5WjCuiw1hkq1/kdGKQ+MmUl2WzVB8UuxxhwAms/UI8p6
         kMFtPiebfFinuD8BuGQqiHwecnWuk82KoBeKMPG/qyc1R2KWMhP2n6uau6MSkrQtfhdH
         OvgxcbxO9C+rZFxSPuvp2ZSc1ASgQC/2STOsoEb6ATf04cenRHS05N/QLFgVgxQEvf6l
         RosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717074393; x=1717679193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6esGYOm6PWwF6+ztUwretfZOooGDQ0PyXFzrTPWScg=;
        b=QWcSEVj3W8t1Xq5Cqfg2UPe9LzKHYOpba3W/FoDWvOa3LGMlIwGPUutZZJ18P+ESgt
         xCZXDsBcXGdLH1vj7Dhbn1aDdbMqw0yE45NT76fPzj2YUft/NEgJICnxRbDGoNr69DUm
         HWQlvtE8SeyImcPClfxccX7yKi5/ShzJYaVa7EWtPL/kyDvHXGf2iuJPTVwY5/nZFgl7
         lCAeEQAT/UtN2hFSt15gO9PhhiOHz60emoKnJGC+n6hoOl1g9hvIyurvBmSE5N4V4k/G
         UV6J6XzbibGD6bHnRv4Vf554cZXkJ566R013+qiHJ31KPcmexJOQLBG0KxCIGzh6HV4c
         poNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRvLo3BiSfpeH+08rBCKK6uqi8A5QLmRiLFOcFKwgIDKBuAZVh6KZKb9S7NlKXZ6RIWkZTeBXdHWt3HOasmWVryp93DIqqwJBaNA==
X-Gm-Message-State: AOJu0YzzdMniKU0dnFpZfmZSvYxwOtvjGLmcGwrlFxVqnHHO/ysxJRVs
	8/7AH180UOOT3xM6ndSiwlvwKmSEgsWdQZVJ7+Hebz8+Hd9CwCCaXcu11DrNVQCNmjgbQgm8pQw
	BcdRxS6XdA5Xco/bQ9FQLpb4Q95ZS+dKI5/4fLQ==
X-Google-Smtp-Source: AGHT+IFT6pgQIgXCcXr5rSzAh+MQxyaTahQt5/PdQ4obFkNsrqbdk3YkEI5qrwZxs1AJ0akRdan8JTXioBuyH18Zj3U=
X-Received: by 2002:a25:b947:0:b0:df4:e704:ea10 with SMTP id
 3f1490d57ef6-dfa5a8026e4mr1861377276.63.1717074391881; Thu, 30 May 2024
 06:06:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
 <o6wwzb4qblelfpfsrmqhoovjnyvymf42p2ilv4bzn4le3nklbv@kj3qklez7izy> <40903165-c965-4c6c-a3bf-104b1088730b@freebox.fr>
In-Reply-To: <40903165-c965-4c6c-a3bf-104b1088730b@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 30 May 2024 16:06:19 +0300
Message-ID: <CAA8EJppg9ftnQVrZhEO9Ro2Ji6whCgQLaJrr0yCzV-2hF2HEtQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, MSM <linux-arm-msm@vger.kernel.org>, 
	DT <devicetree@vger.kernel.org>, Bryan O Donoghue <bryan.odonoghue@linaro.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
Content-Type: text/plain; charset="UTF-8"

On Thu, 30 May 2024 at 15:34, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 28/05/2024 02:45, Dmitry Baryshkov wrote:
>
> > While I don't see anything wrong with this patch, maybe it's better to
> > include it into the patchset that adds all HDMI nodes to the msm8998.dtsi.
>
> Here is my current diff:
> Do I just need to split it up, and it's good to go?
> (Doubtful++)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> index 83fe4b39b56f4..78607ee3e2e84 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> @@ -14,6 +14,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,hdmi-phy-8996
> +      - qcom,hdmi-phy-8998
>
>    reg:
>      maxItems: 6
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index e5f051f5a92de..182d80c2ab942 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -1434,6 +1434,34 @@ blsp2_spi6_default: blsp2-spi6-default-state {
>                                 drive-strength = <6>;
>                                 bias-disable;
>                         };
> +
> +                       hdmi_cec_default: hdmi-cec-default-state {
> +                               pins = "gpio31";
> +                               function = "hdmi_cec";
> +                               drive-strength = <2>;
> +                               bias-pull-up;
> +                       };
> +
> +                       hdmi_ddc_default: hdmi-ddc-default-state {
> +                               pins = "gpio32", "gpio33";
> +                               function = "hdmi_ddc";
> +                               drive-strength = <2>;
> +                               bias-pull-up;
> +                       };
> +
> +                       hdmi_hpd_default: hdmi-hpd-default-state {
> +                               pins = "gpio34";
> +                               function = "hdmi_hot";
> +                               drive-strength = <16>;
> +                               bias-pull-down;
> +                       };
> +
> +                       hdmi_hpd_sleep: hdmi-hpd-sleep-state {
> +                               pins = "gpio34";
> +                               function = "hdmi_hot";
> +                               drive-strength = <2>;
> +                               bias-pull-down;
> +                       };
>                 };
>
>                 remoteproc_mss: remoteproc@4080000 {
> @@ -2757,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
>                                  <&mdss_dsi0_phy 0>,
>                                  <&mdss_dsi1_phy 1>,
>                                  <&mdss_dsi1_phy 0>,
> -                                <0>,
> +                                <&hdmi_phy 0>,
>                                  <0>,
>                                  <0>,
>                                  <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
> @@ -2862,6 +2890,14 @@ dpu_intf2_out: endpoint {
>                                                         remote-endpoint = <&mdss_dsi1_in>;
>                                                 };
>                                         };
> +
> +                                       port@2 {
> +                                               reg = <2>;
> +
> +                                               dpu_intf3_out: endpoint {
> +                                                       remote-endpoint = <&hdmi_in>;
> +                                               };
> +                                       };
>                                 };
>                         };
>
> @@ -3017,6 +3053,103 @@ mdss_dsi1_phy: phy@c996400 {
>
>                                 status = "disabled";
>                         };
> +
> +                       hdmi: hdmi-tx@c9a0000 {
> +                               compatible = "qcom,hdmi-tx-8998";
> +                               reg =   <0x0c9a0000 0x50c>,
> +                                       <0x00780000 0x6220>,
> +                                       <0x0c9e0000 0x2c>;
> +                               reg-names = "core_physical",
> +                                           "qfprom_physical",
> +                                           "hdcp_physical";
> +
> +                               interrupt-parent = <&mdss>;
> +                               interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;

Just <8>. MDSS doesn't have IRQ types.

> +
> +                               clocks = <&mmcc MDSS_MDP_CLK>,
> +                                        <&mmcc MNOC_AHB_CLK>,
> +                                        <&mmcc MDSS_AHB_CLK>,
> +                                        <&mmcc MDSS_AXI_CLK>,
> +                                        <&mmcc MISC_AHB_CLK>,
> +                                        <&mmcc MDSS_HDMI_CLK>,
> +                                        <&mmcc MDSS_HDMI_DP_AHB_CLK>,
> +                                        <&mmcc MDSS_EXTPCLK_CLK>;
> +                               clock-names =
> +                                       "mdp_core",
> +                                       "mnoc",
> +                                       "iface",
> +                                       "bus",
> +                                       "iface_mmss",
> +                                       "core",
> +                                       "alt_iface",
> +                                       "extp";

This device was neither validated nor described properly in the DT
schema. There are several other issues here.

> +
> +                               phys = <&hdmi_phy>;
> +                               phy-names = "hdmi_phy";
> +
> +                               pinctrl-names = "default", "sleep";
> +                               pinctrl-0 = <&hdmi_hpd_default
> +                                            &hdmi_ddc_default
> +                                            &hdmi_cec_default>;
> +                               pinctrl-1 = <&hdmi_hpd_sleep
> +                                            &hdmi_ddc_default
> +                                            &hdmi_cec_default>;
> +
> +                               power-domains = <&rpmpd MSM8998_VDDCX>;

Is it? I don't see this in msm-4.4

> +
> +                               #sound-dai-cells = <1>;
> +
> +                               status = "disabled";
> +
> +                               ports {
> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;
> +
> +                                       port@0 {
> +                                               reg = <0>;
> +                                               hdmi_in: endpoint {
> +                                                       remote-endpoint = <&dpu_intf3_out>;
> +                                               };
> +                                       };
> +
> +                                       port@1 {
> +                                               reg = <1>;
> +                                               hdmi_out: endpoint {
> +                                               };
> +                                       };
> +                               };
> +                       };
> +
> +                       hdmi_phy: hdmi-phy@c9a0600 {
> +                               compatible = "qcom,hdmi-phy-8998";
> +                               reg = <0x0c9a0600 0x18b>,
> +                                     <0x0c9a0a00 0x38>,
> +                                     <0x0c9a0c00 0x38>,
> +                                     <0x0c9a0e00 0x38>,
> +                                     <0x0c9a1000 0x38>,
> +                                     <0x0c9a1200 0x0e8>;
> +                               reg-names = "hdmi_pll",
> +                                           "hdmi_tx_l0",
> +                                           "hdmi_tx_l1",
> +                                           "hdmi_tx_l2",
> +                                           "hdmi_tx_l3",
> +                                           "hdmi_phy";
> +
> +                               #clock-cells = <0>;
> +                               #phy-cells = <0>;
> +
> +                               clocks =
> +                                       <&mmcc MDSS_AHB_CLK>,
> +                                       <&gcc GCC_HDMI_CLKREF_CLK>,
> +                                       <&xo>;

This is most likely RPM_SMD_XO_CLK_SRC or maybe RPM_SMD_LN_BB_CLK1

> +                               clock-names =
> +                                       "iface",
> +                                       "ref",
> +                                       "xo";
> +                               power-domains = <&rpmpd MSM8998_VDDMX>;

Is it?

> +
> +                               status = "disabled";
> +                       };
>                 };
>
>                 venus: video-codec@cc00000 {
>


-- 
With best wishes
Dmitry

