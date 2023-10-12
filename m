Return-Path: <devicetree+bounces-8226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 362C87C736A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:48:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB28C282902
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76972AB2E;
	Thu, 12 Oct 2023 16:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h2koK4sd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC20262B2
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:48:16 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83DE3C0
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:48:14 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9b9faf05f51so181013166b.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697129293; x=1697734093; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WDP33O28fSxUQaPQQ89xVqkMBV+XsVtrqg84fASb0yE=;
        b=h2koK4sdUHODRyeoN08ZewTNK3u0qlDIRLRhDFWeqCJzvGESA8BCBZNqKDsM43Vm3E
         xj/DQsknzEGRGLx2BKPxI773LqiZvdkxSlE3kxe3X1Hq5fBrJsB+o4RScyx5qNcd0mxR
         SRrZ0ZntkxynIRlBxhbM7hNd+SoJCZJwFpi9rCXWm+YtrAIxpM4TLkV9Lyhi6MY1LbUS
         tFjGHr3ab4y6NMgZbaJ7Im7wS90EHdznNr1MxP8uULP1pvXr5vBqsSMkV5+Y6KmI2Lkf
         yJGCyENQIXP5mpnhf+abP0XCqwMWq0vW5vK63puOLNdXSO926KvnLA2cer51R/8fuYA1
         2dyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697129293; x=1697734093;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WDP33O28fSxUQaPQQ89xVqkMBV+XsVtrqg84fASb0yE=;
        b=D0XADGkGtlbCubaIjJaHHYUj8ZjzRR/5A3ku+ytdovJ1lQuHZHKglR7BmuKMZGf4KR
         JvUbtKQf2tL/RY7IpSMVgM91hEHc0ypXeqFcuFG9Fre6WuzXLktTy62YYj06CL0ndyAU
         5QaqKiKRyPoKanA8qG3HkIk0rw0ahB8udYRXlL6TyOCzCmzL80a3RFlIb1MOc4/O6SZH
         cH+l+13lQ9cGMXsPcT9lVh3KRd0lJHrKoDhrpbYhCai+itzbHFnKNpciHjkW0swqtL8n
         x78Mut2FH0FozYy4PhKW9Oh/VScs+lSUaxjBKVz3BMvUQPZPv9helUC/fhy86+u6ieRg
         Poug==
X-Gm-Message-State: AOJu0YzL6nATnPl6+U80tskm4gic2JH9C2isU/2rC8DOiDXakPJ6Nh6t
	MfQ/KJArgzHB8rpiSCeG1W+R8w==
X-Google-Smtp-Source: AGHT+IFTo9Alst4wP8QB4VSwuxYruKVs4nKLRijjs2LNFCp8NqdKd73m2BB9EDg/WC35A4d8R63JHw==
X-Received: by 2002:a17:906:3087:b0:9ad:f7e5:67d9 with SMTP id 7-20020a170906308700b009adf7e567d9mr22487210ejv.4.1697129292729;
        Thu, 12 Oct 2023 09:48:12 -0700 (PDT)
Received: from [172.30.204.175] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f17-20020a1709062c5100b009934b1eb577sm11422461ejh.77.2023.10.12.09.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 09:48:12 -0700 (PDT)
Message-ID: <3a042a26-81b4-4ab3-ba03-a38ae876634b@linaro.org>
Date: Thu, 12 Oct 2023 18:48:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: Add interconnect nodes for SDX75
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1696406908-9688-1-git-send-email-quic_rohiagar@quicinc.com>
 <1696406908-9688-2-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1696406908-9688-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/4/23 10:08, Rohit Agarwal wrote:
> Add interconnect nodes to support interconnects on SDX75.
> Also parallely add the interconnect property for UART required
> so that the bootup to shell does not break with interconnects
> in place.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sdx75.dtsi | 52 +++++++++++++++++++++++++++++++++++++
>   1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> index e180aa4..b4723fa 100644
> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> @@ -8,6 +8,8 @@
>   
>   #include <dt-bindings/clock/qcom,rpmh.h>
>   #include <dt-bindings/clock/qcom,sdx75-gcc.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,sdx75.h>
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>   #include <dt-bindings/power/qcom,rpmhpd.h>
>   #include <dt-bindings/power/qcom-rpmpd.h>
> @@ -203,6 +205,19 @@
>   		};
>   	};
>   
> +	clk_virt: interconnect-0 {
> +		compatible = "qcom,sdx75-clk-virt";
> +		#interconnect-cells = <2>;
> +		qcom,bcm-voters = <&apps_bcm_voter>;
> +		clocks = <&rpmhcc RPMH_QPIC_CLK>;
> +	};
> +
> +	mc_virt: interconnect-1 {
> +		compatible = "qcom,sdx75-mc-virt";
> +		#interconnect-cells = <2>;
> +		qcom,bcm-voters = <&apps_bcm_voter>;
> +	};
> +
>   	memory@80000000 {
>   		device_type = "memory";
>   		reg = <0x0 0x80000000 0x0 0x0>;
> @@ -434,6 +449,9 @@
>   			clock-names = "m-ahb",
>   				      "s-ahb";
>   			iommus = <&apps_smmu 0xe3 0x0>;
> +			interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
> +					 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "qup-core";
No qup-config?

My brain compiler says this would cause a dt checker warning, at least 
on next-20231012.

Konrad

