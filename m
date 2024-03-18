Return-Path: <devicetree+bounces-51154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3FB87E542
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 09:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5ABA2280ED3
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB04328DC0;
	Mon, 18 Mar 2024 08:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0frjDCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C6A28DAE
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 08:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710751984; cv=none; b=Df/yqo1tbdfMQv5FxdJASyryJ3ZaeOWSfq+X+S85+md6jvJkiYHYUvPKy2KtNMUjVjx3x5pfVWkYirNg/xAX5SzxinuebEbBf6wjPWQU/G3X6Z81NifIVAM1VomivsMaHuwv6Cjwmvvg4S/zMlyzP8gDRDhu2oJJUSk33ZaX6gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710751984; c=relaxed/simple;
	bh=eSn6LBOc6+egbllu0D8THHRgtcAyr2tVphV+JyyJ68o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Vm5YS8ipsD1eH3qffedWViAHZohF3IQqTxjuyHETdY26r102FZAbbXKDx6GQdDM/3nNs+ibJFY4aDrjN8EoPR8MDAiwZ0m+TmisutPYVfSu+D7GK+TFP3A5I836fI67v/B2eEmZARSlLjbYEtZB/7l/dXI8WRbwg3BARu61daxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A0frjDCL; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33ed5b6bf59so1483158f8f.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 01:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710751981; x=1711356781; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FEqaW8978q6uu/sJ/jddbH0VCAhF5dMut1fH76Gu9k=;
        b=A0frjDCLgNH6uhwdna+64eKiWC8xOm/w3v2BXwnpO51XrlNRCQy5XLYbcugGHf8xAy
         1jxyqv39CNSMjVTfa8ziqqiNvpQWBcWR15Xnwvlt21d7hJan+0w1Q53+EjEI9PTSnkcD
         m1FAf3h7lrczNV2CX7ARISJ1MF0Sojc6yl1qqowVtWLxC+HoVbFnuGUBERT29z4JIgZw
         92rLDkqv0wXoJ9if2ZmsO2EQAdLDijtKBtDAaaiji2hzEWiKUC59JlJHI0sQ9gmnxmWQ
         3dC9Fv5jxfHr0bkeOygGRrBYHZgC0NASQd5fxrZEUluvleNrdWmxG3eIRBqnG/NpXOy7
         UHLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710751981; x=1711356781;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/FEqaW8978q6uu/sJ/jddbH0VCAhF5dMut1fH76Gu9k=;
        b=fGEHEL3vNRBDng1Ijvm8HZEVR/OSL4mk6RB6X3omK+D4i0v90PX2/mfYQ/m7OTZZhv
         RmcMRUS1X3FwMxPuzMTp8n6f2zElpUYGeBR/wFA17yRl290jvKHavim9qSqJna1XEe1i
         3keM1gOuTS0Dx7o17nuRGsdlVVAYWPMd0OXq8qZQd4u+higbbnfJwmJhAbaMIzEtP9KJ
         BPNZmOVuS1gm6FOWSIftELvXwErwP4C5UrKjv4flciQsNZWigoBV1o8MOXpCGzx0vxUI
         gYMyR0TC74BflpNV2SMryYdoHY2BDO4eLi4qSAJR7pkNlUg+LjO4Z23IOnubtLQeGzmt
         t2LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXR1+fxjMRZZRyQ03gYINU0ZdOQaIOBLMEsyGERc/zeZrZ1wvlCuYRItAzePS/56Z1RZ5G6JoshuEWL3G/yGZAcnaGoj3nyBr/gdg==
X-Gm-Message-State: AOJu0YwnqeCB8Ckz75TtpaR/E0KTVgsEfV1rdYoM13v06tz6rqg8G9aI
	jz8tl7kk/YiYK7ZmpCYUX1MUQdHjxTFps1eLHj6TI9rFqelQuQDkd3xJwRJOHcvsxKHlZHlA2fI
	d3lk=
X-Google-Smtp-Source: AGHT+IEWBJX2bJVRWVLAcuAv3ocG2srDZdvn2r84vBQF52mgwalRkN90CIispa554x0QW15q2WPQDg==
X-Received: by 2002:adf:fdcc:0:b0:33e:c3ca:e9ff with SMTP id i12-20020adffdcc000000b0033ec3cae9ffmr7946456wrs.61.1710751981381;
        Mon, 18 Mar 2024 01:53:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc? ([2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc])
        by smtp.gmail.com with ESMTPSA id i7-20020a5d5587000000b0033ec68dd3c3sm9289562wrv.96.2024.03.18.01.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 01:53:00 -0700 (PDT)
Message-ID: <3bdb00ed-249d-4e49-b990-d1bb23c20673@linaro.org>
Date: Mon, 18 Mar 2024 09:53:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650: Fix the msi-map entries
Content-Language: en-US, fr
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240318-pci-bdf-sid-fix-v1-0-acca6c5d9cf1@linaro.org>
 <20240318-pci-bdf-sid-fix-v1-3-acca6c5d9cf1@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20240318-pci-bdf-sid-fix-v1-3-acca6c5d9cf1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/03/2024 08:19, Manivannan Sadhasivam wrote:
> While adding the GIC ITS MSI support, it was found that the msi-map entries
> needed to be swapped to receive MSIs from the endpoint.
> 
> But later it was identified that the swapping was needed due to a bug in
> the Qualcomm PCIe controller driver. And since the bug is now fixed with
> commit bf79e33cdd89 ("PCI: qcom: Enable BDF to SID translation properly"),
> let's fix the msi-map entries also to reflect the actual mapping in the
> hardware.
> 
> Fixes: a33a532b3b1e ("arm64: dts: qcom: sm8650: Use GIC-ITS for PCIe0 and PCIe1")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index ba72d8f38420..eb117866e59f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2274,9 +2274,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			interrupt-map-mask = <0 0 0 0x7>;
>   			#interrupt-cells = <1>;
>   
> -			/* Entries are reversed due to the unusual ITS DeviceID encoding */
> -			msi-map = <0x0 &gic_its 0x1401 0x1>,
> -				  <0x100 &gic_its 0x1400 0x1>;
> +			msi-map = <0x0 &gic_its 0x1400 0x1>,
> +				  <0x100 &gic_its 0x1401 0x1>;
>   			msi-map-mask = <0xff00>;
>   
>   			linux,pci-domain = <0>;
> @@ -2402,9 +2401,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			interrupt-map-mask = <0 0 0 0x7>;
>   			#interrupt-cells = <1>;
>   
> -			/* Entries are reversed due to the unusual ITS DeviceID encoding */
> -			msi-map = <0x0 &gic_its 0x1481 0x1>,
> -				  <0x100 &gic_its 0x1480 0x1>;
> +			msi-map = <0x0 &gic_its 0x1480 0x1>,
> +				  <0x100 &gic_its 0x1481 0x1>;
>   			msi-map-mask = <0xff00>;
>   
>   			linux,pci-domain = <1>;
> 

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

