Return-Path: <devicetree+bounces-58231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F478A0D30
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 241371F22205
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D149B145B07;
	Thu, 11 Apr 2024 10:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r7fNxcYy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3F3145323
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712829671; cv=none; b=KAIopPn042WtQD5hOny22IUcsfG78bhoUQx8OuaEImSbUUF958l2Ze7piMqTXEevpZflmaX195zOQH5Vd1hw5WL2yid8rJZKV8n6zd8zP+AyUtr/IlojgrhlHoKMJznSOrzYi8WJiLUsblHQPRWe50hD98gopEnoTo9jcYWcSwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712829671; c=relaxed/simple;
	bh=2n5o7oBOoT2MQyTfKA+7tg85ZQS3f4oaXkiHVyjiMD4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DyKHS6GpY7qfVK4/EoTzCsyR20wokIwXxtMDPQkqI6FzSROugNxlt9jR3q9XGC3JvPnCyKZ5zIjr+RAgLroCY5Ud9iEjlumsqEACIm96cdEPgOHc3iHd7BskAbMRr6TMoCt++dDRf/vPyqEl5V/WpMSyI+HTfewNwVLlHT/wTCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r7fNxcYy; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d700beb6beso82679261fa.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 03:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712829668; x=1713434468; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7gD/TMCXoo9LJJXjvwS5g/Q0s8INBRu2eDoXSDqH9P8=;
        b=r7fNxcYycY161b/YB4Rs73cW5FA1WevlkAj8DaxL7G0cLoMW4OezXv2CPrzJyCBdIZ
         6tcAtfLQHsZ7a7sVmcLY+x4yd6TGUfShKIEgaSba0WmxPnFILK1EuXZ743Yhi09tvMNt
         l4WpPT17smGpX9C59Kf9YBjKHJeRM+cu2oq95AOjnZ+QTtVYV3BkQFVXwZPnrdlsrXZ9
         kgXlz/Noqi2H1V0WlJ/AGfvBfV4SdXO3pAPKzKW+TZzAzOu6Qj+KHtDpMs9w5p4IdMxO
         jGi0qYSO7aL6raOm0M65723LdMtLDU69klT5PU+5kdCGroPuVBZqSxtcSM7kQErNLasz
         6TPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712829668; x=1713434468;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gD/TMCXoo9LJJXjvwS5g/Q0s8INBRu2eDoXSDqH9P8=;
        b=OygrVnahpwQMi+K4S3rDFS3M6j7vN6ei6ouT8mzrhBi+CJuAnFr6fVDNtI6Pzs0tCw
         RgjsgUov3Q1M3e1JKZhmiFu3FclUKdb86cjajLspEDPf4Z29y+VAXdnmidP+rN8bTMzO
         hxx9aWi05/iKS+ABe8uY2e+yhuTeZ922qnaC1VDpQzi7D6A+tuSAkGrataymiLfHl8JG
         IYXu/q3ng+OYMBJE9IlU5STMNglZhA1n9K3ALfo1R7v3LEoD8N4LpycqJpr+rzNZof4Z
         bCyNUaiQQJkFnfKHm8+jA1cmY4mASQaSo1Muz4Zxq+VDh7nKXrqxgmiPdPpqkbUon4L2
         eK+w==
X-Forwarded-Encrypted: i=1; AJvYcCVzsND9zVraHXGmeQMBTNlgrjVXI3V8wRSZGgaegPMWReR3Y15LjocANkr6bPWkUsGndsF6aNRqm7VzEVcyyj8zuaeZnaQzXbafBg==
X-Gm-Message-State: AOJu0YwqxvfOBGkl42PBGcyF64m51jhw2aebssyEDM5OKmfzFymrLkcF
	jxvaTewbwR3EcTyeiJlCGC+n1ps4WR1SuDHl9zD2OwP5O+vpFv7Jv29uKdEGSQA=
X-Google-Smtp-Source: AGHT+IHy9wZ0Hm7ffhnk0MXBkXKa+0W/DkZC6SNZiTOZALpMD+kr80nQzhl3kSyAZPKgZ84PT8s8hQ==
X-Received: by 2002:a2e:91cd:0:b0:2d6:b0b5:bb12 with SMTP id u13-20020a2e91cd000000b002d6b0b5bb12mr3733888ljg.18.1712829668082;
        Thu, 11 Apr 2024 03:01:08 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id e8-20020adfe388000000b003469b59b2a2sm1375738wrm.106.2024.04.11.03.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 03:01:07 -0700 (PDT)
Message-ID: <428f7d67-df78-4fed-9a24-bce6feeafad3@linaro.org>
Date: Thu, 11 Apr 2024 11:01:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add description of CCI
 controllers
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/04/2024 08:49, Vladimir Zapolskiy wrote:
> Qualcomm SM8650 SoC has three CCI controllers with two I2C busses
> connected to each of them.
> 
> The CCI controllers on SM8650 are compatible with the ones found on
> many other older generations of Qualcomm SoCs.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> The change is based and depends on a patch series from Jagadeesh Kona:
> 
>    https://lore.kernel.org/linux-arm-msm/20240321092529.13362-1-quic_jkona@quicinc.com/
> 
> It might be an option to add this change right to the series,
> since it anyway requires a respin.
> 
> A new compatible value "qcom,sm8650-cci" is NOT added to
> Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml , because
> the controller IP description and selection is covered by a generic
> compatible value "qcom,msm8996-cci".
> 
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 315 +++++++++++++++++++++++++++
>   1 file changed, 315 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index b406835b2e71..160b618dff9c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -3122,6 +3122,114 @@ videocc: clock-controller@aaf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		cci0: cci@ac15000 {
> +			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
> +			reg = <0 0x0ac15000 0 0x1000>;
> +			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,

If you are taking the CPAS_AHB_CLK you don't need to take 
SLOW_AHB_CLK_SRC since SLOW_AHB_CLK_SRC is the parent clock of CPAS_AHB_CLK.

https://lore.kernel.org/linux-arm-msm/20240321092529.13362-6-quic_jkona@quicinc.com/

static struct clk_branch cam_cc_cpas_ahb_clk = {};

CPAS_AHB_CLK will get you the AHB clock you need on its own.

Same comment for cci1, cci2.

Other than that LGTM, provided you resolve the compat string stuff - add.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

