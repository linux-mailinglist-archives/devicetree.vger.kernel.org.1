Return-Path: <devicetree+bounces-175723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC3AB18FC
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 426CB526E1A
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A96225766;
	Fri,  9 May 2025 15:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B76VQ8PT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6373F22F757
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805156; cv=none; b=bSyLZv0bwep711+p8t6SykVASncT9FJz7eK8OL9kYDKYc0gCapt5McDk2fxm/pTWairBO41ubvs2mFOdUt8OFfye1/FqhulBz2VKimNo7tUf3L6KMq62DR2ap1WDXCq1UBbTh3C0mHYaaxURgZvsVy0XlwAH6Pp2MxDtJHhVlEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805156; c=relaxed/simple;
	bh=451maSA55aSrSV16uAZJFvK120RL0UcczWhNDgn3QN4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EH25GC4uJia3xla4HJJ1E6B4Fz2hji1vML8jCtC9oR9IojHBSYGVeFUM5Lh1Eync4tg4ZEhZIWWoDtNXzBr17gJ4pRxfKWUYurMPzkSVcwr0FJXq+DcmbV8/Ef6RLato4evWPZYYRT+tXMXWXEZPEcLdSka33+bTH1bnKykbj7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B76VQ8PT; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so14417675e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 08:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746805153; x=1747409953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a41eDfh61Q5Z4SkQUQEgJsG/7aXRDbddPfKHN/yq7UM=;
        b=B76VQ8PTM1RBXAEUMiODxOzz1UBOCb7ydggaDCDN6QNi1cG7xE5zpbfDSJdOJIxmAU
         KL4JWuPx00J18HPwYGxcTJtDLJC+XqK/A9yoMOUm5b6j4rr16ygRHaps2n8GK6KFm+EH
         QIPTL7nMdadJuJi+l02ttqcgvljjh5U89Czn4M58lRRd5yx/ct44lSYWTPg+f4hRu2UG
         k0CVoRdHthVbMnVMqliYSI23hxFRsmuYe4zg+OYEoz3pSIA5DmqI4KoaqhU8EIUdwybF
         4WNwLjSkDQcBVc2gklg+uZKeE5rFUQR0qfHjSzgy9YDFk11nrjz2YNiwrk3d/hHvpN2o
         MCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746805153; x=1747409953;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a41eDfh61Q5Z4SkQUQEgJsG/7aXRDbddPfKHN/yq7UM=;
        b=TGfT8vEpZR2mj0fiIrvSHcQ2n1yIek+oxHk4pOUaK/5PicVqlZTi+/vXsqvGItX5Bq
         e0SC+6MsnhQ3pvrZT4jOpIER10mYzuQ+BsIRF2Fg15KswD/Pw+Ij3J0TdfvwVabGjzrb
         1Z0RR9kosp/HcNq/He9PoAAwEEBrlvEO1EKottJB/6/1e6GIwejOkRvIFFzxD/taa/sJ
         Ir3krb7eZ5yOBOSfgK4YrmprHN9DK3fOBVdk29VQGEAmWFIKmlsrxvCRblukqWhea1et
         vN74zP6P58a88ADKrt1SPJZsof/JR73KRVIXm2rabo9CSdUHKmBBG1w2syeMIcFi9Vo1
         EV7A==
X-Gm-Message-State: AOJu0YyLwtAYAzEs/QRVGtG0vL9D2ZqXxNnIHmxrGodh8h7xM8LbDSfl
	xvJ+3MFbDE5yFu3ZeK7zWckzVJUH5Cv4t7gKewqpDqJkGanXZ3ta9iMgmvy7ENc=
X-Gm-Gg: ASbGnctz/i/eEvXWg4aPurtNUWSPMapSy7VEjc+YWTO9zu9TTGRqGmBr0S8lRPVhz71
	K8QblMyIDZwNc1iW6/6mPzQXtRIASrZsyRnENGR0vaXSF7YnPmJKH/UTJwug91biCGscUpJiNjz
	LIQ6CXiEPs09tbot2Pkfu/kSNW1n3ZWfe9tEFusGCEnakk+RUTkOJ7zMz+Lujpi1K/S6a6VQf8i
	5RLDtRjdHEa6Hp3zKYWTHt7HNOWnJQ78p3KNS4WMA6kdMP36DEapBOMQJ3t9clD88heMQfwLvwr
	zi6n+yBg+meEmQu6ta/spaPAxmg+44bcRryNo6zIEX76a68eYdnz+xh3JxUlSbzwoVHweRgeuFZ
	5VbLFkxOTx06lSxefPya8PvtN1Q==
