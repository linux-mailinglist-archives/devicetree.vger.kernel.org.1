Return-Path: <devicetree+bounces-5451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5017B6610
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4A6B5281605
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE721BDF5;
	Tue,  3 Oct 2023 10:06:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62F4101C6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:06:12 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95E58B4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:06:10 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a229ac185aso8968497b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 03:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696327570; x=1696932370; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kYY6vWSNKTYmeOsWDutWjp0Dy6WB1jcBj72iJmFRNeI=;
        b=hZv12M4ax010irFg/GAeEbYpI9KBMLl/iReEqiqjnnuVEYDJ5qYu3R5pPF7m1hY1pt
         PehaCD1R/44YP1gNdmgoE0VBS4NDm8KhWSLm5kUp/NgRV5q5EpObPvLsqqx5qsBFnjwe
         EgrfojmlndaxafuF5byfLRg1BC7GKGk5nwTw/zQchbxkx9OiZIwOytjEHlA0qNsAlyui
         /OA54p7pXDtW85Y7K7YB0y/wbQ3kWwPAx9tPrkNk58/iE2zw7HkDdkQMsrZQgqxb+ht1
         nYitg7jHrm2wld0ZB8GQ0XagVjKg9ORJfLO7qCgMyd2TBU344PCigckVqHP6w/mMvxkH
         tepg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696327570; x=1696932370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYY6vWSNKTYmeOsWDutWjp0Dy6WB1jcBj72iJmFRNeI=;
        b=bFg5TstbT49Rb+57PumOl9ehCFW7sNMHhFw8U2qMwSGbLOUKVonmTBBSAwJ67r9P+t
         6tzlPiJKdmK7VWFsq3P/KhEtYLrqVV8o45GO9X/vbX49bXSzZWRWsA1uQE+jGAjScL7Z
         EJJ7TVGO9/7uKVaaPUleAZcuP/Rj8/K0BoAT22uoqQkgwAeX1rTfpt+VrgqTVQYEBxsi
         nlJXOoyyculJxXCzzcZ9nJFTPZCVW+s9ZswIU6dCPJxLgh/X9EPspfpjycgQ/Y2klF7e
         O75oUoS2uBEf2jHgx0qaPuzfFj4MiuT0Uq5wThsQk0V+V/674+aIpuSyiqNGGsZ6Xo55
         CjBg==
X-Gm-Message-State: AOJu0YxbUWMUIH3MT5UrUOSgnbr45Myd9qI4f/w7+xynIzpD0sDCmrX2
	OPpD6pp7lTWhqCNt6AmtWfi+dgG1j0G1gKmmqmqfOg==
X-Google-Smtp-Source: AGHT+IEDEkigzAbnvMlvaSmR+AEMY+sHV+2ys05HA/+WcAgzhebgJvzC/TVDaIgh0Bvv8g81P7mvrJdNShphvBDncwU=
X-Received: by 2002:a25:a545:0:b0:d62:6838:74b9 with SMTP id
 h63-20020a25a545000000b00d62683874b9mr12769755ybi.55.1696327569696; Tue, 03
 Oct 2023 03:06:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1696327472-21776-1-git-send-email-quic_rohiagar@quicinc.com> <1696327472-21776-2-git-send-email-quic_rohiagar@quicinc.com>
In-Reply-To: <1696327472-21776-2-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 13:05:58 +0300
Message-ID: <CAA8EJpp0+8FBtrmC7MGRkAdiavGSBUH7oAcQ0rN1OzLCWnsk8Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: Add interconnect nodes for SDX75
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 3 Oct 2023 at 13:04, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
> Add interconnect nodes to support interconnects on SDX75.
> Also parallely add the interconnect property for UART required
> so that the bootup to shell does not break with interconnects
> in place.
>
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 52 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> index e180aa4..ac0b785 100644
> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> @@ -8,6 +8,8 @@
>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,sdx75-gcc.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,sdx75.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
> @@ -197,6 +199,19 @@
>                 };
>         };
>
> +       clk_virt: interconnect-0 {
> +               compatible = "qcom,sdx75-clk-virt";
> +               #interconnect-cells = <2>;
> +               qcom,bcm-voters = <&apps_bcm_voter>;
> +               clocks = <&rpmhcc RPMH_QPIC_CLK>;
> +       };
> +
> +       mc_virt: interconnect-1 {
> +               compatible = "qcom,sdx75-mc-virt";
> +               #interconnect-cells = <2>;
> +               qcom,bcm-voters = <&apps_bcm_voter>;
> +       };

Interconnect comes after firmware, 'i' > 'f'.

> +
>         firmware {
>                 scm: scm {
>                         compatible = "qcom,scm-sdx75", "qcom,scm";
> @@ -434,6 +449,9 @@
>                         clock-names = "m-ahb",
>                                       "s-ahb";
>                         iommus = <&apps_smmu 0xe3 0x0>;
> +                       interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
> +                                        &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>;
> +                       interconnect-names = "qup-core";
>                         #address-cells = <2>;
>                         #size-cells = <2>;
>                         ranges;
> @@ -444,6 +462,12 @@
>                                 reg = <0x0 0x00984000 0x0 0x4000>;
>                                 clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
>                                 clock-names = "se";
> +                               interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
> +                                                &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
> +                                               <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +                                                &system_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>;
> +                               interconnect-names = "qup-core",
> +                                                    "qup-config";
>                                 interrupts = <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>;
>                                 pinctrl-0 = <&qupv3_se1_2uart_active>;
>                                 pinctrl-1 = <&qupv3_se1_2uart_sleep>;
> @@ -453,6 +477,20 @@
>                         };
>                 };
>
> +               system_noc: interconnect@1640000 {
> +                       compatible = "qcom,sdx75-system-noc";
> +                       reg = <0x0 0x01640000 0x0 0x4b400>;
> +                       #interconnect-cells = <2>;
> +                       qcom,bcm-voters = <&apps_bcm_voter>;
> +               };
> +
> +               pcie_anoc: interconnect@16c0000 {
> +                       compatible = "qcom,sdx75-pcie-anoc";
> +                       reg = <0x0 0x016c0000 0x0 0x14200>;
> +                       #interconnect-cells = <2>;
> +                       qcom,bcm-voters = <&apps_bcm_voter>;
> +               };
> +
>                 tcsr_mutex: hwlock@1f40000 {
>                         compatible = "qcom,tcsr-mutex";
>                         reg = <0x0 0x01f40000 0x0 0x40000>;
> @@ -733,6 +771,20 @@
>                         #freq-domain-cells = <1>;
>                         #clock-cells = <1>;
>                 };
> +
> +               dc_noc: interconnect@190e0000 {
> +                       compatible = "qcom,sdx75-dc-noc";
> +                       reg = <0x0 0x190e0000 0x0 0x8200>;
> +                       #interconnect-cells = <2>;
> +                       qcom,bcm-voters = <&apps_bcm_voter>;
> +               };
> +
> +               gem_noc: interconnect@19100000 {
> +                       compatible = "qcom,sdx75-gem-noc";
> +                       reg = <0x0 0x19100000 0x0 0x34080>;
> +                       #interconnect-cells = <2>;
> +                       qcom,bcm-voters = <&apps_bcm_voter>;
> +               };
>         };
>
>         timer {
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

