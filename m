Return-Path: <devicetree+bounces-1707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D960A7A7863
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:00:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1123F1C20AAD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A213E156DC;
	Wed, 20 Sep 2023 10:00:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAC11709
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:00:07 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94656AD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:00:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9ada2e6e75fso881789266b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695204004; x=1695808804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fBd3XO3VXcZ5Eq/j57aWQEchJJdUk3Puq2N4/Qm3ZrE=;
        b=fIFFSWd4ZzHRni5pAcyyNjQcaD1AlBQwSWO3blkfpxagEQUBg/rP3i6Q9oV0LwGfeN
         64FfCRlIebfZb5MYiqvtONHekRd0i1q7+1h2Mqz1OkGj2LG/DihZkvje50J1jWhpOVkP
         ofj1ciHP+aCBHNk6q6r1lSH1pBN8q7d3RRi1hji6UylODXD5n33AWIbMO5zfvN5fIpZS
         XryUThF/QkCYGXMoyWDjPdyuhCUGGB4kYJZhTY86wwiuy+TLhCqEL2jhkMfyzxayy92t
         qmUPljhe4NLAN6UX/xquW5vpYNHHGMhwgPM9HG85HWad7FC29GLtfn0HeYplS78L4U99
         xCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695204004; x=1695808804;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fBd3XO3VXcZ5Eq/j57aWQEchJJdUk3Puq2N4/Qm3ZrE=;
        b=SNW4mHrF7e392cku77FC44YsSkca9x1r/ViI4WzdXJk0kBRKcJ4+FDg2I8QL8S2Wx9
         J7LPNlwrMpIaIZkD0GnaWYHZRo+wfTVxfCq1u5iqSYO2/+aK7wXod7hC4bPEYRDQ6T4K
         1NwzZAAuyuoF0DyIKMykRnZH2mBVTEfyxPr1BkpxQAw6Oxics8tYdKW3lYFdss2jdadS
         MSaPMICB1Atba/zSxtDyLLb1r+tGGk6AM3qw6ogoZ0BGRaS57gUK2cWj/izoqOj/iiBC
         3FHIa0M4Wci3Q/kbUMJmU5/wkIU/FsoSIxlICol3Q4nvZTZ8X4Zwpy4Dlb9LAVa3Tonq
         8NZw==
X-Gm-Message-State: AOJu0YzIoOezJj7rsEth2YAspI1fgDQID+1ndpZM0VMo0DVdY2RyfVL3
	4NOvE9wcyrjYKN/PLotO+JyyeA==
X-Google-Smtp-Source: AGHT+IFzx44j6/2ljA8qYlX2Z/kLYtXcrrNf5TI8l2xvWsgQAei8ep7dJ2ovnEU2Nlx9asEfjVeJ3g==
X-Received: by 2002:a17:906:3091:b0:9a1:ddb9:6546 with SMTP id 17-20020a170906309100b009a1ddb96546mr1621996ejv.61.1695204003913;
        Wed, 20 Sep 2023 03:00:03 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id n25-20020a170906b31900b0099bcdfff7cbsm9184201ejz.160.2023.09.20.03.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 03:00:03 -0700 (PDT)
Message-ID: <21b8b019-42b8-6e47-e640-8bca28d2d784@linaro.org>
Date: Wed, 20 Sep 2023 12:00:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: sm4450: Add RPMH and Global
 clock
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, tglx@linutronix.de, maz@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 quic_ajipan@quicinc.com, kernel@quicinc.com
References: <20230920065459.12738-1-quic_tengfan@quicinc.com>
 <20230920065459.12738-4-quic_tengfan@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920065459.12738-4-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/20/23 08:54, Tengfei Fan wrote:
> Add device node for RPMH and Global clock controller on Qualcomm
> SM4450 platform.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm4450.dtsi | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4450.dtsi b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> index 3d9d3b5e9510..c27f17a41699 100644
> --- a/arch/arm64/boot/dts/qcom/sm4450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> @@ -3,6 +3,8 @@
>    * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
>    */
>   
> +#include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sm4450-gcc.h>
These should be sorted alphabetically.

[...]

> +			rpmhcc: clock-controller {
> +				compatible = "qcom,sm4450-rpmh-clk";
> +				#clock-cells = <1>;
> +				clock-names = "xo";
> +				clocks = <&xo_board>;
property
property-names

Konrad

