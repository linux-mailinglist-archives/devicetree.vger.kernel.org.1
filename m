Return-Path: <devicetree+bounces-156074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE25A5917F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:44:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F129316849B
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39DD5226D0F;
	Mon, 10 Mar 2025 10:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YpT5XZiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361F226CE6
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 10:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741603486; cv=none; b=mg2v4aOX9JxNjEiamoTxyUBR6axUvbrPu4vv0PTLlze2WGQPTTWdV2niL9X+d8gPNoyAq6GXuKgpGc/aJRaJh7KGK3WEuh2aWiIjVHpsa6HARWyw5KZ8z5t5WZa6iNPnnogZpS4QPHdUVt55ySuzn/Vxw6q1IJsuvcM5EkiilpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741603486; c=relaxed/simple;
	bh=W86R7IVl5vFPfAm4qhmA/ZOkcKxfvO+ui47zCi/gQsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IXiTtXtQOpMkUw1yvAwGhkESmC26SlQU2T2/oVbu5vXKZqNLsYno4ktsPECl6GwfWmAjaXj6vpCjouBMGSHrCYISmsF8v5ESBU0sWRRQAWu/5xQwdD1mrAnwWE3XBeMFZEjmnioXTX0+q86yoSBuBcQJR9rqlyUTeyTCkvSkLKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YpT5XZiE; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5494fe13a6eso620098e87.0
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 03:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741603481; x=1742208281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5/dNvTB+PA3fGtHYrb54pNt4vjI9qtq4wZH4Xt7vLdk=;
        b=YpT5XZiEl2mh8tlu5ET2x0G0bC0U5fo7MYPtCCO8ogiGfJThFid47vj2d9waChGNQI
         EqfL87Fda2Dcv0VhqUqV/1menUCJKDas2TN0UjSbsRLAy6LMeQlYSnkaUH3rDC95q7nx
         28uNUkN9R8oRoCUJA0dTSmIdbpxHaa3LlbDkwi4dCRC2pnWWEZcC7RNVL3qDZntdnoZd
         ujURdkvBt665qP8XIB9pbQdbWvY7ixJ5VYxn4Wboq5ScHjgEH8MXv/msbBn9WxOMKaA5
         bTxNIEFKgblpJ8zWP9ZHuLDpl9mR1xE5FXDRqyq0A42GK2qDbczGwcnuoVSUXEe/GjyU
         X5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741603481; x=1742208281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/dNvTB+PA3fGtHYrb54pNt4vjI9qtq4wZH4Xt7vLdk=;
        b=vA6MMZOmwWov2l+ha/dcoCR0gP4NCNPtdDa9R7RSgOGwZqLAiZMcUy++nftEJoxupn
         P/KE/MxWFB4kIf6gAc+Cx9BzHbAunHRIzV9V35A7f3MLlS/sUgviv7N7PVMdAlKHfWpl
         V71y9eP4cPqHCMJc3SxTW5q0fvRunAJQ94BLDRUovS8QHow0wA30wPzBrD+clup09U3L
         0RNjfjLynukTw2a5zv6WK/LIMEKB3ePkqqFUXN87f0l5MND0TlWg7o21/JIMQOzRSfXw
         AWfTu967qIAarqxyTHdYYOHNP7VBt3OWnVH3QHkDrNbGNa/HJUahtipn8vn3wy1VFpD1
         FD2g==
X-Forwarded-Encrypted: i=1; AJvYcCXILzlpAJkrggiTGkUzfqdcjqVJwuWP7vgGlxaW+sePFFhqSqQE6ad3Pzh0wNbMt4YSMkCBRaQCiJK+@vger.kernel.org
X-Gm-Message-State: AOJu0Yws3uOnxAWrsiYjgHhlJF+qlRvXMIwyGOgS9jRLjQBySjUgVySt
	vHu1zxfy4GBtvyilgMm6fBLlS2R61c70q9zEcoEBjMb2BpxZbG3RoY1S10+fTUc=
X-Gm-Gg: ASbGncvhCkTKzvx9BNV1ZrxP9Ba6JlHwkJkWnK1rknxc2YBr9CFNHh1MzeNQrJbveNT
	ZTWF4VsBpmGIaLuB5qhMgNC0NRfYlk+vmpi7QMZdvjWwtbf1Yjul64kCjRr590XuAl0uIll0C5p
	iNlPO5tIY4KTMMhUJx5d4f9X1+hfYJtqDRr5nPBj/BdI7l25AgUhAKMNwWHUV+mUKWFtkHJC9YF
	IEVUy3cIcYOLIerSXhqrEOSD9p4VJLhWmYzZkwrprtI7ZRvz4tNerqHEUpb1cf+DVKDOirOmyIL
	PIBIdZ01L2aG1MCn65O+HO6pG9Dke2FiWq3sdWwtZylg4kw3+cuyzkCAI24NsQpAAOPeTC2mgGV
	WHbVfbjfGnBluYjXoBHnKsq67mYVf+KcySw==
X-Google-Smtp-Source: AGHT+IGkvmrK54Y77DiLpPeyH9HX5ppOK5F0WcDiedCMulR61NdC/bj3JYvNA4VroVbjFSvPxhCb7Q==
X-Received: by 2002:a05:6512:114f:b0:549:9044:94b0 with SMTP id 2adb3069b0e04-54998e25595mr1026427e87.4.1741603479687;
        Mon, 10 Mar 2025 03:44:39 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b0bd08asm1407721e87.124.2025.03.10.03.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 03:44:39 -0700 (PDT)
Message-ID: <57222e16-0760-4832-ac15-0bd5ffe21077@linaro.org>
Date: Mon, 10 Mar 2025 12:44:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Content-Language: ru-RU
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
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
 <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-2-c2964504131c@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-2-c2964504131c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Bryan.

On 1/19/25 02:54, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 9d38436763432..10035bcfa89bb 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5,6 +5,7 @@
>   
>   #include <dt-bindings/clock/qcom,rpmh.h>
>   #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
> +#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
> @@ -5109,6 +5110,21 @@ usb_1_ss1_dwc3_ss: endpoint {
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

Since I believe here is the error in the device tree bindings, it makes
sense to fix it before adding the clock controller into the platform dtsi
file, please review the proposed change:

https://lore.kernel.org/all/20250304143152.1799966-1-vladimir.zapolskiy@linaro.org/

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>   		mdss: display-subsystem@ae00000 {
>   			compatible = "qcom,x1e80100-mdss";
>   			reg = <0 0x0ae00000 0 0x1000>;
> 

--
Best wishes,
Vladimir

