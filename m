Return-Path: <devicetree+bounces-168559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1815CA937C7
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:20:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFA747AC708
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1633277009;
	Fri, 18 Apr 2025 13:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I6DFeu4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08BF27605C
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982407; cv=none; b=pzdI8DgoN86GkvMORW/aEXxV3ZaqorvXpVLVEK6OzQSZMA7m64aOr1EayJlLyEJX+nWKEqxkC2tzRyaJggWI1nyVa3DgL1AS2cAsR2J3dN6VfjaYBOWy8MZXLHdp5D5uvLJw/DUtjqhr2LBecAFOn2mW6oxbzgSEesX01Zueats=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982407; c=relaxed/simple;
	bh=s6Ia6RSb0Elq1vaJp1Ehd0f9LVCYZBSpwsULWrlRZkU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=TbX8ScXFTViZEgARaS/ijyx01TF5CJsSXSjNTuxAEAv7lg6lSemDJ1ON00JfNih8WJkgFCdGgHJSWiDvI95EugwED92GGeny+J8nIneuVGaIOdFESi6ZKGclQZdwBgIfdJIm83pu8X8ycFurAD957VZIASQcdmjDWIH4CcRO/iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I6DFeu4h; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39efc1365e4so251690f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744982404; x=1745587204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6XC9anR+EppVKz2oYrkC737vBTrWrKDb8IXLSeYmgZw=;
        b=I6DFeu4hc/7M2idgmu/7/xBiN7H7ZZhn4jWNFYLWuxqJK+JXA2ti7iVwFcHa4qWhXd
         Re9vmooRpzk2RbCNZZnCZEffvYvhB0Uizare5/REk/r4ggG/CYTdaYl3mARcguMjJiPl
         DcE2VA5WD1Y+RuuBbW/x9q/P5/9lRXxE7OjZGAotd8/cCDQrZMHDvcE8dzSaOB7WzYy/
         4hM/R5b3X1fwhkYAYwHJVQ8R52GgndqIrjutM7h09xpyMel4Iog71gCNrOzZGpKRvsRC
         Zjt2/HxmZDgrG5upkzpQpk2QQMRqS3c2Nsb/9fgfMTFHoYYnccJtbPlKHwm39qKr0S21
         ag9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982404; x=1745587204;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6XC9anR+EppVKz2oYrkC737vBTrWrKDb8IXLSeYmgZw=;
        b=cn+3z8Pn8jYo03mnjTVmdLwD/gbxe9p04BrbSuGsyJT4QaAawsgHeiLxMaljhSELZ4
         084VVFIgfSLqdOYASQpdznf/l8RMfIA7lbo1r9uHJ2JmMS6zTC+yW6274wIkLOPfd030
         d3Ffv65LlXNSare7G/Of9KzRrI3wCaz6g4Zi96gMvYi4QehHd4+uuS+vGj/96Ksa7Gdf
         omnIDS2w5Hue7lx63XaVR3SyBJZ+SbSMPmmsHH70d4QXVb3NYpnzk9VivJ2LGE5BDCz6
         O0nhTABtoWb2SOBnyl8fs/U8s9OSypd9elY0RH43u5SiDIQREq+1NXmDzkMf7ZttpgBa
         ++cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmfmlwv3d9Lle5AKZgN2j3wHcy4sQ41ZNxIj06MQoO5FrkHJjJFAJOnHPK1iNU0kvesBTgDs9h6TWy@vger.kernel.org
X-Gm-Message-State: AOJu0YzyTUDXoQOyKBkzHWYrF6Eq5vjEoF+7O0VXHowmIwq1izxt5YXY
	HwbhSz3tUY26tqXMe24BP8RoFwrEOrtTE7XkrTS+tL5eTUWd/sc3PPqHrfNdO+8=
X-Gm-Gg: ASbGnctNF3lef2tB9caRa1ObqDRjei/SxGrwSjQUsoH2tl4GaNWZfi23Dbk5vtabxNR
	ATm5IaP1mGS5rvcz5eWunj7F1sua8+jDHB5vmdyHztf401paOvcKx9CVud8wmzU84rPbrGUW45u
	mXLXMLqp0hRNzRxkPSxaJDbY1W1VzqmXw0H1crQFyfnRCC1cxc62Ipl4bSLi2XeaJrJobKHloZV
	0KtSrqgO+PnQp39ZoZ9hyjLBoIFnZ1GP5/rviwQx6MRwlTUifsVrCx3vGOswzxx9ooihAWp3C8/
	P9KD6iaijCC1cVhFV5oXprqihSp1/5fgIapFNZ1BKUivGAMDcc04UkG85jM6mCCEEd+AJYxfp80
	fwTsdoiclGScz59LQDw==
X-Google-Smtp-Source: AGHT+IF3uK667SVfv4+jbLcCeN0nVt7EwHp6wzo6T+HAoP9oQoubIvGQlcSYsJrbzUTkPVBGi91MQQ==
X-Received: by 2002:a05:6000:2211:b0:391:3157:7717 with SMTP id ffacd0b85a97d-39efba856afmr1953193f8f.34.1744982403987;
        Fri, 18 Apr 2025 06:20:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f8ba:7c24:7066:d010? ([2a01:e0a:3d9:2080:f8ba:7c24:7066:d010])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4931acsm2759272f8f.72.2025.04.18.06.20.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 06:20:03 -0700 (PDT)
Message-ID: <c8094f0d-f0b3-46c1-93a3-4ad8c39d8a23@linaro.org>
Date: Fri, 18 Apr 2025 15:20:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/5] ASoC: qcom: sm8250: set card driver name from
 match data
To: Luca Weiss <luca.weiss@fairphone.com>,
 Srinivas Kandagatla <srini@kernel.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
 <20250418-fp5-dp-sound-v2-2-05d65f084b05@fairphone.com>
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
In-Reply-To: <20250418-fp5-dp-sound-v2-2-05d65f084b05@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/04/2025 15:13, Luca Weiss wrote:
> Sound machine drivers for Qualcomm SoCs can be reused across multiple
> SoCs. But user space ALSA UCM files depend on the card driver name which
> should be set per board/SoC.
> 
> Allow such customization by using driver match data as sound card driver
> name.
> 
> Also while we're already touching these lines, sort the compatibles
> alphabetically.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   sound/soc/qcom/sm8250.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index b70b2a5031dfbf69024666f8a1049c263efcde0a..e920b413b762c803cfcc4049f35deba828275478 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -16,7 +16,6 @@
>   #include "usb_offload_utils.h"
>   #include "sdw.h"
>   
> -#define DRIVER_NAME		"sm8250"
>   #define MI2S_BCLK_RATE		1536000
>   
>   struct sm8250_snd_data {
> @@ -200,15 +199,15 @@ static int sm8250_platform_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> -	card->driver_name = DRIVER_NAME;
> +	card->driver_name = of_device_get_match_data(dev);
>   	sm8250_add_be_ops(card);
>   	return devm_snd_soc_register_card(dev, card);
>   }
>   
>   static const struct of_device_id snd_sm8250_dt_match[] = {
> -	{.compatible = "qcom,sm8250-sndcard"},
> -	{.compatible = "qcom,qrb4210-rb2-sndcard"},
> -	{.compatible = "qcom,qrb5165-rb5-sndcard"},
> +	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm8250" },
> +	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
> +	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },
>   	{}
>   };
>   
> 

Thanks :-)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

