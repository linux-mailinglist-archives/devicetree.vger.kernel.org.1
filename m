Return-Path: <devicetree+bounces-157011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE641A5E663
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 22:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F4A1168CF3
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 21:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7B31EF081;
	Wed, 12 Mar 2025 21:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PZSdpyhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08BE1EF092
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 21:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741814315; cv=none; b=g7aBzYDR3EyQKPBgfWOda3nufgqJl+DLwnEqgdIqF7cuAbW8o9cTyihGqawBaFGS10JNlwDElOfHf4fNQ1xpDHl0Gtfb2TuBwJ10I6INk1tmcv/U2/rxIvZS5g5GtebuX2DIRZ6nrA0d+tlqABzJOx2VlpV2h4mGO30kJGO9ydc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741814315; c=relaxed/simple;
	bh=ZRK1QnXjKXmwtDsvZ8yDGFinnbLW9DNcB1m9v5f4NfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X4Quzkx4xBxkATnhLoxzfb1qQzdzBETBjzMeEUHNoIpjHSC0QOAfIf7RDs5Bl2KansrM4W2U6RJ9UOsZZmsPAk4GqhrzpZNaDjcp+3HOWZWForu6EC6A3ZQNKloJ7GVcJxOm1loonrQTNiXEgZ/F8bacKHqUW0KOvX6pYf4jqKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PZSdpyhc; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaee2c5ee6eso51289166b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741814311; x=1742419111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAAaCcWnu1E/LRXYBdsReUtTWQq4VO+o7nDriwfTZMA=;
        b=PZSdpyhcx9baOD6p13Y8JPBzfj7ODwsrjfhtnNPCz2kEveMmpXe2m/0I8gENluL+hM
         TEz3P+uVjY8NLIM+P75nO9HkVyf7qX2ikx4yFVF5Z9GddSurC7rqLxboCwJuSOHEMelf
         nX0W/TuTR8iNDPAu0LibXAvq+1mHjtK+dL27kK6n7XT4LRghU2PYQqs7plZ0DSeljZ40
         jq6CwIFJJ9aheKfvtl/KS7JUifI5A1O7QVbMN9WotBGKy2fG+uDKpYs/J1eJYk46Ibm9
         hAwmnKK9RUG9WU8ZcmAoOxXTbLMCZl0jaV1V728MFtgyAMWmEsKPLAGWNbhtCz/JiApQ
         Y4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741814311; x=1742419111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gAAaCcWnu1E/LRXYBdsReUtTWQq4VO+o7nDriwfTZMA=;
        b=tNf7Mk7oQcxz5Fml1P9GfLpA21Ej10mnHaRk1mSYZ2wE9PBLWl9eL4PwijSiWvJc4T
         rkBRGP3nvmnWCc4sUX5kEvS2RWTRKPseGaR9YSEvsJR/gYKgsiGq9R5kLw1HQup4/vlO
         T1eKEAw/pAVB17Xn7k6Y0K/gFCaub8Snpo9uMNCt/FDXVaM1qh8VzYpY0xPxBU/a2mpc
         aMPWYzYd8kjC338EsL7CX/bKKgwpxeaimsHWfwBOOwqW69ZFCGFRg2EaoHoelFwA+iGP
         XWRZNaKwoChtnu7me0actvtrX4i+VrzlcP0a1Kw2ibf9Fnxy/6UYtlI+xCFUORtlZ2MZ
         u2ew==
X-Forwarded-Encrypted: i=1; AJvYcCV30qAxV1h30fTzBcuK7QqAncQrBXCVZRgWtQNojWB5cgfIB27xfo6NyYjxLGB5s0jMyJKpd1WzKftr@vger.kernel.org
X-Gm-Message-State: AOJu0YzBu8jDbxYUgABaQm7W7RMSJQq44Jz6dehlydkr0aNr//I2O3ep
	ooRxlYHL1puQxUy2Ii9R2MR+nN8C07jBqcRafxvR41K6T5RKSJlF35OiOn8nChw=
