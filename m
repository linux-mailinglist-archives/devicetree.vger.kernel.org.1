Return-Path: <devicetree+bounces-2739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E48B7AC4BC
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4196F280E18
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3ED321340;
	Sat, 23 Sep 2023 19:15:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E4033CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:15:39 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C10C7193
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:15:37 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-59bebd5bdadso48780167b3.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496537; x=1696101337; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V+4948fb5jd6vDg1SAZPDxyt4nxtgF6FkvMKpdW2w8s=;
        b=KdbjIevkTAtX45Cu/xTTpaH3+z+vLVFAgWGSIcWx5tre7v4awWVpbGn2xfQHVbZbcz
         3FYqLYJujgz0AnSEHuwe2XAYwJom6gEBbnM592/vMzhJEj3jpQIbPUiAuDcjAeMMIzK2
         3idKHB0vDVg4Fsna5E0ZOLt8zwiuEBRWBikcfWty8KWrLAAglIcSg42cbQXMe6eYNFki
         Ixeqss4yyMkuM48Pd7sQinupbU/OlhcycYYyL5lZXiGG51ZU6uw0yFBL8eda8fw0j/Gd
         m2Qf79QC9H4qp9ELuU2/FJcOOCG3yOYmnqOzpRJR/rVJCthostktm6o/QP1ne0zVnv1h
         Dhcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496537; x=1696101337;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+4948fb5jd6vDg1SAZPDxyt4nxtgF6FkvMKpdW2w8s=;
        b=mQZ/LZYwDBg9vBPlP6fJVt4p8uic9RGi0q/mByX3aa5dNtyWcqpXDCwOCYPCyzWTGD
         MjLWl7wbJxmPgrnrIz+B+wtNMCJpQDB7B+zv/JeOVI1N2gGnH35/0wU9sN/98GJblV7O
         2Lg6dsqMivgEXiUHU+nq2uYw8o47YIRgmmmydEX0FD+NNfc7cXGir95Njkpm/1AENPgS
         H3jp8iDJa8dkQ/Bn1gv6k1b3F6DUfLVoJgFTQY2NdKUWgX1kE4DJkGtDcFbvtrLsdxJd
         8nSy07907tgEn5TfCzQQstp1ALnAVSxrNvfvIYoAb51xWS+RVT+pFkJNii/qBWWbhyiB
         /plQ==
X-Gm-Message-State: AOJu0YzH+jvpcz6O2XPGt1pTVCbhyP8wEm7I9OpiG+Rej+C2dAY3fddO
	25WT4W8rgfUAm7JFds+HjlFDfaXyCyXqXG/Sc8R5/A==
X-Google-Smtp-Source: AGHT+IE8chIe7tAZKiZeDtjzNPGf2QR43o43Y/GHZc7OAzvmh6HD54FasTjUGa4qUcnG4i/wOgwZAQRcwq7ZPmBNp5U=
X-Received: by 2002:a81:5385:0:b0:58a:f135:a4d8 with SMTP id
 h127-20020a815385000000b0058af135a4d8mr2772596ywb.38.1695496536875; Sat, 23
 Sep 2023 12:15:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922084303.4164046-1-quic_gokulsri@quicinc.com> <20230922084303.4164046-4-quic_gokulsri@quicinc.com>
In-Reply-To: <20230922084303.4164046-4-quic_gokulsri@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:15:25 +0300
Message-ID: <CAA8EJpqpQkFLm13cf=4tOakCV2q1-FZv4vzBmfQURXNi5-do7A@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: qcom: ipq5018: enable the CPUFreq support
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_varada@quicinc.com, quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 11:44, Gokul Sriram Palanisamy
<quic_gokulsri@quicinc.com> wrote:
>
> Add the APCS, A53 PLL, cpu-opp-table nodes to set
> the CPU frequency at 800MHz (idle) or 1.008GHz.
>
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 40 +++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..a04b2019c779 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -5,6 +5,7 @@
>   * Copyright (c) 2023 The Linux Foundation. All rights reserved.
>   */
>
> +#include <dt-bindings/clock/qcom,apss-ipq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
>  #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
> @@ -36,6 +37,8 @@ CPU0: cpu@0 {
>                         reg = <0x0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
> +                       operating-points-v2 = <&cpu_opp_table>;
>                 };
>
>                 CPU1: cpu@1 {
> @@ -44,6 +47,8 @@ CPU1: cpu@1 {
>                         reg = <0x1>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
> +                       clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
> +                       operating-points-v2 = <&cpu_opp_table>;
>                 };
>
>                 L2_0: l2-cache {
> @@ -54,6 +59,23 @@ L2_0: l2-cache {
>                 };
>         };
>
> +       cpu_opp_table: opp-table-cpu {
> +               compatible = "operating-points-v2";
> +               opp-shared;
> +
> +               opp-800000000 {
> +                       opp-hz = /bits/ 64 <800000000>;
> +                       opp-microvolt = <1100000>;
> +                       clock-latency-ns = <200000>;
> +               };
> +
> +               opp-1008000000 {
> +                       opp-hz = /bits/ 64 <1008000000>;
> +                       opp-microvolt = <1100000>;
> +                       clock-latency-ns = <200000>;
> +               };
> +       };
> +
>         firmware {
>                 scm {
>                         compatible = "qcom,scm-ipq5018", "qcom,scm";
> @@ -181,6 +203,24 @@ v2m1: v2m@1000 {
>                         };
>                 };
>
> +               a53pll: clock@b116000 {
> +                       compatible = "qcom,ipq5018-a53pll";
> +                       reg = <0x0b116000 0x40>;
> +                       #clock-cells = <0>;
> +                       clocks = <&xo_board_clk>;
> +                       clock-names = "xo";
> +               };
> +
> +               apcs_glb: mailbox@b111000 {
> +                       compatible = "qcom,ipq5018-apcs-apps-global",
> +                                    "qcom,ipq6018-apcs-apps-global";
> +                       reg = <0x0b111000 0x1000>;
> +                       #clock-cells = <1>;
> +                       clocks = <&a53pll>, <&xo_board_clk>, <&gcc GPLL0>;
> +                       clock-names = "pll", "xo", "gpll0";
> +                       #mbox-cells = <1>;
> +               };

Hmm, no, I was too quick to R-B. 0xb111 < 0xb116, please change these two nodes.

> +
>                 timer@b120000 {
>                         compatible = "arm,armv7-timer-mem";
>                         reg = <0x0b120000 0x1000>;
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

