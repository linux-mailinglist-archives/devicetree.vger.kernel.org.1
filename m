Return-Path: <devicetree+bounces-211611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FF7B3FA8F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:35:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 026201893768
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 587332EBB9C;
	Tue,  2 Sep 2025 09:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JKbKQFa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A092EB87D
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805730; cv=none; b=ZDBSDel4be+sd9x5y2q3E/iMrAmFZgWSGBmDWWkOsK4eowfMuBxS0DV6DUw5S7wIDD6wzxx8GUYVEikxcazru/b6b9gfR/HAqf0T+C1y9fBm1J4jueZpzorPP6OPhdtDg4ItGQW5usZ/K4NsC55tSeN7zRguxYzPjSqo04lFtLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805730; c=relaxed/simple;
	bh=c2r80HqPzcPgPhnOxZPv0dXXH6Zh7x71UgcPOhAMvLU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=nyXF++Vwe8MjsOZsCL8+ej02eTy7IeLHQXS3jXEIPFoyzZxxF8lUMIJrIQ9KRNUeb6VT3Z1F52DpZNpzXxiih4vq1KZKQupl1/qMRsXcn9xn6YanNX0fgS97nzGAJ5z85cQciGL6r+k81v7I87IYrFxuhN2h4MLAYjVMJI0nvgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JKbKQFa2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3d4dcf3863dso1449766f8f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756805727; x=1757410527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JfQ9yXz0+oSRPtU9PmUdrvjUA+5XmtY1AgQS1sTuvpE=;
        b=JKbKQFa2iJxk6sFDDJ/i7i+2m/WHHha26K98kCsZL9v1FTUlp2v8yPo1nPb0TEhyBk
         nGorX2q9fKA32H1tc5SlyvcjMCaIbVWB6is8GcEKlWmxIxHG/p+2BvEy/ukOwo6H71To
         E8KRAJxohE8bsh/cTWsmjcr7X8PXkNEdXBJP1N4OyffsbXvjG0JaxIPGGTPcx7532/0A
         Eyjt3LRWMu/8RDpqnwI0qq7gPATH7UYlaLBHhMS6gcZtQRWIihVq75OaTB2ggHnmdzSF
         4IlNynop+gjrh2c8+4SU+h8xV7ohgN5XOW88e9/mQliiOzXDYy+mjUb5I58Bp9pxCW+b
         vY9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805727; x=1757410527;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JfQ9yXz0+oSRPtU9PmUdrvjUA+5XmtY1AgQS1sTuvpE=;
        b=JXH53gUC5sLqrICklnehVK/2/sCTKMxyQeE6XxbiJEz+I76Kz8hIAOl96a77QVzx4l
         y92jSh1IWODs75BqOywEPlxDNIIKF6dF1L1nDERK2S/3fmIvPl/H6gEBkQIpNWaBxCCx
         +1z8yreMXQx/MZSBSbOEKmk4LXGWiSfk9Qv2d389q+vD+U7M+4QUDujDGCmbc1l6gbUj
         +vAKGNRfbHLdedEyZDxhlwnBbFqYifHuHgjlXarPrTXv7qXS5gm/LXEgaZ8Z2SHrheOq
         Dj8plQUsg4FzUEAjIj1ThtpA9wU+rfaxy6QXyN/OroZ8sz1Wy1cOcMMUvZzwkf0yPghQ
         bajw==
X-Forwarded-Encrypted: i=1; AJvYcCWlH+FjB0XFwIDHldCpTkmWzM4qibtP9vyvtgN4FHqGnSLKIkRtrymzwpAaCD7DDBSKm2MiioRGy7+y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5FOWOBbIcfi5hueH45u0/YJAmVTS1ZUp9+H5430N4gvimbuOa
	KzjC3QVA8wQmoKYL2lVX/K836Tze0VKNQaXv3Fn4CN3QGZit/JNSX/K2blYpKDi30Pc=
