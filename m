Return-Path: <devicetree+bounces-102302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D86C976581
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 11:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 613C7285600
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31C919CC18;
	Thu, 12 Sep 2024 09:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dSYHG4wG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F701917C0
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 09:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726133208; cv=none; b=AADo4H8LM56FYbTL6xiF38+3TE7Lu+j3HPA2KUX9yIfiUe9NDBfeC/XJPWH04SRr0kjaBPTo98Vt1vX2daWU434+hko/lrpsP318+/U1gH/XgBhDDUCtxUpDitkc9EUQRI8CzXo1oyP4MBT6E2dn6H4BiH98rZqIxrJhtrkeQ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726133208; c=relaxed/simple;
	bh=p7Jh2lUNcJKRMJOe/H+uSUDeDw6CZg7Esbe+YpuKkas=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EPQxHSE2SSD2z7UYG0pvOZLJ3rGU1c35niAsylxiWAVIJw/+sNrvS3/1veXTLBGw2d0rlP0CdAspRTKn+ZW5SMM4+SE25KSJ5ztt5/iQyzYrECEimiqCiotBbM3ZkOkR6Q/QGdCMZ+2wPnO4A1qJJW/rYoCNuR0Vpb8ZkZNsDpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dSYHG4wG; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so6621895e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 02:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726133204; x=1726738004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/uRShjiG4yggmkzU8PcqDWZaN4MiVvMygjJPwQCLJlQ=;
        b=dSYHG4wGpsXfDZJoUiAtcA95uQvzLarGSZ/WYjbUvjkX83rHg1QeP4VkcPutXEw0/Y
         ywhy/9jBAnEN1Kw2WsS29QnNgWCYk9OCHuMzL0hLGL515+R31D9i7nO/YaVIWbwQt0zi
         596iPbl8LfuMgVH3yDDrZQifpu7TuM8E0XQJ7AhKkGMJJ1e8A6Pfh8xlJzWQy19hWETb
         ldZdTzarxe3lgnPfZujNg7pKF66HDXVxJxi9UR4p+1XiXHbIzJe18T6D6Hvg0cD8F/Sl
         vLf31LWFIt33hSsJoylFnUlpUHbNQBx0XkgqXtMqi5gSKKN8Tnrn3J7eMDbfbiLONi5+
         Tufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726133204; x=1726738004;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/uRShjiG4yggmkzU8PcqDWZaN4MiVvMygjJPwQCLJlQ=;
        b=UswQB7JvjaV3GFaZwyPyAwqAvLanEBfvJxxon+KJF8QSttc6Crk9bhQR+nXou28lcB
         yv1iUOrpv10IQ6cHSN6S93KEHc1MYSpLtQEQkf6WoJnPDMhhxO+EIPHNHEgeleAhNZBs
         Vmp03+DK+J9J5IL63ghtjVtK7vhNGOcyRs0NLVsomNrvfiyKiPRu9oKExXxsphpMdyOF
         pJ8CRFG11bPQl+tIOxuMBYH9MiD7HHQoQFhTEJWv0DRK5TFhInB9hIxL8ewSbrdNn7i5
         4o/DK8EL0wBhyC/fUc91mnss33VATllx+0MkqHdS01OouLEE7L31HqBmpcG2Qf/v9+E3
         kHzA==
X-Forwarded-Encrypted: i=1; AJvYcCV9JoqsIMP8IjrurLh2JIYZvXiH75XxZyrYmpBJ8hQjGPaahzuJKHodANyHmXDRBlpElnPGjsJfmtoc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe2zvZwWS9IspDwi9kIuXSLrZ4VqYJILlaeURv1ELP4eHxV2dV
	QzTp0oLBB1IYuyHIG0k+Qdn5xF16/Yq+bqRTcSTUyQz/RCxvJ8o/wGMfLCL8epI=
X-Google-Smtp-Source: AGHT+IGH+u+aLztbk+Cab3S2ln2z2Tfx1XqtBVLcdLhlsQ/ZJ/HNq5/ylhTEEgTeESqGC2kj06Bhew==
X-Received: by 2002:a05:600c:5249:b0:42c:d74b:eb26 with SMTP id 5b1f17b1804b1-42cdb5486e9mr18231925e9.21.1726133203625;
        Thu, 12 Sep 2024 02:26:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:1e79:4ce1:c7be:8add? ([2a01:e0a:982:cbb0:1e79:4ce1:c7be:8add])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42cb0642f99sm165276565e9.40.2024.09.12.02.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2024 02:26:43 -0700 (PDT)
Message-ID: <2781e0a7-5ad5-4d93-bbca-55729cc4fe13@linaro.org>
Date: Thu, 12 Sep 2024 11:26:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/3] amlogic SoC's power-domains fixes
To: George Stark <gnstark@salutedevices.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@salutedevices.com
References: <20240710223214.2348418-1-gnstark@salutedevices.com>
 <26ab17bb-1b2e-4144-8a34-696a92328f52@salutedevices.com>
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
In-Reply-To: <26ab17bb-1b2e-4144-8a34-696a92328f52@salutedevices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 11/09/2024 23:56, George Stark wrote:
> Hello Neil
> 
> Please take a look at this series. It's 2 months already since ack

I'll take patch 3 after patch 2 is applied on thermal tree.

Daniel could you take patch 2 ?

Thanks,
Neil

> 
> On 7/11/24 01:32, George Stark wrote:
>> Here's some fixes to the bindings and device tree related to Amlogic A1 SoC.
>> The SoC provides dedicated power domain for for almost all periphery.
>>
>> Changes in v2:
>>    dt-bindings: spi: amlogic,a1-spifc: make power-domains required
>>      - drop the patch
>>    dt-bindings: thermal: amlogic,thermal: add optional power-domains
>>      - drop required conditional
>>      - rewrite commit message
>>    dt-bindings: i2c: amlogic,meson6-i2c: add optional power-domains
>>      - add RvB: Neil Armstrong <neil.armstrong@linaro.org>
>>      - add RvB: Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>>    arm64: dts: meson: a1: bind power domain to temperature sensor
>>      - add RvB: Neil Armstrong <neil.armstrong@linaro.org>
>>    previous version [1]
>>
>> [1] https://lore.kernel.org/lkml/20240708194808.1819185-3-gnstark@salutedevices.com/T/#m398c283b369108c5c557e68b7a1ada9abf3e5cba
>>
>> George Stark (3):
>>    dt-bindings: i2c: amlogic,meson6-i2c: add optional power-domains
>>    dt-bindings: thermal: amlogic,thermal: add optional power-domains
>>    arm64: dts: meson: a1: bind power domain to temperature sensor
>>
>>   Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml  | 3 +++
>>   Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml | 3 +++
>>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi                      | 1 +
>>   3 files changed, 7 insertions(+)
>>
>> -- 
>> 2.25.1
>>
> 


