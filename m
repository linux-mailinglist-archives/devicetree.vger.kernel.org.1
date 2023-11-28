Return-Path: <devicetree+bounces-19699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF5A7FBD9C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 16:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76C7C28241C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 15:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10AF65C8FE;
	Tue, 28 Nov 2023 15:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HIOQlGW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79BFC10D4
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 07:02:03 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b479b9c35so15467215e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 07:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701183722; x=1701788522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkWu2ySemNB+dH9OL9BeVvXo61wInQDnE0WqBxTBfkI=;
        b=HIOQlGW1QxdmrClYbNjwPRnpecuU3Sm1WIvTgc5p9LLB0upiteqAqu2U8Y5/thqsMB
         pYE0IstAsyI9Ges8ooWajBXuup21LbU/z+nvDLRjOOVtBvZNH4y5PNyf/ogrdJS7NlzG
         nuN4nHAJKOgmou7YClQedbjjy0zrgwxeQEy+zuX+JGs4IIp0JMYHLsup21ea7Nb11oJC
         jfykXjVLfTLVtfxFavlSTs98xdFqAxiLiBBYrurNTh8zh2o6xPhpni0Ia0c2USTq1XS2
         JMSQllQWx5Po5ZgYqiHoPUZCLm3PnWz1zTGufxXb6RgD4qjqO38HB6kEO62OoIeIbbKg
         h+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701183722; x=1701788522;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZkWu2ySemNB+dH9OL9BeVvXo61wInQDnE0WqBxTBfkI=;
        b=Kju0+9UOm44InLqarUwgzq3q6ZFn4OT0sfVROq52YxCLPo3OXYUQSowy2eMDjWU2zw
         bAmo1nuRUJtjNyY89lpzXdDcotv1b9Qf2TCanwsACuog/1PAjV8AvW2AOLmHBdI0tiPV
         O/wn0oQ4k2fgddMLZHv80d8EkRrjiXKJe1/dAJt7rXmguoljiaQ6/igbxa5SdR9WfgeI
         TqD59UkQHCH9QxBCsRaGq7djUgADV99WaQpExmxcDJDcgwoxaXy6ZJOxlQcSu54E+6h0
         l6N8EcqZfwp5ydCCZPqSWdYBPcwyKayEanrx6HwRj7STG2ylStpj2W0O7ulqombNL6+J
         TNag==
X-Gm-Message-State: AOJu0YxJIEQx1Ri9w+vbtRMYAyDCWd3muHzyWr3mbXnY/pa1ajtJCX1w
	GBWRWMsYksNYSS5XHP3EBKBq0A==
X-Google-Smtp-Source: AGHT+IGVOUpmvb94Jr5diQ87yRJsgTUXl7a1KEj86KCsuk0xkpDAakMyWxHFifx04mdoT3ggOA6w5Q==
X-Received: by 2002:a05:600c:1d17:b0:401:eb0:a974 with SMTP id l23-20020a05600c1d1700b004010eb0a974mr12639457wms.3.1701183721458;
        Tue, 28 Nov 2023 07:02:01 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:eada:f40e:7ab3:2afe? ([2a01:e0a:982:cbb0:eada:f40e:7ab3:2afe])
        by smtp.gmail.com with ESMTPSA id fa20-20020a05600c519400b0040b3e26872dsm12773310wmb.8.2023.11.28.07.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 07:02:00 -0800 (PST)
Message-ID: <42a6f6e0-2846-4cdc-8702-493fadbafb98@linaro.org>
Date: Tue, 28 Nov 2023 16:01:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/5] ASoC: codecs: Add WCD939x Codec driver
Content-Language: en-US, fr
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231123-topic-sm8650-upstream-wcd939x-codec-v1-0-21d4ad9276de@linaro.org>
 <20231123-topic-sm8650-upstream-wcd939x-codec-v1-5-21d4ad9276de@linaro.org>
 <ad9a7c4b-82f4-4347-b4dd-a394e4ba95f0@linaro.org>
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
In-Reply-To: <ad9a7c4b-82f4-4347-b4dd-a394e4ba95f0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/11/2023 13:07, Konrad Dybcio wrote:

<snip>

>> +
>> +static int wcd939x_io_init(struct snd_soc_component *component)
>> +{
>> +	snd_soc_component_write_field(component, WCD939X_ANA_BIAS,
>> +				      WCD939X_BIAS_ANALOG_BIAS_EN, 1);
> All of these values are BIT()s or 2-4 ORed BIT()s, can you check what they
> mean?
> 
> Same for almost all other snd_soc_component_ write/modify functions

It uses snd_soc_component_write_field() with is the same as
regmap_write_bits(REGISTER, REGISTER_MASK,
                   FIELD_PREP(REGISTER_MASK, value);

So the 1 mean write in enable mask in this case, and mask is single bit,
read it exactly like if it was using FIELD_PREP(), but even for BITs.

I did check every single snd_soc_component_write_field() so far to check
it matches.

Or it's another question ?

Neil

> 
> [...]
> 

<snip>

> 
> 
> Konrad


