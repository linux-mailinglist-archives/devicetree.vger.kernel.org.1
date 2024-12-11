Return-Path: <devicetree+bounces-129728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A419ECA93
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 442A8169613
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 10:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AB31A8403;
	Wed, 11 Dec 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u3aB/A/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C454239BD1
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 10:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733914102; cv=none; b=M3exObnDkqqhXyDEFQ8qAoCVYSN02w3D6ttS2hWGDiCQ4r+VSvf1jhAedL1D3Ld6iqBmnghUwABWrjswd/HWKmWTExPsCH+iZlmSGYeDS4JEwKE+2GnY8EFl2HH+0wMJfgeQI4Vlh+ZJdjSAMI2Ppuzxggpmx4II1RJDRvSllp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733914102; c=relaxed/simple;
	bh=rk8eMLbw4z4cpvAfU99wGO3ubUjRqtAd6ro6hn4RfQk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Mmb+zqxObY95r7kSlwrn51C9QSyb17QYKvom4dfJVHXPO8JtpLKxl7/HsEUzvb+IrwM+0Lkm5E0BjQ8ZVXqwA/xmGWGS0Toe0KA0xQNPQUvJpp+VhO9X50b2+7JKRLsGlTiR5l5bq94Yyh4XY6aqEFD13SLNUK6yffkQG2U3FcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u3aB/A/y; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434e69857d9so3157565e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 02:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733914099; x=1734518899; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5AHk96CveMFpne4Qg2DAeC1kDrIWAj+flZ6oP/v+Q6s=;
        b=u3aB/A/yti2Z8ofJ3sZ5I/SeI/Od7hHhp4jN6G3qo6eCZyIRHwxulJkVcLY8l/BnNL
         EQBX7XkEcQUfscnryv34F4Lfyn+igCrKWYQ852eSr04/dJZsu9rWoc9xQuM/HgaiHZ8p
         6lTAoFIwYR3CoG1gIf4jtKJI3EMCbVLP4k93eS21xOu8m5YeQsm/sG4imG9cXilSa5HM
         F2qgVn+JtywCV6hBXEY+7UpYnxPLVIFUOA3eHTwOq8yXSQff1GlVboJFXg8uTXQ+6E86
         l5JmAXVwFaw30neF5Wc9pNk2+a6L+qspiA7r+EF8Buf8uofU8TVqlS9EVssTUHJMc0ds
         DB/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733914099; x=1734518899;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5AHk96CveMFpne4Qg2DAeC1kDrIWAj+flZ6oP/v+Q6s=;
        b=GzhA7ZE0ZvSWNdbx/JOhqhwvvqyXCZRf/N9XIUFgRXWhh4r/s42xNUCr9HPC4URHc5
         HoPZfM5HsF5YpZSEvyVL5U48vuKSwJsxjgl6Hk4iy1O4t3zYCnd+3AFAqOWsYLEZ+oCX
         H8SwDwqKLXsqdIUcDVP+qNFt6c7p/NiHGVRUKmvsfznzEC2Lw+I/LDFOusLVjKtUxY0x
         EALeUAxa13mwTg1+5AtUc4fLfuZs5LR9uoUInehhMD3He5sG2iw6YoS85jVWRk+lq9uh
         Ya7Eb4hAMg9ycp7RMYck8u08yWuXOZA+aT0d1T+ibz996hJToZelPwDNyDA5LwinuUOY
         UYSw==
X-Forwarded-Encrypted: i=1; AJvYcCXtq+5b7x/bMLLWAhz0q72OJPM/uYJcyHM+fFqBm36kAL78h67SWB1LdFQQxOlVU+8PF4HS51rEUkY4@vger.kernel.org
X-Gm-Message-State: AOJu0YxxVFylLadyhQPkJDco53FEUYwaBiFZszeq0t8I56ZdUOLeLuaY
	NSml3taaa7IMSHw5ShbSJsLoUT+1LqvpJEhoMz5GOmvJl6t0TEJiEooZfDfdWoc=
X-Gm-Gg: ASbGncsN2oU3Pbmk1EFON3NT81vAPtodOn0HtXSfYDiGXCykFFe1ibB8tgL3QvFEfAh
	vxtu7KqfnsSiV0mhyCZ3URbYlTRsrqa1D4RktBWOnacavqk0q9qKPHWKoPqiGCI1Me0iinx/2dq
	jexRMBSvbRkmdjh1s7GFO4ZRK/ey9PPU8WtxUFL2nfoyzeFKhlIa5TuVBEG/kjkQkCZ+NNJ/flt
	7LqvYa4KKc//euW/UhuL/FwDcdU+SR7u12rstcEKpdLZ6+OvBabcNqLAXGiznTxELZgGvJGwYBG
	KhXxRnO+ZYr5vJUbhrPlctqOalCugXg=