X-Google-Smtp-Source: AGHT+IF/KzfuGyRQ1Z2TahSiggYWnUVBaa3ap37t1eCzjzZRV6+n+EkM6GAEnKKLpOA6jpkkDHYmaA==
X-Received: by 2002:a05:600c:4745:b0:442:cd12:c68a with SMTP id 5b1f17b1804b1-442daebf181mr16387535e9.1.1746805152581;
        Fri, 09 May 2025 08:39:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:22d7:71a:9f62:f7e2? ([2a01:e0a:3d9:2080:22d7:71a:9f62:f7e2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d7806a73sm12857905e9.3.2025.05.09.08.39.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 08:39:12 -0700 (PDT)
Message-ID: <40fe47b4-9373-4afe-a5ef-1b584b3ba26f@linaro.org>
Date: Fri, 9 May 2025 17:39:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 1/3] dt-bindings: reset: Add compatible for Amlogic
 A4/A5 Reset Controller
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Rob Herring <robh@kernel.org>, kelvin.zhang@amlogic.com
References: <20250411-a4-a5-reset-v6-0-89963278c686@amlogic.com>
 <20250411-a4-a5-reset-v6-1-89963278c686@amlogic.com>
 <5bb02494-e974-4d2f-a00f-417312b73bc1@linaro.org>
 <168c0dc2b1a9ebabbfd993e3a516dbf96d809f47.camel@pengutronix.de>
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
In-Reply-To: <168c0dc2b1a9ebabbfd993e3a516dbf96d809f47.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/05/2025 14:53, Philipp Zabel wrote:
> Hi Neil,
> 
> On Mo, 2025-05-05 at 14:30 +0200, Neil Armstrong wrote:
>> Hi Philipp,
>>
>> On 11/04/2025 13:38, Kelvin Zhang via B4 Relay wrote:
>>> From: Zelong Dong <zelong.dong@amlogic.com>
>>>
>>> Add compatibles for Amlogic A4 and A5 reset controllers,
>>> which fall back to 'amlogic,meson-s4-reset'.
>>>
>>> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
>>> Link: https://lore.kernel.org/r/20240918074211.8067-2-zelong.dong@amlogic.com
>>> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
>>> ---
>>>    .../bindings/reset/amlogic,meson-reset.yaml        | 22 ++++++++++++++--------
>>>    1 file changed, 14 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
>>> index 695ef38a7bb346c92b4cf428e7615d45682c940a..150e95c0d9bed74c7045942610a311114a257889 100644
>>> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
>>> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
>>> @@ -12,14 +12,20 @@ maintainers:
>>>    
>>>    properties:
>>>      compatible:
>>> -    enum:
>>> -      - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
>>> -      - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
>>> -      - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
>>> -      - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
>>> -      - amlogic,meson-s4-reset # Reset Controller on S4 and compatible SoCs
>>> -      - amlogic,c3-reset # Reset Controller on C3 and compatible SoCs
>>> -      - amlogic,t7-reset
>>> +    oneOf:
>>> +      - enum:
>>> +          - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
>>> +          - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
>>> +          - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
>>> +          - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
>>> +          - amlogic,meson-s4-reset # Reset Controller on S4 and compatible SoCs
>>> +          - amlogic,c3-reset # Reset Controller on C3 and compatible SoCs
>>> +          - amlogic,t7-reset
>>> +      - items:
>>> +          - enum:
>>> +              - amlogic,a4-reset
>>> +              - amlogic,a5-reset
>>> +          - const: amlogic,meson-s4-reset
>>>    
>>>      reg:
>>>        maxItems: 1
>>>
>>
>> Do you plan to take this change ?
>>
>> It has been laying around on the list for a while now, I plan
>> to apply it in my amlogic/drivers tree at the end of the week.
> 
> I thought you'd pick it up together with the dts patches [1].

Sorry I missed this... applied it.

Thanks,
Neil

> 
> [1] https://lore.kernel.org/all/a5d9b775dd860d8f2bbf174300a2e3161b654035.camel@pengutronix.de/
> 
> 
> regards
> Philipp


