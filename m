Return-Path: <devicetree+bounces-18101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B62577F5178
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC1F91C2090B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8C95D91D;
	Wed, 22 Nov 2023 20:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f2A9hrcK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC68BD42
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:22:14 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50a6ff9881fso170304e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700684533; x=1701289333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WBmHXv1LFLt1CUldNSms0b65giZwYaTIfaDf3i1BEjc=;
        b=f2A9hrcKziz4DmQj8LJNwJ3Fu0UjjLWJ0lgtiHC2bVfisJR6yT8f1iFAeiUuOTt2KK
         06bQfzJHXe6HI/UhLM3W2VeAF65eFKDxfXjqlUxfpgpXxMSs0/iLOw0m+/1O2zJl9i8C
         MVnw/EAk2j67Ogo20Ook/qME373Wevc41ZMxvzNGLJgkzmaIl17sDcx3yvnb7aWDIvPY
         ksemWt/7C5kVYkRjcP3+aiVFbNMZUXy+mVumjRsurxnDrs1svufQ1JUkP5eTcTA0ggKz
         03yx6pFzU6ZuIrLDzu2SqKO2Q29y+w6VQCvLxCpLVJso+Y73TghE/egUr1Aa4eKJOuUL
         np5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700684533; x=1701289333;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WBmHXv1LFLt1CUldNSms0b65giZwYaTIfaDf3i1BEjc=;
        b=b0j0xX5WGJLWwkAxiUjGdkxduKh2yR6T7+FivRkyTpxp0AfoNFs3UFw+ugiG0ENoKA
         Xnfj7oAmTYyLSsOEt5eBmAfIVqYL5lbe47QkAy/m+2CxyzarXutD+FA1BsI5ufx4QJdW
         baiIVBR90l+3mV0i7JNTtpkGvik9t12uwT0f+Va+lQijAYJ969jU/97fXSB0sq4Cm9cZ
         +PRn7cpJCjvDyThPDf5akn8LRIlLHAU4s7hQ/n0q4tzFYHUtmODbDGJj+lcwQdArk3Mm
         UNIelimN4nn2EH6V/L+O+OVIeBIG9UKU29GU3v8D108xOXVYS9rM/I80CZDVwKAnZ34/
         ubmQ==
X-Gm-Message-State: AOJu0YwqqYfFkuehFSMeRN2/pqSAzchw1QkugrcLhIn5fYHNS3NOc5gE
	fjy7MVcW9TpTnsOWBSTxjvsLnA==
X-Google-Smtp-Source: AGHT+IHGxTrXXz1SuL83vrF7iMrR32b3rAoIFAEJa+OZPMHpiDYsFrzbO0DTAdeo8G60yK8xL1j5+A==
X-Received: by 2002:a05:6512:4020:b0:507:a0d7:bd19 with SMTP id br32-20020a056512402000b00507a0d7bd19mr1298557lfb.13.1700684532935;
        Wed, 22 Nov 2023 12:22:12 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a056512369800b005091314185asm1952576lfs.285.2023.11.22.12.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:22:12 -0800 (PST)
Message-ID: <8cece5d7-0fcb-4366-be72-6494842b7c41@linaro.org>
Date: Wed, 22 Nov 2023 21:22:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: ipq5332: add support for the
 NSSCC
Content-Language: en-US
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231121-ipq5332-nsscc-v2-0-a7ff61beab72@quicinc.com>
 <20231121-ipq5332-nsscc-v2-8-a7ff61beab72@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231121-ipq5332-nsscc-v2-8-a7ff61beab72@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/21/23 15:30, Kathiravan Thirumoorthy wrote:
> Describe the NSS clock controller node and it's relevant external
> clocks.
> 
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> ---
> Changes in V2:
> 	- Update the node names with proper suffix
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 42e2e48b2bc3..5cbe72f03869 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -15,6 +15,18 @@ / {
>   	#size-cells = <2>;
>   
>   	clocks {
> +		cmn_pll_nss_200m_clk: cmn-pll-nss-200m-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <200000000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		cmn_pll_nss_300m_clk: cmn-pll-nss-300m-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <300000000>;
> +			#clock-cells = <0>;
> +		};
> +
>   		sleep_clk: sleep-clk {
>   			compatible = "fixed-clock";
>   			#clock-cells = <0>;
> @@ -473,6 +485,22 @@ frame@b128000 {
>   				status = "disabled";
>   			};
>   		};
> +
> +		nsscc: clock-controller@39b00000{
> +			compatible = "qcom,ipq5332-nsscc";
> +			reg = <0x39b00000 0x80000>;
> +			clocks = <&cmn_pll_nss_200m_clk>,
> +				 <&cmn_pll_nss_300m_clk>,
> +				 <&gcc GPLL0_OUT_AUX>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <&xo_board>;
> +			#clock-cells = <0x1>;
> +			#reset-cells = <0x1>;
0x1 -> 1, it's a number and not a register

Konrad

