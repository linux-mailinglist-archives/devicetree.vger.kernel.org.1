Return-Path: <devicetree+bounces-106435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C62198A017
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 13:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FD561C20D44
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F62118BC26;
	Mon, 30 Sep 2024 11:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mPhjkFEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D15A13D52E
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 11:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727694416; cv=none; b=DICL97Fzbo+G7VdQRyTB77dKy356YWosXoz451gbM8Vi/QPd6pVlXCE/Q+6I0L7hTba4yaMelIoBFUWJeTB/fWMs8LHmV9y66xdZHTOjUKWLAcZa9bjvl7zy3kTwNnarqm/d+xt3KAuD3/jl7XcmgEL3caMeOewYV5iUuXjmJKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727694416; c=relaxed/simple;
	bh=JNaTl0JBbTCZMv9zWunxE7hRzV57IVakav94aESZNGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a5W4QZrX+VQFj8zam6f7QHdPgI0RuAGL8GxLKsMfXVEieOu2ox0EG0PmpuYK4WHxXRWYudoD9Le8DhmCSEc19hLfo76qLPnykfNtoxrM89NdGkgYodEAjH7LB10kZl1NSv/HVhMMaHUsJ3OcfhfURTh3okuFe+FebYqkeLxmkPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mPhjkFEK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42cb0d0311fso6276515e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 04:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727694413; x=1728299213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zBKF/Q5plvlDGU81ob4r8l8he+xXYko9fL5kB04WgpM=;
        b=mPhjkFEKKW4WNudFt2PTaNRokQAdsxpLqvXZt3dqEnBtmaaKVNmDAwxORIA0oEFy1T
         TXwzhihzMejjhnb/1hMB6uz4IXVjYSFy3aFJMKywr6pz0hTMKu/2yRwfxb1uG1px+RGt
         TgobKJ3m3KfZ1R3jxQ6Qck9fCSl/9h0Do2co8ZHJlblAClOOTqPSZf6U9J9K56dQeMNN
         p/4yZWXD7rDgVfZVyzDADIMHYBbNE41qpsw1W0ew4972IUvZm//Vy/mz36yoP4aSJgkG
         YayZJzGHQLiYkXlDjX5silcOIsUDxBZHrtIlki0cndfa8ELvRN7ubBlN2BWXH//wf7mE
         Be9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727694413; x=1728299213;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zBKF/Q5plvlDGU81ob4r8l8he+xXYko9fL5kB04WgpM=;
        b=CAsyWox6DIedjIyHU2e961YnIql2Zo6bL3aUOQBGVP/cvxTqGebT3mIB6WQvHlwBLO
         I9+GBM+D3ok8wjrKdIN57Yiy+FvkxnHD8uMcXg/GNWH5OxPV8Saznc09LU1wzR+7rwUS
         DoKk9GNPVLlJ+5OvYNDTYd39bbL65TUz//SEKLi74GCjv9nmDk8pSwEjSGOVul9/k9Fh
         CILF7FWDeYLf7Ff/BFbPWYmkK1bylfNxiLsZHCVOTZMKMAH2Dl5yesbxvvJZm8AhOMYT
         4YugixwvXMeyVBdyBrOR60KvekXO+5szJY86FFR/9IZpf3ztwQOrlSgt8Lsroj2XmkSI
         CHiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCo9PM4Qks/+6OxOHRQv0adTQPyRr3nGRuJWk+ny1rhu96gFhAC7KrPpeuXW9aIrk94Jycmos0PGVx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7eoUaf948lI8BAYshBlmvOsu8VRvfPNR+vvNmaAK+XcXOt8fW
	CDjfqI5sr8Qz/xcseM/tvNJqOk+kxxIqOhB0JMfCM4hoCtLNi+gu97BkXjl5nCo=
X-Google-Smtp-Source: AGHT+IEjv4W2c/ytROEtNGOg10FuHJYFR6UwENYEgZ5Jt76Iu2gR1jEsl3wLQk2R5zgoKJiy9vbDrQ==
X-Received: by 2002:a05:600c:190c:b0:42c:b55f:f4f with SMTP id 5b1f17b1804b1-42f584981bdmr38686215e9.6.1727694412778;
        Mon, 30 Sep 2024 04:06:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e969f1a76sm146697805e9.12.2024.09.30.04.06.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 04:06:52 -0700 (PDT)
