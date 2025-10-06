Return-Path: <devicetree+bounces-223768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 102AABBD5ED
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4020189168C
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D166B261B97;
	Mon,  6 Oct 2025 08:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SYGXVVaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF15A25B31B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759740081; cv=none; b=SHpjpSovDFb2y17MDYU06c97O03pXfMYDAtD1DSPrRqWxciOxLN07qu3pQkuqwQEVCPc+MsytzTYkXqonk+TkCKuxxWfvvaPMkYEz7BJOl5iH0FCva2hEI3/BTzLKtThs3xHjmw9oAARdwx9WY0Q/UMcVhkQeP8anQEXQcqb+oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759740081; c=relaxed/simple;
	bh=WWoORRJWGz0OyFtL4IFXdUu7eTKdL9fsQsesOKiF5xY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LXMrpEEF1RGbPOrW8u45SVcThb0SITOZnIP91lq2yBcl12LLCErN25GJ3nLXrt4VG0D6+fEs9iymVbpxG+is+QcfS7pc31A/ZpsvQr721nuYaIyBc4BzmgxNZBOv6kvoQEWjtMwZSIwFjwbW0+HQKZudueiM2UaFuHn20eWEd9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SYGXVVaF; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so52678815e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759740078; x=1760344878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y63nOSKBOZb8Xi0WfMVSnEc0ViCBynY2ybYfLq11XEc=;
        b=SYGXVVaF2c1hmxoAYD2+N2rllgLv17/qt+gJI/Z0bGru1oposM/IInp2i65mNGTxMO
         zTSx6crJ1TPBJoD0RbKva594qwhkC5q0chfFFfZW0MLZUVj6DRp0ArTjWBMrWJGyfyKw
         8Iubu3CR+XyiUM07vpVHCPFnA2U7bJ60TF9L1tAoM6p9mIFq+8x6MMJdK9YlId2koI2F
         HtuABuWOT/T8K0vMH0BlXyjV+PLwZjI6y1CyExlACKSDLL+p5+uDchP8W8a1wJTz4UL7
         0da1D3f9bhvDAddNZP2sHsyIliiC5a3eTEHVZ5z+q5rJRtbqiqq+MHdsxHdePix8Y9YM
         rNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759740078; x=1760344878;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y63nOSKBOZb8Xi0WfMVSnEc0ViCBynY2ybYfLq11XEc=;
        b=YxdYnV7pn7Aa0LBfjMwdKb/TzTQajfRO4w3yxxen69mps+fmZd4TwDBlW8vMsQQ98c
         zP84N0Gx8ykf3heQbE5AZnZerL5CHPFaQj3rGlFJLClF6Bd8FNBbBzMas8UdmaJ+qeCd
         fYeFOIC2mJPvHuOWKtdrU/5kqIS3Jhz67y/3K7fSvKzF8yInNpSn/76mWLjzh6JwAH8J
         eT9po5E8eeS/9dAYPbMkVwscJaPBroX71xSwzDcmxPbB0inEEDlu3R1CT8C8zZEbb87p
         GMhAow9JoalHUmRStEIThSuJWIQbx3GlAFq+19WU3oqqtOEOImrBj2ttyS02+S4zyx2S
         OXzA==
X-Forwarded-Encrypted: i=1; AJvYcCXeblWgdFKpOByaiH8Vq2V0gGg9IEv8VhUOeHRMxgFYqW0JZjuRUvMdFENVOydLHtQs+lyt7u3R+pLp@vger.kernel.org
X-Gm-Message-State: AOJu0YxThoUgeJDdiv8E+EiF0hZ7+7Oh//pSJigCyBGbnYMb6cQZ5w8X
	xMKVq0zGrJqNPxUJYTaT1iwfq+CNcLPeDvUpVgFnDQJGl9icVl/xDF6JFvh5GqDwJqw=
