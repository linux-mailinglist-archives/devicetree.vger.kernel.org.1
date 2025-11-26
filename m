Return-Path: <devicetree+bounces-242258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D10C889B9
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:19:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A22164E5822
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EFF313541;
	Wed, 26 Nov 2025 08:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gDnU6if+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087AA30FC1D
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764145139; cv=none; b=qtq5aSv3DQPrm69zox2bIJyDa3xBYm8NK2XUOuzd+oVCQYQGlBZ/9E84ZDv7tGwowgH4fG3kUiY8wpzjBS90298SeJnCsfG998dGu+87TFo/P51cz3mPKsFwI6qc3OjgsBa/yihvU8aWsoWz0+Knz/nYbgg83F3iXhMQb+2C9CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764145139; c=relaxed/simple;
	bh=As7pnP3Blb7AXM6pnH84egHqO4Slmw6V1kump2nITH4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ubyzmv2XZI052WtC6O8RGP1AgEU3YzWj1pCJOnzUktAajLeiph/NkX7nj4cMZsJKBrOwqyMDZ2OExyC/w6fJ5ckLPUzkOiXuINPTLcSOQCgmlgW1Uob7jtzF3AK+qmxygNHyE4WBG8hNb8UMkzuF1GS6uVmynH5mwErHq2T6s4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gDnU6if+; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4775ae77516so60495095e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764145136; x=1764749936; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3/sh9hfHUl1Es5gQqKqLYMYmlFm7mD+qXXYV9A8fhF0=;
        b=gDnU6if+RaG6AK1tLdSgBtr/65TF8EouIwvhc1724QNNSKahY8cBcHV1aymIyyzSlO
         obyElZaigaN5o/HLWsSLLfPEM1MkyUyIDmTtHUIBFuBmMSCpayQz2wjN2z6u1fscE4IH
         Su6O/snQRHeoH/niN6KV1HLFGesGeOdefp0bvUuqbhwhSXx4Hc/arlWCa09/CBt9kP07
         Y1Zzc0e8jKF1gvfntxC6xUZ3JJJ6GetWZCsHXDf8/nCHTUmg3W255tKZnR64lI9QnaK6
         zhmmuX0vjNuTshvV+c5aL23jocLruDS4TyLICnPp6bjQH3QMPlzwJhQYw/KVOIM3h3jl
         O4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764145136; x=1764749936;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3/sh9hfHUl1Es5gQqKqLYMYmlFm7mD+qXXYV9A8fhF0=;
        b=iPytx7bzEUP664Lp94CFQ2NMCZWYNw2JF/euORor3wbr5RR4sqmjMswbgC3WB6S5gY
         wkBhT2P2Os5RHlnaa5i6dOahjxrfWv2gZ6Dvx0ddmeEx8FQlCrxGYyLSy81oIm65YLFb
         UwNBu133mrpG+Fnmb2yhcXCtHVO87Xv6SN5B8PIiKvrICaF1vRP8EcHLqbulRAvQKCBd
         djpdBASJfghxe+Ernt51FLkfBp9myMhgpLc+BX+kEdsouWrS+7UcAFYjVcubJ4cgTAaH
         OMtJGA8G6jqVHODjnA1M1DT8uoArbzqwm+drctvE6QTlba1s6AnnBUP/rfvOWt+8xgwu
         Z1nw==
X-Forwarded-Encrypted: i=1; AJvYcCWhGrd34plDNDBadiQOXoWH7IOD0Joni6dh5svI8CNYFFBjPcJxL+waI1f0jZpVKBTkN3nDTNg2ptB9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3as+2Ht0R89O15G7FzbRde3w6t1Z0zP2WsVY+6avu1CEblt70
	QqT4caVmqfzVbVNHHUWFE61N4wWChANdW5R2HOGC9JnjGZL0Ne50SqIfE36SHV0LA04=
X-Gm-Gg: ASbGncsWaWYXx3PG73xL5N4gcd1QSvVjUzbwmYhuL/3/uGlOAulhX+50lCA2zHfGQoi
	8ZGGY3bvrrDlubG/09BLVSSav+8nfRqgkunR6zSxJWnZeO1sOsoBt5dyZi7lz/dS5GdH8Zjkyj7
	0aeRCqPMCiKUVxjsq+R3t/Fcm8Nt1Oo0VWS/ko3uH2OItF8pCKkqao4utrf9RVOVe+krZySDsZK
	wydCMutTi6JG857wXmzIZM7ZaHEJzf3FfSjq1CSvpTnfAMZ2WyoGN88qbrBt5Wz1KcKdkVs9ThO
	6BMJL6V7URWj8uiJWfPYgupPSxVa/csjLu7q8GfnuaQzYIwBzU9BBxxK3A9PwBDsUD/DyewRYpT
	ojxPLutyh+vGpc/TGRhceB0ERaInpycKQOit50xFImOnOfSVG/ZGo14vE9IwWcuDxpcBxj+kVa9
	62zgWFkWUSm85A4De4G6B3PwBMxVE3U5+DDqqlOzL04CUEQ4qdPbbaqDyfUa0h
X-Google-Smtp-Source: AGHT+IEbmiiAOqqQgkV8vV4rPnRbUXsu9iSAZuXeYSomG92JLEZJtI+1XjF6BMkPvH5pGRIrKPnfBw==
X-Received: by 2002:a05:600c:a01:b0:477:7b72:bf9a with SMTP id 5b1f17b1804b1-477c112f5c2mr177030035e9.28.1764145136159;
        Wed, 26 Nov 2025 00:18:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:91ba:3a5e:334:4534? ([2a01:e0a:3d9:2080:91ba:3a5e:334:4534])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790add608bsm29959795e9.5.2025.11.26.00.18.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 00:18:55 -0800 (PST)
Message-ID: <2fdd5660-e25e-4c29-95da-1e342feb424d@linaro.org>
Date: Wed, 26 Nov 2025 09:18:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] drm/panel: panel-simple: Add Sharp LQ070Y3LG05
To: Daniel Schultz <d.schultz@phytec.de>, Maxime Ripard <mripard@kernel.org>
Cc: jessica.zhang@oss.qualcomm.com, maarten.lankhorst@linux.intel.com,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, thierry.reding@gmail.com,
 sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 upstream@lists.phytec.de
References: <20251124123938.936521-1-d.schultz@phytec.de>
 <ehhdijawntxsaguhygczk5vrb2quqg3ep5eer25auh7rrq5f3x@pvcaxa7n5ybm>
 <4989e0fa-7251-4f2b-b1b1-0bd534a585b1@phytec.de>
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
In-Reply-To: <4989e0fa-7251-4f2b-b1b1-0bd534a585b1@phytec.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/24/25 14:53, Daniel Schultz wrote:
> On 11/24/25 13:51, Maxime Ripard wrote:
>> On Mon, Nov 24, 2025 at 04:39:37AM -0800, Daniel Schultz wrote:
>>> Add the Sharp LQ070Y3LG05 7" WVGA lanscape LVDS RGB TFT-LCD panel.
>>>
>>> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
>>> ---
>>>   drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>> Any reason to use panel-simple over panel-lvds?
> 
> I didn't know panel-lvds exist. I just convert these timings to panel-lvds and works fine, too. Thanks!
> 
> I don't plan to send my device-tree with the new timings included in the near future. Should or can I already add this panel as compatible to panel-simple.yaml?

Any reason why it won't fit in Documentation/devicetree/bindings/display/panel/panel-lvds.yaml ?

Neil

> 
> - Daniel
> 
>>
>> Maxime


