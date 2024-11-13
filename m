Return-Path: <devicetree+bounces-121630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C059C7AE3
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 19:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BC252811A6
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 18:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11AF200C90;
	Wed, 13 Nov 2024 18:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vpzsf5df"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F5515ADA4
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731521889; cv=none; b=jle3gcrRrMzYYjrazTnJEHj/7Y/3us4TXmjz8ku5ZHWtWUqZIlEJIXOg4zETX/12OJ4yY31/r7YcxTwho4sX8ZUG8zOorl24NrVRO+9T/5mkSPgdbmnmNEoeUyX+/53vpGTd47FLIE6vHiODkOQyHKyUWOzVNGfUqAUHkECrYIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731521889; c=relaxed/simple;
	bh=hEmpp2nGMQFSZrQajXmI8OL1Mf8n48M60jnyic/SXPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HuveX62q9wDznKIte9tGJ9vruFh7tZUZv2BeUVOylvyHRmfH3ca6opNYnfUKMaa74Gp5/RYGRjuLAOaaLMNNY4A9IY1iSeKxmqTqj8/GKXCKONMIUvsZ/l3gb6w3bSAQOF3GoVZhXE4/LDFMyqogKZzL2cCxUD8TJcalG7lIR30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vpzsf5df; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso7948949e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 10:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731521886; x=1732126686; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tAIY4e+nFwJ6QvkC9kPfrl0tjap1nueeybQc4XVeRTA=;
        b=vpzsf5dfmrL3h/pzpARqk3HuMrreVhk+miVAGGaO2d9/2knmuRyjaBBaZw853Go/PN
         iWZ9YznqoWRojOyom8EmrOa6nwsPFI+O8PIHjaZQ4EjSjITwYzymDnN4zuZlY5EydK8B
         NswjqU9fxXdo9zFzMRGfg2RvDvKLY35ZgoBuYWuqXCvYJllO8Y5LwPdx0Uehh3ULpVvq
         HfLhfLVXy5zdqjknt7tb6mhk3tjRlHg+FkqDqkSyHgxqRi8nYDsH+a5gclI1UxA3jD2/
         5K5hqWXLnMNEgat9igk4Jkui36wlHFBURCjfuSO0gXjxx3FCjUtX5IleuqerDWOPlFzz
         USLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731521886; x=1732126686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tAIY4e+nFwJ6QvkC9kPfrl0tjap1nueeybQc4XVeRTA=;
        b=Vst54FubcMWuo7xgdoUq7V499AMrCr/9PacF5bIhIF0t6MCn/D1vrv1Ea9HIPTjjMD
         CIkuXGqFQgAV5kU9BESK67QesVPoN0r9dHVKT8aqtsawB9/cFuaWmKr6Vx2BiKa/tQE4
         d611Rtpf0iy+du1XCXZ1SQ9ym8xiMZFRDIiWP0BK1AK+lStsSFiB/rIjYA5CkBgZD9q4
         zLJBWOijANGhozssOfPzYF12SWxvWLOxcb3b8GcqFuVfKHOmpbYlJT626mLhSRVflUJU
         OU7EsE96c/x5SDe72Mou76jiHBuUsuGp8lA8/TwRaANxEZHUf87m6xoc6xdA6QGHwqAX
         ohCA==
X-Forwarded-Encrypted: i=1; AJvYcCW3HRSxEp4EO+B01q3Rr9a54aU3YIKR6uWK2TSnVk4D4rUnAr9OJy+81+i/v7pBixt6uIvuCKokKQsr@vger.kernel.org
X-Gm-Message-State: AOJu0YxstoEM6g7F1pgejg46EXAVVEq9wqHXZFcYhF49Yy3vY0qJ91GM
	jevXIWoLI5enlsqeLDG1fiEidyl86fQRM3UY782PFrak4D6uQvBRk1DKxyNa5dI=
X-Google-Smtp-Source: AGHT+IFglkeI6r32PMMOYdeEIyDlK6/q1n2Mf24sf/LbW1WwZdIjzqbhaymCyPGrKUmZOzNVWVy/4Q==
X-Received: by 2002:ac2:5049:0:b0:53d:a07e:9c22 with SMTP id 2adb3069b0e04-53da07e9cd0mr1592717e87.33.1731521885941;
        Wed, 13 Nov 2024 10:18:05 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-432d54f76b9sm32140295e9.14.2024.11.13.10.18.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 10:18:05 -0800 (PST)
Message-ID: <487d0de5-6f70-4b82-a22b-5e74ba32da11@linaro.org>
Date: Wed, 13 Nov 2024 19:18:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: thermal: Add support for Airoha
 EN7581 thermal sensor
To: Christian Marangi <ansuelsmth@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>,
 upstream@airoha.com
References: <20241018104839.13296-1-ansuelsmth@gmail.com>
 <6734cc42.df0a0220.4521f.ac78@mx.google.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <6734cc42.df0a0220.4521f.ac78@mx.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Ansuel,

On 13/11/2024 16:56, Christian Marangi wrote:
> On Fri, Oct 18, 2024 at 12:48:04PM +0200, Christian Marangi wrote:
>> Add support for Airoha EN7581 thermal sensor and monitor. This is a
>> simple sensor for the CPU or SoC Package that provide thermal sensor and
>> trip point for hot low and critical condition to fire interrupt and
>> react on the abnormal state.
>>
>> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Any news with this series? Everything wrong with the thermal core small
> patch?

I understand why you are trying to achieve this but usually it is the 
kernel which overloads the firmware description, not the opposite, no?

Either way, we ignore the offset/slope from tzp and use a couple of 
private variables offset/slope in the driver (iow do not call 
thermal_zone_get_offset() thermal_zone_get_slope()). Or add the 
thermal_zone_set_offset() and thermal_zone_set_slope() helpers.

I would prefer the first solution as for today I can not see any DT for 
ARM64 with the coefficients set. So may be we can consider the slope and 
the offset as a legacy which should be removed from sysfs and the 
thermal zone device parameters in a near future.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

