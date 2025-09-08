Return-Path: <devicetree+bounces-214424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB5CB490B8
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95FBF3BC72D
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 14:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBADD30C62A;
	Mon,  8 Sep 2025 14:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SH4V4cn6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE193054D9
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 14:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757340449; cv=none; b=t1n/Cu0vRpS/OndFV1RkkNwS0Zbzk34kJELAlIvpMnVYgzC8zzzo9BT6yIjZVPnW84GFSCLvlsuMcwkcpIJiylKqISQzzzMyo9Bdi4xBDzfHJGjAN88px0185b9nGEVdcP7cPZm8FN0V995ctYe6pfD6xQXJZC/Z8bzbth6j1Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757340449; c=relaxed/simple;
	bh=M/Zgz6ach2ic8c+NvmOlMwm539QJY5Sta9cn1PQv0jE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EkJZuQPk2qtGsziHW/eVLSPcnL0kUUNeO5FHD7cK6mxs88mn2TESarUOtkR0+an+3KtwDnvqWfj+1iwZ8ad7Byae1bfINJNRkfvcBlzdiLApNpzUdKXO32yR1M/Dkvm9K9YkPU4rPsBvV4+12WcFcHtQAvAycsaQfNVwtau0mcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SH4V4cn6; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45de64f89a9so8203525e9.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757340445; x=1757945245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rdc/gAsQZ6uhaHdORjf30XQWPTkhf47P6Ih3PEktLz0=;
        b=SH4V4cn6yamzvi+IYG+21XfszvAz8xp8/pKIbn0q2pjQ4p6lxJWQLRdYxa47i/N+18
         pWygTJ0NslYCuf0OwDudZ2GAK8l8Bp7PGdAcPv1v0k/3rJIIj0qiRdkGu88rcbMKTWTU
         2LWwce4LfWwRAELVlPANp4D+ynEYXkbjZrB0+flnC8Ugiesz9VgapgJa0IDygWK8bNjf
         tO0sEzx2YZZlbVmLIOZWCZ7XS1xpHPeMo/nd6YDvLpZZuQ5mkUjyRrNcY+1Goq20qoIa
         PMHTQVawCKVC5A+q3ykhOGxCGWXmU2QDIIMsgbI2zDgSYxUwK7Yx8E7nU9HRlSRh8Dv6
         ONPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757340445; x=1757945245;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Rdc/gAsQZ6uhaHdORjf30XQWPTkhf47P6Ih3PEktLz0=;
        b=hJROEKnfITQlH6BBbMrM3EzzeOZ1Kb68eOs0C/LPUPSiowi674wEHQK0Z6xE+R+5I9
         ivgWqKcyLQQa6Jm48hw8SXnRgWMOC7G7qI+N2snwRXK6DxoHeATxDeTrkFw0C1ZX/e74
         QTv/OKk2t+PXI7RDpB5TdIyuLdNnZQGqTGiIDuqRgelziHdbtp5L7DJcK4vLKXXDHwBJ
         uh6RTM+SxWNp1IediJQyPLOyJmyrXX9lVHtZqEoDZADwhV8UM7k+rteQ7+0ic2tSgl5x
         DBvMQlI39j455BzlOUjbnTmC5J3ga9U9zxDWWyIPY2TkZNWz+f0JnisoNBxSZkprgnu8
         755g==
X-Forwarded-Encrypted: i=1; AJvYcCVtqMiyblft64nCgRn5C45oEyMEjiCY5sdoH8uqnIlKsifFKksEyxMeVAflvTv0EQcROOoejiG8W07y@vger.kernel.org
X-Gm-Message-State: AOJu0YyLvFIsddKGnEm8Biaeu/ysY8gVFCzYIWB62xMn34pYvfa49zQx
	5QNEfORTUuOvCBCAGsgbTTV2xjkIZgWKCm2p0DYCJRG+HFZ8Djmc+24+kuaMkupye9c=
