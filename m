Return-Path: <devicetree+bounces-259551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKkoDzyId2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:29:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B718A286
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:28:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F253130041F3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6A633F8AD;
	Mon, 26 Jan 2026 15:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iQ0xE49k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1B133F368
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769441337; cv=none; b=XHC67F1Oiy4v4JRzkhC8XBicyWG0LXHe3LB0Vw9/3ZeZeP0kBsQQY9l2yvDS1pebQzYC9APHtrd1e5Z8yBkrSMHU56b8JEUuDBhYyef1jkfHIFD81mEl79S+TzKBlrTfptLh1v+Bh6sfUcywz5YlzoGbKHw7kjArvkFCXzLkLPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769441337; c=relaxed/simple;
	bh=PfvVt7hbSX5YclcFRIUb4bEbcp7jIX1EdCWeEyWNDi0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=YGCOTwCj1Pv0NM85xpQ3rkMZHzOGSAkJBMCpZCYIZNGin0GTFR99flZM9NslhPFjQad/ejmiivIyoV9XzKv7oRYqC4Di4DI4AidMMtBGReGgu1YKg+WYKCcLkRoQjp2YtxrS9RsGYUIQTVLT4NqtIG7gvM46LlvSHp9oW1L7jLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iQ0xE49k; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-4327555464cso3139023f8f.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769441334; x=1770046134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QD2HqzdqlPsbjYScrcAvVLLflbu8bDsCv6JnIs+Ud5A=;
        b=iQ0xE49khzyIYZ3NZaICJLbvZH+g6iNfg68AhTYN0cLaS4BCu62VZwXGT5iXIuiUaz
         DR35ASv+NZbN7XC5wcQxmp7jwYO+pUb3OF8hQY4ztTfTuSZc2AZF9bd0pZ1FppkDGlso
         cnuAw9QmkXGxb0T5KnRos5pfTJY/o5xqV1uz/gN4OTm7m+UhGZJ9P8Vsxad9qXAxk2Tq
         0MacfvB/04R/KUEzVz5/EYXFfmvykPOiKoLMvEUseQ0+yUSi7yfoh++CjX8vjFco2YRE
         iZlusJlFaAUOhVBEFlYvJ1KJpb6/47bTlGDkMcb9aNRmig7gi9aPj41dlmryMk1gb1Jx
         kqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769441334; x=1770046134;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QD2HqzdqlPsbjYScrcAvVLLflbu8bDsCv6JnIs+Ud5A=;
        b=WmGjwRzVPWAwweqrwGtfRt4gkb/mWA4aGPoblNm3tKcKVk3nMvrdkOkqTnXhzkzf4J
         meJHT6VeWzgAsRETuqx39gUMfUzYIpB9DEzr74xo3ke7Wc1BL4DGPZuoLoW3kGNyttVV
         AolF14rGNIhii8Q5mKMNz4Q9v+jw2/prHuEu6OVLwxzxWzufR9pzyH6aN7+Vjlm/3Pzv
         fsDjCB7iLlZ+CA3EsUPpn7VfeUbtAHoPQLi4Of4R5V3yqfOTE7gHnPJHb4M9GHUCPwcv
         nvymiMC406n4/X8ij1GB137TNaqkmxkLG7szBDqLD//X/hMcJLldTp8r4LUV8gKZ4Ggq
         OmFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXce0EHUje8LnIAxYC9qiKpFfg6UHFrxGPvpj+arpREHourVxT7SXrFQrTI91Y4oa+6gQRb247+Kfbd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8yG5S1Fudq79UvY4I2N2SIdMrnXBdXeI3VDp9hoj+qjc+BqVL
	vl5JzBwXh2+1zZpcGJEZRuoNsRnp6f0QFxNq9ZKcOvvwpQzN8Swe1oYmMs1WgBuQneQ=
X-Gm-Gg: AZuq6aKMJ7Jb4rzFd5r5gFA8C4mnUfuYPlX0r+wv+V0O7LNLV4ci7tU7LKW3MB4DAr5
	gnP5IXGGEhnbNjIvfoOpYj73f1xPOhRnumJZDJ8eN8HnfKFTBuUaQCjH4DL8460acP1Tbzf8Ho0
	0XqxU07V/Q4bwDdCsAHOV17zoxK4ds15l4JSKRA9vRSezDYMUv9gvCHcWBhkdibo6Xl1q+N8FQM
	l4cEKt4KMBrHX9o6ShPnLYRBnABRrLnTbeUx+uH78Ncc7Q+hEAECvItYgBCjeanfHsS3m5723sN
	a1OTc8qJqymMJpEUaOzch9uxkx3J7gRE8Po+YyZnN7YR4MJx5r0nQHCMMqQNr4lFdYSStTFoRs8
	wGH3lBrSAOf6KS7Yj7cRbzyjh/Lal4y1v0qKl8ASTM9rT5r/eJwEHIxUeOfN44zF1wANS5udS9y
	wXSZriFGJriLcp3PLcxc8FRnRzQSmXyQy4wNEuPDFSpU5G6DrEYcyVMuz4rLstf7c=
