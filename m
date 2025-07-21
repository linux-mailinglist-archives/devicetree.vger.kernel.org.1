Return-Path: <devicetree+bounces-198364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C82B0C879
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 18:16:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DCAE3A5EEC
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005D62DFA32;
	Mon, 21 Jul 2025 16:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ETIyWcs+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDFC1917F1
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 16:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753114606; cv=none; b=Mq7M8wc2yo2pTSkJ9T8HG9CGkFSWgGVi5IRoXx9am45iL+580MoEHF0EizV/zlbNQqXe3/8Jkx7HKZYUnK61Z3JrRRpm4B5IRx3V7kTuvlS4oQzuaVFRPOpkpMs6ceux4dwJUWweid+kqSDLlcttzaDLL0zpV8RCiRfiq/dq9NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753114606; c=relaxed/simple;
	bh=jQK7hBntJAzCfknBxU+rIfU3PYhCTohn9MDcOS0DpEw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E7AwVZ12PDrAHL7D5Juzgj9wEya+tgnR77aIVJ6y1TPtm9GBKxuqfqbOL5w2jFm76UDTcupFrLG+KlJwnrrkTRWZWeWqR5HMW0san0siNugo3AOAYrjdKI0u2jAs6PpcwjysPHcO7ZgN0ZlOiNYTOB7jGOzAdBo8JU97Nruy9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ETIyWcs+; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4561607166aso34801575e9.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 09:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753114603; x=1753719403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=talQw3V8OesgOs/IENp8i6XaCvz9bMnhlCG20asaaGA=;
        b=ETIyWcs+YPo8XDhJDpgLJRRmjk53btcpD+Jv4NgvUIonExIan2AUsbFDUtLwW75YHZ
         gcXYc9LFldeZAQXjpv0HMR2/osV0pazOVFS+ONegPiBuui+qiaNFggUxhhMQqr1R6MAM
         F0AKuFT2RJOPxO/3o1vgbtgPWb1iKhOE7GZHDZDiYEaldtbBosNvPf/4fbVVOijXrfne
         i6ATrMR+U3yLfbQCk5u6yyfuq4XQR0ZM0/9Ilsc6P6v6PQl+Xicz7tx6HpGJ7Un/fYBt
         CMfzm0gFXH6Ei/jt474QgTopB0tdtsqW0m+YSnzN77R4b9WMLG01tnHwch5czBxl98Sa
         GRQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753114603; x=1753719403;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=talQw3V8OesgOs/IENp8i6XaCvz9bMnhlCG20asaaGA=;
        b=fhxBGwwDwyFj2GBvTqmIzH+PXSrqNNXmHxVzDSGDzaVtrGwXimZ+B4VBG05rOWwJs2
         zG/kV+85+FhAGYlcmxaFmxAHVurVPiQ1R1JiwP7h09WNZcaoduNxbo00U4eM48nbldKm
         iKPPopJsOLGbtSRlfQ6ueQ9oOh0EHtLnZIn263LjwCWI9QzTL1B4Ixi3qYR4g7v5fO31
         IU2LgsMldOKsR4Bz7XVjaOnyl4PXdUgTvut+USKvZgCxRCaXODpsI75vFhKNQwXyjuKK
         8pjKzcwkUyfzVd5Dnr4nVIsijQ24hkq5nLCxYojbGnjXx2+5dY2Aar5Yan4v5gIGcUXl
         yndA==
X-Forwarded-Encrypted: i=1; AJvYcCUemsJRoXLCVxQRgtfKEdBwaf5xwuVa1nCtto2WMKZ5xXCMFnirGe+YUHqqVRtqQRtdz4HHOBV1q6Rh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/xB3i0h/NNCYE0UxrEBZT5iIRLuPz5XmL3UYma9I098mSpZV0
	9r5zOQfuEcObAtDE8lpmbfiOaggomwEc61TLI11OduyKZyQiUU7bQHqucpgxO0+N5PQ=
X-Gm-Gg: ASbGncvxXsY/aL2ajrZecNyC6sEyIJw8Sg8yJezddsHSjnTmcPw8UFzpDNgYS7Dw+uh
	x9lhnACXNBj5P13de192JlK3za+gv39+QWjkt88L1ONRmZsWrB/4q5q58owuENqHjTb8xjSdrDL
	73K6PSaOZPuidETuL8sL6cZv0vbI7yNHZ38iJ/KijmItEQFbX9pxKRlwU7hp12KNRdLPb/pMeOt
	jauHRNId5PHwG52VfKpyU4nOgUktHeckgoxjvIPYHkPtMqssgpO3KgNveuac1IYmqoUcpuvjbcA
	Sncz8r3DkHGyar/XxrOva1UZ83j1QwNqnosZZ4lCpovVZtB2qtprZXsuCcbD+TNa5zuws5eXJm/
	QqMbC7GRSS5H3mWwBo+SB6g2xPAA89sqsNWyI4uFU7dpXq8i+zQModTEyp8MpBWY=
