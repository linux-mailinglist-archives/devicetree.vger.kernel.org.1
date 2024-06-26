Return-Path: <devicetree+bounces-80312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CA19185B3
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E0921F27D3E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F100918C327;
	Wed, 26 Jun 2024 15:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="RbMWgwlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3AA18C326
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415575; cv=none; b=SZMayyXtNoHLifbAkWGPfEE/7UIna3P9HjIRr/NAJqq9EGoU0TMODYYNjae/dSgWLRb2wQ75ELy6b4X7WdYVq15SEATRXDKPtVtuUK9idyqKOKFM+1qoctGDGhJ4soTAZR8D8HIj8H6WmvcZ93oaOZX9+7kqniduCO1EzcKIbpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415575; c=relaxed/simple;
	bh=6jxwir0dwFVAw0BOjiVxhn0eDiqqCY3gy1asC5vDmsg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R60HV/xrd3BEN0+Id3iBmmd0AGjgYSf7Mp+O5p9qKy9WBGiuKFnwF2RtGcApQ33TVZtSTXmHSqqVDZwBoFu2sjQ0Z1RHUgYG0EGH/GXope+YSkzwrqd+F4KfuwrVdZbTsXTjJ4yyazC1YgkSyD+Hk7iTBklMxM5oHvUsGdY8MZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=RbMWgwlT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42499b98d4cso17448775e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1719415571; x=1720020371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IE+ZoOOI53p58bUMEo+gS3J9r8a6CVYxDRQKle6/oYI=;
        b=RbMWgwlTT3nFgrML4Nox8Mv6COufYVDDBMyjL0EvVykbNpnxxJmcYqc6IrxyYLkuy9
         wPvhA6ATTtfTMzmW90RfXZvqbRj3KBYtyuK+iBervl3FYX7csBAz0dRH28FuNEwEcKqX
         lbXEosm8v7i0+1lHxRyzYXjnNS5qBOmXl2xlkGyRkvpvI8TgibrGGQKAj122Dbl1Itxx
         kXVvU9ghO0hUU4TCX1bgc7QH7HycPOAeMWL0OAS/ktu/BmIVmGeyJl2iHGg0SNjvfHKc
         CSp/BTqMiUFlkaVpy/2Kkhn+FtMOch7JPe9Yjsxmjl5kzueMg0GjTkpJCPYNTiMsWfUj
         tN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415571; x=1720020371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IE+ZoOOI53p58bUMEo+gS3J9r8a6CVYxDRQKle6/oYI=;
        b=ot8//ijH28kBKZfOJKUgARGkz9TnLjruBfYzOBsy7PJH93afTLlkOQYl1f4bq+W2aL
         RhwjvXxlert4CNfnM3eJwZsQW1UkvRy2vIlRCotcOoICUvTvobGBZ8AUVHdx+dHu8QLo
         3h8xSYGrVYzNvF6O5bq3BwwJNsvVwwR6lRsshh/HGaZaGav8JHtN7yr7Cu+JFWsgU4vD
         wp8y3IjDVfPjjhsB5WfE95fandmRmT8MCD4yLx6YapwmLngSuNA3PAbeoqtdcR4RN+l+
         BPRjFkgd2eSUtjs1NAiLJqwZ9PbpQ5q02EF9pZx8nWsKopJBvE/bfko4lLOkEgcGg1e3
         Nfgw==
X-Forwarded-Encrypted: i=1; AJvYcCV8DA1EQ+EsK+BZ2++CcuFeNB0kh8RcsE6sTqIgQiz7OPpRhKgygpV5PC6HTchuimaeSc5NWO1/KSb8pQ1gNfOs1TTIM8DEB97Sdw==
X-Gm-Message-State: AOJu0YwIrTbrRWbteoFiR2zTXDtjKawGC1fnsBGIpNYG+t1RAzH3P72a
	jCPqmXwfYz9mh2CN+zjIsWLAPWW+6ZWJ/XrCibsCMOZ7ERo9Q6Xy6r8/9hLpe+4=