X-Received: by 2002:a05:6000:26c4:b0:432:a9db:f99d with SMTP id ffacd0b85a97d-435ca1ad95dmr7512316f8f.36.1769441334256;
        Mon, 26 Jan 2026 07:28:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:9836:4e25:3927:bcad? ([2a01:e0a:3d9:2080:9836:4e25:3927:bcad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e717cbsm31135410f8f.24.2026.01.26.07.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:28:53 -0800 (PST)
Message-ID: <db981d2c-1432-4b63-a5c0-0008be811bdf@linaro.org>
Date: Mon, 26 Jan 2026 16:28:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add WSA2
 audio ports IDs
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Banajit Goswami <bgoswami@quicinc.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, ravi.hothi@oss.qualcomm.com, =?UTF-8?B?5ZCRIOaXpeiRtQ==?=
 <kancy2333@outlook.com>
References: <20231019153541.49753-1-krzysztof.kozlowski@linaro.org>
 <06a2c115-278a-47e0-b5ba-74639b6b23aa@linaro.org>
 <0e34c780-3634-4ca1-954f-c74dc566c7cb@linaro.org>
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
In-Reply-To: <0e34c780-3634-4ca1-954f-c74dc566c7cb@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259551-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,quicinc.com,perex.cz,suse.com,vger.kernel.org,alsa-project.org,oss.qualcomm.com,outlook.com];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 96B718A286
X-Rspamd-Action: no action

[replaced krzk's and srini's adresses with korg ones]

On 10/23/23 13:41, Krzysztof Kozlowski wrote:
> On 23/10/2023 10:37, Srinivas Kandagatla wrote:
>> Hi Krzysztof,
>>
>> On 19/10/2023 16:35, Krzysztof Kozlowski wrote:
>>> Add defines for audio ports used on Qualcomm WSA2 LPASS (Low Power
>>> Audio SubSystem).
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>>    include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 5 +++++
>>>    1 file changed, 5 insertions(+)
>>>
>>> diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>>> index 39f203256c4f..c5ea35abf129 100644
>>> --- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>>> +++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>>> @@ -139,6 +139,11 @@
>>>    #define DISPLAY_PORT_RX_5	133
>>>    #define DISPLAY_PORT_RX_6	134
>>>    #define DISPLAY_PORT_RX_7	135
>>> +#define WSA2_CODEC_DMA_RX_0	136
>>> +#define WSA2_CODEC_DMA_TX_0	137
>>> +#define WSA2_CODEC_DMA_RX_1	138
>>> +#define WSA2_CODEC_DMA_TX_1	139
>>> +#define WSA2_CODEC_DMA_TX_2	140
>>>    
>>
>> Patches looks fine as it is, but do you realize that this s a dead code
>> w.r.t upstream.
>> WSA2 is used only with 4 speaker setup and in such cases we use WSA
>> codec dma to drive 4 channels.
>>
>> So WSA2 will not be used by itself.
>> I would prefer support for this to be added when we are really able to
>> test WSA2 by itself.

Sorry to dig a very old thread, but I'm hitting an issue with this on the Ayaneo Pocket S2.

The soundwire speakers are connected to the swr3 which is connected to WSA2, but nothing is connected
to swr0, so in order to play audio on those speakers the channel mask should be set to 1100, the lower
bits representing the WSA channels and the upper bits the WSA2 channels.

In the current setup, we can only pass num_channels, which will fill the mask as:
active_channels_mask = (1 << cfg->num_channels) - 1

So it's currently impossible to setup the mask for WSA2 only, and since the WSA2 lpaif_type doesn't exist
we cannot use that either.. With some small hack in sound/soc/qcom/qdsp6/audioreach.c we can set the mask correctly
but could you help figure out a proper way to handle this ?

I guess that in addition to min-channels & max-channels of DEVICE_SG_ADD() we could pass a mask ?

Neil

> 
> OK, the patchset can be ignored.
> 
> Best regards,
> Krzysztof


