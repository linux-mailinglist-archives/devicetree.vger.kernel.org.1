Return-Path: <devicetree+bounces-41602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FAE85467A
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 309EA288245
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ABF81427F;
	Wed, 14 Feb 2024 09:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fg0FNhUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DB712E76
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707904227; cv=none; b=TWo1ZqKDAAtJw/nOAZ84/nz8YDFIjWLq3QAg37Kzdk8Eo6uFrS5riqnSTGR62kGJvX5kxzUOr+AqFyLD36IiPHOX3mhgLIAtpdzKYletgVV7lf4zUiZtWOB/0Q+XKOcs49aFv7drxmkpEPz89bIyxjREZkP4JLrhZGja+cUkW2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707904227; c=relaxed/simple;
	bh=zk4EnXBuE0K5H30v5NDcVwK4iqg3fzeexCaeoohuMwM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=sBoCSmiDIl6m0dhiMZrNFA+7rDP5BfGCCVp8eFokaFclDy1Aq7923TXCuDT+qAmiul0piqSiT2oWowq3X5QO0Uu+dSB9K5yxyjCgn5VuEAirLDWX99XyA3Quk+IUUjscoae256aur9Mxf/6g3Sr0vGW5wSEJJqN62kczV3Tp2o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fg0FNhUA; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33cd57b86bfso1153155f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 01:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707904223; x=1708509023; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K3oqzJu651I3hD2aUVksoi8h7VJNzLL1lNiNLXvIQ20=;
        b=Fg0FNhUAVtt3/ex4OA3pFVzMbbDQ3hX+XnBqN3BmZA3ncRqyUX2DbeZSOgefF98toL
         v+Tw0ix7WTeAXDoqL5D/RezzUgsPVRV+EIjOZN5reDVBenwUMInqL2mX1O2m7vy/6HN4
         N7EP1zFb2eIPSO8/H4SfV8r3K2SjOZz3kNjgu43LVBW7dZsZ1Uewb+Y2EMMJgvoQCr0J
         5MhEMUu4kviW46kMZEzMIBBqNAmpzh7FEKp3a70TH/h26z6VbDufev7DJmFGW8ZKfwBL
         wkhfFhrNP3zQW5b/FMy8vw8qevezUHoMNDAyPu/B9wk9L499LHn+RxHoAgEMK5YIjHxP
         Tnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707904224; x=1708509024;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K3oqzJu651I3hD2aUVksoi8h7VJNzLL1lNiNLXvIQ20=;
        b=ewyQKjNZa6VUpuKqo4yUu6EtNYzzXw6pMa26qMcuUzsqQlSULUabhO46GoxBhqV++L
         Qaf6vuVbLgIUij/NUHeBvP5lsXrZVRf05JrhnaSCU6FS8mKKo7VfhZR2WiMM7oD1B3on
         TOwrh1wWwcMc1bC/iSj61h7LhbMo1sTRpdgtyZesF1v1m3TkYQyRsc1RCAG5975Un31Q
         tVqsxLbRAbC4DPbRratc5OZ4q54clioIDqWpsOYCFrIMFnO6PR822Y0rewpn9QAGu5hL
         sijhD5Zfm154qz6kVQT4FqbYwZevqm+D5Rn9Gdl638InBZ2VHdCf0MEdiY3/WBbxL5uy
         Zehg==
X-Forwarded-Encrypted: i=1; AJvYcCWNKuf8m3Qm0+kXiNET2/koOjCkmGAF2tibthgUJ+OcLIb29a0E0uH5qyaR+6QNuzhYb7KmGcmf3hHibGzpTyv5D4ICKk1q9cONOw==
X-Gm-Message-State: AOJu0YyHH/Rsn9w5hBhS0a5j8fbxMH7QJB3wPyrzanA5ovynjQFGPH56
	Hpspj9HVNNfwViORmx//BijDGDoo19x5bURz3kfQcKx+lPiB3oSXBiF0iknICw4=
X-Google-Smtp-Source: AGHT+IHmyPUjUsGUAjjrxpz8F2ZqModlPfmBdwaETRWIh6d05Ckg0QgddgagrlPFXl8qhK5otBtxZw==
X-Received: by 2002:a5d:558e:0:b0:33b:49bb:5f91 with SMTP id i14-20020a5d558e000000b0033b49bb5f91mr1383897wrv.16.1707904223601;
        Wed, 14 Feb 2024 01:50:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUOBmHidvJmdLA/fLShjhU6mSvfYljQS2avuA9S1BOTgr0k/gV3tq6mFxzsXbiGd32AL15BGjwpkfaSMlDVL3aKSWNFvLYEkYoeQa7El8rpv/kGRExl7ax5XGhNY04rrZYRkh9lQKLT9AddhyjkFAGv950Ic0GWvCv+0v+p2BrOJuEMsQv491ZKos1SWkhhRFoZhpsmChhH9SugyG9lA1c+K4l+Q4LIjGrkwstbRgETiwQelCLq95P1702l6zpwIpaad1Yjzla0fdv2Zp/ERevwnv8qy7sF9DUbGxldVtMK+rh1oe3fLx4/6Gqn6P3fVphIfVR9XJ+y35Ps3CpWIL5zO8TStNr8fcm/n/oX6bROuC9SksQLt9NmyPWTATtxaK/8sxChHAW2qeOhVyzN80GBAAIi1D+40cjZ6y8dMvwuM9tUs8rsUrBTKqAO6KV40u5rzad/O7x+33IRqg9Jz/EMTtGPfJfiSK7G6+tSQCxr96tDINJOv3NE4GIAye3isOOziT+qpOEsWwp8XUZbwuKKE7Y0SVqAu/4UZei3GoAWqXu128Njlh+XdUZvHyMN+PHpCbJxhFMchq8+T+5laOBnqs18dX4uDX2uW22ooCjrUyCoI7rCpYUwgat6BOKfvHsJV6dg58kp3agHqI7QTr70cuCJ6nZtuYNg21cQiKfoTyvDZAV+EZcofIiE60sVe3aqfjMPOryY
