Return-Path: <devicetree+bounces-258421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDwTOTY0cmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:29:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6F167F11
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6A45F96B7D3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D4031ED95;
	Thu, 22 Jan 2026 13:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fC7xpRFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8CF257848
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089037; cv=none; b=O+vleFgN8w8IJSjFufUeIUXCcZUl6SDXlPAisJtjGHe9WLCZgmh4GCyR1roeBZaNtXOPd9IfOQX2YN0Bzb9Qap4ELs6yjXQaepPt9BB5ftB9ssDWnngaG2JeUBoVmxC+5+S9AK1RBvMKsgW0+QFY6bc7jRfi/bpvt46s0QORJC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089037; c=relaxed/simple;
	bh=NEO0Wib2XUAkRs4MoAFw6l9bb9xKdSkfQ3peJhKOaEc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=teFonkqMbXwkjooI3UQ9wzfAfx67N4qehS+JAuZdN3Jh4I7PDb/EwkAWHENverwZdSxtye0a+zylUStJsfBNPltjIYEXJNPn7QarxefVPgG/nTF8ZQCSrBiMMWZ3guK9d5zSFvlMrA+XZ3P8ZPO1WiKdoxMiblIntTSyCSldpZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fC7xpRFe; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee2715254so5322695e9.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 05:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769089033; x=1769693833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eEJn28UsVkdJy0uU3rgrwA+Zjuc5hG2Gw87IADiyNbQ=;
        b=fC7xpRFerz9c0y15wmAOkzOYDmOymVhwBDGJlm9GG+d4u7+bySYIg9/2nm8vzIPzm4
         ykq6IfzdRiCXkxeTUcFtD3ytRg3vxNYDZNLoDCHYkWO79hKUQfjiPrThYMzoKxK1G9PK
         sChovRMmLvusVgB699+e9JO4Mo4+iYHNmEsAUiqhNYWshL9PYhwM1YWHHyAVDwMD53fQ
         qouHFzm9teoUMsDDURqcwh0qzMYSxDhFWB+L9cXETu2+UuUyP3+qZ1YhvsPNNkSv/JOI
         qGJExM/SS0BxsBbmWt9iEpzkQVHYAqNrdV1ZgkNRYQG+KurAwAIhf3+Sz99CSz3erFdM
         KyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769089033; x=1769693833;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eEJn28UsVkdJy0uU3rgrwA+Zjuc5hG2Gw87IADiyNbQ=;
        b=nPCTThIWhi6cr96snrQQAVqYGy/TFN/Du/vATLzSHXlvVBtGDrU4czwjaAB9ASHVnw
         1n/U7GcwiPkj7Oip4jpnNO7BUJNX0N9/rrBq/CraDM6Q75x+nBXPoHoIu3pRF06+lE/m
         kUGedz6cu/CtG0vVO0TLV9i2HWLzT3zzTZCYZhD3sEfgoF+3m9/v2XbG2rxYMjnBkdp6
         Iz3/v4dYuw8E4D9MN663GaR7n7mbKuHAvEIHEl+Wq/x3jpiu7i028q61ZsCQsdr0UGOL
         jrRKEUwHtNICvmfVoaBTx8MD1yQUwX5po9IFNTVc93gpSjHsP+GUe85QTtQpfHgvd3WX
         B1ew==
X-Gm-Message-State: AOJu0YzYVKaghARxhxahtEkjMfZj1Q6Ca4RCkJcHPURGjX5ypRNuO0PR
	4h4rnMUVhAaOviWeYA0I78FwpTiIPmM+Rj9IBckgn/tdnAKHNc7mYaaIKwQcFenAieY=
