Return-Path: <devicetree+bounces-56494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B8899710
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0E181C216F5
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A621428F1;
	Fri,  5 Apr 2024 07:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FP0ssAL8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FCD142636
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 07:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712303684; cv=none; b=Ud2UsNXJJE+L5n8p2oN1RAqNGsVCouVb9DBImoFTdGK4vGWBZ2FPCKpZtEw765Vg9SHI0xVtITOtlDsjXz68oTi95SFsnoGpTq2IDAPHy8uyQ3Shf5THp0iXJSMDrnv2scBwX8FDbnrHy9ONxnI6IfBinjBteQZX6zYQoUrG4Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712303684; c=relaxed/simple;
	bh=oMZnFnjAx4DFtc8QSzozkHjcSyZizqklmKEOQxaJMSU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=u7rqYy8vimZ7Zj51cLqTucGSqXgDy8w3W3vWPAQkx+pIpMHAmyrgBJGG2MuM1X9afxjdw8NGJU3nZVX5y01zF8WNObbY4/Gtw19p4tcILOxLIC+hGrnDQtPRLqPToB5yXSNiHqvPA/K9CGGlrIqk0z6AiWnEwfF7Qwj6I8JezDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FP0ssAL8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4156a29ff70so14147645e9.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 00:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712303681; x=1712908481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPTsDTaZWEDZD5eXOx+IgyDot64aAbYjUOhbFNZJJt8=;
        b=FP0ssAL8UDZf7JoRXOHW3J4ttYXtKLQmBGKrs+c3XY6pVdQ3J5xVh9COQLHNQIRbRq
         dGXNQoFnYBSR9AXl4D0zzWBQPdN0hyk6NTXwneOtBEHfKyIx+Sglg8yZNfCudjoKnjZb
         wuRT0oCLEh582Zeluvm4p/J+naZ3BaWpCd5v9CA7wXdINYWn5QpIJmRQNsZybGTST9/T
         cWZXR8ymjrDEpaEw9bp/B7qOW5LFIqXlB0hr/VhXhiosjqWrDnwqo9LExa7DSOcrbBdW
         XgJPOY+yLp/j2vYQXZS7rkczeeRo0zbTCaSYq4sl1356Y9Q48RuiCt5XShtMwk1u1Gj9
         t1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712303681; x=1712908481;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GPTsDTaZWEDZD5eXOx+IgyDot64aAbYjUOhbFNZJJt8=;
        b=m28k42xsI5SiG+pSVBUcrrwn2km8b8QnXKwrnwIRUb6rqX2nTB/sLTcJUwq9lm6hFl
         aTs8irb+SM5Ogu0BgGnophddH7IQORLKz+CsysspZd8LMSnEl0CNRuo2ONsoAZ3S263s
         R2RT3yt5K089CYQas95ymwdPGsHQ1/5DLEW90fvdAB49Il9JQumR71kmwk2+qlMaL5+S
         XYhsFMQCK/TU6+V9u1snSQn7qAii1b1m8FQu02hMNhPEfS1JAyxrFVQOIIBY5IBehAX2
         1TcrC1siDG79ywe7ZJDLE6Ew1e61OKvDIMfBVDWg2q1dI4dPz4qWPaJD7w3J90XZUaWm
         3zyA==
X-Forwarded-Encrypted: i=1; AJvYcCVWBb8OX0ZbPGaYSair2uqzqcxego+xo9sMK8L2liimpneoQvc75fJCwNNt5VvV4ra9Lgn2ODzVD7hcR+uI1WGBYA71TfSaM4GhVg==
X-Gm-Message-State: AOJu0Yy1LmZvlpBLWMSg9lccVt8/+X5wmht2lRekGVsTYnexmHGMH91Q
	a0l1X/fZZtUcnApVEJvPmjrraBP4XDqrC0qA5vrl0LRXG7kBqQYw1UgUpbrTypM=
X-Google-Smtp-Source: AGHT+IE8OwWcCvoSNoRbTbgfpm6Z2mGwUHjAwWZsIEDD4PBil+AaWyEv7bLgb2wawJDMc2KNFFUC3A==
X-Received: by 2002:adf:f592:0:b0:33e:d448:e48c with SMTP id f18-20020adff592000000b0033ed448e48cmr475898wro.15.1712303681268;
        Fri, 05 Apr 2024 00:54:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8e64:fc77:aa3a:87a? ([2a01:e0a:982:cbb0:8e64:fc77:aa3a:87a])
        by smtp.gmail.com with ESMTPSA id p1-20020a5d59a1000000b00341e24a586fsm1362739wrr.93.2024.04.05.00.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 00:54:40 -0700 (PDT)
Message-ID: <15a31bf1-e0be-45e0-897b-d29a1af6d357@linaro.org>
Date: Fri, 5 Apr 2024 09:54:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: Add SM8550 Xperia 1 V
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 James Schulman <james.schulman@cirrus.com>,
 David Rhodes <david.rhodes@cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Ricardo Rivera-Matos <rriveram@opensource.cirrus.com>,
 Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20240210-topic-1v-v1-0-fda0db38e29b@linaro.org>
 <20240210-topic-1v-v1-7-fda0db38e29b@linaro.org>
 <05e6f92c-388c-4bc6-a4cd-e9d981166d1c@linaro.org>
 <8f6236db-0692-44c9-b136-8e0dff714c55@linaro.org>
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
In-Reply-To: <8f6236db-0692-44c9-b136-8e0dff714c55@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/04/2024 21:41, Konrad Dybcio wrote:
> 
> 
> On 2/12/24 18:26, Neil Armstrong wrote:
>> On 12/02/2024 14:10, Konrad Dybcio wrote:
>>> Add support for Sony Xperia 1 V, a.k.a PDX234. This device is a part
>>> of the SoMC SM8550 Yodo platform.
>>>
> 
> [...]
> 
>>> +/* TODO: Only one SID of PMR735D seems accessible? */
>>
>>
>> What's reported by the cpuinfo pmic array  ?
> 
> PMK8550 2.1
> PM8550 2.0
> PM8550VS 2.0
> PM8550VS 2.0
> PM8550VS 2.0
> PM8550VE 2.0
> PM8550VS 2.0
> PM8550B 2.0
> PMR735D 2.0
> PM8010 1.1
> PM8010 1.1
> 
> Not sure if there's only one or the other one is secure?
> 
>>
>> <snip>
>>
>> With the pcie thing fixed:
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> It's gonna be fine with the recent aux clock additions. If you
> have no further comments, I'll happily ask for this to be merged ;)

Sure LGTM

> 
> Konrad


