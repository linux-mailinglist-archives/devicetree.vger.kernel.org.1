Return-Path: <devicetree+bounces-218201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E87B7ECE9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:02:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29A5A168725
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 07:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94182DC340;
	Wed, 17 Sep 2025 07:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zB1iwpXa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83652D63E2
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758092443; cv=none; b=g6XoLZUo/Jz3CG90d5V5oAB3cCIhTO7nN/lGnpj02pE4BsIR+cVIBdoKaUdJPa+XDovWEwQ+ZklHIvQIDK0BakcfmW0+OFjbzlRRc4WHeT1HPjT6qzLeuWc154YWlesvoUAWDw5hAJi6lVyeRZGGZqfotmYKMzSInWSN7oadRh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758092443; c=relaxed/simple;
	bh=o2Bqk1wUDIIpQVjPSN1ePzphntDJiQGEafDEVWV03hE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=HbMhp8wqcJb5Bgq/VGYx6jculwXFUGz6n0zhwov2qJPg+OeGqzBRtHUeRPKkrx00U1xsL93yGWASvLAyoqfvW/Rtm4yfUjdJGr7QvvHnCyhWn6CVehEaXVRKn+NONZcF8J2C3BoeKtPqSJ15tAON5AVYel2omd1CvqGgf3sZxKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zB1iwpXa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ece1102998so64697f8f.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 00:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758092440; x=1758697240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6A9uNx1+mps+BdZiLl551t3BtT+GzBC5veNKQdOvG0I=;
        b=zB1iwpXat0IbSYqm66JVBFMsTyJqN3c9sPtONJ6hw10JrGtzYiI9aRomdC1+PcbegD
         JZJToQilM89DlwKVPa4dGkp0MoRNnWFmotsB59IS8YkfYuxfpyguR6Gh25TdI7jt+2hP
         4Rb8upXf+OBqoCqU90bDlWq2Cl+7Dv8G0SnIJpvci9E9FBiIQSLmt9bKbWraTEy4VFXR
         TnlvZqP5Xb0LTnDXZGWO05XnSeh5t8N8pRsKUykvsb9fjw5mW1i48pEfc0587JBVG1rz
         /+Q2j3aKQbPc3orIpi96PYtbJcph0J4ah7ppuG6rUcpnEaL+NFj//uKfJo68f45TaGjs
         Ui+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758092440; x=1758697240;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6A9uNx1+mps+BdZiLl551t3BtT+GzBC5veNKQdOvG0I=;
        b=c3uN/TEKIvLRfT6pUD9/liGw/qjGdzZaq4hDEnBpPNop/eRlnIlmIk8fHl5q6rBkHF
         DMnSBwxItBLynyDJmntpbqmirTq7ezuknQH1dm1xKh65ZzEqeFxXvPFH9/8G7uFu8eaO
         zUnBFqXIoxECBfRPQVgftRB+FujNcI+YfKDZQmvljGp7CaRQ7khbZ370r4nacQ64USw1
         g4ze2NZGh9Ceii6fiku1yDigpLpowqZiyOOpyP1ReptBk0F1cDUp1y/QBJ+2i+A9F4ZR
         0Hq//SOy6aJ0PTTjQA6BeNLgW9Ba8P4JUH+UeRIUGgWqW9OHGgHYqrM3/nL8qFZZ+Xvh
         ZLQw==
X-Forwarded-Encrypted: i=1; AJvYcCUQJCQk0v0f2wXjNN5ujg3oup+ixiVBsApoHSGYe8KM4VGOiAv5gGY0BsnrX1fZX/NEnqe+yu17j0Gh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8NX0IF6WnDbVB9dDjvx1dNiSgblvFe78z86Exov2xOJ1iDzCV
	anHk6dSVlyOq1vYYqo17tfBQmQvwjQRP2GyURH2FqGDKPHtCeedsdx1G0D8PpvEEOl8=