X-Gm-Gg: AZuq6aIc6eSm257HgeHb2T8rk89BqLbBGqFsxJo2YyQiRLnHk0pnZiAOvXtd+pKs6El
	w/4nGTYCYMWlbbfKIiZSGjzDTAtf4RZKdamPBz8O/UDT5QFUIZs+9uCSFWwGmaXACS2lV10UfIf
	/eB7NQKERUCD0VpEfJcIEnKAR9eKRXaGnVkGFXNEDKTKsFIQZ1q/r5ouviNtsPDnM3EgnXOb3S7
	jz6VS1MBPgkhn86QmgdldqQZSLnxtWpwnLvsck5e1LNQizeyrcAjnKp/BnfqwvB3x0pg98fovM7
	krGOg8AzgnFpjva2CbOvg8DPksbFrYqoyAy3pNfAVstjlANYUSJgNq2VHoFAV6eDPaBGECttUSr
	Kmg+5D9lKYIGBiCdg1rAEZnbTE4KMehV78TBmGBNddClV/FXQBqP8SHq/An17BLTJ5zR/6bdqIX
	r714ztZrXNfjRx7cAYriyrvlPsuT+lp2J78nke0jcO16pNZieOM+DptVFDuuTru8A=
X-Received: by 2002:a05:600c:8b75:b0:477:9574:d641 with SMTP id 5b1f17b1804b1-4803e7e8531mr130800565e9.22.1769089033318;
        Thu, 22 Jan 2026 05:37:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:9dc7:6955:8850:f258? ([2a01:e0a:3d9:2080:9dc7:6955:8850:f258])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804702876asm75878365e9.1.2026.01.22.05.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 05:37:12 -0800 (PST)
Message-ID: <f80a1ecc-d33c-4872-9b9a-466b56877580@linaro.org>
Date: Thu, 22 Jan 2026 14:37:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: add basic devicetree for Ayaneo
 Pocket S2 gaming console
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Kancy Joe <kancy2333@outlook.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
References: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
 <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-3-bb3f95f1c085@linaro.org>
 <01de9fc2-f60c-4bc0-af61-c070213df29b@oss.qualcomm.com>
 <53a1370b-89a4-4276-949a-e3ad95dbad2c@linaro.org>
 <SEZPR04MB6873411EA1A8B69AD45B286CA397A@SEZPR04MB6873.apcprd04.prod.outlook.com>
 <687b781c-dee6-4b8e-89b2-e082a860be3a@oss.qualcomm.com>
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
In-Reply-To: <687b781c-dee6-4b8e-89b2-e082a860be3a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258421-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,outlook.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 5B6F167F11
X-Rspamd-Action: no action

On 1/22/26 13:34, Konrad Dybcio wrote:
> On 1/22/26 10:34 AM, Kancy Joe wrote:
>>
>> On 1/22/2026 5:25 PM, Neil Armstrong wrote:
>>> On 1/22/26 10:15, Konrad Dybcio wrote:
>>>> On 1/21/26 5:40 PM, Neil Armstrong wrote:
>>>>> From: KancyJoe <kancy2333@outlook.com>
>>>>>
>>>>> Add initial Device Tree for the Ayaneo Pocket S2 gaming console based
>>>>> on the Qualcomm Snapdragon 8 Gen 3 platform.
>>>>>
>>>>> The design is similar to a phone wihout the modem, the game control
>>>>> is handled via a standalone controller connected to a PCIe USB
>>>>> controller.
>>>>>
>>>>> Display support will be added in a second time.
>>>>>
>>>>> Signed-off-by: KancyJoe <kancy2333@outlook.com>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> ---
> 
> [...]
> 
>>>>> +        pinctrl-names = "default",
>>>>> +                "sleep";
>>>>> +
>>>>> +        pwms = <&pm8550_pwm 3 50000>;
>>>>> +
>>>>> +        #cooling-cells = <2>;
>>>>> +        cooling-levels = <0 16 32 45 60 80 105 130 155 180 205 230 255>;
>>>>
>>>> Does this come from a preexisting map?
>>>
>>> Kancy ?
>>
>> No it is not a preexisting map. I add it(and the thermal part) myself to get dynamic fan speed control work. Perhaps you can also use userspace fan control daemon instead of hardcode it here. In android the vendor control the fan speed in userspace too.
>>
>> Following block is what the stock fw defined. I changed the granularity to make fan speed (or noise actually) sounds more "smooth".
>>
>> ```
>>
>> cooling-levels = <0 64 128 255>;
>>
>> ```
> 
> FWIW the corresponding pwm-backlight driver has this
> num-interpolated-steps property which computes a smooth map.. not sure how
> many cooling levels are resonable for a PWM fan, but then I would intuitively
> not object to having more as opposed to less..

Good suggestion !

Neil

> 
> Konrad


