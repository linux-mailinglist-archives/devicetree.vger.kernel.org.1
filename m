Return-Path: <devicetree+bounces-128041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E029E74AF
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82E4228669A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396F520E009;
	Fri,  6 Dec 2024 15:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o2zc9lub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486EB20DD54
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499778; cv=none; b=roohFs9Sg+y1O2aZcQQuH+bCxi7DwaD26rpfM5ozOXB0ONPp4yAcjCshLHc8ZrRpxAdKXjWu5QyscuoObizZcBqM65Y7gZC6hZ9EapSlvqyMlZXkO50hKlgGvMluXqTNP9XMy2yDamdQ+nwgWNBqvIMfsUhPJ6JIQ9ApQzMEk5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499778; c=relaxed/simple;
	bh=syfxhDQfNDHXKWv6k6y49CYCDDgj1E/YNQio6LF/nA0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=A/SPWGmH3cpGezDLQfBuzuVQbAaM/CWK6GVlio+h+oBfPZKYBfGcsLa961g1e+bPrlz2n5y7039MoumWcNOuBz+LAWpGbUH4gLbxQ7vETKy/vixYmwVlkcWy+UifijjG11Dykc+Q/VVhXOWNkT4ZSc2rXYoHeo4lyqfZ+tt4Njg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o2zc9lub; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385de9f789cso1584892f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499775; x=1734104575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LetIXdCw0Dzh0qaidKM8cDem89jyKUKZ16VrHvzJbAg=;
        b=o2zc9lubOvUn6MG0CpXkHjJOvLpG45VjOIldJLhlumxxH/5ZWaXVWwGM9S55wW+xCv
         FlSVQEsTzHlp3mfiTsMk2IjlZe6dAG1tnH4qPMYH/JOateIt7j2xJBwv8Zk7YJCwcorQ
         LHEqX5GXC+9Ys/7Ms/XyHO7gZUE0fz82lwU3B++1e0p9dKiGuSAXd46GEh8tU0e6OUBV
         i2Ev560662KMkooVilJMnoyWgM9+222NFZp3plfWkyj++D3VoPO6UXEthZrnqX732mUV
         D4Jt0SX9jt+utTB2iRt3YTTuTfY/boncEwe+TJu8kOFsDzJCyA9M2VEqZTPttIJ48Hff
         krWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499775; x=1734104575;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LetIXdCw0Dzh0qaidKM8cDem89jyKUKZ16VrHvzJbAg=;
        b=QU3TMWMjhsjDFrfga2PT+9SH5R+9e7uLmL/58WDpDNY2nEK0XEonxzdojyU4ZqhOrn
         39F+kdHS3cGS70uHsHL37YEEl3WqZpwSK5xocUSw3axm1Ph80TbSNtmnwMVCXPMylqhD
         oS8KdxqwJlUXsBgr5rMO/5pXZ+ortudCRlXI57+thTieXA/U2GUBd6kaoDE8gqy6vsMj
         7QV1oAePGmRN/x5NpRFtoSd5Ka32KyndIFcI1OvZYt7tM9jN9ijNbeYOXiEi5BVC7Dul
         UoQ7/I4ty6rbGDIZ9ye8d97jXo1SXvql5S+v+kxt1AqflW10c4Ru6Pg5qqL/fFJlYvVU
         S1zg==
X-Forwarded-Encrypted: i=1; AJvYcCVmmIi54d6HHZcvcJrM5jtTzz+t+CVQmVl2ocOShV2+GbPIVpTL2sKHp80IOHiVKJeYVNa8dj7BRDIr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw683PMvcNh1cFsVw28J/uHzfJF8L7lRwrucD34dcalRygQgVNG
	DILC4SOt7xlsTKk+iFA+SXTXcQ+c2b2dWGX0UacEWe4pPRJDic5rvxn2HSXDQHw=
X-Gm-Gg: ASbGnctZdbdNLBndG8qa7VNV3vYBzAtgDJEC0HsWcVWVwMpLihUAeHelSl9czZYQNOR
	UvgQqRJbQOBzb4f9CgHJ7K57YqdeH3QEOdv/kCjX8p+lyUwA9XTdJsJxNcuM51eex9nLfyElEvD
	T7ibFaUpIXK9bkbpzKgNpkU/PpDA3soc5uW4cDNGc4hTvlY9tEQUBp4Il0nvEf9vMv4dwGEKvON
	uTX9l0wwqg8YW7zZbFRzTEK3LLUotTisfJUaHofViU4lQT0j+mpX6NSSxbKPiAToyTtx3fvDnAz
	CaBD54mGu01NcMYSPQjdIMJVfqY=
X-Google-Smtp-Source: AGHT+IGHU+Cg7ScvfeF98Q98CaeTZnMq/QouFPMJCl25EYuBfNoN+SEv4561BvuAiTkuoI1LiSwDQg==
X-Received: by 2002:a05:6000:4007:b0:385:f1d6:7b6a with SMTP id ffacd0b85a97d-3862b3cf82fmr2702628f8f.55.1733499774645;
        Fri, 06 Dec 2024 07:42:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889? ([2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098c8sm4936536f8f.77.2024.12.06.07.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 07:42:54 -0800 (PST)
Message-ID: <e586147e-e107-4207-b105-46a26e33c56e@linaro.org>
Date: Fri, 6 Dec 2024 16:42:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 09/19] arm64: dts: qcom: sm8550: Fix MPSS memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
 <20241206-dts-qcom-cdsp-mpss-base-address-v1-9-2f349e4d5a63@linaro.org>
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
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-9-2f349e4d5a63@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2024 16:32, Krzysztof Kozlowski wrote:
> The address space in MPSS/Modem PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
> copied from older DTS, but it grew since then.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 541b88eb5f5300ef9e20220305ff638db9b2e46b..71ff15695d396a68720a785435e692d3bbb38888 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2314,7 +2314,7 @@ ipa: ipa@3f40000 {
>   
>   		remoteproc_mpss: remoteproc@4080000 {
>   			compatible = "qcom,sm8550-mpss-pas";
> -			reg = <0x0 0x04080000 0x0 0x4040>;
> +			reg = <0x0 0x04080000 0x0 0x10000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

