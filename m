Return-Path: <devicetree+bounces-199287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F122B10366
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6289189A71A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10BB4274FE8;
	Thu, 24 Jul 2025 08:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kAY+rszw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76B42749E3
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753345170; cv=none; b=t85bXNvaRkOJfWSMvThdYMbRYphQoz3GZzuOHl0zjuGVOzBGBhkCKBhfhCDdoGEM45ymnLPicq0VzzLMiPd1/WIa+zOrcW1sd5O97U+9Jwu7PBmkN7BDQcjakVdtdBHLy0PW4ASmN30eMtoRzuh16wUkrKOvBKBGLcdRm4dGfYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753345170; c=relaxed/simple;
	bh=WA8iYJZG3OCrX6W3ADAz4ts6Lm5xt3MUUZZKZF+K0pc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=nw0DVYjStV377LkNMhwakE5RlbiTOqBcaKc/C3v4TCyfBhvhPmuCtV9aCPYKV6QlsmaNsNYnFRnUP82vegpyquDuuyqmrvT4vWBGf4ZXFMdH5u4r3qestV+Otiq9feI0/e7eFVTXsowWiX9VOafAP2jJf+2Jue3XJMDs/Bo0xM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kAY+rszw; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a57c8e247cso615405f8f.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753345165; x=1753949965; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1fCHD2TMNsDylkVNHGBO475Mk4bPsZj0rm7XMe2WkGM=;
        b=kAY+rszwzecM6uncPL3p3gsq9Rc5QlwQXwHOMx/2s+A312TIIT24oFWIlzumhYwCkb
         5MGDm8bqW2sesu3wRUg2nguNC8hiUoTLISYGiUd38V2rfGCPHbAtoRCsnHBRo4Ui9+1H
         UAqJ6BB1321Zm+VAYta/FjWnEPI4xhCJJSW0cOTTvOkTnmRmu/O2CYnSiPaS54ih4otm
         GmoElGomlL22R0Rm2uQEKRPmST1XWo2rNkUm2F1xT7q9XsFn6L+31R6w69GJvO6tP7X5
         3rxfpswuTCsRgafCXbz1MJZ9VBwSGVuK0ByiWUeKkBaGzP8JgN3DXpm1SLxyNvg2q+B8
         GBeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753345165; x=1753949965;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1fCHD2TMNsDylkVNHGBO475Mk4bPsZj0rm7XMe2WkGM=;
        b=s2Wi/dvAx7Rwd4U4hVDcEZUbuO6hnai/NJm8z2/nBgDk1GcSC+aSkjysBRrdyAnBmO
         DsZEym4XTvH9O8QdO4rQJl5hvqm8PFxvdQBGqTn1kZtg/bDVzKAw9q737esLYzM1tM8a
         YIAVTDSDsMGG2WuyD3RAwRN1Lg1ZJ+IavW3U4zVBt/vLbPRi1GRhsV/oeGCiVn3SJ01f
         WwGejtRxQ1D01DA5OD48rOcoYDihZGI0O6eOUxp5rQTtxG9i/pejmg1eLTbA7SrvX2Ip
         nDvpgqmN79XxTczgFJyQIGIPCpBA02IqUBymL/A7akhMDWoVUGtzDc89DiSXrO+TwQKc
         VOSA==
X-Forwarded-Encrypted: i=1; AJvYcCUeZsVGVnvnXHo31nSx6QWlCFoOGtUMJTM/H0NgZ/5MvxlQ5zxlFnA9fw+YBX4hYXnkW0B1ydn5CBy5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0SKgOa9Q9CBAHGmeXMdOs4Jyc+kn9QzxyJh9AX6ZePdQBef0G
	3HdOBRV5tO+F214QM7rGMUN8YSBPNwRAoI9D4/1V0J0BQhEQbHkpmjLpl3AtLpqBwEI=
X-Gm-Gg: ASbGnctwsd/8CDHeN/RBt8riKQ+YKfbw4mc9NjmIEAcH2QUVUsVdU0VdSSDyly5qu4t
	mDYMFoEmh/mQTgYbf5+bprDKezHBqrUEeQSly2C4v/F11+E96Jij4jbOCcfns3ZDTHR79atwidq
	NWxTFi/dO7pv4ErKx1rBb7occcq69HF4Mi0vzczvV/ZmWO9ek4xv/jwbDDpN9o28YO2p3XECtu3
	SNB1SVCbfOiKR/0LnI6syyrT7/GoR2cwCicYXzYU6lrvqom34mSxlsVPDBlppYF1p1g7PFXe9Rr
	74ZNUEvX42StkKJDY5P+EPvqLbSJYiGj6wj6cJNJbTDfasaXooCKdME64e2XE5kmgT8xju1gLN7
	ejADLwK2u7D84SnXMWsDrvG5vLTyZAGet
X-Google-Smtp-Source: AGHT+IEUVFrQZUfwoO9P6Z6/FU1C9i2Mg8enZw2F7nU5fkqy4VoHbjMRqy8I3MWa90OfSAZLdtNdzw==
X-Received: by 2002:a05:6000:230d:b0:3b5:dfcb:7b34 with SMTP id ffacd0b85a97d-3b768eedf9bmr4522023f8f.17.1753345165005;
        Thu, 24 Jul 2025 01:19:25 -0700 (PDT)
Received: from [172.20.10.3] ([78.246.240.195])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b76fcad2b4sm1385567f8f.47.2025.07.24.01.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 01:19:24 -0700 (PDT)
Message-ID: <d83998cd-5c28-4e41-8487-08cbbe707ebe@linaro.org>
Date: Thu, 24 Jul 2025 10:19:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8550: stop using SoC-specific
 genpd indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Tengfei Fan <quic_tengfan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
 <20250718-fix-rpmhpd-abi-v2-4-0059edb9ddb3@oss.qualcomm.com>
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
In-Reply-To: <20250718-fix-rpmhpd-abi-v2-4-0059edb9ddb3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/07/2025 17:25, Dmitry Baryshkov wrote:
> The SM8550 has switched to RPMHPD_* indices for RPMh power domains,
> however commit e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock
> controller") brought some more old-style indices. Convert all of them to
> use common RPMh PD indices.
> 
> Fixes: e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock controller")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 45713d46f3c52487d2638b7ab194c111f58679ce..a4ca06679c2f1eebacdd5938e380981c1b17925b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3623,7 +3623,7 @@ camcc: clock-controller@ade0000 {
>   				 <&bi_tcxo_div2>,
>   				 <&bi_tcxo_ao_div2>,
>   				 <&sleep_clk>;
> -			power-domains = <&rpmhpd SM8550_MMCX>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>   			required-opps = <&rpmhpd_opp_low_svs>;
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