X-Google-Smtp-Source: AGHT+IHJEQvPPbIu2Zq9huncyi9Mdv7rLLdSvVfodKnE7kxfl6ooLaQF/VSOcNgCqJmvphQCDVGipw==
X-Received: by 2002:a05:600c:1616:b0:436:185f:dfae with SMTP id 5b1f17b1804b1-4361c5a3918mr15626125e9.6.1733914099360;
        Wed, 11 Dec 2024 02:48:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d426:8f10:1673:5657? ([2a01:e0a:982:cbb0:d426:8f10:1673:5657])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-435ff2f46d3sm44071955e9.19.2024.12.11.02.48.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 02:48:17 -0800 (PST)
Message-ID: <89bbf7cc-db04-4e1d-a1bb-570898eb3449@linaro.org>
Date: Wed, 11 Dec 2024 11:48:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: qcom: Add coresight node for SM8650
To: Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241210-sm8650-cs-dt-v2-1-cf24c6c9bddc@quicinc.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20241210-sm8650-cs-dt-v2-1-cf24c6c9bddc@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 10/12/2024 09:23, Yuanfang Zhang wrote:
> Add coresight components: Funnel, ETE and ETF for SM8650.

Is there a way to validate those are working fine ?

Thanks,
Neil

> 
> Signed-off-by: Yuanfang Zhang <quic_yuanfang@quicinc.com>
> ---
> Changes in v2:
> - Update compatible for funnel and etf.
> - remove unnecessary property: reg-names and arm,primecell-periphid.
> - Link to v1: https://lore.kernel.org/r/20241210-sm8650-cs-dt-v1-1-269693451584@quicinc.com
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 165 +++++++++++++++++++++++++++++++++++
>   1 file changed, 165 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 25e47505adcb790d09f1d2726386438487255824..76620d478e872a2b725693dc32364e2a183572b7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5654,6 +5654,171 @@ compute-cb@12 {
>   				};
>   			};
>   		};
> +
> +		ete0 {
> +			compatible = "arm,embedded-trace-extension";
> +
> +			cpu = <&cpu0>;
> +			qcom,skip-power-up;
> +
> +			out-ports {
> +				port {
> +					ete0_out_funnel_ete: endpoint {
> +						remote-endpoint = <&funnel_ete_in_ete0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel_ete {
> +			compatible = "arm,coresight-static-funnel";
> +
> +			in-ports {
> +				port@0 {
> +					reg = <0>;
> +
> +					funnel_ete_in_ete0: endpoint {
> +						remote-endpoint = <&ete0_out_funnel_ete>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					funnel_ete_out_funnel_apss: endpoint {
> +						remote-endpoint = <&funnel_apss_in_funnel_ete>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@13810000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +
> +			reg = <0x0 0x13810000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port@0 {
> +					reg = <0>;
> +
> +					funnel_apss_in_funnel_ete: endpoint {
> +						remote-endpoint = <&funnel_ete_out_funnel_apss>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					funnel_apss_out_funnel_in1: endpoint {
> +						remote-endpoint = <&funnel_in1_in_funnel_apss>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@10042000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +
> +			reg = <0x0 0x10042000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port@4 {
> +					reg = <4>;
> +
> +					funnel_in1_in_funnel_apss: endpoint {
> +						remote-endpoint = <&funnel_apss_out_funnel_in1>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					funnel_in1_out_funnel_qdss: endpoint {
> +						remote-endpoint = <&funnel_qdss_in_funnel_in1>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@10045000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +
> +			reg = <0x0 0x10045000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					funnel_qdss_in_funnel_in1: endpoint {
> +						remote-endpoint = <&funnel_in1_out_funnel_qdss>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					funnel_qdss_out_funnel_aoss: endpoint {
> +						remote-endpoint = <&funnel_aoss_in_funnel_qdss>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@10b04000 {
> +			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> +
> +			reg = <0x0 0x10b04000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port@7 {
> +					reg = <7>;
> +
> +					funnel_aoss_in_funnel_qdss: endpoint {
> +						remote-endpoint = <&funnel_qdss_out_funnel_aoss>;
> +					};
> +				};
> +			};
> +
> +			out-ports {
> +				port {
> +					funnel_aoss_out_tmc_etf: endpoint {
> +						remote-endpoint = <&tmc_etf_in_funnel_aoss>;
> +					};
> +				};
> +			};
> +		};
> +
> +		tmc@10b05000 {
> +			compatible = "arm,coresight-tmc", "arm,primecell";
> +
> +			reg = <0x0 0x10b05000 0x0 0x1000>;
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			in-ports {
> +				port {
> +					tmc_etf_in_funnel_aoss: endpoint {
> +						remote-endpoint = <&funnel_aoss_out_tmc_etf>;
> +					};
> +				};
> +			};
> +		};
>   	};
>   
>   	thermal-zones {
> 
> ---
> base-commit: fac04efc5c793dccbd07e2d59af9f90b7fc0dca4
> change-id: 20241209-sm8650-cs-dt-ad649dcfa5e8
> 
> Best regards,


