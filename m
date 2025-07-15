Return-Path: <devicetree+bounces-196358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC858B051DC
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 08:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02E0D4A658C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 06:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E1626C3BF;
	Tue, 15 Jul 2025 06:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hiUAmNQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A8325F790
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 06:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752561322; cv=none; b=uRgm3tGCrKS3qH90KjRAMGPXTE3m3W7BDFqcidrRwa2LXuued0ChKYcnu15oiMD6xEzuxzyIrjTnkl+ArQserOITRkRhymr0KTZtFiG5Zic3QKuVGrw9JoPGSqo28Li7Qsm7nJHiy94EcCQB5EQl9mehqpMoWTFKENnQyTJQzM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752561322; c=relaxed/simple;
	bh=p3LPkjq+uZRwh2andFI5/6qsRT2nuhoh6ljdJGtYBr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kg0J0dgL0dlDo7VeXO5s1ZiTWNprjjVtAJCiLFZryM9BzNVuJXgqYBVSzquVErvQEGbKxUoS8pdI4kSWLO6x6rh5tkbz1HcjA+AAWgDYXGBXti7VzKy3/a/R6wycqZuS77Ypbmxf9OMOpnoUrLjzr8/tGlvFbGFVevV/xHOmfZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hiUAmNQJ; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32b2f369031so5674511fa.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752561317; x=1753166117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QWk+3HwoE658WoVjEcyuNKZKmpUhfuUyOmAf2RcohLk=;
        b=hiUAmNQJCN0jsnmgo54T2V+NhPaaXi8OmgkDeQ7a4XDPVeOz3Ub6H7Y5yFk5R9on1n
         bMjrGigb9PBQFesc26UZZkh3tYWIAW1Zi9/NfKNr2icpwFRnCP1E6voKVwCzW4HeLzfD
         +abHHoTyZbXz81G1WIRxktNTArxCJJQLmI3SVRS5zHMICk8rJT4xxjRvo//fTaD3A2QO
         IbDaH2/w9J13owz6pKWGg7Zreg6OZlkFwk2itPfNxkGh7F6+E0rbJINDU+wc7edY5Tj5
         lS8YI5gaDoE7QEJPcpKt4fguwwtrI3m2jIogC0IQmE5+Ph//4wdlftQLsRmdNBZoyn1x
         kpqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752561317; x=1753166117;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QWk+3HwoE658WoVjEcyuNKZKmpUhfuUyOmAf2RcohLk=;
        b=WskWhd4d2HYXfrx9z2w+7Df4FryVQWUghyhI3cXrGVQhejLznJ/3exL98Gk9cHwQWY
         K9gbG4jpQCLLe+lxmzYdjsXzc1uwmixIhOujjgi9y7IiDghf3EfHsAk+MieZU23X3S6l
         JXxzbGdxdRI3iXt/f5mmbgW2L4xC3g8oyjDww73BU317rJYTn7hK6szeSDUcwscmMU8v
         GzjqXs9JIzqqU9Bz7QvyZMr0R5SLL+NPcUCb/+CSAbGlJT3EO2LF2QCPyAeIvfSmOtct
         C4pfXjIqGxqRLxUPy5kofgknzld8u6lr6O+eb/tqczwNbWamiqEdU7Xx0nE3OqgAWx0E
         hsnQ==
X-Forwarded-Encrypted: i=1; AJvYcCV53Z0IAR0t1a0oxYhl/7+liWUNXi1CWEJqrF/FZWRI0kLL6TbBslOPu5PYzj6gdpoibSB4Qm0ZhuSK@vger.kernel.org
X-Gm-Message-State: AOJu0YzrRTl9qynSY2VgvcchWua+vFhbEfDahR6gjCWf7j09ZtHwbs6I
	2PAAwtBsrZJDEwPZS6Tw43cUWCfefoqeZGUXDy3PgSMvo85sSAK62rfcYCKXIhjWm/U=
X-Gm-Gg: ASbGncskWcICuvHvpe87rP7KzrW6WEkBPhsN7RUes6RonKvfRFHvcmgul1XebI4cdaU
	AyuvvgAc+9+9bhuHAvWqUu7nlRoM7oZtmBOg7EKWz4QIoNeLZ1Y6eOGjiYYGQs5UaC8ftEhO833
	39xZugQ/BZDeQMBLOCixBIhPCLv/IOEnJHFdiXIphkIO1gX+r5mneu5bd1o0f9JGJ3Nw3IBjwph
	jG+UuPaQblNFrKM6xoH6btltKkwEuRIKBaU7E5Zg/42Pr1kAqsW/XCddau1/WsIpCvbIESc6u+/
	V6/ysAEXHMArgAlKsxHgMh4GUwrzx+T6AKzklBjwur9Mg5pJn6LznmOxGjX9loCj7Pns9H8IEtz
	gYgb1AvC215+kRBRNzpwcvNgMz9K6CPJW3W5Wl5E6xhZFnlh0DVYAXddaPqhNUlMY8sQORt2XsH
	li
X-Google-Smtp-Source: AGHT+IG21/AaIAze5CnrFzbotIk5+WCyNnr4M3ziM12QE2WUONELVSCj8ppEhywifIeaLqF5Jft+XA==
X-Received: by 2002:a05:6512:3b24:b0:558:f60d:d4a1 with SMTP id 2adb3069b0e04-55a1fd758c0mr46377e87.5.1752561316877;
        Mon, 14 Jul 2025 23:35:16 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b736d5sm2167082e87.213.2025.07.14.23.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 23:35:16 -0700 (PDT)
Message-ID: <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
Date: Tue, 15 Jul 2025 09:35:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/15/25 03:13, Bryan O'Donoghue wrote:
> On 14/07/2025 16:30, Vladimir Zapolskiy wrote:
>>>
>>> I think that is genuinely something we should handle in camss-csid.c
>>> maybe with some meta-data inside of the ports/endpoints..
>>>
>>
>> This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
>> of sensors to a CSIPHY. Where is the relation to CSID here? There is no.
> 
> All the PHY really needs to know is the # of lanes in aggregate, which
> physical lanes to map to which logical lanes and the pixel clock.
> 
> We should add additional support to the Kernel's D-PHY API parameters
> mechanism to support that physical-to-logical mapping but, that's not
> required for this series or for any currently know upstream user of CAMSS.
> 
>> Please share at least a device tree node description, which supports
>> a connection of two sensors to a single CSIPHY, like it shall be done
>> expectedly.
> &camss {
>       port@0 {
>           csiphy0_lanes01_ep: endpoint0 {
>               data-lanes = <0 1>;
>               remote-endpoint = <&sensor0_ep>;
>           };
> 
>           csiphy0_lanes23_ep: endpoint0 {
>               data-lanes = <2 3>;
>               remote-endpoint = <&sensor1_ep>;
>           };
>        };
> };

Don't you understand that this is broken?.. That's no good.

Please listen and reread the messages given to you above, your proposed
"solution" does not support by design a valid hardware setup of two
sensors connected to the same CSIPHY.

I would propose to stop force pushing an uncorrectable dt scheme, it
makes no sense.

-- 
Best wishes,
Vladimir

