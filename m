Return-Path: <devicetree+bounces-87746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8D393ADA4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 10:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C510A2866AA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 08:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9B313A884;
	Wed, 24 Jul 2024 08:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zExjYtbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE7013A240
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 07:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721808001; cv=none; b=TNAVbK4+oAoBbS1+ZfIx60YKGADDrYWskb9+NRXr2tWT1gJ8nggC9EEMWA0yc3UIZZ2slfi9heObRLTdABOb5LKsl1Iz0EBV02pHEgTttpKwjpxjYTeTcp0xYIOwls1pvLWA4pMVRwOfBF+q+PDLDIfiqxcuW178xpvWAaUaLyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721808001; c=relaxed/simple;
	bh=BqkfG8qoY+Tx7YLYfI0ZF6cIYml6C6dyEW67XVBsxdA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=sMKZZjLNqHpFABLtfbyyMdPW/cmE8WVWfPhq0l5jekSUu0dNsPWqnMbmisBZYyhLzUu7NwJObDr29hDfKO0hl01plVYIesTfFW05GSyi1f+kim3bLAokKaQOl/EpP9LR2c0YC8dhwhCLCZY9YrZrQ98RQUwv5XHPqtVNVhhicIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zExjYtbr; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-367990aaef3so3451522f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 00:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721807998; x=1722412798; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i5EyQsvTMSzrjZjcPRsb/ozfWVC/E8Z+Cfml4mXV2xc=;
        b=zExjYtbrbFH0QQC38zhHF4gNsQ+QMGl58otJ5oZu7nq/fK3e7YyN/ZiVtLv2/dLT+P
         KOarynJg5u3RYUvB/uIa04yRehYlyHwS0u1R9NRVaM5J7tsoPtbeonCEBU0uOFvbuaNd
         rTIXyI/0K2Ve0JIr5jnbt8OFIIL0r8cI4t+UmuL4NbPYEDdUxplGIGKrpDg2HiCU0f1b
         xykMIhqDcPS1Juw8kIO47jTpgGa7vGRcsSTg77sK381dHO9Nczp2ewkLpatUJNAIfuOK
         eHwe/imntwszLtHRcOwjAK0bPPPI4oJxc1RUY+QnaaOgDFSvSEI5SFohwFd7s4/Mczc8
         rkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721807998; x=1722412798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i5EyQsvTMSzrjZjcPRsb/ozfWVC/E8Z+Cfml4mXV2xc=;
        b=a0GCMDJ7qFwAGZHwSaznI5KKNx2IQ0bBaWXa+8+syA/+y0kbZvbuIY+Vf0u+avrsbs
         fossjY/CBP6+R8zOXJcpHtgURxwg70OlIfG+ouozpmotBkgJjEQorp7AUA+38hC0V2Sk
         5pCXUsnCaipw4UVtFCVGj+lSRV1U7kzAEgHvWgK+IZ6/7pjn6LkNlZDonkh6enqO/qKp
         NNNi9sVpCx9gEN1/r+kaO6E0SjXUgffu8l7uEZkQxgKt6dtd43KScs87RKrvfm4pcXpb
         jyQC9g7TLgdWUxavGmYyvo7KwvneZqSGcWFeRNzJARjhqPZiQI5w4axfYEVPDzyc8pE+
         e7Eg==
X-Forwarded-Encrypted: i=1; AJvYcCUJz85eSG8YPCSkxbKrOPjqjx7ohvBlDYe8ZN0xyxJyj9BLwQ8/kuYuxtS/xm25qV+7sbkAZQVEsk0DnqTQsdbramYWwkzhCQJuXg==
X-Gm-Message-State: AOJu0YzFRRWYC+AhVy3XJke8lN6E+YkYP4mWXnSd1O2UfzKaLEZ8aZNh
	YJ5Ygz4EKuVLrAxs4mGhXyi6yLTH03kecjyTT81b+20Di8BqnwukY3sJl+CbDI0=
