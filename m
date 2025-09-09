Return-Path: <devicetree+bounces-214929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F05B4FACE
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132785E154A
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C89433437A;
	Tue,  9 Sep 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xhNhsm1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7823ABB3
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420856; cv=none; b=G5bY5hsNxTx6N8Ie0LEMbuyh0hekuwnWy43ApVt5toh2Jsk2kkGQosiWzfNwd6e0esWXRUp/tjS3mhgsas9hPM+IoeiJjZKY36mfbyyKw79qhqOl0vIKT1gt84IywYtol/bkg2VdRo+ioT5lwrQZMwGN/zyUd4xsioM6AzXcs0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420856; c=relaxed/simple;
	bh=DH6clDDTfuaevkfQWIuASufuheLbcOe6AXXPrxK+ntc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=debiKflX6o9CkrW4Hy0k9W0/vQKRZ9B3tLuSzuaBTYDL7Hc/2SBg1UOm+DppHT+BVdL075mRCraV117nGZGbUYYwcJnmfMXOabIbmP9xsdkv2H1w4LW1Ipj/SxYc6+jhqqbcQC5ASL40DvAnve0ZpUPF1YKAhzy647ffoG6K5uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xhNhsm1P; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3e4aeaa57b9so2852155f8f.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757420853; x=1758025653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JMgQJrHR/R7kuH76u+Ory7LEmNQkrYiIPQJV3CNxb6g=;
        b=xhNhsm1PvULrkPPJlY0bbgW/9QpM7DmxbabN8awilSrXUzvFMP6QC5VJ2hVs7Dn/e+
         3pHvROMMJhziK1sgRswyvYKAd+7//keHGBEYcfyxqMwuBFSMUNoVfn9aO4My3g73mrnH
         nJDsFI5MdxZreuZIoWOhBnHrRpACKxMgd53LojN8DZwR3eVrdrRxRzMM6LD6wabudPhc
         pymcsE7YhCkNYwEgRE1HU8A2V1z1pCLzNQegoqN5fdTObv5CP9CT4SUZ54Wey5FRFeNY
         SzH4dYBT8tjGto+Ui9gORLRciJGNrKUaOZjbW/f0XhgS2zNzDdVEIMgfPNyrOUkmSSW4
         3fGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420853; x=1758025653;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JMgQJrHR/R7kuH76u+Ory7LEmNQkrYiIPQJV3CNxb6g=;
        b=Z/lxnfhesXH0Y3NY0kIRXsGCLaYP23G3M+uH6RiMogusvuRK3JHY8DwCVl1xEPR8RR
         YqPogJprG4y+wyuHWtIxl5lmC7GLRr1p/tfPuQpEI7f9cDSMxau0ladE4RBfh5hi7V14
         yJMYh9KgqJ2mQn+ccdDspECUfRiy8w4NsKDcYpCL4L2T89AZYg/+K+Hyy7+2ybcGNGor
         gT/C8d3qaY3qLGQl0DrHxI6rRT11q1PqwT4V5O9BoV+3t7/7fZciIWECXg3HX+p4yvVn
         DrI4gYBeviohr8KrCakcccGK+cD77YpAeoXYZfqzaF8Sikk3uOt4ExmtGKEiPT16SRLS
         j2jg==
X-Forwarded-Encrypted: i=1; AJvYcCXRM0HCR7v+Pnh9S8A4m425aVVQb+7sEGOMuFQOFR3hzcZatMzzMp42CevsA8vf8w4zcHoUvVdYiZYr@vger.kernel.org
X-Gm-Message-State: AOJu0YwHzcsNNU4fw9At2m5iHSSrBYFG8EcTxbUshBAPAbNjKkt8l+si
	5zHO4AEvd4HZLPUQ56V3ZeOnOh4HNXeDyVWQ691iklgaIA6dNcEiSJQI4r8yauZd6tY=
