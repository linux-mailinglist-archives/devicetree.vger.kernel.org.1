Return-Path: <devicetree+bounces-201865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FB3B1B0C5
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4707C189DEF4
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88B72261581;
	Tue,  5 Aug 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NYqNsA6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A542260566
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754385353; cv=none; b=iNjJSJop3wc8DXitcWBtWUBiLwOOUEmuZSgZ5CbquEHy9QDUCy60Bcw0lJdm3736A2qETVvjEDyFaPm9g63rXx6JWT4XHBVgMqoxaFhXrH0pIjUYIIq/L7tZTkbsyQRtZ8Nsj4Lxw6GX9kud9c+ToYitn0Mz8Nq4p5Cq2w/T03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754385353; c=relaxed/simple;
	bh=SVJLLY9b+A2Ow6Hfl6TdqTYLbgy0WRgvTvRSaRu+4i4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bcFea60snWUjhZczl4VqbWko9CsYlHwQlfrBOtQf7INMakWgA/8gxnUG0JhwxDPSBj7zIYdCpUtHmoAZhiKWIWj1NGMNM84Ls9Imz+jXEd6Q8uTaJgN9myhb12egDtEQ1l6QBFhHOqnzfsxWtWttvqIZH+0YfRGECZPtXwCRfwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NYqNsA6j; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61564c06e0dso7999428a12.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754385350; x=1754990150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mI3NXVqyKiVG50xbkud2NPNqvmCUVZbmYL0tUjmcuaE=;
        b=NYqNsA6jwZwjDZnE0plMfvGCcahb7ixEQlFYX6Wb2cj5rRMCEmDN+f1bxkq9vNo4Ob
         r3nBWulQEZoOo2hD4HWDggA/Ar0vL9dae9pF8kRyCtC3GGAkAq9VT31yhWDRrxmWj0c8
         SKSuComGv7PbFBNN1+Xb46J7WzWKliowxLqFTMsteNLfSTksSuVHx/pQp3ItEYJOT8c1
         ruq++7oqhuJy9WkGjWt8UzSEom9Ql8CuylRxQ9aqgACPECJNnopNRTH2lSbEgSxrNllb
         BTONAtZgYLnrx5rPj/alLja3RgXuwWTuKa5KYCrY9J1EGDs2SUydy7r3x8v+Kycc+R0k
         KXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754385350; x=1754990150;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mI3NXVqyKiVG50xbkud2NPNqvmCUVZbmYL0tUjmcuaE=;
        b=wAKaGVBknrEcXcslixiO6UdC6VQXdDRTRFU2qihMAqE+6/uz0Ay41KTYK9DYja5TlK
         +giFgwqw3FLp4JFvNz9XXJIBQzOr4K3F6rOqcHWOzxKQ4k0JWsDENIzCG6sp6yJdgFRO
         zk2Is88ADynq/H1CF43lE3Fmfb/03OpdidYji2fNgJ8Fm5XIaM23UDIV+TW+dEidsbOk
         IBd4FpxeY3/SEuV2YpB2uMLdAkwtrJYCQp+Ge3oQ+dZ6JpKgqyWqQcrL7uwRPaX8YpOc
         6rcQ0HAfsNjLmSE5O1a9E1SC/QB9NEqFKlGbo3KuERYhfhSOKi4qJU3nYIzRbKpczmn/
         ajDA==
X-Forwarded-Encrypted: i=1; AJvYcCUHskU6dxz0O5VfWGrqdAJcFjZUJML2Sa3H09b/SeNO86wm9lkDPoWEHa9h9AcYvhR9vAp5/Hm8KofJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yys1qAwpsl3BAg6MwWoFasyFueuBAE7pkyWATCbtr6VQRPlZdra
	OK90LFnoS1Ys9r3VLNao55tFqkczJ1eayrY0BM45HoFWpOh49/Plp8j9QIRXe1audMVcNA609jz
	VZ0VRKGY=
