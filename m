Return-Path: <devicetree+bounces-83266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2C927B93
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 19:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8722EB22256
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 17:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7EF1B3759;
	Thu,  4 Jul 2024 17:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="3axY/P01"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479BD1B1503
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 17:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720112686; cv=none; b=JVKrTJsJNbWO/TjLfr2GJLa1d1yUGIxUGmCUIiYUu6LkTsINZNJIaBKzUPU3ms9Xo0zwy2W7/JjnNu1s0UPln0/m/MPegHbGj51IiUVgfhuQEknxpwjNlxDwaVd+D639dF1RfBXHgvJ+2iv26srXl9q3ygHXhlAJwV1ckjuGRrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720112686; c=relaxed/simple;
	bh=VhEKXBgCk8YcI/We+H9vMpuHE/Wchhz3UGLxkuxH2GI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VyTBSofQtQubigWeBlVBgrPbDWtmYybPDfmdQ911ZiA0xVOXeMNqKlJg6qZ2FVnJFl1u/8ujIqnqTIfw7Fri0+k6JALNvuAMcqy3hv0Is5y2biZDMMPCZyCMt2TsPAyWA1/WYR8A1ibYRTFAM3dY2yo/YPIsGrumRFZUPBGl2Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=3axY/P01; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42565cdf99cso7187825e9.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 10:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1720112683; x=1720717483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VhEKXBgCk8YcI/We+H9vMpuHE/Wchhz3UGLxkuxH2GI=;
        b=3axY/P01OGBe/sPn0X/rAY5nHD6rHT3mFGUZsSJXfOmexodrZsBIl6smQ4mzCgUJcm
         t8x33X7Sf+AZpRACjJoXkXOCQyik/P06Uf61gkIj6tYqLug7128sAEcWS1H7SB5QMeHB
         e3/tHPo7/AXBUOjdo3yWTlYDk1NdWDSdcdp4JLQZUOgH5zc+Jz16Qni/2iRnyRMPsQPl
         lYHHX2O/Es18ne6BYyXf3eKCpTqnma4C9TKSU8azN/FBudlfV51fHZP04HruKZIliIr8
         9uUZvxB+A0P2/F3V2jyPLw+aDNs1S4fQZmSbJoAOMokssoCXyN6ZqklnaPIOo1t5qRg0
         r3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720112683; x=1720717483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VhEKXBgCk8YcI/We+H9vMpuHE/Wchhz3UGLxkuxH2GI=;
        b=Gou7JRxFtDY3Amfh/ZAp26s2wEzT4H8Gminu2rC4InXRT75SE1DuHTsOlhSIrFFVkb
         F1HJaiWbtInkv4OmvMF9JNJvTiLKIcBpGVNYhWDxMrACnQUi3kScl8t8bV8YW8QUwU2B
         YISXSZe9K2ZwKq9EZnckAcDKZlU3kzqqe569ui9mGgGzDin09NJgPqJhnJAyozO7ksOZ
         l29C7Ve1+O6oSNrdu97QAvyT7xIfKcj9rFgmMNZnqU2f6edRAFV8cP44C6dJdd5DiLk+
         +CoHEn/ULLWvea+UHAkD/4DnEIpR+Gn0k6Z/PrMCAQHKsnZEVFGDLwQRbfpIsWqqHgVH
         60Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUKdiDZSW7OXCDc9Zj7N9YLMWy2vwMSwEp3gkrtGTbE3AufcpxIFw1mfeVJe7WZf1Rx6A84dJv/itDM1UMOZDJsfwWtMcKsQKGVAA==
X-Gm-Message-State: AOJu0YybPwJW4ExIDLy9yEL1RxqVKCIkONHxEHRKo792LEJvIzsqKSs3
	EwEJ9j2l3/ti+9jx7F7xJFI7HY84sqKcScNZQcnfoJgkVjBKGI5Hdz1Hpzsx6DQ=
X-Google-Smtp-Source: AGHT+IFcq4eZY0ByhNRonxN57ZbQ4denoA/srdaVmLq6HfGOy2pmX+pLKLzxcImWqmQ5tilcL6/aXA==
X-Received: by 2002:a05:600c:1790:b0:424:784c:b134 with SMTP id 5b1f17b1804b1-4264a3bc345mr20946965e9.6.1720112682605;
        Thu, 04 Jul 2024 10:04:42 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d165bsm31107415e9.4.2024.07.04.10.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 10:04:42 -0700 (PDT)
Message-ID: <e55d0f0e-a104-4790-b832-120dbddd93ad@freebox.fr>
Date: Thu, 4 Jul 2024 19:04:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
To: Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240701-bug-of-great-honeydew-cfb6ef@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/07/2024 15:50, Maxime Ripard wrote:

> The i2c register access (and the whole behaviour of the device) is
> constrained on the I2C_EN pin status, and you can't read it from the
> device, so it's also something we need to have in the DT.

I think the purpose of the I2C_EN pin might have been misunderstood.

I2C_EN is not meant to be toggled, ever, by anyone from this planet.

I2C_EN is a layout-time setting, decided by a board manufacturer:

- If the TDP158 is fully configured once-and-for-all at layout-time,
then no I2C bus is required, and I2C_EN is pulled down forever.

- If the board manufacturer wants to keep open the possibility
to adjust some parameters at run-time, then they must connect
the device to an I2C bus, and I2C_EN is pulled up forever.

The only reason I see to expose I2C_EN in a binding is:
if we want to support the fully static setup, AND it is not acceptable
to support it from an i2c_driver, then there might need to be a way to
say "you are not an i2c client, you must fail in probe".

Or I don't understand anything about device tree bindings
(which is entirely possible).

Regards


