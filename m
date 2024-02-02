Return-Path: <devicetree+bounces-38031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34566847383
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 16:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 636241C23399
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 15:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB991474B7;
	Fri,  2 Feb 2024 15:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oZt0qiEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1DF1474B4
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 15:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706888464; cv=none; b=X5YxkUCJnVonGN2K4qznvTJ6g17IkQy4RoYF40jktFsgNmhbxC7JCvv0YwXgObf69KxwMcUT2VdbPs951pQAVTWvcacht13kf1BNXiX0+Zh7uqeSyUFSGgRBOB9gtZd+6qKcGtdKhEkKtr+0S10Ix30+Wz4DP5DzUwW8X7/J14g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706888464; c=relaxed/simple;
	bh=07df+/LTKKZSwe6VhhGVQ01Ed9ZDf0bXecwBWhioYwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m6ZJzER73aMKl+L4DG6A8dGgXJGNOzcL9/onfFzwUtvqrB0sGIn7kFz2ImpFKBksWIkJMFhmdOXrxJuuvmRIPlJTmUWqUpEEE7Av7POx0+cghGEOeHmKrTqCEX0HAhKEm6gJEMm6cHMi5LN9S7z1WmcbrV0RwRHl/ELaQS0YzVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oZt0qiEb; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33b0e5d1e89so1638065f8f.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 07:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706888460; x=1707493260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2GY6qZhOt8VgKdbRBPMlub8IrFFQP8vgPbAArJs2KU=;
        b=oZt0qiEbnQpysZ++TgImE9ymIIvlE36OPyUH1Pej0/y6kqQ9xFaqyGkACWYy8MYTd4
         DyH57F9N57V5HCpWMfgk6jx75nsQXcweHU7Vk5XJtHnvFcGLaXRd+zrLiH5Z3LJGKt7S
         1ExA3ygZ5WPHoluxoAc81Cfq879CkLO5VJloQHLjOOBNSQEZyIt3BoBAoZ0mdaTkroJt
         8uDPhpCkYcVw9+lFJdG6J293X8f8+aw6qzFOFmf/4N57kaSjS5wcpW21JlGQIVtkUMsX
         HI+kMyGPViUATT0Z4bxXjE12NGY93se5rNBRdLrMAfe+cNxiXMuvBRL5eU+NUPUC5iGE
         /qbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706888460; x=1707493260;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z2GY6qZhOt8VgKdbRBPMlub8IrFFQP8vgPbAArJs2KU=;
        b=WodqwieeG9LHo80o2jdSQxW8GoqlJkPE4Drcv8eYbwRq3piQodcHqVc8ZooU+fdM3d
         3akTzrTqNCFOGm/PrwWCZjXslpJDY7HAr4Xm7UvLE3DoHjGJh5aWg/5K/McaXS8DH8EF
         sr8Mv47v4NDMnX5GmGJyobIRe0IBE0EUxqdxbpMqoAhhDw5GN3sl3lyZadU0miSllCf8
         r7NtNhaXuhnHTdZv7ZWA0s1ZpnYpxofwYRxMmnW8OE8CMnhUeJhkHRbXUFyvAzsCcIac
         6H3o+9PmfVHzg8CNRNFTsdztbHqmgO9uul/huOKhgWjBSpmvwmzVvae1GG6gmA6EUjJ5
         4jVg==
X-Gm-Message-State: AOJu0YyVzy86ACL6cXs3vQbKwM65HNg+BDzDAGwu0jT6Ko/OCZDcjlLz
	yYsTw9/wCtCL9vjq4JGyE9F/LWGDBu8sQnP8awYhREfBZT15vlS6bNTGs39eMS8=
X-Google-Smtp-Source: AGHT+IGDwFlH/xWMIloR+2mH8/ZvBww4o73fFgEkNDL93enfNJde0Zo1eJ4/FhVgta3dXYg5K72ToQ==
X-Received: by 2002:adf:cc84:0:b0:33a:ec79:f923 with SMTP id p4-20020adfcc84000000b0033aec79f923mr3703268wrj.54.1706888460406;
        Fri, 02 Feb 2024 07:41:00 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWZer5caOfAi6ulp3obGzvj8cUZE2QhPOjBLb+JzlAlf2+LKbPgftymheDgv5oGXDKfIwNj45/wp7PG+Hywxb3bP6ADKXE6vhSJHh67SRR3k3RjmBmi54BzF7iHgRky2RYkTAfANOPHklVjdRGc64tfP2XRR1O2IvEtmsoVqUcmbDU4HADkcQ+8raJPLffiaiCxHlTfeZgK24ytk/rYEImBcALrKMOWFaJSxxU2Hbb1HSFsymuQYe0xJ187UOgT1VjD4EVKUzNA/7ohLcGMqyKeeovO9HJM3NathN+ODdk3Q7vH3mhpKX1R7qANnaCKSbcwEhOxsFpr4+DX8iiM0lsnLirWQqTbNvX1hsCUUoesiqNtAR/8UdeerNBOAYU8nA/44WxKNBQjSK38end7P7QJzpIlJ3HvnesbRPmNQyB9
Received: from [10.54.252.95] ([217.145.44.194])
        by smtp.gmail.com with ESMTPSA id m26-20020a056000181a00b0033afcf8925asm2198557wrh.24.2024.02.02.07.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Feb 2024 07:40:59 -0800 (PST)
Message-ID: <430a290e-1d35-4aea-a555-e20d88672388@linaro.org>
Date: Fri, 2 Feb 2024 16:40:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: pm4125: define USB-C related
 blocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
 <20240202-pm4125-typec-v2-3-12771d85700d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240202-pm4125-typec-v2-3-12771d85700d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2024 00:55, Dmitry Baryshkov wrote:
> Define VBUS regulator and the Type-C handling block as present on the
> Quacomm PM4125 PMIC.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/pm4125.dtsi | 30 ++++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm4125.dtsi b/arch/arm64/boot/dts/qcom/pm4125.dtsi
> index d886a9e4b091..cf8c822e80ce 100644
> --- a/arch/arm64/boot/dts/qcom/pm4125.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm4125.dtsi
> @@ -36,6 +36,36 @@ pm4125_resin: resin {
>   			};
>   		};
>   
> +		pm4125_vbus: usb-vbus-regulator@1100 {
> +			compatible = "qcom,pm4125-vbus-reg", "qcom,pm8150b-vbus-reg";
> +			reg = <0x1100>;
> +			status = "disabled";
> +		};
> +
> +		pm4125_typec: typec@1500 {
> +			compatible = "qcom,pm4125-typec", "qcom,pmi632-typec";
> +			reg = <0x1500>;
> +			interrupts = <0x0 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> +				     <0x0 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> +				     <0x0 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> +				     <0x0 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> +				     <0x0 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "or-rid-detect-change",
> +					  "vpd-detect",
> +					  "cc-state-change",
> +					  "vconn-oc",
> +					  "vbus-change",
> +					  "attach-detach",
> +					  "legacy-cable-detect",
> +					  "try-snk-src-detect";
> +			vdd-vbus-supply = <&pm4125_vbus>;
> +
> +			status = "disabled";
> +		};
> +
>   		rtc@6000 {
>   			compatible = "qcom,pm8941-rtc";
>   			reg = <0x6000>, <0x6100>;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