Received: from ?IPV6:2a01:e0a:982:cbb0:31aa:ecd:7a9f:63a1? ([2a01:e0a:982:cbb0:31aa:ecd:7a9f:63a1])
        by smtp.gmail.com with ESMTPSA id e12-20020adf9bcc000000b0033ce9e6e8easm1444672wrc.32.2024.02.14.01.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 01:50:23 -0800 (PST)
Message-ID: <f9164049-6529-42c1-a35a-e91132c823b9@linaro.org>
Date: Wed, 14 Feb 2024 10:50:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/4] drm/panel: Add driver for DJN HX83112A LCD panel
Content-Language: en-US, fr
To: Luca Weiss <luca.weiss@fairphone.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg
 <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20240110-fp4-panel-v2-0-8ad11174f65b@fairphone.com>
 <20240110-fp4-panel-v2-2-8ad11174f65b@fairphone.com>
 <CACRpkdaWTfPDCin_L6pefHsokjNyO8Mo6hWPdzPLLi1EUkKUuA@mail.gmail.com>
 <CYBZEZ4IM6IL.VR04W7933VI@fairphone.com>
 <CACRpkdZQbVXfBa70nhDOqfWPbsh-6DgX-uvZOxr19pzMmF2giQ@mail.gmail.com>
 <CYCLSCKPPBOC.1B1MP3VOOC0Q8@fairphone.com>
 <cdc18e2a-b7eb-4b54-a513-481148fb3b0d@linaro.org>
 <CYCMVXHYVDCI.HVH1TR8MWEUK@fairphone.com>
 <CACRpkdacS9ojXUuogygkz6xxCf3mMq6GG_75sze8ukUu=rxVyw@mail.gmail.com>
 <f99d363c-d4a6-44b3-8057-3925f8dac1d5@linaro.org>
 <CYL76M5KT424.G3BC6JX74XVN@fairphone.com>
 <CZ4P5PWJTODV.3UJ89H6M8W07H@fairphone.com>
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
In-Reply-To: <CZ4P5PWJTODV.3UJ89H6M8W07H@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/02/2024 10:33, Luca Weiss wrote:
> On Mon Jan 22, 2024 at 12:27 PM CET, Luca Weiss wrote:
>> On Fri Jan 12, 2024 at 11:26 AM CET,  wrote:
>>> On 12/01/2024 11:23, Linus Walleij wrote:
>>>> On Fri, Jan 12, 2024 at 10:52 AM Luca Weiss <luca.weiss@fairphone.com> wrote:
>>>>
>>>>> Since there's zero indication Truly is involved in this panel in my
>>>>> documentation - much less the number 5P65 - I'm not going to add that.
>>>
>>> Ack
>>>
>>>>
>>>> OK then, I fold, thanks for looking into it.
>>>> Keep the Himax hx83112a file name and symbols.
>>>>
>>>>> So in short this panel is the model 9A-3R063-1102B from DJN, which uses
>>>>> a Himax HX83112A driver IC.
>>>>
>>>> So compatible = "djn,9a-3r063-1102b" since the setup sequences for
>>>> hx83112a are clearly for this one display?
>>>
>>> Yep let's settle on that!
>>
> 
> Hi Neil and Linus,
> 
> Any feedback about the below question?
> 
> Regards
> Luca
> 
>> It's clear to me to use "djn,9a-3r063-1102b" in the driver now but what
>> about dts?
>>
>> Currently here in v2 we have this:
>> compatible = "fairphone,fp4-hx83112a-djn", "himax,hx83112a";
>>
>> Should this just become this?
>> compatible = "djn,9a-3r063-1102b";
>>
>> Or e.g. this?
>> compatible = "djn,9a-3r063-1102b", "himax,hx83112a";
>>
>> Or something else completely? Do we have some documentation / best
>> practises around this maybe?

Sorry I totally missed the question.

Not sure if "himax,hx83112a" is needed here, the "djn,9a-3r063-1102b" is enough to know the IC is hx83112a.

I don't think you'll ever find a "djn,9a-3r063-1102b" with another controller IC ?

And "himax,hx83112a" alone as fallback is not enough to describe the panel hardware, so I think it should be dropped.

Thanks,
Neil

>>
>> Regards
>> Luca
>>
>>>
>>> Thanks,
>>> Neil
>>>
>>>>
>>>> Yours,
>>>> Linus Walleij
> 