X-Google-Smtp-Source: AGHT+IERPoYUdYZmsWjMVuo3Vr62pGzsvinykMvY+4a+6Z+e8/5eRFFxtBVqU6BUs0+8JvGwVbgaTg==
X-Received: by 2002:a05:600c:1f13:b0:43c:fbba:41ba with SMTP id 5b1f17b1804b1-456327bbf81mr138943345e9.28.1753114603099;
        Mon, 21 Jul 2025 09:16:43 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e57200csm165190545e9.0.2025.07.21.09.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 09:16:42 -0700 (PDT)
Message-ID: <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
Date: Mon, 21 Jul 2025 17:16:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 21/07/2025 16:46, neil.armstrong@linaro.org wrote:
> On 15/07/2025 11:33, Konrad Dybcio wrote:
>> On 7/15/25 11:20 AM, Vladimir Zapolskiy wrote:
>>> On 7/15/25 12:01, Konrad Dybcio wrote:
>>>> On 7/15/25 8:35 AM, Vladimir Zapolskiy wrote:
>>>>> On 7/15/25 03:13, Bryan O'Donoghue wrote:
>>>>>> On 14/07/2025 16:30, Vladimir Zapolskiy wrote:
>>>>>>>>
>>>>>>>> I think that is genuinely something we should handle in camss-csid.c
>>>>>>>> maybe with some meta-data inside of the ports/endpoints..
>>>>>>>>
>>>>>>>
>>>>>>> This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
>>>>>>> of sensors to a CSIPHY. Where is the relation to CSID here? There is no.
>>>>>>
>>>>>> All the PHY really needs to know is the # of lanes in aggregate, which
>>>>>> physical lanes to map to which logical lanes and the pixel clock.
>>>>>>
>>>>>> We should add additional support to the Kernel's D-PHY API parameters
>>>>>> mechanism to support that physical-to-logical mapping but, that's not
>>>>>> required for this series or for any currently know upstream user of CAMSS.
>>>>>>
>>>>>>> Please share at least a device tree node description, which supports
>>>>>>> a connection of two sensors to a single CSIPHY, like it shall be done
>>>>>>> expectedly.
>>>>>> &camss {
>>>>>>          port@0 {
>>>>>>              csiphy0_lanes01_ep: endpoint0 {
>>>>>>                  data-lanes = <0 1>;
>>>>>>                  remote-endpoint = <&sensor0_ep>;
>>>>>>              };
>>>>>>
>>>>>>              csiphy0_lanes23_ep: endpoint0 {
>>>>>>                  data-lanes = <2 3>;
>>>>>>                  remote-endpoint = <&sensor1_ep>;
>>>>>>              };
>>>>>>           };
>>>>>> };
>>>>>
>>>>> Don't you understand that this is broken?.. That's no good.
>>>>>
>>>>> Please listen and reread the messages given to you above, your proposed
>>>>> "solution" does not support by design a valid hardware setup of two
>>>>> sensors connected to the same CSIPHY.
>>>>>
>>>>> I would propose to stop force pushing an uncorrectable dt scheme, it
>>>>> makes no sense.
>>>>
>>>> If all you're asking for is an ability to grab an of_graph reference
>>>> from the camss (v4l2) driver, you can simply do something along the
>>>> lines of of_graph_get_remote_port(phy->dev->of_node)
>>>>
>>>
>>> It's not about the driver specifics, my comment is about a proper
>>> hardware description in dts notation, please see the device tree node
>>> names.
>>
>> I'm a little lost on what you're trying to argue for..
>>
>> I could make out:
>>
>> 1. "the phy should be a multimedia device"
>> 2. "There is no ports at all, which makes the device tree node unusable,
>>     since you can not provide a way to connect any sensors to the phy."
>>
>> I don't really understand #1.. maybe that could be the case if the PHY
>> has a multitude of tunables (which I don't know if it does, but wouldn't
>> be exactly surprised if it did) that may be usecase/pipeline-specific
>>
>> As for #2, I do think it makes sense to connect the sensors to the PHY,
>> as that's a representation of electrical signals travelling from the
>> producer to the consumer (plus the data passed in e.g. data-lanes is
>> directly related to the PHY and necessarily consumed by its driver)
> 
> The port/endpoint should represent the data flow, and if the signal is the following:
> 
> sensor -> csiphy -> csid

I'll be honest.

I looked at your upstreamed code

drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c 
Documentation/devicetree/bindings/parch/arm64/boot/dts/amlogic/meson-khadas-vim3-ts050.dtsoc/meson-axg.dtsi

And didn't really think CSIPHY needed to be included in the data-graph.

---
bod

