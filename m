Return-Path: <devicetree+bounces-3795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC517B024A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4D9DE2823FC
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C191CFAE;
	Wed, 27 Sep 2023 10:59:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF20411703
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:59:51 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34352196
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:59:50 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso78780455e9.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695812388; x=1696417188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IWg5TiNW1Dws0r0H6VHI8s8vbhc7ehxun/IKO0phH0Y=;
        b=ztCHOP7O6ndfRucAyWcGFFtW/OD19VIZcg4K2Byr1Uc+GzrlkS8a1fp5Et5zs3vz0u
         /woZeMS+Pop2neTfqe0VM/j0UtPydkFJo7RftnZtI5io61NJuYBGWyK6kH+A/w4hqi/d
         /T6Y9cUJrWyAcmmiDdtDPCm8ASkTMI7duMDi2JBRwMF96iCF/Aw1nu17nbOybod6eL83
         T9+gIdxNaWcDypN9RZlDkSr1zHYVgGl2CnWQOUDdAsbpHXDKD5i0lBKHl7osekZmiFJh
         fsXskhtxLGr2JxrJjpPFcEO7pTrrp1J+5vuzT9Ce+jTpUGUaaeJnkhVd5PAkhK7Kxc/O
         XYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695812388; x=1696417188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IWg5TiNW1Dws0r0H6VHI8s8vbhc7ehxun/IKO0phH0Y=;
        b=bSoQ4VViWZrQTgTPy7mfdCjziLqQJrp+b+H3HwweEjghsyBwXDNdYBkdLCBfvz78aJ
         z6qkFZp6SMWVZBuJwER1DchxKGWKOAI3HUgyU8pYQBCwkhmbvkNVr3GOjZR4aYzEex7R
         j3IIgya1crCyDlQYHw6Qd5DRw/1K9Ni20/2Pn5BdCI5na0EcHL5+85fU5/4aBsC5wlqj
         xWgFfxy+ctAgZy8bpIOazJu85Vcc7EX7oLkd33g3ZPd0vmNshNWywfly81F+xqVzqrxt
         WMOj+fV6ILyEDeaYPTQUKs3h3eLGFmDPadd/UWi2xrOa/XIcVJTkPI7X8EV5CCxEIqoo
         hEYA==
X-Gm-Message-State: AOJu0YwtGRdUWnwewFG73QpuCVoLt9yR2q7aALjk8p49D2cAhajIDiig
	7Clkp6thaxMs9+Q1Gj5ATUqQOA==
X-Google-Smtp-Source: AGHT+IElOxv/ufPOyKieeHDHmlR/WUO2h7LLzGfcWwjtp2J6oQ+ov6B97LkCHZFhfopbeNWJkDMySw==
X-Received: by 2002:a7b:ca4d:0:b0:405:359e:ee43 with SMTP id m13-20020a7bca4d000000b00405359eee43mr1694856wml.1.1695812388513;
        Wed, 27 Sep 2023 03:59:48 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c1d9300b0040531f5c51asm17650473wms.5.2023.09.27.03.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 03:59:48 -0700 (PDT)
Message-ID: <7f4f3e06-af20-4276-bcb9-6ad7acbf9c35@linaro.org>
Date: Wed, 27 Sep 2023 11:59:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sm6375: Add UART1
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
 <20230927-topic-6375_stuff-v1-1-12243e36b45c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230927-topic-6375_stuff-v1-1-12243e36b45c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27/09/2023 10:21, Konrad Dybcio wrote:
> Add UART1 node, generally used for the Bluetooth module.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm6375.dtsi | 43 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> index e7ff55443da7..2fba0e7ea4e6 100644
> --- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> @@ -896,6 +896,36 @@ qup_spi0_default: qup-spi0-default-state {
>   				drive-strength = <6>;
>   				bias-disable;
>   			};
> +
> +			qup_uart1_default: qup-uart1-default-state {
> +				cts-pins {
> +					pins = "gpio61";
> +					function = "qup01";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};

Any particular reason you are doing bias-pull-down here instead of

bias-disable ?

> +
> +				rts-pins {
> +					pins = "gpio62";
> +					function = "qup01";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				tx-pins {
> +					pins = "gpio63";
> +					function = "qup01";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				rx-pins {
> +					pins = "gpio64";
> +					function = "qup01";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
>   		};
>   
>   		gcc: clock-controller@1400000 {
> @@ -1111,6 +1141,19 @@ spi1: spi@4a84000 {
>   				status = "disabled";
>   			};
>   
> +			uart1: serial@4a84000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0x0 0x04a84000 0x0 0x4000>;
> +				interrupts = <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
> +				clock-names = "se";
> +				power-domains = <&rpmpd SM6375_VDDCX>;
> +				operating-points-v2 = <&qup_opp_table>;
> +				pinctrl-0 = <&qup_uart1_default>;
> +				pinctrl-names = "default";
> +				status = "disabled";
> +			};
> +
>   			i2c2: i2c@4a88000 {
>   				compatible = "qcom,geni-i2c";
>   				reg = <0x0 0x04a88000 0x0 0x4000>;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

