Return-Path: <devicetree+bounces-4596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C3E7B33B9
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:35:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D308C283CAC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3851A712;
	Fri, 29 Sep 2023 13:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6474811718
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:35:19 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B8651A8
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:35:17 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9a9cd066db5so1968315566b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695994515; x=1696599315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YlAAhroIKSpL8+fyShtvqU4a0850NAbVSPJtR3BZY+4=;
        b=WaY5wUNgvCKUIzxujyB0gQfeq17jhI3LlZKWLsy+fDvAe73SivI9fxvp4GLq0qzpk0
         4vH9TIaVczXttp7p5Z8xzHnJL3e3Hc0LZhvwtBOWnrNrT2qztL7/YooxSDME9fhAHTFs
         tA59MT75IlhbKs8+z283q2ddFZ154mSYrtfgvjbjEaWnN59nbm/Ne7d73CoYFcwiTDlQ
         g19ZsszQsne5pTN6b1UjFlL2fB2cag1bQEC/rVfEz8npNLCyYqVyCrf3E5CywAyU/nHk
         Knurg91QzrwLPv/vpu8i9f/fiY9VxblPKNiMdkfFVvLulfSakoorttimMKm3gMtAIakO
         qrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695994515; x=1696599315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YlAAhroIKSpL8+fyShtvqU4a0850NAbVSPJtR3BZY+4=;
        b=oxHI3QDNP9Z9kW/TKiQNMKfzaAfdfKldSkm0Vpj4cDtgbl9anX3hOhJ2TpqMVYmbCx
         Q0TpRxwi4YJCgthFzSPbE5M8Ky+oUJNsd+3niBgZLGOjHxhoBX6E/buCPh+cM11FLlEq
         XGL4nM6SqC+6VFQF7FacVeaOpn55jU0J4Peg5fBa88jKeIbJGmajmxpxylAvDv9FV+xZ
         1It2D8qSWYUHMKiYY1qJ/tJdUAwMs685LoiV3fXUeovdnUzfvgjU4k2D+6bBfSbw6pWM
         jg0YrC4j4O79fONWJCX7GOQWI/eUo5xmtmr/kuYWZDu1RvgI0y6WHHPwiV2S6hEUgVIg
         2yLw==
X-Gm-Message-State: AOJu0YxWBE08cKoOJ6hkc2k+JTFZ1VP5MXHbk8Kb9iOJ5Hce8vBtjrUi
	uopmPHzjc1HrBWg1zSV83meUag==
X-Google-Smtp-Source: AGHT+IFB0gWCRdIz3y4FpDLEeFeD/l2I4205KcVLY5FFCUf6mhKQfziV+cURqsALwr4kjpJ9713mCQ==
X-Received: by 2002:a17:906:2189:b0:9b2:7584:80dc with SMTP id 9-20020a170906218900b009b2758480dcmr3707193eju.20.1695994515614;
        Fri, 29 Sep 2023 06:35:15 -0700 (PDT)
Received: from [192.168.0.123] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id i22-20020a17090671d600b009a193a5acffsm12231752ejk.121.2023.09.29.06.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:35:15 -0700 (PDT)
Message-ID: <8dd470e5-ce33-3d33-98f1-e66935ca7b56@linaro.org>
Date: Fri, 29 Sep 2023 15:35:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7280: Add Camera Control
 Interface busses
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
 <20230929-sc7280-cci-v1-2-16c7d386f062@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230929-sc7280-cci-v1-2-16c7d386f062@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 10:01, Luca Weiss wrote:
> Add the CCI busses found on sc7280 and their pinctrl states.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 136 +++++++++++++++++++++++++++++++++++
>   1 file changed, 136 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 66f1eb83cca7..65550de2e4ff 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3793,6 +3793,86 @@ videocc: clock-controller@aaf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		cci0: cci@ac4a000 {
> +			compatible = "qcom,sc7280-cci", "qcom,msm8996-cci";
> +			reg = <0 0x0ac4a000 0 0x1000>;
> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK_SRC>;
> +			clock-names = "camnoc_axi",
> +				      "slow_ahb_src",
> +				      "cpas_ahb",
> +				      "cci",
> +				      "cci_src";
I guess this is more of a question to e.g. Bryan, but are all of these 
clocks actually necessary?

Konrad

