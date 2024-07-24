Return-Path: <devicetree+bounces-87896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D560893B5F4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 19:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04EAF1C23A09
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 17:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A8D15FD12;
	Wed, 24 Jul 2024 17:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="t7yKilEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BF115FA76
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 17:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721842127; cv=none; b=pNrH+lnJINN27wT1XtWpQEajqY0p8ox+0+Bqll4tOJ7nB6tvVgcJpLWjpryzG7OcfI6feSpq4/sZGOyhGeLp+v2p+sNhGxAL5PYSV0Bo25iuoE3Zi3+EQ+zng/Oh46O6tTzGg55r7tUn2Z80/dwj3sRuYGQQtn6hnUOU2bLqBBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721842127; c=relaxed/simple;
	bh=CoFUvZls+sI80AXXldjzdW4teXUv1X9QLH4A+wBwAUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sNfGJmHoD5u2lr8k01uJchV01EP1cYDjN80ZMflOL/wPkEkHMK3gBYC3wIYsRRN/FaKMXL857E/Iq/o/StK6paQwQl4SCVpsE5bdLC2EfoJVH77OW+zBhoZHh2H5pwE+IBUIVxZkrQTUdVoaYJg+FaX+CJ7IoEAiD7A4TjM+duo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=t7yKilEa; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3683178b226so3811485f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 10:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1721842123; x=1722446923; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sg/nq8n4SP1vVkJBbHllFuHt6DH0ZuXLw1auy1fJN9I=;
        b=t7yKilEaU62NGqUZBp4SnuwmlDTHswux/9Adkxz9AL+3tAhIvmUelnMgqPGgb5pGdl
         Wl91BVGOYLCQzkfr7bQKTlNHleWCCfjwbldP7/nLDcdjcAvu7Ri9bCz2pnbdQzQe+fjF
         vwGcpE5zF17PmNYRIeE5300zRa6I0Z/nuUXOqa9U/edgSdRVmVEyQ6VaJp8/925zRVVj
         9zi5iUoC+qmOapcYPwTxq8u2ZF7BWrmOxvWs8cIGrR721Cqq4HTsLSy7xIuosj6b1fYw
         PePNvWEP311w5ZXxziCxsThdEGuXbpIVjlsYang2spejqEWGqVFvID4liKL2h5FT52Dd
         WOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721842123; x=1722446923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sg/nq8n4SP1vVkJBbHllFuHt6DH0ZuXLw1auy1fJN9I=;
        b=d2jhkBJ/1z40xFW3PYsad/YT/oM4ji7yvSaTPX1zni2Vpj9cPxRB2kB/ITB0Uxahoe
         JmhKTg6JkkmMjc1AnXMXUo3Wu4qE4qK/gEIifqpOl08mxkp/nTGq0A/Cd/mqXXTLZsXG
         PXHTksrosWS23GhF/j5UWYAElfPP2vuyWyBLAzcWZ377A6okXxvp6TsaU4KjjOyljFrU
         URPjMTgZLx2pUQSZ4nubSzP8iBd+/E6S8LrBjFDLQKpzKSm2aaZ8gxTxEr6q2r9Bpmc2
         0QDlY9vhTMbeshXhqd88A7j3WX9fFA3lyW2/VlrPW4hDPDL62ldDmLeZKreTLlM6ZikX
         XSkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWnt3Y+w2NhIbsW072fdDp+TOgqwgzW8K0GGnmAVTNv6530D7h0u3Wxz61+QXhTpfmEo0M7ZTpJ4l5GT8Ei2WUF5nPIQAGY4bRkg==
X-Gm-Message-State: AOJu0YzlIkSoNsF6j6HWL0V+GOOjTyHH2Sg3dGbyHPSctFzojTSXGzYN
	XsTngCqfjRUJkLtN6lYs7a/ia7wuIthW6jSwOWF6tS84IzTa6Fi01EbTF5nXzc0=
