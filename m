Return-Path: <devicetree+bounces-198909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C01C8B0EBFB
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 09:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79D843A69CD
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 07:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D49277C9A;
	Wed, 23 Jul 2025 07:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h+rEbbDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96D3277032
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753255919; cv=none; b=Y2VoAFVAlflmCpun/GExKXHEy+K6IYwo/mZxH8pF7ZAU72LRSw8RrzA4+fKJEnvq+bDcRqbzgHAP6hjbb7ti4PSPTTn0pACF5I4MTd/985YObSLarrV9taEvcB0w5SLH0WjIeHgWttsLkAhGw0V2gOpaUqVC988LLWkeJKpVXDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753255919; c=relaxed/simple;
	bh=aCVdLlPepbdE0li+hKmSqvbLYzrRG0cEPf/H2ErtKEs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tWpdbj9cpjiW/X8HcrbGpzytIwqCdKaQg8T7b+OqPm6px2lP+MFBLwYIQFEwxXxwEky5dliFyHpgBH2lHfnS4nv8UGcPMMgyM4W54wgHJYMWS88+Y1nI1TNY/s/jc8xhaltoy88gr5iRVKzra6Xkn7NMEpP4A0VAywPSuxN2Opw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h+rEbbDo; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a503d9ef59so4524193f8f.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 00:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753255916; x=1753860716; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tsMQjx0LxGiew+0kejpLbcOVNd/QskKUIRO4t/3V5tc=;
        b=h+rEbbDo2rKFhsWcFUjfS+c4xY2y033Ovi/w8dnKs7eFxKPi1LVyu756lz5tweSGIv
         IqJz8Y6DTCoE88a7xOJgpChHql0ibR9FsKomO9+nj23XK2W3yJoabUlqTFDBfjPUY5w6
         yW8Rg67KBpovWQ7WJYnHpUykcqyU24sOp4LCrbirstqoN6dpq6vp2HeZHotfppWZ50BD
         ILf4OxOYsXelaNwBbrQX9Pavw/YPUmbFqDTNPYTTyqf1rmQAVc/sDY0m9jKbETfrJjg6
         PkvyPazgLNJQKjH53GSy5s8ukQNQpnBf7DEp2cpC/tq44Pqyi7bkrw4wxxMKb4KbR/8S
         VrTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753255916; x=1753860716;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tsMQjx0LxGiew+0kejpLbcOVNd/QskKUIRO4t/3V5tc=;
        b=w/L5UOMhufq1Dcg2rJVnP8zOQ8DG/awLt/mJJL+D3Rm3iXp5MTPoiVd29sfP45Se14
         AP6D03PuwbrxOhush+mR6HCE4laml/sZDitnSFc0Nkd00/zhWJb9MWkov12NvEs+0mi5
         7zNM3y1v7BHMSu1cwhOa4ZMMO4/QU4wAel+co4AzQMBKIeypFVTMSkHWW2LW66lOEOfi
         ydXuNuNZ8QRdOGU3BUShN7BtwGM2xuU7rVTsNDBs0x+qDWGWAa+Oyoguo0WUT9BZTrwz
         O+swXYjUh0E+9rACu498Sarc3MiwLKe96ezbUnEM77QFa8c2sKXnMV3jFucMPppuUg2Q
         jLyA==
X-Forwarded-Encrypted: i=1; AJvYcCXWZOaBe+3ZtQnnH6/DuTD2J7fQflO3mCSftApraBWsNb92UmpECZpOmgmvDQewGmSPYq33UmaUPoYj@vger.kernel.org
X-Gm-Message-State: AOJu0YzQI4088VrbJTdWjbxbHxLHJQs6+XUMom7ja4jSQ3U6EXu0XALb
	FPeh6ur1PYGK4wlTqsEG6STtZC7dBsrXhOcxCFHJdG0tnNs7Hz0hEKEEXi7IahDc874=
X-Gm-Gg: ASbGnctvhUNsfIuFxS0RojRwUTFC4vBc9iZSQOKttAdgzI7byrUeV+tCU0UE6Hz72KL
	ASYsmq39IIG3rtVwR3loI4CohxwhCauIOBihFAoXYl3hv7AdolPjyz+7RR3HJhrNEOYy4bQ5TLB
	3eQ7VkyJqRGLOiVXL5Fluk1gahuQ0yauNoK1h1cPi7j2H1fBvWWm8E0ADEQb7K47klI1gxdQcaw
	+Jn+SzNElk/Fc5GXoNPx3CyGp3ba0RD830beq1q/4wF37/X4RH0mbCayfF324iG14jmzn7lyB/T
	cxTTxW3uKY2HxHrB2ZY9s6jl9qlCxY0tgsejVhM6XP/PLcZyZ5WOlTpeXJN5k6dl7t2SbujP8xh
	mpJ2on8Z2Frtyz6oT+w//BRPg/SwFSw3gUhxBOlrtO4+rmwUb7w9YaC2IB6Q/Ukb1z3AP20cnIp
	Y=
X-Google-Smtp-Source: AGHT+IEnTNf5B70Qm5PHVrXvXMMmuSQu9ZW3WQXoalvSypYkFRNdLXjfNz5NQe9X9fAdbT+v/+bFzQ==
X-Received: by 2002:a05:6000:26c6:b0:3b6:2f9:42b1 with SMTP id ffacd0b85a97d-3b768eedb05mr1434526f8f.13.1753255915643;
        Wed, 23 Jul 2025 00:31:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:8813:2f0d:f9e0:5294? ([2a01:e0a:3d9:2080:8813:2f0d:f9e0:5294])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca2bb96sm15602630f8f.30.2025.07.23.00.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 00:31:55 -0700 (PDT)
Message-ID: <c36f3ae4-8bd1-45fe-ae98-253b45b158a9@linaro.org>
Date: Wed, 23 Jul 2025 09:31:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 0/3] Add support for OLED panel used on Snapdragon
 Lenovo T14s Gen6
To: Johan Hovold <johan@kernel.org>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
 Christopher Obbard <christopher.obbard@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Rui Miguel Silva <rui.silva@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
 <aCw9pYehCdfXXeiR@hovoldconsulting.com>
 <aG-QyF12rGY55gcG@hovoldconsulting.com>
 <d431435b-4ac0-44aa-922d-0bde126ca563@linaro.org>
 <DBIMQO2CS0I3.17XLZPKPCVW2S@linaro.com>
 <e9c63414-8434-4e35-a159-66df1864f9f3@linaro.org>
 <aICO0CXxp4Vu331u@hovoldconsulting.com>
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
In-Reply-To: <aICO0CXxp4Vu331u@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/07/2025 09:27, Johan Hovold wrote:
> On Wed, Jul 23, 2025 at 08:51:22AM +0200, Neil Armstrong wrote:
>> On 22/07/2025 15:48, Rui Miguel Silva wrote:
>>> On Tue Jul 22, 2025 at 2:01 PM WEST, Neil Armstrong wrote:
>>>> On 10/07/2025 12:07, Johan Hovold wrote:
> 
>>>>> Neil, do you have the OLED version now?
>>>>
>>>> I'm not sure, how do I determine that ? Is there something specific in the type number ?
>>>
>>> Yes, yours is the OLED version, the exact models stated above.
>>
>> Ack thx, I'll test and re-spin this patchset then.
> 
> Thanks. Note that this depends on this series as well which also needs a
> minor update:
> 
> 	https://lore.kernel.org/all/20250330-wip-obbardc-qcom-t14s-oled-panel-brightness-v6-1-84ad1cd1078a@linaro.org/
> 
> Can you respin that one as well?

Sure

> 
> Johan


