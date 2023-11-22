Return-Path: <devicetree+bounces-18098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D277F5157
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E765F1C209EF
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DAB75D909;
	Wed, 22 Nov 2023 20:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DsY91Iqb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D36341B3
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:13:36 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50aaaf6e58fso145501e87.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700684015; x=1701288815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QxaMqeODr1UhKHrPKp0+oaZPp53OiEhtu1sJuNSc+9o=;
        b=DsY91IqbuCILFJuyZrfwaWpvN/IiB9efZcvPU0TnRIPRak9x+mOBAseKx4pW9fZtZ2
         eg22yOHd6yGPlumGa9U2Lnq2ciWQqp0ODRrNJVVL//SUP1mzrBvMtwPUqxNwPezmngNT
         14c8R62QoudWXg8NtDVV1Et08HwUOPIC+i6gVVfKwaz2TjPpKLCQsS2JPDd/dxTO81xF
         46KNI7cmlv3+zzZSAe1jzVXXZAKQLEv4WkwM7vNq+44xtD6eg2L1NeISH2W8w5sr3usu
         b97HB4OBy3n+hw9XwTe2ARVGNlDTTnZcRL3oEeyPv1LqBstZqUVffOMnY6TLO9/BXz8Q
         3BiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700684015; x=1701288815;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QxaMqeODr1UhKHrPKp0+oaZPp53OiEhtu1sJuNSc+9o=;
        b=GdGN4CeQBwCpNRrn4kjWeFdKE/xJkNjt8NJiE+JOfJJZy52CF2ESVWdYBvIboHe+Gx
         XCEFP0RKPOmo0+OQK7a949rvFErSWeHnxbu/qEI/cSusXieTs6URLD6nE17rh9kl4Giy
         Poqyx8TUsFYO8XTiIyE7y/u5t+wxVY0zzLcW5jEYY0p7Xt8HMo2nXcMqE21FvBfTbWl0
         VnkaeKyWpawmh1JiDIieMfVl9XLL2I877KoJfnjF+o5fkOSRBfJpB6eOoONEoJzyybcF
         rBYPbCB4qLJNN65lr85l2wwXnEh7pPSD5FwZI2/YKw2tTM1XastHANyp+srLX3k9wkgQ
         bvyA==
X-Gm-Message-State: AOJu0YyktHmUa617HSJO0KSShoEiUzS72qgASZxcxs91PnxfCb52C7zq
	KaRO6CnxoHTW8Ot+bEqdqiUSQQnZY56a580mpjteXdTU
X-Google-Smtp-Source: AGHT+IEHZowoNQL9s85M08y91XIFjWkmGnKTVbKCkQbqr9w1y6hTUUfsnrS1vUjvGlgkfj2MbCWmRg==
X-Received: by 2002:a05:6512:ac3:b0:507:9640:f256 with SMTP id n3-20020a0565120ac300b005079640f256mr1193823lfu.36.1700684014991;
        Wed, 22 Nov 2023 12:13:34 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w8-20020a197b08000000b005048f11892dsm1911889lfc.171.2023.11.22.12.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:13:34 -0800 (PST)
Message-ID: <35ca2ef2-7613-4ddb-b863-2e429337fee3@linaro.org>
Date: Wed, 22 Nov 2023 21:13:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: sc7280: add slimbus DT node
Content-Language: en-US
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-sm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: vnivarth@quicinc.com, msavaliy@quicinc.com, vtanuku@quicinc.com,
 cchiluve@quicinc.com, dkammath@quicinc.com
References: <20231116183909.32179-1-quic_vdadhani@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231116183909.32179-1-quic_vdadhani@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/16/23 19:39, Viken Dadhaniya wrote:
> Add slimbus DT node to enable slimbus usecase on Bluetooth
> for audio streaming and playback.
How can I test this?

> 
> Based on requirement, client team can enable slimbus node
> on target specific dt file.
You can even enable it if you're not part of the client team!
This paragraph is a bit obvious for what it describes

> 
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 25 +++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 04bf85b0399a..fba352504f3f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2528,6 +2528,31 @@
>   			status = "disabled";
>   		};
>   
> +		slimbam: dma-controller@3a84000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0x0 0x03a84000 0x0 0x20000>;
0x0 -> 0 to be consistent with other nodes

> +			#dma-cells = <1>;
> +			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
interrupts should come after reg

> +			qcom,controlled-remotely;
> +			num-channels  = <31>;
> +			qcom,ee = <1>;
> +			qcom,num-ees = <2>;
> +			iommus = <&apps_smmu 0x1826 0x0>;
> +			status = "disabled";
> +		};
> +
> +		slim_msm: slim-ngd@3ac0000 {
slim_msm -> slim

> +			compatible = "qcom,slim-ngd-v1.5.0";
> +			reg = <0x0 0x03ac0000 0x0 0x2c000>;
ditto

> +			#address-cells = <1>;
> +			#size-cells = <0>;
these two properties should go before the status property

> +			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
> +			dmas = <&slimbam 3>, <&slimbam 4>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x1826 0x0>;
> +			status = "disabled";
> +		};
Konrad