X-Gm-Gg: ASbGnctASPfgeeL75ePFDPOJQQpkSZTwNvAHMzkSAzycw76QL5V23F3LKnxBTHkLV36
	UByuV3vi5crrXvr1J8m9JK2JlY7uWDttrNdESeKDVuTqUN1aT/jiB9tDXIOwip7XG3hPUpgDwpq
	Pv9csfNPa4NyF8Top1+a3F6BWEy6ABae4MVma5ccdbBH5TBz8nvL/OiEYRt5mjgJ6q5gY+5gN7Z
	vzCKuVQbxrFI5sPvHhd0BByBs9a5TmG6T7TUmTWTMFtV558IRXn90UcL7cfm1FphSMYG8sI0BAv
	Lnj8WgYTd3K5Jj6o3PVXt8YbPMYUuyeGbFkgqeNCg94xR1idhZwBATXv4GWO0F9hOshQVZhjoW/
	HbaOsSPMEVD9N3MlEXaX6Tx6DCAyDb6eaS+sZQc2fQEJg8NLFYmz9IFIivZnQgcpE8hXbgVkuro
	2ZWUjD9cNeVt6OUY8ye4Hzdk7hK6ohyohv1TQ0/w==
X-Google-Smtp-Source: AGHT+IEWwWaYh44sv9Oqx0ZChqrUk1Sr1HBR21zDGZTRQfiGbC8OZi2rvU8z63aitXqs6CRfThx14w==
X-Received: by 2002:a05:600c:3f08:b0:45b:9a46:69e9 with SMTP id 5b1f17b1804b1-46e7114e92fmr82535805e9.31.1759740077891;
        Mon, 06 Oct 2025 01:41:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9? ([2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6c3esm19968974f8f.1.2025.10.06.01.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:41:17 -0700 (PDT)
Message-ID: <2914e235-9e6c-4b46-ba4a-3fd4758eadef@linaro.org>
Date: Mon, 6 Oct 2025 10:41:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
To: Rob Herring <robh@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
 <20251001163139.GA1877961-robh@kernel.org>
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
In-Reply-To: <20251001163139.GA1877961-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/1/25 18:31, Rob Herring wrote:
> On Tue, Sep 30, 2025 at 10:10:25PM +0300, Dmitry Baryshkov wrote:
>> On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
>>> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
>>>> Both bindings describe a different layout of the ports properties,
>>>> leading to errors when validating DT using this PHY bindings as
>>>> reported by Rob Herring.
>>>>
>>>> Reported-by: Rob Herring <robh@kernel.org>
>>>> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
>>>> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -73,8 +73,11 @@ properties:
>>>>       description:
>>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>>>   
>>>> -  mode-switch: true
>>>> -  orientation-switch: true
>>>> +  mode-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
>>>> +
>>>> +  orientation-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
> 
> Looking at this again, this isn't even correct and I don't think it
> works. It's missing a '/' and  should be ...#/properties/... to be a
> valid json pointer.
> 
> I thought we checked this...
> 
>>>
>>> This is a pattern we try to avoid with references at a property level. I
>>> prefer you make port and ports not required in usb-switch.yaml.
>>
>> But this solution is also not perfect. E.g.
>> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
>> only allow the orienttion-switch property, while using
>> allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
>> mode-switch, retimer-switch).
> 
> That can be handled like this:
> 
> $ref: usb-switch.yaml
> properties:
>    orientation-switch: true
> additionalProperties: false
> 
> Though if you need unevaluatedProperties for some other reason, then
> that won't enforce it and it's just documentation. In that case, then
> perhaps usb-switch.yaml is not the right granularity and should be split
> up.

I tried :
    - $ref: /schemas/usb/usb-switch.yaml#
+      properties:
+        mode-switch: true
+        orientation-switch: true
+      additionalProperties: false

But it doesn't work:
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: [error] syntax error: mapping values are not allowed here (syntax)
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: mapping values are not allowed in this context
   DTEX    Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.example.dts
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: mapping values are not allowed in this context

> 
> I put this into the category of "this is the least of our problems". I'm
> not that interested in enforcing what common properties a device uses or
> not. It's undocumented properties I'm worried about or lack of
> constraints (on reg, clocks, interrupts, etc.).

I'll revert the patch until we find a proper solution.

Neil>
> Rob


