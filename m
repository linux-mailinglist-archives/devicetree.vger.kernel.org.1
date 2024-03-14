Return-Path: <devicetree+bounces-50454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8096E87BBFB
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B7A61F225FC
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EF76EB62;
	Thu, 14 Mar 2024 11:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eUeXG8Dy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EFB6E616
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 11:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710415882; cv=none; b=ftMRmXHUSNmHqfQNyMEDoBGhh84BAdlCfwjCF6rVdwV6jrogG5apKJaAkBwVuWHR8GHWSMEewC8/jPFWrNYScfFa0Ka/BqEMYPAi/12HDxtRJlRRZigr2eGxClMthxWxFiwC3yKZEsEVDTckkt1biPMg092uOg25ERv+HNPZ2mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710415882; c=relaxed/simple;
	bh=f5FayPvPaiiAo48CLWTgCpHmy4mbM/pIF92ySUr7JdQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=L5KrappWY8b6wPrChibg4ygjBdWN49KLssHb2MXM6N9Oas3sWvSlBmPzLxjAYicjvJiZAfU7fcPbc4tKZ6AAtIWSDyR5dW6wo3yskQ4JA2hqaomJovoPSJT0qoiReYUhhMFOiHofUt3ptixbYsFnOFoufUoHPxElQqMIIfs+RlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eUeXG8Dy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-413f7a5bf11so1828955e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710415879; x=1711020679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jFBTKU7F+BHpMXNHIYLiJS2G4QMPnZUxFQsd//8q85A=;
        b=eUeXG8DyowgJjdEw3a3CQDO0Jb//4FnUo6SrO7mqUIeF2a6bWn2QBdWTM1v+2Dy0EG
         7rNeUQvbgbrkU/nMLjxTZeNPOk/TP3QOTSx8VBk+hCLc1I5UbYgrEgU55t7iwV0FqO3n
         Ua6lLneiwMm49uhOz3jBR2kj9V1bZnq2cW+QhRugAk61cZmsbIVJx/sU43VWQry+faGK
         +53z+HkovVH0gLneOmtL8v7+M40gOMf/g9mDUISkAPr/dhCnu8wkvr+GH7p69K/rkGHC
         0A8W2oGhO+HmpjFEgtmXH2PjB1cjL+44infizsebLM4FWCXPNci5QfFWnrQaKqsdkPtO
         JwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710415879; x=1711020679;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jFBTKU7F+BHpMXNHIYLiJS2G4QMPnZUxFQsd//8q85A=;
        b=prXGivfkeCZKDGq3k/sjNVAhOZb3nABLB/2y+iyOBAhiKwyW6GNH7jlNVnqpB45GUe
         Am4XpMcWSjA9ylwXyjHVGjqrsVaq8lyVvh+RpxnTJpF2+AUGVR9GCVrsuR1UZasBpzsS
         ljKm4VjyW+tE19Z9CnbZLQcapXGLunUQml7XsTQnu0c/Pos8tpvLW3YBmuO1VxfRKaxp
         QI16+SRsDxOgfvQ3hFNR4lfvQy72NGLM9RotTUACEDMgzqA2F8hts8vxX1Egen0HSLu/
         BBN+omqNost7NOvzEDQ/fmNR4O7Ee5uXH16uZOTX9rZZKWqeZ+xU7V5oXFz3LQvDvJ/j
         QJFg==
X-Forwarded-Encrypted: i=1; AJvYcCXhZaYuK6/l0E7aOkE7LoMacUFfB/pUZjs00rruTb2Hc+1dW5PG5ao22oGKGk/odqFsgq5sTh39qj8G6wZ33P7n0uvVlq1cVKfKQQ==
X-Gm-Message-State: AOJu0YzgwIcHUqvrV6EYlGEd9Kl9B2AOblBYEFFiNv4pLnNMy2B1TERJ
	JfvOtOOhAQTzAwMn4LEJ/3UCMd151p6CESlDovrJLbdNE5NvRKB8OZyttE53T/w=