X-Google-Smtp-Source: AGHT+IGdiRJOTRunJ2te0j0qGzCBOJF3slECMQfQgsBJys2FbWtVzHhpWFXxAWL/1q8InFZIf/QTqQ==
X-Received: by 2002:a5d:50ca:0:b0:369:b842:5082 with SMTP id ffacd0b85a97d-36b31a8aba3mr229192f8f.50.1721842122813;
        Wed, 24 Jul 2024 10:28:42 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8? ([2a01:e34:ec24:52e0:fcff:6f45:dab:b3a8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f93ac157sm36274575e9.39.2024.07.24.10.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 10:28:42 -0700 (PDT)
Message-ID: <2cd0af8d-aced-4460-95d0-376ecb783806@freebox.fr>
Date: Wed, 24 Jul 2024 19:28:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e7bbbe4e-7deb-46c3-9cce-1922f9b6b3a2@freebox.fr>
 <20240708-ethereal-romantic-piculet-d4ae66@houat>
 <pp3rc5zob3xeghlatw4vnpzplc4yjpjadkea465zmhft55dyl5@3cpoc2zovftv>
 <20240715-shiny-enigmatic-firefly-2a6dec@houat>
 <f40de173-0c61-4400-87b2-51c171a52baa@freebox.fr>
 <j2ouvtywaasnkxq344rm4b6mrlqtu6bxlq4wrvz4fawzww3xad@yjp7k4zmfygu>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <j2ouvtywaasnkxq344rm4b6mrlqtu6bxlq4wrvz4fawzww3xad@yjp7k4zmfygu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/07/2024 19:25, Dmitry Baryshkov wrote:
> On Wed, Jul 24, 2024 at 07:18:39PM GMT, Marc Gonzalez wrote:
>> On 15/07/2024 16:42, Maxime Ripard wrote:
>>> On Mon, Jul 08, 2024 at 11:29:46PM GMT, Dmitry Baryshkov wrote:
>>>> On Mon, Jul 08, 2024 at 04:59:23PM GMT, Maxime Ripard wrote:
>>>>> On Mon, Jul 01, 2024 at 05:36:18PM GMT, Marc Gonzalez wrote:
>>>>>> On 01/07/2024 15:50, Maxime Ripard wrote:
>>>>>>
>>>>>>> On Thu, Jun 27, 2024 at 01:13:03PM GMT, Marc Gonzalez wrote:
>>>>>>>
>>>>>>>> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
>>>>>>>> It supports DVI 1.0, HDMI 1.4b and 2.0b.
>>>>>>>> It supports 4 TMDS channels, HPD, and a DDC interface.
>>>>>>>> It supports dual power supply rails (1.1V on VDD, 3.3V on VCC)
>>>>>>>> for power reduction. Several methods of power management are
>>>>>>>> implemented to reduce overall power consumption.
>>>>>>>> It supports fixed receiver EQ gain using I2C or pin strap to
>>>>>>>> compensate for different lengths input cable or board traces.
>>>>>>>>
>>>>>>>> Features
>>>>>>>>
>>>>>>>> - AC-coupled TMDS or DisplayPort dual-mode physical layer input
>>>>>>>> to HDMI 2.0b TMDS physical layer output supporting up to 6Gbps
>>>>>>>> data rate, compatible with HDMI 2.0b electrical parameters
>>>>>>>> - DisplayPort dual-mode standard version 1.1
>>>>>>>> - Programmable fixed receiver equalizer up to 15.5dB
>>>>>>>> - Global or independent high speed lane control, pre-emphasis
>>>>>>>> and transmit swing, and slew rate control
>>>>>>>> - I2C or pin strap programmable
>>>>>>>> - Configurable as a DisplayPort redriver through I2C
>>>>>>>> - Full lane swap on main lanes
>>>>>>>> - Low power consumption (200 mW at 6Gbps, 8 mW in shutdown)
>>>>>>>>
>>>>>>>> https://www.ti.com/lit/ds/symlink/tdp158.pdf
>>>>>>>>
>>>>>>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>>>>>>> ---
>>>>>>>>  .../bindings/display/bridge/ti,tdp158.yaml         | 51 ++++++++++++++++++++++
>>>>>>>>  1 file changed, 51 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>>>>>>>> new file mode 100644
>>>>>>>> index 0000000000000..21c8585c3bb2d
>>>>>>>> --- /dev/null
>>>>>>>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
>>>>>>>> @@ -0,0 +1,51 @@
>>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>>>> +%YAML 1.2
>>>>>>>> +---
>>>>>>>> +$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
>>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>>>>> +
>>>>>>>> +title: TI TDP158 HDMI to TMDS Redriver
>>>>>>>> +
>>>>>>>> +maintainers:
>>>>>>>> +  - Arnaud Vrac <avrac@freebox.fr>
>>>>>>>> +  - Pierre-Hugues Husson <phhusson@freebox.fr>
>>>>>>>> +
>>>>>>>> +properties:
>>>>>>>> +  compatible:
>>>>>>>> +    const: ti,tdp158
>>>>>>>> +
>>>>>>>> +  reg:
>>>>>>>> +    description: I2C address of the device
>>>>>>>> +
>>>>>>>> +  enable-gpios:
>>>>>>>> +    description: GPIO controlling bridge enable
>>>>>>>> +
>>>>>>>> +  vcc-supply:
>>>>>>>> +    description: Power supply 3.3V
>>>>>>>> +
>>>>>>>> +  vdd-supply:
>>>>>>>> +    description: Power supply 1.1V
>>>>>>>> +
>>>>>>>> +  ports:
>>>>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>>>>>>> +
>>>>>>>> +    properties:
>>>>>>>> +      port@0:
>>>>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>>>>> +        description: Bridge input
>>>>>>>> +
>>>>>>>> +      port@1:
>>>>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>>>>> +        description: Bridge output
>>>>>>>> +
>>>>>>>> +    required:
>>>>>>>> +      - port@0
>>>>>>>> +      - port@1
>>>>>>>
>>>>>>> The device supports DVI, HDMI or DP input, with various requirements and
>>>>>>> capabilities depending on the input. Your binding doesn't address that.
>>>>>>>
>>>>>>> Similarly, it can do lane-swapping, so we should probably have a
>>>>>>> property to describe what mapping we want to use.
>>>>>>>
>>>>>>> The i2c register access (and the whole behaviour of the device) is
>>>>>>> constrained on the I2C_EN pin status, and you can't read it from the
>>>>>>> device, so it's also something we need to have in the DT.
>>>>>>
>>>>>> We are using the device in its default configuration.
>>>>>> (Power on via OE, then it works as expected)
>>>>>
>>>>> I know, but that doesn't really matter for a binding.
>>>>>
>>>>>> Can we leave any additional properties to be defined by whomever needs
>>>>>> them in the future?
>>>>>
>>>>> If you can guarantee that doing so would be backward compatible, sure.
>>>>> But that means being able to answer those questions with a reasonable
>>>>> plan.
>>>>
>>>> I think proposed bindings are generic enough to cover other possible
>>>> usecases in future.
>>>
>>> I don't think it is. The current binding is for a I2C device that
>>> shouldn't be accessed through I2C.
>>>
>>> It's working for now because the driver doesn't do any access, so it's
>>> all great, but as soon as we add support for the other case, then we'll
>>> have to add a property that states that while it's an i2c device, it
>>> shouldn't be accessed.
>>>
>>> And adding such a property is a compatibility-breaking change.
>>
>> Why do you say:
>> "current binding is for a I2C device that
>> shouldn't be accessed through I2C" ?
>>
>> As a matter of fact, my debug code queries the device ID using
>> regmap_read() to make sure I set the correct I2C address.
> 
> Please note: bingdings do not cover the driver at all. The driver might
> do whatever it wants. The bindings describe the hardware.

OK.
How does the proposed binding say
"I2C device shouldn't be accessed through I2C" ?

The tfp410 has the same property that it can be configured
either through pin straps or via I2C.