X-Gm-Gg: ASbGncsJrUNeM5JPPo42TdtcQkU4PXGOdyygQMsiSeYB2EEHUC1EIl3Bh4KOfpOntva
	A8C765esTmKA1C6+FFPFNtuhtisRZ0UePtIdvt4xrAokB+JGFDp3LsntiootP/9bqKpZDiLHSQg
	Cy50gFfvQ0eYPj35wG86U6lHjzATJNKf/ECvMeyHFigT8+0WJ+ubIMktb6NCv8oCFlFyEWr/jQw
	AdaEKJyBTwShptXodS0LisXBTsLNkbgw7mZfyzgDkn1aokCGZIClsP2PmaTotMNgjp+JBj2EhIt
	AEvliy5qgmWuuAFfPgqoSZflAIM5uYZNtfZkf8jcb+a8u5XMpFO3b+YP/YUJMuJ+/VXMs7xutKZ
	nkWoMjir/+C67PuR+YthP0WNF/1z6F7GoHrZb4spqy1+4T0dP6/LdzsCJ1Ayq6IiEkPh8ncse9T
	8TKgCQ4iNIsQ==
X-Google-Smtp-Source: AGHT+IFgaJMZWp+yGKsLkm2e55jSKRrdRQJMjkwsfeyTYzu9PP+AiFfrM1Y4iCzAOP2g1/eX7se7mQ==
X-Received: by 2002:a05:600c:c0c5:b0:45d:e531:99df with SMTP id 5b1f17b1804b1-45de64869d9mr26259825e9.3.1757340443694;
        Mon, 08 Sep 2025 07:07:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:61c1:5d31:4427:381b? ([2a01:e0a:3d9:2080:61c1:5d31:4427:381b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45c6faad9cfsm266392505e9.0.2025.09.08.07.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 07:07:23 -0700 (PDT)
Message-ID: <a0d8f2de-2456-4f18-b901-e8b003eece44@linaro.org>
Date: Mon, 8 Sep 2025 16:07:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI
 bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maud Spierings <maud_spierings@hotmail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 andersson@kernel.org, andrzej.hajda@intel.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, kishon@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, rfoss@kernel.org,
 robh@kernel.org, simona@ffwll.ch, tzimmermann@suse.de, vkoul@kernel.org
References: <20250908-topic-x1e80100-hdmi-v3-2-c53b0f2bc2fb@linaro.org>
 <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
 <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
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
In-Reply-To: <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 08/09/2025 15:45, Dmitry Baryshkov wrote:
> On Mon, Sep 08, 2025 at 03:35:23PM +0200, Maud Spierings wrote:
>> Hello Neil,
>>
>>> Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
>>> index 1f16d568bcc4e0fb56c763244389e6fecbcb2231..e4d0bc2200f8632bcc883102c89c270a17c68d0c 100644
>>> --- a/drivers/gpu/drm/bridge/simple-bridge.c
>>> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
>>> @@ -266,6 +266,11 @@ static const struct of_device_id simple_bridge_match[] = {
>>>   		.data = &(const struct simple_bridge_info) {
>>>   			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
>>>   		},
>>> +	}, {
>>> +		.compatible = "realtek,rtd2171",
>>> +		.data = &(const struct simple_bridge_info) {
>>> +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
>>> +		},
>>>   	}, {
>>>   		.compatible = "ti,opa362",
>>>   		.data = &(const struct simple_bridge_info) {
>>>
>>> -- 
>>> 2.34.1
>>
>> I would like to ask again if it may not be a better idea to introduce a
>> fallback compatible, once this patchseries lands I will be adding the
> 
> I'd say, that's not a good idea. We usually don't have fully datasheets
> for those bridges, so we can't be sure that there are no strapping pins
> / other GPIO controls.
> 
>> parade,ps185hdm. I don't know how many other variants there are that are
>> just simple dp->hdmi bridges that don't require anything other than the
>> connector type set to HDMIA. The Thinkbook 16 and zenbook a14 both have HDMI
>> connectors, likely with simple bridges too.

Sorry for the late reply, yes I have the same position, they are simple bridge
until we found out it's not the case...

Neil

>>
>> Kind regards,
>> Maud
> 


