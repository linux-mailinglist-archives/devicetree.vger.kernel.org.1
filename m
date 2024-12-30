Return-Path: <devicetree+bounces-134793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFECC9FEA6F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 20:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B105F1883A62
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 19:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21ADC19ABD8;
	Mon, 30 Dec 2024 19:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RU4e0fIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FCB1885B4
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 19:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735587965; cv=none; b=PJHXumRBLRXedYag/RSk6qNBE5gvu1S145zX7F0Djw3+nJSE34ade6Mg8V+w4PlCMHA7cfyANUwztl3CkimDE69UmvRYhR01UCENzCSxoSbr3YrrNNl0HUo5AduSVpDlTVS8pKjmx1HvSH4Qz++ykAjlM287WAnEYDH83UspmD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735587965; c=relaxed/simple;
	bh=KkfCIBKnF5fwnqaFO3EGMdwpJzBICxdQnkM1Cym2WvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tLShsNdMDSR9y4fZBGhutgPGLfy/BOVi//hzfk6JKgchkbNKaIGfbKpmEX6576idcWi0KlDPp0vTnpkzQnAtuxBvXxEfpdBebrO8sL4xYXgxsEJ5yBPW0lGCrpue1VxUIKI7Py3GVwjIY4pMAtPpjmjZl7WgBCnOHNhdQ2dsYfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RU4e0fIr; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436381876e2so13881485e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 11:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735587960; x=1736192760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l8Naa43QCGHNyg2KPWS+kj2ly/b/cOPWw7DpI0jEnNk=;
        b=RU4e0fIrBLSF8zGQX/5nQiuC6WO2YPDE6PRLI0iVB/yZkmNjuN1W5sX0TuhPwpFy4w
         OwaJZmUIcZlhXgQOEMYBGQElcTlmTNfkM3vzW1u9UO6IZmJAPvvEtmJ55M76fcQpaJGt
         AqJMMb5N7CZ7RUZ/dMtIcmzMzt1Oh7a3vYrLKS1K0B+OzBsjQKK9yfAZ8xJEIVOIulwp
         MacvD4MSJnoL09/GcLDGR6ssydgLw3ko7m2ZTSgCxFT6WPLALM6Qwt0nmN2s6To8OJx7
         pQ7v3JFirs9SNDWGxzwuKvfMMCA8m/7FeZJuqzrPSj4IaPNL6yabTOm3LFXFcuhBIpRd
         4oZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735587960; x=1736192760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l8Naa43QCGHNyg2KPWS+kj2ly/b/cOPWw7DpI0jEnNk=;
        b=gmJZ3Rhl5kIRcA1JqDApFXiLz9jjtojqvbpi0aLmes41vhflCfyN+clAH+x8bZRiUy
         IHIexpajL2/3bSo6OldFhRDfOejAtgORfDWy8lLBTx7v7VhtySFtUvT0KyrIeE+Hwnbj
         gWNzQvkIGcRowZjtSYL0ceXjQbZNjNOYyxDHOYsAinjurffocN2m/ISDEXBm9zxlynsT
         rtfEJSsWWfBetFFfjiEGzGRqcL1tTudreV/vbmHopldzqELrAJp0oZO0E+7M6qBniklW
         sHy3DoHYn+sb50owuSpeE4G61PXrzau+X2TLNmbuI8Q/Sd8MfS2Jo0rCpyMv18K3yyLZ
         Bb3A==
X-Forwarded-Encrypted: i=1; AJvYcCXBP3hLsmIBgA7meoAB+Sq1Q019vxUZy3Kw7ZJUDrFhbA1RaP14cXiZdsAaqGYWBP+nkaA9Ik58BhqX@vger.kernel.org
X-Gm-Message-State: AOJu0YyzK7SIswsbtSa89ouNLJk6isJo0k61ZmgVBNgjhC/zjGKfyoGG
	HYlVC31QCSqZAMli8sulI2WhrLElBIG4vpBNSwy+1k1WJXzT9oKZaGbvMJO5YxU=
X-Gm-Gg: ASbGnct/SWJd0TVbpumwGxZ5YDqyEiEC0pldghXiDA+pTVHKjyBXJOhqqr09ui2ex6G
	K8ACrE3Qmk5bWEGKCWHo46M5RiUHqWQqvNcztIqf0D9iwkQc26C2UNzJ93B3RHAYEywKQGR7KeE
	ixBWYR2worEdaGdX852IDIO3Z6YBG5/1sf89tZwLsHq7FGwANSNMmp55sIeclHrkdWTX8S+zNjm
	HZwCIQ5vTh0BlOzqgZVmnOYof0yAZmEQTWQZU3AlRQc0NgwGw2T0uN491E4aRKxn9snz53AkaSY
	mbARGp8eUsfoacxd4GC2
X-Google-Smtp-Source: AGHT+IExhNxxISBwK7nKa79+DMGbXNAgnjT4OVTT/gPZUUpxNcDfWbpouGKFxa5X8xAu0n1XSLt/WA==
X-Received: by 2002:a05:6000:1b88:b0:38a:5557:7677 with SMTP id ffacd0b85a97d-38a55577945mr1461371f8f.5.1735587959917;
        Mon, 30 Dec 2024 11:45:59 -0800 (PST)
Received: from [192.168.178.85] (i5E866BC1.versanet.de. [94.134.107.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c493sm361945625e9.28.2024.12.30.11.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 11:45:59 -0800 (PST)
Message-ID: <aaead9e5-a978-4b3b-8635-bd8be647ae35@linaro.org>
Date: Mon, 30 Dec 2024 21:45:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
 <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-4-06fdd5a7d5bb@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-4-06fdd5a7d5bb@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan.

On 12/27/24 15:11, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index c18b99765c25c901b3d0a3fbaddc320c0a8c1716..5119cf64b461eb517e9306869ad0ec1b2cae629e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3,6 +3,7 @@
>    * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
>    */
>   
> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>   #include <dt-bindings/clock/qcom,rpmh.h>
>   #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>

It would be preferred to sort the list of includes in alphabetical order.

> @@ -4647,6 +4648,22 @@ usb_1_ss1_dwc3_ss: endpoint {
>   			};
>   		};
>   
> +		camcc: clock-controller@ade0000 {
> +			compatible = "qcom,x1e80100-camcc";
> +			reg = <0 0x0ade0000 0 0x20000>;
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MXC>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +			status = "disabled";

Please do not disable the clock controller, it was discussed in the past, that
all clock controllers should be enabled by default.

> +		};
> +
>   		mdss: display-subsystem@ae00000 {
>   			compatible = "qcom,x1e80100-mdss";
>   			reg = <0 0x0ae00000 0 0x1000>;
> 

--
Best wishes,
Vladimir