X-Google-Smtp-Source: AGHT+IFextkEGVOvOSQSaEjuMsJn/4Fk1V8EJ4IfC0rQpSYGrMi+co23n9VAXx/qpua3nSIchkITFA==
X-Received: by 2002:a05:600c:458d:b0:412:e38a:d83e with SMTP id r13-20020a05600c458d00b00412e38ad83emr1152119wmo.5.1710415879020;
        Thu, 14 Mar 2024 04:31:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b1dd:8c8b:73f4:4443? ([2a01:e0a:982:cbb0:b1dd:8c8b:73f4:4443])
        by smtp.gmail.com with ESMTPSA id h11-20020a5d504b000000b0033e7a102cfesm543783wrt.64.2024.03.14.04.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 04:31:18 -0700 (PDT)
Message-ID: <be10984c-67ff-4c98-be96-91ccd7205b90@linaro.org>
Date: Thu, 14 Mar 2024 12:31:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: apq8016-sbc: correct GPIO LEDs node
 names
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sumit Garg <sumit.garg@linaro.org>
References: <20240314112657.167006-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240314112657.167006-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/03/2024 12:26, Krzysztof Kozlowski wrote:
> Individual LEDs in a GPIO LEDs device node are not addressable, thus
> unit address is not correct.
> 
> dtc is also not happy:
> 
>    Warning (unit_address_vs_reg): /leds/led@5: node has a unit name, but no reg or ranges property
> 
> Reported-by: Sumit Garg <sumit.garg@linaro.org>
> Closes: https://lore.kernel.org/all/CAFA6WYNRwF7GqhBk2B7i-deT3aLxNQckhnOasjip2TYm4HZgAw@mail.gmail.com/
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> index 9ffad7d1f2b6..aba08424aa38 100644
> --- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> +++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> @@ -91,7 +91,7 @@ leds {
>   
>   		compatible = "gpio-leds";
>   
> -		led@1 {
> +		led-1 {
>   			label = "apq8016-sbc:green:user1";
>   			function = LED_FUNCTION_HEARTBEAT;
>   			color = <LED_COLOR_ID_GREEN>;
> @@ -100,7 +100,7 @@ led@1 {
>   			default-state = "off";
>   		};
>   
> -		led@2 {
> +		led-2 {
>   			label = "apq8016-sbc:green:user2";
>   			function = LED_FUNCTION_DISK_ACTIVITY;
>   			color = <LED_COLOR_ID_GREEN>;
> @@ -109,7 +109,7 @@ led@2 {
>   			default-state = "off";
>   		};
>   
> -		led@3 {
> +		led-3 {
>   			label = "apq8016-sbc:green:user3";
>   			function = LED_FUNCTION_DISK_ACTIVITY;
>   			color = <LED_COLOR_ID_GREEN>;
> @@ -118,7 +118,7 @@ led@3 {
>   			default-state = "off";
>   		};
>   
> -		led@4 {
> +		led-4 {
>   			label = "apq8016-sbc:green:user4";
>   			color = <LED_COLOR_ID_GREEN>;
>   			gpios = <&pm8916_gpios 2 GPIO_ACTIVE_HIGH>;
> @@ -127,7 +127,7 @@ led@4 {
>   			default-state = "off";
>   		};
>   
> -		led@5 {
> +		led-5 {
>   			label = "apq8016-sbc:yellow:wlan";
>   			function = LED_FUNCTION_WLAN;
>   			color = <LED_COLOR_ID_YELLOW>;
> @@ -136,7 +136,7 @@ led@5 {
>   			default-state = "off";
>   		};
>   
> -		led@6 {
> +		led-6 {
>   			label = "apq8016-sbc:blue:bt";
>   			function = LED_FUNCTION_BLUETOOTH;
>   			color = <LED_COLOR_ID_BLUE>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

