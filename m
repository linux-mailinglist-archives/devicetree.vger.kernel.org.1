Return-Path: <devicetree+bounces-145130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B04A1A30665
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D5FB3A101F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473D91EE017;
	Tue, 11 Feb 2025 08:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BAn9ulat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B731E7C28
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739264037; cv=none; b=PAYxIsts/WRIKDxjpDrYadBSEOnINzIsgOpo11NwagBAxgVKeG+xxgCIjAMhi0/rHMTt+HzJbvbzsr6lbjdK7x9lAINUAyQRJGeXpsy3z4X6s5cCOMTx4XWVaGtDmfdRLBuTzQxVmYJD+MYBy4cBNVxknpkRsRXFAdnPGSrHvn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739264037; c=relaxed/simple;
	bh=E97S9Di08n2Zwttga37TWY/Ab91xIrEIh6c+b1GeuY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jBdRJiy1gk9B4Zs3DEgeqczJAACC/M/7BIrer46XQkv31LSRHQdVazhGBkQv+yQWaC64zaAAPVrggvRXwy3S4agCrzxqG3Lmhyy/9qLz+RAQgnNQejL3uPbCew5DMGsAuu9dPp9f3FmhY56ZbeGHsTWCvLh/lC7RF9uthEhyZrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BAn9ulat; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38ddfee3ba9so1522703f8f.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 00:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739264034; x=1739868834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wn7f5KmIzBSGwAjAxMKL/5WhoZoIiEa6FOztIQtXGwY=;
        b=BAn9ulatUqXcxf5V04lalC1ewJcwtpz8hrCdhp0XwtMRy48Lnt1yVKJpPnLg5HIsCr
         M9nj9vwXzE3f5Rr7I21LV8hPH4KiKqLndmPQqQsIHWptP9IcYnTfmSdjPdy2BPfNwJlx
         VfamofOv+2+xzF0ymRcfamI4XqWCeKhI7NWvVEUftFHDnHD3Ru9Kd8T7aJ/qcFYaweRM
         gTfS1gRP3wfXiBueqFZPC5ilWkL/EqgiyAbYyDzMeSJh7ShN4AO+dyFHyjiZQqI6MQoD
         idR5B7mkS3SJ21QqCJfhBuVunNd+vlkMWcba6MR9qXboHZjblIHqlIp54nByrqMll0ag
         kOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739264034; x=1739868834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wn7f5KmIzBSGwAjAxMKL/5WhoZoIiEa6FOztIQtXGwY=;
        b=jBvLWkn1yT/FXl1VpCyE1b81J6kyiCbRbChP5/QWompKn7K42RmwZN9G3Kt9uVZDxM
         sO+UUKJHzfQL5o0//AlPbAGptcRzwYUz8T1DAticEReniO67KEpWLz1LHwUaGEn7vpoK
         fl/klL+NK8OfDE+nbcOyvuqsxwR6dfEmn7vSpRWw3oV/0UnkmLw//UAu98/HzkV9x/kP
         bexxFtUfLg1G+aI0aCWYcmh+qEsDTt2ozCg8a01z2248CVp+YPtNqyhL1CsUFG6Aq3HH
         EZsDuYfp5nHkx/fYUpm/50ie7eGUmMHApBihNMVTei6lw2e579a9qzC9vC+zc5IGHO5b
         kPUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJaZt7p+6qMncqP8k38WolnPvVutF1CsE/XJ3t+CAtXBXBzMIe3zIL60IgXXvNeH7PPTAKW38YGTFg@vger.kernel.org
X-Gm-Message-State: AOJu0YyLv4nDyEvwHVmVBQXdwh0LDCxC34IJxia3wddMGO4ZABtKKA6k
	BXpvKBt38hbRfxD1xosPvZyGG0Rs029JIQp1ud0k2Yl33ipbXzJhn1ZzNwy2kmk=
X-Gm-Gg: ASbGnctEz5vl4fj5BgCC0DOgBtbN17a5HLPtkr79Vorq8YRrLbEYoYoExFij9Axd0qF
	Tk2NYRigntj56p95HtZ/VWPEIu5kqrc0o1Gw2VRzvTpeWAdCKRTvHND7pJmaxrMRXvCVNufbfkI
	Z0ToYDgTS3bHXjXiWs4W2X76x2csh7NHVU8TObYJKM75pDrDDlGgZqjtYA+2phrk3P7EDYjYHsb
	Vy8Fu+7bz1HkPOlqyx3BijgDZtbcuPEqb7jGYfyOMhAAr/7Dase3XRNEqfX3Q04HpHFof3KXY3t
	8ue1pxJesDjUNMyd/RVvoG+lkT9s4Z7oWQpzxvd6IKbVcP3AoI5XxWo=
X-Google-Smtp-Source: AGHT+IHJl8az0biIroaElZQMVe7CvDinXzmDIW3C9slxWarkLuaunRbzDNQ1/xMc93YOJwVs4z36yw==
X-Received: by 2002:a05:6000:400f:b0:385:fc70:7f6 with SMTP id ffacd0b85a97d-38dc8d985c8mr12045557f8f.7.1739264033847;
        Tue, 11 Feb 2025 00:53:53 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38dcb4410e6sm11284454f8f.8.2025.02.11.00.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 00:53:53 -0800 (PST)
Message-ID: <843953fe-4c81-4176-845b-0ce9ecb0f84e@linaro.org>
Date: Tue, 11 Feb 2025 09:53:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Thermal support for BCM74110
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 linux-kernel@vger.kernel.org
Cc: Markus Mayer <mmayer@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250116193842.758788-1-florian.fainelli@broadcom.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250116193842.758788-1-florian.fainelli@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/01/2025 20:38, Florian Fainelli wrote:
> This small patch series updates the existing brcmstb_thermal driver to
> support the BCM74110 chip which uses a different process node requiring
> an update to the thermal equation.
> 
> Florian Fainelli (2):
>    dt-bindings: thermal: Update for BCM74110
>    thermal: brcmstb_thermal: Add support for BCM74110
> 
>   .../devicetree/bindings/thermal/brcm,avs-tmon.yaml    |  1 +
>   drivers/thermal/broadcom/brcmstb_thermal.c            | 11 +++++++++--
>   2 files changed, 10 insertions(+), 2 deletions(-)
> 

Applied, thanks

   -- D.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

