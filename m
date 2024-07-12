Return-Path: <devicetree+bounces-85375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C616B92FD03
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 16:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7978628487C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF17172BAE;
	Fri, 12 Jul 2024 14:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T6f2aYu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FB416F83D
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 14:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720796198; cv=none; b=UQEc9NdUoJmUADZMHgOMBT/FGex/Bw6vfwmivQBjXYUf9L0rFZwhog/CRTqR21BeHdXRKXn1ANBY2aMPsOh6sGVC+p43nMq1ZDlTgkTzWpDZvtjDPHbT2C2jX3TVoK/tAwskcGoOh7f2fLumklBfWH15xBz2nU93cDYyjokfrMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720796198; c=relaxed/simple;
	bh=SSKRtsXyzHZFJ2vEEJZxayCvLBN10jSdkeQ4SPgwQyc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=mdhZ0U7/r61CpsQZTR3bsZr+cyqDjXzbbBoChoQZD8qNqQ9JaM5QizfyoV9c6EU/d20KzF1TcU+IQE7NlynfCWfxHXzgRsieh/llN8HP6xiEhBnCJzcDkCCpmYFIQNAsjtru/k8gQRKWP+vz+wOM+2KvcWHCNpxzgHyEWH8XjPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T6f2aYu9; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52ccc40e72eso1711107e87.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 07:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720796194; x=1721400994; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i7PJER1WcNMLVoA4+jwbRI3bEuqBAe5uHPV+6MR3WXI=;
        b=T6f2aYu9RviWKPb2+dVH0v4WygtLep6m4svNThn/T3ggMHCJI0t9REfbF0Xu/5F/II
         i9Ek3Bl7/KbUBW+PCvOgQv5noEeYNIE5bPldkaPJ4SqjAw95XupR1PRdlwGBiYHW0eso
         0wpSCj+FlM6iooed1xNOb0LOOoPo6KboLY016pex67kAEGMaTJ1+w4UTu9i1T1rsRx8Q
         P4/sGeoY49314TZTg65pizG2mJLlHlKAfxbMQiDjOoeoyUGwFINDJ0/HIH/39muVtUBP
         coBwrVoB5j12U0UoYawkwelAVnv/9w+FLtSgXoYHksw+kMOuVwTD4bmVY/1iQXcvCsXL
         a77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720796194; x=1721400994;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i7PJER1WcNMLVoA4+jwbRI3bEuqBAe5uHPV+6MR3WXI=;
        b=UUK1Vwuq+kqqwlI3g1rpZ+1S+Nd7NpVcl3EFk+GJplEy3VnMez3rwmllPpMI7yhzYN
         hanBNIlIBftwjjY5PNe4LxqcPWPO0IaqsxTzIrtZ36OOW0zoayjORBMlbt7CzFLCuLsP
         y0n4WEMreC/AncqFMZkCjHkBU2TAqA/iU/IvfM9lPvalEJhw4Ngva7yxLJt6ydm9JsX3
         KSl74x7Q7XQ0yUEhCA8cfwIERlYUHqXlc1MhynGqSMdwWHHcaYdytwMHBYvVWZkECwj7
         3yYCqgcuVOFGNK4bmeh60GMZ+Agf07yueFZhwOqc8iI9+f7SmBYbBwXD4ZVILvD3srz4
         WIeg==
X-Forwarded-Encrypted: i=1; AJvYcCVl6Uycvhq37CmcUMhaq4fgxvdgtu8w//hARqStRnvqZNT/sYwteyy3JJx7143ywB2EEbuwMrnLwb1cX+/zDrpiR70oDa1eRwjdLg==
X-Gm-Message-State: AOJu0YzNQ9FDBfy24EDHtjm0ZvSQhnmCs7xxcMRdBDJ6D3NVq3HacVaO
	SAXWZlseSo5/swsMFXnFupKzO31FCawswLNcwUYz+e9mB4AfLRhh1rrFxI88LQM=
X-Google-Smtp-Source: AGHT+IFKsQa4tj4EnMtXSYCImi7RYxWXOxCwTzx3qALEfPlt1OtJI1helQ394X7LtJ9DSijPFxVFiQ==
X-Received: by 2002:a05:6512:3b20:b0:52c:adc4:137c with SMTP id 2adb3069b0e04-52eb99949a2mr8484666e87.20.1720796193960;
        Fri, 12 Jul 2024 07:56:33 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:123f:f92c:4c8f:b8cc:9804:975e? ([2a0d:e487:123f:f92c:4c8f:b8cc:9804:975e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f27846bsm25959965e9.25.2024.07.12.07.56.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 07:56:33 -0700 (PDT)
Message-ID: <4f3b24d6-9638-49d0-8308-00da09c7ed76@linaro.org>
Date: Fri, 12 Jul 2024 16:56:30 +0200
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
To: Doug Anderson <dianders@chromium.org>,
 cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Michael Walle <mwalle@kernel.org>, quic_jesszhan@quicinc.com,
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
In-Reply-To: <CAD=FV=VNx5qEyWDvVz6AVDryqvw09tkYRYMjbFuUQS4Wvyok6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/07/2024 21:36, Doug Anderson wrote:
> Hi,
> 
> On Wed, Jul 10, 2024 at 6:09 PM cong yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
>>
>> Hi,
>>
>> Michael Walle <mwalle@kernel.org> 于2024年7月11日周四 03:38写道：
>>>
>>> On Wed Jul 10, 2024 at 9:12 PM CEST, Doug Anderson wrote:
>>>> Hi,
>>>>
>>>> On Wed, Jul 10, 2024 at 2:02 AM Michael Walle <mwalle@kernel.org> wrote:
>>>>>
>>>>> On Wed Jul 10, 2024 at 10:47 AM CEST, Cong Yang wrote:
>>>>>> Break select page cmds into helper function.
>>>>>
>>>>> Why though? I don't find that anything easier to read. In fact, I
>>>>> deliberately chose not to factor that out into a function. It's just
>>>>> a sequence of magic commands, taken straight from the datasheet. So,
>>>>> I'd like to keep it that way.
>>>>
>>>> The consensus of previous discussion on the lists was that folks
>>>> agreed that we should, where possible, make it more obvious what these
>>>> magic sequences of commands were doing. IMO separating out the page
>>>> switch command helps. Certainly I'm always happy to hear other
>>>> opinions, though.
>>>
>>> Fair enough, but in that case, one should take the datasheet (which
>>> you can find online) and replace all the magic numbers with the
>>> correct command names from it. E.g. 0xff is the ENEXTC register. To
>>> be clear, I'm not just talking about the "switch page command".
>>>
>>> As patch stands, I don't see much value, TBH. On the contrary, you
>>> make it harder to compare it with the Ortustech panel datasheet.
>>>
>>> just my 2c,
>>> -michael
>>
>> If all drivers replace all the magic numbers with the correct command names,
>> it will be a huge amount of work (assuming that the datasheet can be found).
>>   I am afraid I don't have enough time to complete it.  Thanks.
> 
> Makes sense. I'd be interested in hearing the opinion of others in the
> DRM community about whether they'd prefer to land something long this
> patch as-is or drop it.

I don't have a strong opinion, but I think only changing the switch
page operations doesn't make a lot of sense by itself.

Having a much larger register coverage would be preferred.

Neil

> 
> -Doug


