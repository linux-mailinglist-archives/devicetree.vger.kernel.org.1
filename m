Return-Path: <devicetree+bounces-44361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DF085DC16
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AFEC2846B6
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10FD47BB0B;
	Wed, 21 Feb 2024 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J1tB/pCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADB07BAFF
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708523333; cv=none; b=L+HQ7AU/uWg89TeuLcjDKFde2xKhlnx8Tu+SS298S08tAED5t9j/L8Ztp0iOaE2lg3/Swi3mmvAaRzwn5adik3eK6vdKr/ggaQuhm5It5ohvkX7EyP7T4kYzU8az0iDN3vSoGtGpP21wbFXeLsiBllB+UIrAy19Aou/mYxrIvbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708523333; c=relaxed/simple;
	bh=kVaLka/HQT+K/sn07CeS2bzMz2ZRU9MY47wmYmfpSPo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=aE6njhrc2JVP1nxyQ1N0bNCzyT/AhaHe4FtxHM+M592EUFqwTp2v1GPqXCnAWCvL2UnSSEUoYSRB7JWyYoT+i0NWJD9IXTV+dQAuy6hfx7MfuKTFJ/y9OK7c43uMqu9eYxJWbTbIqsv1ORoLSULYyme018BpNdYwWAvmwuk+cuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J1tB/pCE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41279488d3cso1709135e9.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708523329; x=1709128129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z6APohxH+w/r8bfkx3VMlcIRu1D4J3eUcL7m9A9jwuE=;
        b=J1tB/pCEEeph/7F2mHsiSm3BnEPCN/D7yvVj0wpmwi0+yDFNTSLweuDfHMNaVEOd/m
         OCZNIz895k+5xIDUj9EgdEk5HTWea9XLWOpUd5JFjA44epoNKhrsHQWLeQRAQh/Gw9vu
         l7F65rS47yj4z17XaiEprYnYozelkcAHRVwe4SNXjqizFbRQ+CTG8ayg4LLU0BZUEaNl
         17U/r6WznrSKprbpgB47pHEACjAMnpONF0yJr8Ln/jlw8x1V3VrWDChlRMrLxo8o5lVS
         wR5MOOlvUAq3Hb3D7DNhQYwzJffSylqLn0AjeCBYzE5IutexMs+YJGZ/an0e4T6R8IQo
         hsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708523329; x=1709128129;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z6APohxH+w/r8bfkx3VMlcIRu1D4J3eUcL7m9A9jwuE=;
        b=KDlB7tQAWNz6G1gf2bGFutAUqWs0qAOZr4BHrQVpRGCPPSVmvV8pdWSbloZdIjaJ8Y
         AzXq8JZMRiubTFEM+S0kK39ahUGyWEYgHqx9iymwFJj0h/wzB/szc4isIYXTSUuVOY30
         NbTCnFFFZnUCQay5ITHU6ncJg079Hgwxc3TuRIJ7ZTxIOzd0nAsQ6NmhUQFnVIBZmbcR
         uViuRh2AsUHE4o4KTDJIqu7pc2JyJ5qScS8q6WLzu/mQ+ukJADPKs12gBPZYrrs7in3T
         XIympLsD4u2mm+hpnA/qVrOHC75dfP4UGppkHrV4HbzCBdkaafZwfh3YSiGSk884ADmx
         DYmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMzQpmzAsj5Tvp0Ic15ULolsZj0uApDd3ZnzZ+BRDj4Tin+uqnsOUeFiLHsBJnYuY/3XLYk8sZ/1Aps1O29+oVkUku1q27lVY/Zw==
X-Gm-Message-State: AOJu0YwmXWN446vZorq0vr5dPgd2ObMAxn6m4MeEsmpDHKTP0/PSusbo
	Pc0aw9zMsv+LY3n3ACs+CpzwS03VRVbCKcJOAeB/XDtxQm20Hv3rovF7MZunHWQ=
X-Google-Smtp-Source: AGHT+IGvIwzL2sIsQ/tfw5qgUmilTMVnnTNEZJpF2ci5Sekj0a2pNnycD0KRkqj9s31acCEdsBl58w==
X-Received: by 2002:a05:600c:4fc4:b0:412:16d8:d565 with SMTP id o4-20020a05600c4fc400b0041216d8d565mr13043283wmq.15.1708523329386;
        Wed, 21 Feb 2024 05:48:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c? ([2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c])
        by smtp.gmail.com with ESMTPSA id r17-20020a05600c459100b004124907f43fsm17647391wmo.12.2024.02.21.05.48.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 05:48:47 -0800 (PST)
Message-ID: <aa2d04ec-96eb-4fac-bd38-4770002bf6f8@linaro.org>
Date: Wed, 21 Feb 2024 14:48:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8550: Fix SPMI channels size
Content-Language: en-US, fr
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240221-dts-qcom-sm8550-fix-spmi-chnls-size-v2-0-72b5efd9dc4f@linaro.org>
 <20240221-dts-qcom-sm8550-fix-spmi-chnls-size-v2-1-72b5efd9dc4f@linaro.org>
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
In-Reply-To: <20240221-dts-qcom-sm8550-fix-spmi-chnls-size-v2-1-72b5efd9dc4f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/02/2024 14:04, Abel Vesa wrote:
> The actual size of the channels registers region is 4MB, according to the
> documentation. This issue was not caught until now because the driver was
> supposed to allow same regions being mapped multiple times for supporting
> multiple buses. Thie driver is using platform_get_resource_byname() and
> devm_ioremap() towards that purpose, which intentionally avoids
> devm_request_mem_region() altogether.
> 
> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 7474cddf7ad3..3904348075f6 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3318,7 +3318,7 @@ sram@c3f0000 {
>   		spmi_bus: spmi@c400000 {
>   			compatible = "qcom,spmi-pmic-arb";
>   			reg = <0 0x0c400000 0 0x3000>,
> -			      <0 0x0c500000 0 0x4000000>,
> +			      <0 0x0c500000 0 0x400000>,
>   			      <0 0x0c440000 0 0x80000>,
>   			      <0 0x0c4c0000 0 0x20000>,
>   			      <0 0x0c42d000 0 0x4000>;
> 

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD

