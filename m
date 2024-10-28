Return-Path: <devicetree+bounces-116610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 597539B367F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:31:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A4191C21C12
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 902681DED73;
	Mon, 28 Oct 2024 16:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ll3CCupL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E321DED4B
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730133086; cv=none; b=L6Kuf4EkDmaWu6v90bBu4I9vi4MMXZmdayi1MIpfuTqIZlKjj0olb6HfwMA3QrhZicjVPQGuc/MzcmPQB6oHj0p57+u0afoq4yHSpbaA1Rhsrc8KBrhgamMQjoy8kwhNkeDYFd1raOVHh92y3IZq1CVzctJJrEOVtGwzEdvwMYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730133086; c=relaxed/simple;
	bh=Tz7kDWBqLGn3EI7GboyFCyclXYJJe6cDaVmgH6AThtU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U+98/xKpvhqL0YIDbgEXQ8Z509sowfMeEtTpaIVSXpJk/kleXRTbIb4wzzf5EU71+Zv03iYouiXUDW1Q9eeSRxKRUnv9fIUVLwNwoJ8horqAocBiiK40CLZhGuzMLRVimgvzf3YKS/9MR8h8u0QLZC5js6NkKzRAzZlkdFTDmDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ll3CCupL; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-37ed7eb07a4so3606057f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730133083; x=1730737883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g3SVkuXBfKZlywsVlwzLEUNrxoa2VRV3XvycDM5U1cA=;
        b=ll3CCupLTXC8Ovh/e3fKsPSxc05J9yvCmHTlCAUIMOsOLrhzL2Yskywihe/GjoGMXp
         oDldKGMc/+cpIqYKQ7mXxMdOnpFgRsUsoup7SnTjD/E3vm4yFjB/78OZrUAdzIYFyfli
         5ZZruEeujHpLcZ794hqpP6OpEKUJaysZnoxw07LjjjU1n15Uz3XoLwJ2hawTPSTFYggw
         rT2UJjlJb44vJDSh75yEbeTMql7oPyFHVisq1gJ1rMdbcr39mHO861xvXOZh8UMbsjUj
         XPQirf0MAwY8D4RVXymNYhTwGsZKMPoGpEnFLyIoXL2XJ4M0c407dbmZ2MdXLR6kMdUY
         6afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730133083; x=1730737883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g3SVkuXBfKZlywsVlwzLEUNrxoa2VRV3XvycDM5U1cA=;
        b=TQFxehZc3nyByul83sXgjlq5UUquQLO/Z8QikxtacE1kw18Acf/ubkdF2uHmdNvG3z
         xGXZ62pN3dqUxdwPtN6/DsOQ4UrgaFGXUVinDIVYRxEgdkh9Yoy9HNoVW4PRoS5A/xd1
         89FWdCl/iG+5YrSVTUphdjlVcyZ4VNE/P5yky5ObTxYGyVIiMZVnPNj/oz21n8edSEtR
         wufBPE584VVM6IWRkPCQx/soMrLm9iCvCVns4YElCFpE42jAF/ECQ/Vt9yz0FcyLMqDN
         Kmx3VIyLmkFuXba/2Q+7JlbvtLMeGtLMPLNai6IKzYEEj1xx0sibhWyeAZ73Z30qYchM
         sZpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfZPtCA8mzsBDpsvbav4hXdoBMGSLX7EBP4TobBfUb8QKq2rSMx2zlW02m8hoqSr/l5jhjDHzbBwUA@vger.kernel.org
X-Gm-Message-State: AOJu0YzaZiILhLL4JT8/bq77PP0O823LRT/WiDNMOFj7S4C4D/XF47Ap
	tyzJmOJ7kVRA667KrXjuA/VCCV4GeFyjO13GfxRL2Et8KoQJFfidtwXfaeXKF4M=
X-Google-Smtp-Source: AGHT+IHUE0fR5YoL/rIP/oL6jvyJFRvDbRSlURM7kaLGL3QFwVi+FhPBNee8pMr2ON/PeXPlAUo5dg==
X-Received: by 2002:a5d:4d43:0:b0:37d:2d45:b3d4 with SMTP id ffacd0b85a97d-38061222606mr6893628f8f.52.1730133082753;
        Mon, 28 Oct 2024 09:31:22 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b1c65dsm10023109f8f.8.2024.10.28.09.31.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 09:31:22 -0700 (PDT)
Message-ID: <bb09a51f-dd92-4f03-8523-f39c2b94f686@linaro.org>
Date: Mon, 28 Oct 2024 17:31:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: thermal: qcom-tsens: add SAR2130P compatible
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241027-sar2130p-tsens-v1-1-8dee27fc02ae@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20241027-sar2130p-tsens-v1-1-8dee27fc02ae@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 27/10/2024 00:06, Dmitry Baryshkov wrote:
> Document compatible for thermal sensors on Qualcomm SAR2130P platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