X-Gm-Gg: ASbGncuIUpS3XufmToeJ0yJ8bnEhcUOPo/uGLAqGVwC00Wo6nXGN0B3MqmrkPwwylo8
	ob1XcNoI2t9Re3KfhPoe1jiS8RXo8lXEUfmz6k4owO4VTFlpd06sj7WVmv7/1DfpVmwhcJznXrK
	jESI6yaI6jQWkoF7/AUnED6HXcQIEa0TMHlU/P3qLyRHBIzaNLXHTr4O/+nLqcYcgMIfkFIE601
	0cShGzez+4UCeqqjBByRnmcEzfz8XVlYAMY7zpdqNY1gOSz+UeUjZCrtKQxmgcRQsi0N8h3cSUq
	mwS/qB/1H2eswnIpmFyJRI3V45b7ClADlrfbkvRKFXR03uIflAlnsTA5um1DKqvTK5e9euvDtov
	abzOIBAOQpDVk2fJSA4gXAtM54Ihv0xIyIqRgIAZLSXIE7HQoHmmm+uvGD5o7ZgN4slOwRMzgja
	eQZRdykW9DMA==
X-Google-Smtp-Source: AGHT+IFTaH/mMRhkJYGEXCVK35QbOq5nqwWE1gZMu+qzPMLt0vlGA93bzoqRpHlWQSzMmnjZtV5qew==
X-Received: by 2002:a05:6000:310d:b0:3d5:be0:153 with SMTP id ffacd0b85a97d-3d50be0029amr6688498f8f.7.1756805726636;
        Tue, 02 Sep 2025 02:35:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d520eada16sm10183491f8f.41.2025.09.02.02.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 02:35:26 -0700 (PDT)
Message-ID: <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
Date: Tue, 2 Sep 2025 11:35:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
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
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
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
In-Reply-To: <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2025 11:30, Dmitry Baryshkov wrote:
> On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> The layout of the lanes was designed to be mapped and swapped
>> related to the USB-C Power Delivery negociation, so it supports
>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>
>> Nevertheless those QMP Comby PHY can be statically used to
>> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
>> etc... without an USB-C connector and no PD events.
>>
>> Add a property that documents the static lanes mapping to
>> each underlying PHY to allow supporting boards directly
>> connecting USB3 and DisplayPort lanes to the QMP Combo
>> lanes.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -76,6 +76,35 @@ properties:
>>     mode-switch: true
>>     orientation-switch: true
>>   
>> +  qcom,static-lanes-mapping:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 4
>> +    items:
>> +      enum:
>> +        - 0 # Unconnected (PHY_NONE)
>> +        - 4 # USB3 (PHY_TYPE_USB3)
>> +        - 6 # DisplayPort (PHY_TYPE_DP)
>> +    description:
>> +      Describes the static mapping of the Combo PHY lanes, when not used
>> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
>> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
>> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
>> +      be connected to the DP PHY.
> 
> It feels like this significantly duplicates existing data-lanes
> definitions. Can we use that property to express the same semantics?

Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
to describes the lanes layout/ordering, not the type/mapping.

Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
but which lane is supposed to connect to which internal PHY.

Anyway, I'm open to suggestions.

Neil

> 
> 
>> +      The numbers corresponds to the PHY Type the lanes are connected to.
>> +      The possible combinations are
>> +        <0 0 0 0> when none are connected
>> +        <4 4 0 6> USB3 and DP single lane
>> +        <4 4 6 6> USB3 and DP
>> +        <6 6 4 4> DP and USB3
>> +        <6 0 4 4> DP and USB3 single lane
>> +        <4 4 0 0> USB3 Only
>> +        <0 0 4 4> USB3 Only
>> +        <6 0 0 0> DP single lane
>> +        <0 0 0 6> DP single lane
>> +        <6 6 0 0> DP 2 lanes
>> +        <0 0 6 6> DP 2 lanes
>> +        <6 6 6 6> DP 4 lanes
>> +
>>     ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>>       properties:
>>
>> -- 
>> 2.34.1
>>
> 


