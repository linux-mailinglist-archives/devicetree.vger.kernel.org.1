Return-Path: <devicetree+bounces-125367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 660459DBBD7
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 18:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16C8516405A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 17:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D721C1AD0;
	Thu, 28 Nov 2024 17:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DAmaXley"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA4F1C07F4
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 17:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732815498; cv=none; b=EzppnoHFJN3CxwThxGyDer7NQQKwl8QUkbAMIoJ3gSseQQ1TVPYO/bzeVMFcLoTn2MeA7i2udbHfLvJPyR+f1X6UkbYLTcHjNWYS7nHOLHhjxBHmBHqdCjlP5ooxhK7PcvMhi4gefKHQ2Oz0Dj91EWOhXinzdveJoGcDL19rZOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732815498; c=relaxed/simple;
	bh=7Wg7RpuZOM/HyrjX0bWWh7XXJ/yOw0T82VzA/PUnTxw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pPp+SILEVEvzyPiDCPsqGgtsuNtzhBEyvl9eS+fdUlrbGnIevmOVYb0VjXZvX2PPClSMfdxDbG+3F11dBgNDZG8O9k8urURaT8d8RCPjV2vl5k3mhX9T72HJAW9t3HKNUbebGrmzPqzeo/oCxA+v11ceGqkYeoZnyPJ7CW1ZBo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DAmaXley; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a099ba95so9662545e9.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 09:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732815494; x=1733420294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10gOONKYd0Gk3rZPYV0aoJyh1TGfB9PFutKnizLk6Y4=;
        b=DAmaXleyI2w5Pod442rCsFxEJe2rHFKbx6/Iyj4/XGok5Yq/jKCjntGw12ynFMS3n4
         T8iStoSQH18DMLcWWOEhECChaZ/ITXGhw0/bZY/aTxwtDmd7g2szUxTREken1V+wjiGA
         EkOPZKATsV1Nuy0Yy0rKPbM0sdiazZoj5SigVGJnur/Hpdhl/8VotdUBHsJzqWZDExWA
         c9atkGBBBY2384aFg+GK1VYST97pUmNAtj4O9YH6hrgMzA+Ej7LFgzglzENnNNEiHn8d
         6cqQOVPfxpsi/d95U0kg/S0NAGiJc8QjVK4jGpdk1XVPM9E900SsWU7B/kdB4E2ImvkE
         ey/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732815494; x=1733420294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10gOONKYd0Gk3rZPYV0aoJyh1TGfB9PFutKnizLk6Y4=;
        b=ZXXzBhCqmMy5a9gUrjUkn1THOCSK6P0Ma9rMW7lM8PqrHol1evmTHNQXoKxksmXDT6
         xam6YGjzjQsLFaSo6IpyeFC/xp2KiYb8SXZOqQAvpHoQ+K+SzetKJzLApbiVIjS93VXj
         pdsYslICGIFYLCAf7N8jM6TzKYEhyPphb6Ae9y1zAjq5TqiIFGk2LeUMz1Q99uX2X84X
         jtlHqViASBc7suu0JB08x54GaJryjtchicDdjzvCTp9++2B0N/qtyTTx2a3X3Qag1i06
         fjegmeNLAiqX86G88iaW1YK529qRYj62oVc6saJoMMGkUdvlXetwGQbQ+Hk1wl3+coxC
         fl+w==
X-Forwarded-Encrypted: i=1; AJvYcCUtMtG32T94Ifuiu+28DSFLL069eeEo92FNZr+UAxCJfDWVZ3gf4nQPLz1CZvgvgtIPZAEq6T/y7oCb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf7hxuhzVRVoiKKi+/lgyL1rEnYivSD6GuxPW+tcYC37Ieey7a
	0A17YF0x38sKnhWFVJqMTqSry/AfpYhPkKZDFn5xkNrMAQZQ3Na5jUZyhpX0WlFYfE06VOfoAWB
	Q
X-Gm-Gg: ASbGncsQiu872uJQ5h9JOjagzrI2jFdBro6+iC83lltm46SB5Zc6aAI7VPsOtgAhG3J
	Bbq2OvsjrARdZLgFvKkve/U1UVTb1EocmoCIe0nTlvJDBsHro7u5MbdwrvI0YJOQD/ufCYgseUN
	o435fbrsZS2wJRw4aTq5ew16FD1KIW2bg9lLOZTojbsz7rcUcDbMewOqqKXgTdFLDRLKw/YUeKU
	/jRTt+L2SlOpiXVtvJ4vn2XNziagzt2QRHdLGVeJ4VyhgF/GlaMfFYRzmHFkFoXk6HNRnVw5lTg
	dJUV2YEovLpxDQ==
X-Google-Smtp-Source: AGHT+IGyiJDbepmBMbDSY4970QLlGU0+MdW25rYKAMlGZRbsCkkVDjf5WuEnqq8LxT5+l+e+vpF+ww==
X-Received: by 2002:a05:600c:4447:b0:42c:b9c8:2bb0 with SMTP id 5b1f17b1804b1-434a9dbaed6mr78728755e9.4.1732815494001;
        Thu, 28 Nov 2024 09:38:14 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434b0dbf95fsm28022775e9.15.2024.11.28.09.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 09:38:13 -0800 (PST)
Message-ID: <c1c14ada-c0bf-4353-a8ba-7b3a2fb6d971@linaro.org>
Date: Thu, 28 Nov 2024 18:38:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] thermal: multi-sensor aggregation support
To: Nicolas Pitre <nico@fluxnic.net>, "Rafael J . Wysocki"
 <rafael@kernel.org>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Alexandre Bailon <abailon@baylibre.com>
References: <20241112052211.3087348-1-nico@fluxnic.net>
 <s120q967-4r69-pps2-1qo3-9952r9173125@syhkavp.arg>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <s120q967-4r69-pps2-1qo3-9952r9173125@syhkavp.arg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Nicolas,

On 27/11/2024 23:05, Nicolas Pitre wrote:
> Gentle ping, feedback appreciated.

I'm currently reviewing the series.

We have been discussing this feature since a long time and multiple 
times at different plumbers without any progress since then. So thank 
you for proposing an implementation of this feature.

I have some concerns regarding the approach I will raise tomorrow.

Thanks

   -- Daniel

> On Tue, 12 Nov 2024, Nicolas Pitre wrote:
> 
>> This series provides support for thermal aggregation of multiple sensors.
>> The "one sensor per zone" model is preserved for all its advantages.
>> Aggregation is performed via the creation of a special zone whose purpose
>> consists in aggregating its associated primary zones using a weighted
>> average.
>>
>> Motivation for this work stems from use cases where multiple sensors are
>> contained within the same performance domain. In such case it is preferable
>> to apply thermal mitigation while considering all such sensors as a whole.
>>
>> Previous incarnation by Alexandre Bailon can be found here:
>> https://patchwork.kernel.org/project/linux-pm/cover/20240613132410.161663-1-abailon@baylibre.com/
>>
>> diffstat:
>>   .../bindings/thermal/thermal-zones.yaml       |   5 +-
>>   arch/arm64/boot/dts/mediatek/mt8195.dtsi      | 210 +-----
>>   drivers/thermal/Kconfig                       |  27 +
>>   drivers/thermal/thermal_core.c                | 643 ++++++++++++++++++
>>   drivers/thermal/thermal_core.h                |  14 +
>>   drivers/thermal/thermal_of.c                  |  86 ++-
>>   6 files changed, 780 insertions(+), 205 deletions(-)
>>


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