X-Google-Smtp-Source: AGHT+IFiBS3rZaeds/X3fnlVO8zQjJeT5kfKSN/FGPkge7QvLsuTZHgFpZklRddPFzAeI59u6xT1lw==
X-Received: by 2002:adf:e5c9:0:b0:368:584c:3341 with SMTP id ffacd0b85a97d-369dec1e4f5mr3947846f8f.35.1721807997820;
        Wed, 24 Jul 2024 00:59:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:deff:4fa8:5076:b4c7? ([2a01:e0a:982:cbb0:deff:4fa8:5076:b4c7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787ed28dsm13501323f8f.104.2024.07.24.00.59.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 00:59:57 -0700 (PDT)
Message-ID: <6766a3b3-82bf-4c37-8631-48a8173d8131@linaro.org>
Date: Wed, 24 Jul 2024 09:59:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 4/4] drm/panel: ili9806e: Break some CMDS into helper
 functions
To: Doug Anderson <dianders@chromium.org>
Cc: cong yang <yangcong5@huaqin.corp-partner.google.com>,
 Michael Walle <mwalle@kernel.org>, quic_jesszhan@quicinc.com,
 linus.walleij@linaro.org, airlied@gmail.com, dmitry.baryshkov@linaro.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-5-yangcong5@huaqin.corp-partner.google.com>
 <D2LQJROQYIY3.2Q88EXS8HUDLQ@kernel.org>
 <CAD=FV=WAosZPSKdpwR6pjOmiy4hih=jXaMg2guuVgmc+qj-Csw@mail.gmail.com>
 <D2M42ODWQPAU.I0BMEOLKUP29@kernel.org>
 <CAHwB_NJ+YEMoL18Sr9HFmTVH_ErDztyF7vxxPFAE0Y2ta3dO0A@mail.gmail.com>
 <CAD=FV=VNx5qEyWDvVz6AVDryqvw09tkYRYMjbFuUQS4Wvyok6Q@mail.gmail.com>
 <4f3b24d6-9638-49d0-8308-00da09c7ed76@linaro.org>
 <CAD=FV=V5fYweYUoeYD=8qa_jTpF2P_ZjHKJrz0o3ikgrH4XJKQ@mail.gmail.com>
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
In-Reply-To: <CAD=FV=V5fYweYUoeYD=8qa_jTpF2P_ZjHKJrz0o3ikgrH4XJKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/07/2024 17:50, Doug Anderson wrote:
> Hi,
> 
> On Fri, Jul 12, 2024 at 7:56 AM <neil.armstrong@linaro.org> wrote:
>>
>> On 11/07/2024 21:36, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Wed, Jul 10, 2024 at 6:09 PM cong yang
>>> <yangcong5@huaqin.corp-partner.google.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> Michael Walle <mwalle@kernel.org> 于2024年7月11日周四 03:38写道：
>>>>>
>>>>> On Wed Jul 10, 2024 at 9:12 PM CEST, Doug Anderson wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On Wed, Jul 10, 2024 at 2:02 AM Michael Walle <mwalle@kernel.org> wrote:
>>>>>>>
>>>>>>> On Wed Jul 10, 2024 at 10:47 AM CEST, Cong Yang wrote:
>>>>>>>> Break select page cmds into helper function.
>>>>>>>
>>>>>>> Why though? I don't find that anything easier to read. In fact, I
>>>>>>> deliberately chose not to factor that out into a function. It's just
>>>>>>> a sequence of magic commands, taken straight from the datasheet. So,
>>>>>>> I'd like to keep it that way.
>>>>>>
>>>>>> The consensus of previous discussion on the lists was that folks
>>>>>> agreed that we should, where possible, make it more obvious what these
>>>>>> magic sequences of commands were doing. IMO separating out the page
>>>>>> switch command helps. Certainly I'm always happy to hear other
>>>>>> opinions, though.
>>>>>
>>>>> Fair enough, but in that case, one should take the datasheet (which
>>>>> you can find online) and replace all the magic numbers with the
>>>>> correct command names from it. E.g. 0xff is the ENEXTC register. To
>>>>> be clear, I'm not just talking about the "switch page command".
>>>>>
>>>>> As patch stands, I don't see much value, TBH. On the contrary, you
>>>>> make it harder to compare it with the Ortustech panel datasheet.
>>>>>
>>>>> just my 2c,
>>>>> -michael
>>>>
>>>> If all drivers replace all the magic numbers with the correct command names,
>>>> it will be a huge amount of work (assuming that the datasheet can be found).
>>>>    I am afraid I don't have enough time to complete it.  Thanks.
>>>
>>> Makes sense. I'd be interested in hearing the opinion of others in the
>>> DRM community about whether they'd prefer to land something long this
>>> patch as-is or drop it.
>>
>> I don't have a strong opinion, but I think only changing the switch
>> page operations doesn't make a lot of sense by itself.
> 
> Does that mean you think we should drop this whole series? For the
> "panel-ilitek-ili9806e.c" driver dropping seems fine since the switch
> page command (and many of the other blocks of commands) is commented,
> but for the other panels in this series IMO even just getting the
> switch page adds to the readability... I'm happy to just apply patches
> #1-#3 or just drop the series.

Well since we already have the changes, clean and reviewed, let's apply them!

Neil

> 
> -Doug