X-Gm-Gg: ASbGncv/buwBVIEPq2mz/SrxYOgT5u9VxyNIAU9ohqI4ykIbONbZDd4rCBjzZRtPR+3
	qdSgAA61GqgxAXh4U87+SZZN6XcLQfDSsRFqvFIKm9XMVlGoCnAfTF9ntAUG6NIPEJ98JUOiU3o
	I8NJJZai33a1whXCJjsKb1hnGA27UsqwhtTostiGOkyJCaTPQ5424yOpjE0+PNNSsJanAjP42KN
	XC1SkpRIn7b+3Z23xHw1CTTIJTqVdLR5jdRpV+7GVJLFWKAFtn+Ot8xj7AAkPa/AJodLwGS3Ikk
	CkO14WJgvZ1SqsKlLMhDbjPT2zQRCuRN2jaqskfK9U6nAMG9p6w12w/AGp5EZyDEGK5Bk8jH2c5
	lDDkpMkJ9JGpkXjOCYO5808Na+vRyJI14HatY1mmOMJuEWvMSA5WPKraMNWYrpLC7RPf31mZrOs
	gLUWtZTClWCw==
X-Google-Smtp-Source: AGHT+IHFVA3VzBNPdHqWXiN9GjHITIJj4HsMCOuzc7U1O93FWbBFOPDyIbTjWxGMsr2FMozK4GF3lQ==
X-Received: by 2002:a05:6000:2012:b0:3eb:2313:ec03 with SMTP id ffacd0b85a97d-3ecdf9d1628mr968681f8f.27.1758092438446;
        Wed, 17 Sep 2025 00:00:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96b6:27e6:6a4b:3879? ([2a01:e0a:3d9:2080:96b6:27e6:6a4b:3879])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-462d525fdb2sm1290975e9.13.2025.09.17.00.00.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 00:00:37 -0700 (PDT)
Message-ID: <6d5009cf-9332-4c0f-acf3-baa6a0be3f0d@linaro.org>
Date: Wed, 17 Sep 2025 09:00:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <56ddc607-f30b-410b-af54-e2d9afc06540@linaro.org>
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
In-Reply-To: <56ddc607-f30b-410b-af54-e2d9afc06540@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 08/09/2025 09:33, Neil Armstrong wrote:
> On 05/09/2025 19:55, Rob Herring wrote:
>> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
>>> Both bindings describe a different layout of the ports properties,
>>> leading to errors when validating DT using this PHY bindings as
>>> reported by Rob Herring.
>>>
>>> Reported-by: Rob Herring <robh@kernel.org>
>>> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
>>> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> @@ -73,8 +73,11 @@ properties:
>>>       description:
>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>> -  mode-switch: true
>>> -  orientation-switch: true
>>> +  mode-switch:
>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
>>> +
>>> +  orientation-switch:
>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
>>
>> This is a pattern we try to avoid with references at a property level. I
>> prefer you make port and ports not required in usb-switch.yaml.
> 
> Sure but the ports definitions will still collide in this case.
> 
> The other problem here is the difference in ports definition,
> port@0 and port@1 are not the same.
> 
> qcom,sc8280xp-qmp-usb43dp-phy.yaml:
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
>        port@0:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Output endpoint of the PHY
> 
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Incoming endpoint from the USB controller
> 
>        port@2:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: Incoming endpoint from the DisplayPort controller
> 
> usb-switch.yaml:
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
>        port@0:
>          $ref: /schemas/graph.yaml#/properties/port
>          description:
>            Super Speed (SS) Output endpoint to the Type-C connector
> 
>        port@1:
>          $ref: /schemas/graph.yaml#/$defs/port-base
>          description:
>            Super Speed (SS) Input endpoint from the Super-Speed PHY

Do you have any advice how to solve this ? Requires is not the problem, the problem is to have the port
definitions in usb-switch.yaml

Neil

> 
> Neil
> 
>>
>> Rob
> 


