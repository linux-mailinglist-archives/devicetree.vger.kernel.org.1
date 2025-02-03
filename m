Return-Path: <devicetree+bounces-142405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAC5A25455
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7341A1882138
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE8101FBC87;
	Mon,  3 Feb 2025 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lhH4hsfV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097481FAC23
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738571034; cv=none; b=JvrXjnhecetxXigO1rMkZCjTtlbGUrutTLwnL5PDhWHc7I2yLZHk6yEiC2ecFWeJ6Q2l20oiawXUwAbUIVRXlnsEk0MAmP3wQHgtS+7ITewVFKdC7SS/yhI8eTpaUMAQeIr+KfafreKoc0ioEbGjeK/tEvCUuv+MxH2WCT/upEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738571034; c=relaxed/simple;
	bh=z9BU705GLXB50N/YdOjFX73tlnQpgsmKDIwSJPpU4eA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XSkFe/ZHUZUm5RxbSdo4w1tDBnpfl0MgN0s7c7g/DE1V2M5KttjeEJGDATm5PBF3afjqtQkP4+4k3TzQHXJZ4bGskozFI4a07tByP8fJeB8X9X9gJOKVtG1RxufvtrnJH+beQCiWlEnHfoCZxOSEVWXkDxs4oo2mW0HwvD63HHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lhH4hsfV; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43675b1155bso47895615e9.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738571031; x=1739175831; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pQCWhqsYRmlL9rcM+R5ONSNVXNMcUnDtP0jlAKeY3ZE=;
        b=lhH4hsfV5FG00bvmMFMsCmHS/zsFFp2BxCt52jV4jfns80QinsRTw0tw/G5JSunKFI
         xHZTRPJTTbYoAdW3k+V5gKOjV36NPw75VCARpcAw/eK6vY5FforbxY5opTgqlfQQyvlx
         RgEfj9maEvjOlpSLjyBpI0dHP92EL8511cAmCP47UJ+1xYurs2IKS8aU5+TJlFwJpcji
         y+s4Nc033Z7dpglOAlWumPadDZOntVrbiIWfscrtHMkFqV+acAj9kHqlD6vyfR/T0xBO
         oDLU9+7h4Ns3OPKMKHWXZOWqVbaZmnw+D4Sl+UTcMjN+UiUMgUes3sK/UJ221SO0cmGh
         DFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738571031; x=1739175831;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pQCWhqsYRmlL9rcM+R5ONSNVXNMcUnDtP0jlAKeY3ZE=;
        b=wlw7kFnVeOCexYbTdQJ5OsdAjI3spANT4mTUnVTZbYRcZvjycZ6g7i1I9vhvLKV4dv
         ynoigzqZ/yS4Y1UtPjMUkPSUKoj0OWvfVzY/rwon/2m9DqvFeXTmbNtzBBcnho5MroFZ
         SIZm0fH6Y0ZiryXC4THRjmK3vrzZTM3epEpidSxHPkRL834rE0+wleWYwQZ+6hW+DCOv
         2BdSU426zAw8kPrAnVPDNqdbNoaC3bHS0HtQhQmY93Ium24QcAWPaRWRWGPpKrAbfQ2M
         BUB7btxq0yoAfA+KKBPLvP+SsF7DigOp80IaVW1uBcybdMlNgh/ctW3ky6Zucff5w7JP
         3ZFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx4JTZp3tbFrG4ciHfb33iiCcR1rm+ONEq74ZT8kBFjJQK4dJ6qDR/hiJbeJ7nUfd/tJ/fhMz0QWNK@vger.kernel.org
X-Gm-Message-State: AOJu0YxwqwguGPDdqcZkfSQDReNIjlSTPXmRHW+538zs+3JE7KUep1ku
	1y0Fk3BlI9XUbtw5+o5PzY7ddZQPO5iNtzpIX4O4kuf1+FoAI4PFscwwssLVFSo=
X-Gm-Gg: ASbGncv/wjkLQNN7scwpHiVyX6mQQxvwhWUI14L1wkrgIier3Mk5fM3wde3xiJQBwB7
	A2AmSd/N8QbdvQ8l28kh1i50QV8hUABvJgjQRF/RdaYN2GfPwhHLyfYUlz3WlfmnS4IXUVtkD3O
	YDmA9qN3vmA/eiXebwkWMmj/u000gga40md6o2lgSpkk0lUrqm9+u8haMtwAis/WqxcjoyqlkKY
	AjU2OfCEcGBxf+G7WPxvl9YeFgeyBx6zQtegUs0/mVjPqToKSINGP7LX6qr1HF/RGnwLaKBarG6
	Gmr6xVPmu1RE5m6j8TN+eoep7Z0ywxQ5F3ZO/nqZOrM48DK2jajl0cN7jWvaqyr1oQaA
X-Google-Smtp-Source: AGHT+IELO7TOgF+MW1lIEUbvDpJTkXWnvydRSQikj2ZL+gIMdvxjI/MEWkY8cQZpZfyaXuW3zEOkPw==
X-Received: by 2002:a5d:6dae:0:b0:38c:5bfa:a961 with SMTP id ffacd0b85a97d-38c5bfaabefmr10691476f8f.4.1738571031292;
        Mon, 03 Feb 2025 00:23:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:e2ce:628f:fe98:a052? ([2a01:e0a:982:cbb0:e2ce:628f:fe98:a052])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102bdbsm11901976f8f.28.2025.02.03.00.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 00:23:51 -0800 (PST)
Message-ID: <82828c3a-ed8c-42b8-b603-bc73d3be7497@linaro.org>
Date: Mon, 3 Feb 2025 09:23:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
 <20250129-topic-sm8650-thermal-cpu-idle-v3-2-62ab1a64098d@linaro.org>
 <3db4b41c-0d29-468a-875b-eec3cced5aa5@linaro.org>
 <292ed7db-aa9a-4dd3-a887-70e0ccf346c2@oss.qualcomm.com>
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
In-Reply-To: <292ed7db-aa9a-4dd3-a887-70e0ccf346c2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2025 16:37, Konrad Dybcio wrote:
> On 29.01.2025 3:41 PM, Neil Armstrong wrote:
>> On 29/01/2025 10:43, Neil Armstrong wrote:
>>> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
>>> is done from the HLOS, but the GPU can achieve a much higher temperature
>>> before failing according the the reference downstream implementation.
>>>
>>> Set higher temperatures in the GPU trip points corresponding to
>>> the temperatures provided by Qualcomm in the dowstream source, much
>>> closer to the junction temperature and with a higher critical
>>> temperature trip in the case the HLOS DCVS cannot handle the
>>> temperature surge.
>>
>> Since the tsens MAX_THRESHOLD which leads to a system
>> monitor thermal shutdown is set at 120C, I need to lower
>> the critical and hot trip point, so please ignore this patchset.
> 
> Should we make the "critical" trip point something like 110 or so? If
> LMH triggers a hard shutdown at 120, the OS will not have any time to
> take action. And 120 sounds like we're pushing it quite hard anyway.


My plan is to harmonize and use 110 for hot and 115 for critical, and
if available any passive cooling devices is available at 95C

Neil

> 
> Konrad