Message-ID: <e235f275-b9ef-40b8-929d-faddd58c17aa@linaro.org>
Date: Mon, 30 Sep 2024 13:06:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch"
 <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>,
 "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
 <wfdanj6ibwybx2puqvi6xjy6h5t4yagnb2mod7ln3zca4dl5wz@4mvbe6wjavb6>
 <DB9PR04MB94529379E1947D66848B7BE2F4752@DB9PR04MB9452.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <DB9PR04MB94529379E1947D66848B7BE2F4752@DB9PR04MB9452.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 29/09/2024 04:36, Sandor Yu wrote:
> Hi Krzysztof，
> 
> Thanks for your comments,
> 
>>
>>
>> On Tue, Sep 24, 2024 at 03:36:48PM +0800, Sandor Yu wrote:
>>> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
>>>
>>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Drop
> OK, I will remove it in the next version.
> 
>>
>>> ---
>>> v16->v17:
>>> - Add lane-mapping property
>>
>> That's a significant change.
> OK.
> 
>>
>>>
>>> v9->v16:
>>>  *No change
>>>
>>> .../display/bridge/cdns,mhdp8501.yaml         | 109
>> ++++++++++++++++++
>>>  1 file changed, 109 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
>>> b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
>>> new file mode 100644
>>> index 0000000000000..3f79f328c7425
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.y
>>> +++ aml
>>
>>> @@ -0,0 +1,109 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
>>> +---
>>> +$id:
>>> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
>>>
>> +cetree.org%2Fschemas%2Fdisplay%2Fbridge%2Fcdns%2Cmhdp8501.yaml%2
>> 3&dat
>>>
>> +a=05%7C02%7CSandor.yu%40nxp.com%7C40a6bd4ff1cd4d934da008dcdc72
>> 9fd0%7C
>>>
>> +686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63862763207998660
>> 8%7CUnkno
>>>
>> +wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h
>> aWwi
>>>
>> +LCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=Uw%2FQQ0Qg36Y8Q6wFPC7Zg
>> LzLHvOj8GjH1
>>> +k8McgcjrqI%3D&reserved=0
>>> +$schema:
>>> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
>>>
>> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&data=05%7C02%7CSandor.y
>> u%40n
>>>
>> +xp.com%7C40a6bd4ff1cd4d934da008dcdc729fd0%7C686ea1d3bc2b4c6fa92
>> cd99c5
>>>
>> +c301635%7C0%7C0%7C638627632080031124%7CUnknown%7CTWFpbGZs
>> b3d8eyJWIjoi
>>>
>> +MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%
>> 7C%7C%
>>>
>> +7C&sdata=IG9Em3AWOwzlpR1Wk0Vw%2FF161YcOxuMHbA4Y%2FzftgYA%3D
>> &reserved=
>>> +0
>>> +
>>> +title: Cadence MHDP8501 DP/HDMI bridge
>>> +
>>> +maintainers:
>>> +  - Sandor Yu <Sandor.yu@nxp.com>
>>> +
>>> +description:
>>> +  Cadence MHDP8501 DisplayPort/HDMI interface.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - fsl,imx8mq-mhdp8501
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +    description: MHDP8501 DP/HDMI APB clock.
>>> +
>>> +  phys:
>>> +    maxItems: 1
>>> +    description:
>>> +      phandle to the DP/HDMI PHY
>>> +
>>> +  interrupts:
>>> +    items:
>>> +      - description: Hotplug cable plugin.
>>> +      - description: Hotplug cable plugout.
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: plug_in
>>> +      - const: plug_out
>>> +
>>> +  lane-mapping:
>>> +    description: lane mapping for HDMI or DisplayPort interface.
>>
>> Where is the definition of this property? I do not see any $ref here, so did you
>> add it to dtschema?
> 
> My apologies, the $ref is missing, will add it in the next version..

And that's different than existing properties, e.g. data-lanes or
lane-polarities? There is no description here except copying property
name, which is not useful at all.

Come with solution matching other bridges and media devices.

Best regards,
Krzysztof


