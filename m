Return-Path: <devicetree+bounces-48835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49081873BFC
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 17:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40D42B21A24
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 16:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72031137752;
	Wed,  6 Mar 2024 16:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LHekgeMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13A5136647
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 16:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709742016; cv=none; b=DqrkqKqKSmsGsXUlPWtfMI53AhOQG4nfTRx9acNrXEwtOfuiRhFJ7upZiigL2yVST6aXj+Hhxww2gl8zjx82Fsx2V4sl8Inzq2ib7vJUMZ9h7selPuAod27HtzMia8uPDLcYtqi0NN7BenrhKqrllrciFuJwdev4xsyQSFLW0xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709742016; c=relaxed/simple;
	bh=U61Ij+6yIHoX0sWkGhtCLeCXXM4Gtkmuv90V6iCUpQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ea2W0CVhZ51jW2HAFDT3Yl17PliW2rd92VgL2Pgl0RbZktjF7aAp8XK/QiaAl+MRUi27BsufZjN7B2U1eVWD7YRBAWjjnTRlyCpiiFMGu2+wa9RA18e+iW2I+soX0InmkJ597HDJ56F/p8bYLTYUXYGNaNmkiuuSQcKumlGjTSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LHekgeMm; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5134d7e16a8so1492816e87.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 08:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709742013; x=1710346813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+9BGaaVGAGFWOR1PbxLVisEHKQDTc6S5yLurq1hQUM=;
        b=LHekgeMmcQPvbSQkcFvFj6V6c4ARizvJIn7qHkrXkmj3UO3AdgEVHTcfOW3GL1qYFf
         fF5135vrIj7TyqiwcKOMMkbcfY9uMyl2v/n7+DzZGw4PVc/lHrVyxV8HwkqQR1dkS53Z
         Nzvx77TMrhrWbD91Zys9Qo6QA3j1F+prNQeaAIEpkQJgOnL5b0/Hp8wo+81Bv71jKl7v
         vslVB0XN3mcKgB0mhsJC5ISrs+ghp67M88weoDBXxwd2KJAu03HrnpGFDVGyDoxacjJc
         04sQuEilX7l3r0vLF9F7Eb27z5EcUfTFWlLi6EQlxCmFIj6I5m8lD+74lpLrjHKS9rnS
         +rIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709742013; x=1710346813;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+9BGaaVGAGFWOR1PbxLVisEHKQDTc6S5yLurq1hQUM=;
        b=JpgPP5UsuG7Rz0AGWiVKjaE/N8JoxiKkNh7NmJZuSETf8tBc/iqfKXff2O7LENr/+A
         y5iulk30z6aXHijWjaYOdESQZQQURd22bbtKotMCnmDkilp6FZIwGAL2xCGif3dLibRE
         e7wkofbb5cD2VUoEPQJQNJwmEV/ZoJNqXa65eXJ2rqLWl/1/PIi3z4nm35XRnWW4SYNG
         vIcPaVsC32DgybBHzckuHMxxy08XrgkSe46ivDquJyzFsAPwGGgtdB/Gjrpvh9HR4wfV
         0+qd3dCrsHH1IqSundbXpXL6hmkczobhrV+oZy0E7i2U32cW3aCKu/qr+Xw51OEzVbj7
         UOaw==
X-Forwarded-Encrypted: i=1; AJvYcCVtLk6JCvmsUjheyMUlP0oRB4rqygT3urBDP4BuD3ZfC9z9Z8sGKv7v7q/P1MSS290pLwxk5kxE8QyQX+HmC3E3QCBLQA+tTC6fVA==
X-Gm-Message-State: AOJu0YzoleUf199wus1jayzqx0vh1rDrLKpo0EMshgDrganqYRPKZ7dW
	STSuYKQe4RZMssxL4aobL0vopp3tHzRk7HWmqFCAfIGJaY28cY5iHiQgaYWNEv8=
X-Google-Smtp-Source: AGHT+IFnD63DLYuxsyRw6MDwHM55KllMc0o5AiDbBG9xpEzbdjGc42Pf9Yc21OU1cgkt/hEWU7kElg==
X-Received: by 2002:a19:f011:0:b0:512:fe3d:a991 with SMTP id p17-20020a19f011000000b00512fe3da991mr3543283lfc.61.1709742012940;
        Wed, 06 Mar 2024 08:20:12 -0800 (PST)
Received: from [87.246.221.128] (netpanel-87-246-221-128.pol.akademiki.lublin.pl. [87.246.221.128])
        by smtp.gmail.com with ESMTPSA id u12-20020ac258cc000000b005131941f7e9sm2668396lfo.5.2024.03.06.08.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 08:20:12 -0800 (PST)
Message-ID: <21a53796-c4d4-44d0-b62b-52d327784a90@linaro.org>
Date: Wed, 6 Mar 2024 17:20:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240306140306.876188-1-amadeus@jmu.edu.cn>
 <20240306140306.876188-2-amadeus@jmu.edu.cn>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240306140306.876188-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/6/24 15:03, Chukun Pan wrote:
> Some IPQ6000 SoCs have CPU frequencies up to 1.2GHz,

(which ones specifically?)

Konrad
> so add this frequency.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 4e29adea570a..7fdb119083a2 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -119,6 +119,13 @@ opp-1056000000 {
>   			clock-latency-ns = <200000>;
>   		};
>   
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <850000>;
> +			opp-supported-hw = <0x4>;
> +			clock-latency-ns = <200000>;
> +		};

Looks like said SoC can *only* run the CPUs at 1.2 GHz?

Konrad