X-Gm-Gg: ASbGnctA5pUdRUHnbyX1zQ3kuPedpWXvazGWLFBO/U6gim692E4yW54BdpFw9e8wj7f
	ZV1EwmrRVkXF7ZOQNwSczcmL2UtdRwx+6hTr3JO6j0enXWXAa/aRkbE5H77cq7si7BRcUKuc5V2
	/GhKHord/omtYgyNLshgC4H6qUu+V8NyGIAmb9CPg1fnPDSnQiqHXod/dbTIlItkEUFVSDyl0Wb
	iXFHozZ7nlh1oRgEQoihqNAwxiE9IZBN6k6kGSy7h69gE0Y92a1Xgtcx5JcrLDpSGwLBKkgjoBm
	NAI1soX5hg1B3D+hCi1ZdDuZnvvC3BIFxqvW8vRXJRve/+vIpsmRLqRGOWer85CTL1i1KQCj4cC
	NrHsqLRaISjG00hfvaH3jUcFflgXQ5KNnQEnh2qAdYevxibIPVexMjRs3wSNAlbyH8/6tdWVtp3
	6/flLW8SAsQOmIQPYCdzTgSCXnKhhdDl4=
X-Google-Smtp-Source: AGHT+IGhFP/qkL3DgglwZ5MvHJdcpcSeJ8ki8DIky3RR3GH88+4MNn/psSZ2uCJxfybLvhHcJQ+E+A==
X-Received: by 2002:a17:907:cf46:b0:ac2:a42a:999b with SMTP id a640c23a62f3a-ac2a42a9e35mr1789666366b.52.1741814310999;
        Wed, 12 Mar 2025 14:18:30 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac25ab328b6sm939324866b.124.2025.03.12.14.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 14:18:30 -0700 (PDT)
Message-ID: <0b1a0db4-35b7-4098-8539-cd73cb396635@linaro.org>
Date: Wed, 12 Mar 2025 21:18:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650: Add description of MCLK
 pins
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
 <20250312001132.1832655-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250312001132.1832655-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2025 00:11, Vladimir Zapolskiy wrote:
> Add fixed MCLK pin descriptions for all pins with such supported
> function.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 144 +++++++++++++++++++++++++++
>   1 file changed, 144 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index bf5e238a93c3..526ef2ae8ac8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5792,6 +5792,150 @@ tlmm: pinctrl@f100000 {
>   
>   			wakeup-parent = <&pdc>;
>   
> +			cam0_default: cam0-default-state {
> +				mclk-pins {
> +					pins = "gpio100";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam0_sleep: cam0-sleep-state {
> +				mclk-pins {
> +					pins = "gpio100";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam1_default: cam1-default-state {
> +				mclk-pins {
> +					pins = "gpio101";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam1_sleep: cam1-sleep-state {
> +				mclk-pins {
> +					pins = "gpio101";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam2_default: cam2-default-state {
> +				mclk-pins {
> +					pins = "gpio102";
> +					function = "cam_aon_mclk2";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam2_sleep: cam2-sleep-state {
> +				mclk-pins {
> +					pins = "gpio102";
> +					function = "cam_aon_mclk2";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam3_default: cam3-default-state {
> +				mclk-pins {
> +					pins = "gpio103";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam3_sleep: cam3-sleep-state {
> +				mclk-pins {
> +					pins = "gpio103";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam4_default: cam4-default-state {
> +				mclk-pins {
> +					pins = "gpio104";
> +					function = "cam_aon_mclk4";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam4_sleep: cam4-sleep-state {
> +				mclk-pins {
> +					pins = "gpio104";
> +					function = "cam_aon_mclk4";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam5_default: cam5-default-state {
> +				mclk-pins {
> +					pins = "gpio105";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam5_sleep: cam5-sleep-state {
> +				mclk-pins {
> +					pins = "gpio105";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam6_default: cam6-default-state {
> +				mclk-pins {
> +					pins = "gpio108";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam6_sleep: cam6-sleep-state {
> +				mclk-pins {
> +					pins = "gpio108";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cam7_default: cam7-default-state {
> +				mclk-pins {
> +					pins = "gpio106";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +			};
> +
> +			cam7_sleep: cam7-sleep-state {
> +				mclk-pins {
> +					pins = "gpio106";
> +					function = "cam_mclk";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
>   			cci0_0_default: cci0-0-default-state {
>   				sda-pins {
>   					pins = "gpio113";

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