X-Gm-Gg: ASbGnctDcoRrWNVU2IIksj64zykXD1CZ9Z0jSLyTVxvweQQ9NvJdfPU+4Vqr37Pnv+A
	VOktJ+wMZhesencRoiCpgtw6oG2o5o0aiWkiuooWOaQS8jNYl1BQcUJCvJgI3QYefT2itaa8GsI
	Zlx+dkH+Gwya3vEtCMIgHJCZrOhQFpn+YgSDtK2R59x4vBASI9+un+oCeoXxx2hpZQr20pRtyWZ
	sfQoBIgW655gmuG6vAvWoY2LgIQGmY3eznXEcc1mN6WwX53WtgbwFnEmcnyeooufvXjlXsJMOsf
	uULRi0pduInZaPlAEeyXWdtjjvDJkSDZO+JVgGFWyVsvq6sK8mDhqU+USIvib20fw7ZlgphKHRz
	Uz2DWl2G8rBWRplAqR40XTuDxKyrDAQnHDjods8ewr88EgY0TICDCTymOgrOSKqdQVnFMA3QG30
	jzSWQzlIc=
X-Google-Smtp-Source: AGHT+IEuiDiglPwmV1PehXcY70hodMwYIFyGOdsXoLipFNPjAGrinssVi1Zvi2KS3OSRzXamJ0+FXg==
X-Received: by 2002:a05:6000:2f87:b0:3d4:eac4:9db2 with SMTP id ffacd0b85a97d-3e63736d7c8mr11407057f8f.5.1757420853362;
        Tue, 09 Sep 2025 05:27:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:25ab:4e12:265b:4b6? ([2a01:e0a:3d9:2080:25ab:4e12:265b:4b6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dcff67787sm237340005e9.16.2025.09.09.05.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 05:27:33 -0700 (PDT)
Message-ID: <cdcc80aa-45b0-436f-99f9-b3f09999a0fe@linaro.org>
Date: Tue, 9 Sep 2025 14:27:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
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
In-Reply-To: <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/09/2025 13:16, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
>> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
>>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>>>> an USB-C connector and no PD events.
>>>>
>>>> Document the data-lanes on numbered port@0 out endpoints,
>>>> allowing us to document the lanes mapping to DisplayPort
>>>> and/or USB3 connectors/peripherals.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>>>>    1 file changed, 58 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -81,10 +81,67 @@ properties:
>>>>      ports:
>>>>        $ref: /schemas/graph.yaml#/properties/ports
>>>> +
>>>>        properties:
>>>>          port@0:
>>>> -        $ref: /schemas/graph.yaml#/properties/port
>>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>>>            description: Output endpoint of the PHY
>>>> +        unevaluatedProperties: false
>>>> +
>>>> +        properties:
>>>> +          endpoint:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +          endpoint@0:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: Display Port Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>
>>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
>>
>> So the PHY already supports 1-lane, but the QMP Combo only supports
>> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
>> int both in & out endpoint and still should work fine.
>>
>> Do you think this should be done now ?
> 
> Do we support it in the PHY hardware?

The PHY definitely supports 1 lanes, in fact DP the code will cycle over 4, 2 and 1 lane.

Neil

> 
>>
>> Neil
>>
>>>
>>>> +                maxItems: 4
>>>> +                oneOf:
>>>> +                  - items: # DisplayPort 2 lanes, normal orientation
>>>> +                      - const: 0
>>>> +                      - const: 1
>>>> +                  - items: # DisplayPort 2 lanes, flipped orientation
>>>> +                      - const: 3
>>>> +                      - const: 2
>>>> +                  - items: # DisplayPort 4 lanes, normal orientation
>>>> +                      - const: 0
>>>> +                      - const: 1
>>>> +                      - const: 2
>>>> +                      - const: 3
>>>> +                  - items: # DisplayPort 4 lanes, flipped orientation
>>>> +                      - const: 3
>>>> +                      - const: 2
>>>> +                      - const: 1
>>>> +                      - const: 0
>>>> +            required:
>>>> +              - data-lanes
>>>> +
>>>> +          endpoint@1:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: USB Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>> +                oneOf:
>>>> +                  - items: # USB3, normal orientation
>>>> +                      - const: 1
>>>> +                      - const: 0
>>>> +                  - items: # USB3, flipped orientation
>>>> +                      - const: 2
>>>> +                      - const: 3
>>>> +
>>>> +            required:
>>>> +              - data-lanes
>>>>          port@1:
>>>>            $ref: /schemas/graph.yaml#/properties/port
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>
> 


