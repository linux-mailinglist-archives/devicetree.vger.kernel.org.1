Return-Path: <devicetree+bounces-68737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FBC8CD343
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 15:10:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A802CB21970
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 13:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B133414A4D9;
	Thu, 23 May 2024 13:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SJ7zIdPY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0113BAE3
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 13:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716469810; cv=none; b=QxC+0T6oBg/A1GXcDrfnQ9bwWXzM217Z+UCyTeeddjJdTpae3twKbVoR6pgIV9pjOfixtGWJ+dkqqgvN4qOfDiaVWG+jwUcLbyX343EcO7mCgnbbvwEVwYa4C7Vc2IFKYJu52JNhSHxdXiVbUfUuffDhYo/Y4HE2vWGBdomNvzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716469810; c=relaxed/simple;
	bh=7/zN4LutuvDH5MlsPYdxcjgISQwlC47iGGavoXQlvDA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hZORzktfrNgI9jB4zAXiKjWeA81Um1Egp9IguZVreAumcRQgYBmNErzyoo0rSrJJa2TniVRJubs/MIlsuL7D/GU54ORm5d4AJZuyJm9L52jNm9/qJoZyGmVFs0nJDCmrzr3/hzC2VurrQo77I8EU8AACMR/mA4rv0MmzT5TjC3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SJ7zIdPY; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e45c0a8360so67491911fa.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 06:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716469806; x=1717074606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NccXt9V6EN2SZG8Lr1Uq+9HYjGPYWjd0QyMlNEPIscY=;
        b=SJ7zIdPYJcDoZQDp9mfkzz/2gh9LjUVxz3X801uIKrfamHZhoDN/cvIjvzFe70gZYG
         CZ2PdHU3+9I8NKHcaT5JnpPTtkBcWn1s4XemYC04Iig8fV5Vf7zZIiE9jcpTZ4vmnDVx
         KU6wAW2l9XDtVr7YrDtH5VIPAuO3lL5ZV8Sdg49AVHr9mNmUlGmOQc3bNlPTaJAzEGBK
         CVnBx6wcdi9GhArCUXiCDEt8zZvMcOw1nU46qIeQUm0Gboll4QbycAx+JvAjM0npctmd
         K9imgDDwcXZVfXPn1/ZNIUMYAB+IFe2hYh9k68ajjUWqSxktAwALOX1KejeKMbBFYQZi
         cBDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716469806; x=1717074606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NccXt9V6EN2SZG8Lr1Uq+9HYjGPYWjd0QyMlNEPIscY=;
        b=YyDjis/5unfo+yxBPeYDTIKwXD3HnxlaDOcEJOeNqQGZRcJ1QcYDPzXWFLu003xrAs
         P7n7wJ7MAVMAd5MWut9yz1g0vYw8E02NRkAHIpTh0byxcXgS61unadVgzseVe8cpSEaT
         +pGpuwMcliEXlfRu0TcECFNHmleF+I/cZ5huLcuhiu0q6a/IOe97Wke3pH0NKbB0tPe6
         ziCOXefzK/7YBhAopydwT2k/J6NMx0kdAljJ/TlZoB6R3/h0qkWLyS4CKiNUqWS5PTL0
         +gYIsV9X382+epPbmIWhCE0yqiJdizHDqgMFry3Mqfs2zeUjOKq+e7MvnQn1MGf9zkI4
         /JRA==
X-Forwarded-Encrypted: i=1; AJvYcCVVUjky54hBmZxHup6He9Ps0nKToGBa6kzjg7782DKnree5fK9JA0c4feiSdmBYvyq0iAmEy38k4GLg10ATHIcHRqB/ZMkTQ5xPRQ==
X-Gm-Message-State: AOJu0YyGm79ca2/l8ehkYUP2P9v3BxZNLLGLghwI//XZkznPorhrFUmu
	vq0liozaQkTo6eD83oSO8rQZi57lvYifx75j6rphWm/1gM2E3tahgICW1UliNnY=
X-Google-Smtp-Source: AGHT+IF//hB8svNbFPr+Fzi5E4/LRkRs6MwKRwT77fKfQWBL+TGZH5TPLNErkfhtpJJqNcroXOX4DA==
X-Received: by 2002:a2e:a444:0:b0:2e5:2c7e:257 with SMTP id 38308e7fff4ca-2e94949dfa2mr32000371fa.30.1716469806333;
        Thu, 23 May 2024 06:10:06 -0700 (PDT)
Received: from ?IPV6:2a04:cec2:21:7ed1:cc40:dfff:5a22:b06a? ([2a04:cec2:21:7ed1:cc40:dfff:5a22:b06a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f64f98sm24634225e9.24.2024.05.23.06.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 06:10:05 -0700 (PDT)
Message-ID: <f00a65a9-e7b0-4811-ba25-2a5a0f932a49@baylibre.com>
Date: Thu, 23 May 2024 15:10:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] thermal: Add support of multiple sensors
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rafael@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240119110842.772606-1-abailon@baylibre.com>
 <03fbaefa-de17-47f0-a48d-7b40e5df50f6@linaro.org>
Content-Language: en-US
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <03fbaefa-de17-47f0-a48d-7b40e5df50f6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Daniel,

On 4/30/24 16:37, Daniel Lezcano wrote:
> 
> Hi Alexandre,
> 
> On 19/01/2024 12:08, Alexandre Bailon wrote:
>> Following this comment [1], this updates thermal_of to support multiple
>> sensors.
>>
>> This has some limitations:
>> - A sensor must have its own termal zone, even if it is also registered
>>    inside a thermal zone supporting multiple sensors.
>> - Only support weighted average
> 
> Is it possible to elaborate why this feature is needed ?
> 
> The thermal framework is able to aggregate the cooling device requests, 
> so having multiple sensors aggregated or the cooling device requests is 
> from my point of view the same.
> 
> I can imagine one reason to do that is to group the sensors in order to 
> use the IPA because it won't work the setup mentioned above.
> 
> Is that the goal you want to achieve ?
Yes, the goal is to use IPA.
I will give more details in the v3.

Thanks,
Alexandre
> 
>> Changes in v2:
>> - Rebased on 6.7
>> - Seperated generic multi sensor and dt specfic code
>> - Simplified the code
>> - Drop min / max and only do weighted average (seems more adequate for 
>> IPA)
>>
>> [1]: https://patchwork.kernel.org/comment/24723927/
>>
>> Alexandre Bailon (3):
>>    dt-bindings: thermal: Restore the thermal-sensors property
>>    thermal: Add support of multi sensors to thermal_core
>>    thermal: Add support of multi sensors to thermal_of
>>
>>   .../bindings/thermal/thermal-zones.yaml       |   5 +-
>>   drivers/thermal/Makefile                      |   1 +
>>   drivers/thermal/thermal_core.h                |   7 +
>>   drivers/thermal/thermal_multi.c               | 178 ++++++++++++++++++
>>   drivers/thermal/thermal_of.c                  | 139 ++++++++++++++
>>   5 files changed, 327 insertions(+), 3 deletions(-)
>>   create mode 100644 drivers/thermal/thermal_multi.c
>>
> 

