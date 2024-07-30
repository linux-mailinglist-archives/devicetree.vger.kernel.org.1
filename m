Return-Path: <devicetree+bounces-89448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 527B39412B3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 14:59:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF46B1F225FA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318F919F47A;
	Tue, 30 Jul 2024 12:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yku7b5+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4967D18E77B
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 12:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722344343; cv=none; b=nMXgQ6WV/B7BorzZ+uzOGHxoWQaFrFRf4W4a3gzLDjLy8slb1TJxPTkIBciH8Y9BumnXE3Xi8mO7aMKCnJrH9ccWIzB30IJkak40n19yi/IRsWl+RgvmDqrqjApIqgDYKzdVdpAcq22GEEdspNL+4YPGWRtJxuYGeX8yKGgSZrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722344343; c=relaxed/simple;
	bh=NJ5wWQX+MXzcjI3xAU8zMQzGIm1Nwk32FjZNMdSzKqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIcobgZmdJPOR2P+vXVpODgB9aw0PbpZmKfG8y7c4vGdLmeExyXZfaZiHEXS5wvnKhaZywGr7A/mkR6dd0B5gXZixVTM/SEssWl/qKQFeiB69A9pk5qsHUnKPl9WOE5p44FEwVP7evMewpwLoBBHIiQKT5229VUdHH2kkuaOGsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yku7b5+v; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-36887ca3da2so2039956f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 05:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722344339; x=1722949139; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sV4jeBWTzwj/MSeNBURYBG9491IFNxtmxPBAzKA8sQA=;
        b=yku7b5+v+/m7EbIF6+0TPzqdYiU/fCf8PpVsbLh4i1nwsPwrCxGKUOEGWDplfUgCW/
         aSIfL62BYfQWLNOQW8oS6zcDyAqmpEwl2C8CaBtgeBfnPJfJAfLaWmmMEBvU9SMsOEtU
         EQsl5hYJd6GJx5vMQOdqdV6Cs1DNCNzAqSnIvayjAxp1w0Gz3bttqydDyyLkHukS2Wrn
         aQkxYjN9+ALqKHzMM+XV1KMQwK1YnFdPsg5cL9q9+/jmDPocMxiHUus5ZzDytyTpB1P7
         MiHLPjblm8LWT9JPibyKYQpj1d2ROSufTjkiKInLLGM8rGmisocmucsj5VdwpYeJgodJ
         dIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722344339; x=1722949139;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sV4jeBWTzwj/MSeNBURYBG9491IFNxtmxPBAzKA8sQA=;
        b=BJ54GghUQ2z5300vSvYZ+ZOchYaxArmL+cpIGtFxMC2Bu9dJVfttki/0GrkETNOoBW
         lG/wqOCEqgxZcWN+kRmEK8una609qCLyl8xiLlCeZOBNjaZ5oCD/g0W5Jn7gWs0H/Mlu
         BTohnbIxE3S6sIe8F+vrNSvWhPHZBOkPNACGHlRBpx5NK4Tdm+sHIQ7rWa73CZ9avCKX
         ZRU8Bm/zSj7tOchp8y4M1bPj9CeqpH2cMGe0W4B4l9GK2pRJh3LGhYuIz1wN87Z1EVY8
         VjStrA6nxTC6CZt7fo+H1MoI+TJoUrcTTMFdrAVoeTx3fZpcYGxc7+PeA3qxZIqNGOvv
         zVMQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0B2wUQ5r8z+GFDmxBJ0pPP3KeQLObylpjQ9W7eG0HtTWWnUZTyj2jHe3PWDNtISwWwtJIJtnBlroSvQaXqcevzY9wfD8D0MC23g==
X-Gm-Message-State: AOJu0Yx3SpAHGzBm5ndr94fymEoO/5ImNCYeJ6uW5cOuiSG6jYzhmKrr
	oi8i1vEIs0TzjoewHZLESeTmyy/wWY3ozJVGctZShjdDtlk8EYHTMILaOQf0XqI=