X-Google-Smtp-Source: AGHT+IEGDHnLPK2eqJ44hAGV9u4g5ILwUSDhPg5bkam/EIvxbEYIuVvtY8uavBFyvxbUsaVObENX7g==
X-Received: by 2002:a05:600c:158a:b0:424:b3cf:d704 with SMTP id 5b1f17b1804b1-424b3cfd940mr14270765e9.37.1719415571230;
        Wed, 26 Jun 2024 08:26:11 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:62d6:6a12:585c:d4e1? ([2a01:e34:ec24:52e0:62d6:6a12:585c:d4e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8264891sm30481115e9.25.2024.06.26.08.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 08:26:10 -0700 (PDT)
Message-ID: <19167580-4e25-4820-90f1-2d03c7e9cb04@freebox.fr>
Date: Wed, 26 Jun 2024 17:26:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for TI TDP158
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
 <20240625-tdp158-v2-2-a3b344707fa7@freebox.fr>
 <bgp36sjj5hvldl4tqtjt7q6eva553hkek55easqpugzhdmcjv2@uhafklf25rit>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <bgp36sjj5hvldl4tqtjt7q6eva553hkek55easqpugzhdmcjv2@uhafklf25rit>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/06/2024 06:47, Dmitry Baryshkov wrote:

> On Tue, Jun 25, 2024 at 06:38:13PM GMT, Marc Gonzalez wrote:
>
>> The TI TDP158 is an AC-Coupled HDMI signal to TMDS Redriver supporting
>> DVI 1.0 and HDMI 1.4b and 2.0b output signals.
>>
>> The default settings work fine for our use-case.
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>  drivers/gpu/drm/bridge/Kconfig     |   6 +++
>>  drivers/gpu/drm/bridge/Makefile    |   1 +
>>  drivers/gpu/drm/bridge/ti-tdp158.c | 103 +++++++++++++++++++++++++++++++++++++
>>  3 files changed, 110 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
>> index c621be1a99a89..0859f85cb4b69 100644
>> --- a/drivers/gpu/drm/bridge/Kconfig
>> +++ b/drivers/gpu/drm/bridge/Kconfig
>> @@ -368,6 +368,12 @@ config DRM_TI_DLPC3433
>>  	  It supports up to 720p resolution with 60 and 120 Hz refresh
>>  	  rates.
>>  
>> +config DRM_TI_TDP158
>> +	tristate "TI TDP158 HDMI/TMDS bridge"
>> +	depends on OF
>> +	help
>> +	  Texas Instruments TDP158 HDMI/TMDS Bridge driver
> 
> Please run ./scripts/checkpatch.pl on your patch.

Oops, sorry, will do.
For the record, I did run:
$ make -j16 dt_binding_check DT_SCHEMA_FILES=ti,tdp158.yaml


>> +	if ((err = regulator_enable(tdp158->vcc)))
>> +		pr_err("%s: vcc: %d", __func__, err);
> 
> - dev_err
> - please expand error messages
> - ERROR: do not use assignment in if condition

simple-bridge.c uses DRM_ERROR, but it says:
"NOTE: this is deprecated in favor of pr_err()"
Hence, I used pr_err.
Are you saying I need to record the dev,
just to be able to call dev_err?


> empty line

Will do.

>> +	return drm_bridge_attach(bridge->encoder, tdp158->next, bridge, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> 
> No. Pass flags directly.

Oh, just pass the flags argument here? OK.


>> +	tdp158->next = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> 
> Missing `select DRM_PANEL_BRIDGE`

OK.

>> +	if (IS_ERR(tdp158->next))
>> +		return dev_err_probe(dev, PTR_ERR(tdp158->next), "next");
> 
> This results in a cryptic message 'foo: ESOMETHING: next'. Please
> expand.

OK.

Thanks for the in-depth review & suggestions.
Will respin with fixes.

Regards


