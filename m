Return-Path: <devicetree+bounces-61750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A06E8AE08B
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:06:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5AE52816BF
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 09:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C3055E48;
	Tue, 23 Apr 2024 09:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a5vodbmY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A823F4F8BC
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713863172; cv=none; b=LSh3y3Ryy9n4mOBTFxI+3puCqK7yfTq2ncDaxQUDuc0NOO9xJu1Su3vzD3zhG4li7oKR47j2aW8cAp+9X88vJNv2eXxRzCDnkpnuGFVxgYI29n6pU5wQFD0N99EO1DOeEkx+pOLVF5LoAK/Mosby8mg+JVpCljdZv72e2o5xQ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713863172; c=relaxed/simple;
	bh=JQG2DHaylaKVY1UHfizY1eaq/F2qkHVRo3sTzXgTqTA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XAyQOUU0IApD6tiOdZ1FG5rLv5tzcEaEW9zY4nzxy503/9pJS9ZS9qAXKeB13mLakY6qm0HUXePEoJgadSGeDYRm73Og9w8jETwbV7TP1HmFU2i2b+Km0llCinQN4XBMBpUnJ8Fa4+XFm5zGlBoPKL0DhfZzPSTOVsXsxDpmBkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a5vodbmY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-347c197a464so3996171f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 02:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713863168; x=1714467968; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LZvKemPhdZXx1a5wAZJqa8euX8d+AR9YE7+2VTNoqyA=;
        b=a5vodbmYSUTc1tn51JwLknEwBLFLpkPjOwKojQE64fHIVm3z9qbjwZO92nyDGF0scS
         r6rhiQWV461fgzcSpB3p6F4WvGiWEaJKRPuAPfprnE0CoicMrOXR9tqpV1ncHgAGL397
         gTEsAw9V+9eqx8r9b/SdXg6Q3JE82Yp5WrJRKzxJrqIjX8VRgrip+4ACHfS/CicS/GII
         OmA5S+GbjjpwyRGrI/H4l1a+AZPb5NIKRdr5LjAB4Wqda6zM/mJfMxcek8ccsKoyDwRk
         lOjtzMQhi2Sbc7ruRV/yyhNEMJCsNStkz8oM9+9aDxeMXc/h60r7beOsno25tix13+eJ
         0raw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713863168; x=1714467968;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LZvKemPhdZXx1a5wAZJqa8euX8d+AR9YE7+2VTNoqyA=;
        b=dCphCf/F/RY98YTvJGoWlm8fajd0PPYXhn2KgySPDurgpQOsxtkcsZX/gLtF1qFRvN
         TeOQlOH7X8+bmoMN1J5WQsR+1m28JWKvl446aMspXZZjiOl6u8DGjs/TI3uNct+TQtAN
         o+HDYRLON/tgcYiessSRGam5y9KKITBEsZnkMGIZOVWN56JLMtNzQ0MQkQcdIybVlRHR
         BieKvPRn5C9lJcZHZEJ9RMv7EgpNYEQV07nJMcWQKd4g9GipghksWxy4dd1e1KLzDi0g
         9KVmNLevF2neEs9G97w4oOr1bJwzZqXu6uPuqt99O2CEFod4cZlrbP8lVveTbwwfVc5x
         R0hA==
X-Forwarded-Encrypted: i=1; AJvYcCXqQ7Cob49SM11CPFjlrmywY5Gb5nB765a9lK7Sl97gGw9U57MKIBNBXg+dbeOP9BcAc/OIpgdcUqVpU9+s1375ytOBh6d14x4xGA==
X-Gm-Message-State: AOJu0YxU3U0Y2jqj/C0/U26/JaTc0qonCVcwqUO7s32RkRdJfPQ3Y8I6
	hTgzT27Y7JdFK76g6Bh2Sjb92ckZdNdqv3okKURcavyBrg6hZwpfbQaHOYQJIC8=
X-Google-Smtp-Source: AGHT+IHG4sDArZk8hnzhxx9ggspr37j2e30TIdiJYyOlEmHIcaoKuInnRHqczfjjQmlkFqUJcqEnXA==
X-Received: by 2002:a05:6000:12c4:b0:34a:e6aa:bc01 with SMTP id l4-20020a05600012c400b0034ae6aabc01mr4790936wrx.5.1713863167966;
        Tue, 23 Apr 2024 02:06:07 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id o12-20020a5d62cc000000b00349c42f2559sm14036551wrv.11.2024.04.23.02.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 02:06:07 -0700 (PDT)
Message-ID: <3fabe40f-2353-48c5-a29c-fa0ae9ddf3ce@linaro.org>
Date: Tue, 23 Apr 2024 11:06:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/15] Mediatek thermal sensor driver support for
 MT8186 and MT8188
Content-Language: en-US
To: Nicolas Pitre <nico@fluxnic.net>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240402032729.2736685-1-nico@fluxnic.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Nico,

applied the series, except the DT changes

Thanks

   -- Daniel

On 02/04/2024 05:25, Nicolas Pitre wrote:
> This is a bunch of patches to support the MT8186 and MT8188 thermal
> sensor configurations. Several changes are needed to cope with oddities
> these SOCs implement.
> 
> All values (calibration data offsets, etc.) were lifted and adapted from
> the vendor driver source code.
> 
> Changes from v2:
> 
>   - use meaningful name for binding index definitions
>   - reuse LVTS_COEFF_*_MT7988 on MT8186 per reviewer request
>   - do similarly for MT8188 that now reuses LVTS_COEFF_*_MT8195
>   - use thermal zone names the svs driver wants
>   - adjust some DT node names and iospace length
>   - remove variable .hw_tshut_temp as it is constant across all SOCs
> 
> Version 2 can be found here:
> 
>   https://lore.kernel.org/all/20240318212428.3843952-1-nico@fluxnic.net/
> 
> Changes from v1:
> 
>   - renamed CPU cluster thermal zones in DT
>   - fixed logic to cope with empty controller slots at the beginning
>   - isolated bindings to their own patches
>   - added MT8188 default thermal zones
> 
> Version 1 can be found here:
> 
>   https://lore.kernel.org/all/20240111223020.3593558-1-nico@fluxnic.net/T/
> 
> diffstat:
> 
>   .../thermal/mediatek,lvts-thermal.yaml        |   6 +
>   arch/arm64/boot/dts/mediatek/mt8186.dtsi      | 256 +++++++++++
>   arch/arm64/boot/dts/mediatek/mt8188.dtsi      | 383 ++++++++++++++++
>   drivers/thermal/mediatek/lvts_thermal.c       | 434 +++++++++++++-----
>   .../thermal/mediatek,lvts-thermal.h           |  26 ++
>   5 files changed, 987 insertions(+), 118 deletions(-)



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


