Return-Path: <devicetree+bounces-97457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA528962430
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 12:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 616FB287A51
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 10:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB00B16A920;
	Wed, 28 Aug 2024 10:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rPprKea6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A1815CD7A
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 10:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724839244; cv=none; b=NQVfo47kFe6+sOJUmzSNIf2hr9xUkfDOdcSt3nWAaDdPTAAdxAtlQG3zAa6sASgxR+a9JJs95ezpf0O1khHzkDkkZhxba7BON7YDz7F+H82ciZdvRigNr3RsywOIxlAZ0zpEoFhS/MnRvN58S/qu1fuiDJuATr5WkDK2gGZ290E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724839244; c=relaxed/simple;
	bh=2U7ggqmSgzg+AWYysQa45MyuoJZ8Jj3TcTJwId9DP40=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TPgh9mHILze3n+avmzS6YEClnv8zYrlwcvxpPZ0zo3oVZuThl3R4Zckpyq4cd5mOtsQDhNgNhXhsN0wIbp25VIM9xSPJ1VSDueFSaDOZXeG4sxLLa9AqWrps+ZPbWi9+IfiGXtirkJCdLnef4KpX1ZkowptlgePYopkkkfYfjfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rPprKea6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4280ee5f1e3so56145795e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 03:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724839241; x=1725444041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vEVI7HiqxVqMEgse2bbT6Cv/tYXN4/gyPqY1R8cSp3k=;
        b=rPprKea6E9ZfjaeLw7KfymodeX3B+KmoBtejwe/0ekq09eMvbTOPFhuoSuJFA3T5RK
         oic8zSjUOh9e1P8VmlHicAQpJkhgk4DByEgcm1tRnanqBmqI2rRaHUAn4Ov3x8ratVEz
         Lc6mCwM4/Pwp4FczCdnEtQBUXpfCUPzC2ZILkIE83l571JxJuAB1OebA+ysSgffJE79J
         wQxHJcQZwiM1/0CD5wgnT6m9FMdKSBbG51jwxBRsmeqTQ4VfK6bbk6AGav1BVMwKrNf4
         tFG9BOspiGo6QEv61JmBXfOtn6VryCSJ8IGgxfZj19xZoUBsBHVgK28HQRTAdQqclm6k
         C1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724839241; x=1725444041;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vEVI7HiqxVqMEgse2bbT6Cv/tYXN4/gyPqY1R8cSp3k=;
        b=VaUh1AwViOPaTPbksAGI3OZK3RokjP03Fiwi871/g+QN+Mp2VAwSHcG1b6GFdriLQ4
         MHYEog8N4yjD4FuusLpvBP6ICGdsAmH8ZTnYjxTA6OuXBJVMxA5/DpaOPUiWwaXmPIeC
         z0+Ndt6MnloZpJGw6NQ7tmR2tGlSiViWaYW4ZISOG8VOeOUcIMS0dZwCMW5VqiMqwSmR
         unpGOKv4MBfWRdWQyGF7Eow6ICH23c4nxPrChDEdMsNyl8gxR6mjGUYAo4SQzf1ynwqV
         5tA67+wOK1aFDmuj2mGZ4lsT7APeHpkGCuomrphkxtEEmH5jiYmHuHnPzvVVLN6Pa4mh
         BYEA==
X-Gm-Message-State: AOJu0Yy980daQAiau2+UQdQkDYZv5ItJOiiEykQkIenamVx5Sk2rx94s
	N8jZ2ft4WNtcDTUvfKkcinPvOKs/sCJiX0c5Sc2xt8pYk1EZStYB+ZLEKTYdHuA=
X-Google-Smtp-Source: AGHT+IFup8wrx+EQX+pO/u3azKm1K3r4Amq/I6Xq2GHqK+ixDuYFRCvzBfzFkPPVu1dEJNOdw1Atiw==
X-Received: by 2002:a05:600c:348f:b0:427:ff3b:7a20 with SMTP id 5b1f17b1804b1-42ba66b3592mr9894205e9.27.1724839240003;
        Wed, 28 Aug 2024 03:00:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:765d:64ff:5f38:550? ([2a01:e0a:982:cbb0:765d:64ff:5f38:550])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba6397de5sm16534505e9.8.2024.08.28.03.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 03:00:39 -0700 (PDT)
Message-ID: <3e7bdc54-294a-467f-a437-2cabe640f624@linaro.org>
Date: Wed, 28 Aug 2024 12:00:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/3] Add support for Amlogic T7 reset controller
From: Neil Armstrong <neil.armstrong@linaro.org>
To: kelvin.zhang@amlogic.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>
References: <20240422-t7-reset-v2-0-cb82271d3296@amlogic.com>
 <c11bfe7e-e917-4ecd-ab2c-548332a4d22d@linaro.org>
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
In-Reply-To: <c11bfe7e-e917-4ecd-ab2c-548332a4d22d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 05/06/2024 14:51, Neil Armstrong wrote:
> Hi Philipp,
> 
> On 22/04/2024 13:11, Kelvin Zhang via B4 Relay wrote:
>> Add a new compatible and device node for Amlogic T7 reset controller.
>> And modify the driver accordingly.
>>
>> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
>> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
>> ---
>> Changes in v2:
>> - Drop the compatible comment in dt-binding.
>> - Move t7-reset.h to arch/arm64/boot/dts/amlogic.
>> - Link to v1: https://lore.kernel.org/r/20240329-t7-reset-v1-0-4c6e2e68359e@amlogic.com
>>
>> ---
>> Zelong Dong (3):
>>        dt-bindings: reset: Add Amlogic T7 reset controller
>>        reset: reset-meson: Add support for Amlogic T7 SoC reset controller
>>        arm64: dts: amlogic: Add Amlogic T7 reset controller
>>
>>   .../bindings/reset/amlogic,meson-reset.yaml        |   1 +
>>   arch/arm64/boot/dts/amlogic/amlogic-t7-reset.h     | 197 +++++++++++++++++++++
>>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi        |   7 +
> 
> I applied the DT change, could you pick the bindings & driver change ?

Gentle ping, could you apply the bindings & driver changes ?
If you lack time, please tell me if it's ok for you for me to apply the bindings via the amlogic tree ?

Neil

> 
> Thanks,
> Neil
> 
>>   drivers/reset/reset-meson.c                        |   6 +
>>   4 files changed, 211 insertions(+)
>> ---
>> base-commit: f529a6d274b3b8c75899e949649d231298f30a32
>> change-id: 20240329-t7-reset-f87e8346fadb
>>
>> Best regards,