X-Google-Smtp-Source: AGHT+IEJ80Tw++90S7g7P+XpB8UJiHhB+NG+j2W+cdqE3/ULUdJYsOta4GEOWr+gvdHyJczeGBOJxg==
X-Received: by 2002:a5d:6351:0:b0:36b:33ec:ac40 with SMTP id ffacd0b85a97d-36b5ceef045mr6414694f8f.16.1722344339443;
        Tue, 30 Jul 2024 05:58:59 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-36b36857e46sm14761036f8f.67.2024.07.30.05.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 05:58:59 -0700 (PDT)
Message-ID: <f9527614-01ba-4954-88de-8a17ae1a84ba@linaro.org>
Date: Tue, 30 Jul 2024 14:58:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] thermal: Add support of multiple sensors
To: Alexandre Bailon <abailon@baylibre.com>, rafael@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240613132410.161663-1-abailon@baylibre.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240613132410.161663-1-abailon@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Alexandre,

thanks for your series and my apologizes for taking a so long time to 
review.

I went through the series and at the first glance I'm not sure we want 
to add all the multi specific code in a separate file.

IMO, there is a preparatory work by changing the functions:

thermal_zone_device_register_with_trips() and 
thermal_zone_device_register_tripless()

where we group and move the functions parameters to the 
thermal_zone_device_param.

Then we can add a num_ops field which is will default to zero.

With that we should have put a foundation for multiple ops, so multiple 
sensors.

On 13/06/2024 15:24, Alexandre Bailon wrote:
> Following this comment [1], this updates thermal_of to support multiple
> sensors.
> 
> This series intends to add support of thermal aggregation.
> One use case for it is using the IPA in the case we have
> multiple sensors for one performance domain.
> 
> This has been tested on the mt8195 using s-tui.
> To test and validate, we heat up the CPU and the heat sink.
> At some point, we run benchmark tests with different configurations:
> - Mediatek kernel (IPA + their own thermal aggregation)
> - Mainline kernel
> - Mainline kernel with IPA and aggregation enabled
> With the IPA and the aggregation enabled, we get the best performances
> with the most stable CPU temperature.
> 
> The aggregation is configured and enabled using device tree.
> One thermal zone has to be created with a list of sensors.
> It will take care of registering a thermal zone for each sensors.
> The cooling device will only be registered with the aggregating thermal
> zone.
> 
> There are still something important missing: a way to check that all
> aggregated sensors are part of the same performance domain.
> So far, I don't see how this should be done. Some recommendations would be
> appreciated.
> 
> Changes in v2:
> - Rebased on 6.7
> - Separated generic multi sensor and dt specific code
> - Simplified the code
> - Drop min / max and only do weighted average (seems more adequate for IPA)
> 
> Changes in v3:
> - Rebased on 6.9
> - Reworked the way to register a multi sensor thermal zone
>    - Only one thermal zone to define in device tree
> - Max has been re-added
> - Enabled it on mt8195
> 
> Changes in v4:
> - Rebased on lastest master (fixed the build issue)
> - Dropped the average since I don't have any usecase for it
> 
> [1]: https://patchwork.kernel.org/comment/24723927/
> 
> Alexandre Bailon (4):
>    dt-bindings: thermal: Restore the thermal-sensors property
>    thermal: Add support of multi sensors to thermal_core
>    thermal: Add support of multi sensors to thermal_of
>    ARM64: mt8195: Use thermal aggregation for big and little cpu
> 
>   .../bindings/thermal/thermal-zones.yaml       |   5 +-
>   arch/arm64/boot/dts/mediatek/mt8195.dtsi      | 212 ++-----------
>   drivers/thermal/Makefile                      |   1 +
>   drivers/thermal/thermal_core.h                |  15 +
>   drivers/thermal/thermal_multi.c               | 288 ++++++++++++++++++
>   drivers/thermal/thermal_of.c                  | 250 ++++++++++++++-
>   include/uapi/linux/thermal.h                  |   5 +
>   7 files changed, 579 insertions(+), 197 deletions(-)
>   create mode 100644 drivers/thermal/thermal_multi.c
> 

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