X-Gm-Gg: ASbGnctqZN54YSUwf1Mh2zh9pvh4/CIwIkuaam9MLLQ/oa18qEsAb4T/BfK1E2MuhMR
	V4UMow9koGpZ1ZANydbQF7RJbFb/GxXx8gG39YNcmD35Qj7MJ52NPXnD+Jc67VvyeGC8Z2OCs56
	bx0xDaS+vBsqojyCii34c0hnVw0ghPCUojjFxEj3ptERKj0J/r+AKtblsHNLR4Tnj4OeeTLm0Ns
	Y5U6OdKllE7vIMK6iYa3tHnrXxntpeIRPMCiIHxToOj3ourLZk+LE5Bktiytrv7nNdWQmewrVZv
	VmPKFddyTraJLzfN4XP/1fIQ4+eYKbCGhmUoA9BtqpR3SIG3B93qats+Pq9tANgSDY493OPpSTz
	9dc1sntz5BZZrWtYE1U1Yd+j7KyeqnBnDPpWT7F7ViMgtlfCruAJ1S0UK8hEBb/ADTduym/csXg
	==
X-Google-Smtp-Source: AGHT+IFSQsh79TNXqQaV19dvtSQv+eoeTCrnDui9MT29o5c/h19Vmob28lRx3aBCVAdqKf7927HIkg==
X-Received: by 2002:a17:907:c13:b0:af9:3c68:f743 with SMTP id a640c23a62f3a-af9401ee770mr1301929566b.34.1754385349788;
        Tue, 05 Aug 2025 02:15:49 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a2436c2sm857466266b.141.2025.08.05.02.15.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 02:15:49 -0700 (PDT)
Message-ID: <9d770617-966b-4b84-a626-59f0ffe83605@linaro.org>
Date: Tue, 5 Aug 2025 10:15:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 6/7] arm64: dts: qcom: qcm2290: Add Venus video node
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
 konradybcio@kernel.org, krzk+dt@kernel.org
Cc: mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-7-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250805064430.782201-7-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 07:44, Jorge Ramirez-Ortiz wrote:
> Add DT entries for the qcm2290 Venus encoder/decoder.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 55 +++++++++++++++++++++++++++
>   1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f49ac1c1f8a3..7cfacd189a10 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -1628,6 +1628,61 @@ adreno_smmu: iommu@59a0000 {
>   			#iommu-cells = <2>;
>   		};
>   
> +		venus: video-codec@5a00000 {
> +			compatible = "qcom,qcm2290-venus";
> +			reg = <0 0x5a00000 0 0xf0000>;
> +			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			power-domains = <&gcc GCC_VENUS_GDSC>,
> +					<&gcc GCC_VCODEC0_GDSC>,
> +					<&rpmpd QCM2290_VDDCX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "cx";
> +			operating-points-v2 = <&venus_opp_table>;
> +
> +			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
> +				 <&gcc GCC_VIDEO_AHB_CLK>,
> +				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
> +				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
> +				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
> +				 <&gcc GCC_VCODEC0_AXI_CLK>;
> +			clock-names = "core",
> +				      "iface",
> +				      "bus",
> +				      "throttle",
> +				      "vcodec0_core",
> +				      "vcodec0_bus";
> +
> +			memory-region = <&pil_video_mem>;
> +			iommus = <&apps_smmu 0x860 0x0>,
> +				 <&apps_smmu 0x880 0x0>,
> +				 <&apps_smmu 0x861 0x04>,
> +				 <&apps_smmu 0x863 0x0>,
> +				 <&apps_smmu 0x804 0xe0>;
> +
> +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
> +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> +					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
> +					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
> +			interconnect-names = "video-mem",
> +					     "cpu-cfg";
> +
> +			venus_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-133333333 {
> +					opp-hz = /bits/ 64 <133333333>;
> +					required-opps = <&rpmpd_opp_low_svs>;
> +				};
> +
> +				opp-240000000 {
> +					opp-hz = /bits/ 64 <240000000>;
> +					required-opps = <&rpmpd_opp_svs>;
> +				};
> +			};
> +		};
> +
>   		mdss: display-subsystem@5e00000 {
>   			compatible = "qcom,qcm2290-mdss";
>   			reg = <0x0 0x05e00000 0x0 0x1000>;
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

