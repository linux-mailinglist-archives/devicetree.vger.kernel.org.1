Return-Path: <devicetree+bounces-210476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B20DBB3B9F2
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 13:30:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E3D1560761
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 11:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A1B29E110;
	Fri, 29 Aug 2025 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OiRuiVr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3598026F297
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 11:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756467051; cv=none; b=qn6pUrTz1z1NrGQr5u+uWzwkA2ujw1VDGV8xVTX/5bHum8cPuq2MoAB/TQs1FCpFeeQmYZeNNzkuyUNCkEjsKVa8Be9cXpXxOXs5SpfTX+KiNR4IMrwzrLl0HZBPMpp1jg9gpk5j6LRezqz98OivAWMXrOAtwT4S2mjynHI2h6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756467051; c=relaxed/simple;
	bh=VKAWtCb6rYELAYfnketJZVRmQdHV2fxRIJzzj2P2WVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YAW/K09Gf4PY9nIWBduBdn+PcZjoZl2bEwSdugc55W8O/wQmVvb+eqraOiVZyBrNQiDz60HofUEQOHLjRUI5ftAUGbCmkGRt4LxJP0356dGEW3g0PTOKgQpYrWdM7U9zUR9b9fJgh6rMl/BHuRcooqU62ibhH1u9tSU3Obhiygc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OiRuiVr9; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ce772ce0dbso1090693f8f.0
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 04:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1756467048; x=1757071848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T0wvfSxTD4PyeUqUaex8loa72nWgHqN7pcaVJw2RW0A=;
        b=OiRuiVr9X2R9qJ2tvmFvz4bY0pUOUrGJW2/+XPF1GFiFXyMgpXLodFfl1gL4jlK+aa
         ak6+tIxfr385OPnEdJKzvcn5mPg3a2GzAzAyrwgPmEVYAbnxsEdURIKwShE6PF8k310Y
         kSezk7Sc1+ZDsUOy2Pq88jI5CZxcaIupxc92kcAnBkhgtm4rwXpv1Im6Ml7zBsYw/PVM
         6ZFLCmRxU9LXk+PibSFaqG0MexGKjX8uEFkgSaABh7YhaGkqtiVZqIgaaH+peIyU04tN
         gnV0z72zH+fqV4qqfZIMuOXZ0VX0IOQ8P9sspzcOiKagUWa3G755yb5f7tJkWM3Q6qwQ
         Zbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756467048; x=1757071848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T0wvfSxTD4PyeUqUaex8loa72nWgHqN7pcaVJw2RW0A=;
        b=IFovHdtmozo4RvRsd/D25BzP0TgfPYN9jvDbGDvlderd+hR2PLmBUr8Rm0yJZ3SUiD
         3VeUcEXlPp6WQXk6K9T5kFABWGJdc7aXo/HFxeEuPrX9y+x+ZCorGeoLqhipfVYZZIRp
         ng19w/zwM4SbPBZem81vEFX2HMC+L6l4okBSyzqdr3cDwPjnmNGe1RMiWc+fii9MndHF
         B8YwxVoNDaFovke+nhTiX3zSlNPV64mPy7x7kDsXJfyHqUSjbg2Zv2Z/f0gDigv6oNAc
         YUsJEKMO50EkpO9ObGg90PgSR5AXGyvksQSuBSoGWw30iCKnuN2KuF1PtuK4piC7i8pf
         SHjw==
X-Forwarded-Encrypted: i=1; AJvYcCXtSBxHFAIN96LAj5kNXAvf0+G93sH+DnjoPSKUILk51e+UOvSMJdRRENW2eIhs2PyAme4MaQO0rSvU@vger.kernel.org
X-Gm-Message-State: AOJu0YysB7mLyQn1ZlwLvWa3ewGmjeCDMObFg9jGRf7a8P5hb+wy9B/D
	qBHW1D7I4YoUNwxC6+wDVfqb0LiLnTG+7Metc1kYoKkK/KxYYsi33AFOpTzb5YTrUGA=
X-Gm-Gg: ASbGnct/1KsAKVHh5In7DNKH6KhphFmw/Jnl0na/MazL5KNOPNg7WOaPEobYcU1ps7C
	X4EYP2s0z69iktH3DzOtHvCdBu3RHG113OvDCLKqSJNiqzyftudYkr2xXmfxkHaRvgGYx3tTA8b
	oj5/EJBbQteqdhUWptd/7uQSWKBQGBHK03ZM8THxzE9nNfie9cOYwyEztAxorhhBipkYd1uX2s2
	fC37fP35eKOZUXxQFqAHhli3ul6n/zn1cxAXpTjZyO1SzYgcMENDUFYFtYG6I9LcjhtH23i7FGt
	5yMhQx+xPDoviJZlF4TcVPEBWhEkounl5EvAMicDTe45h62IVQo7XlA5ZlEZMwrhn+MfqW2p4Mp
	JSg4mpX0Nrwf1Ez37qF6TBVGmLOChmolfqNahVYA+smpkeCKORyE6qfY30wDT03s3zqzBXWwmw0
	vjOA==
X-Google-Smtp-Source: AGHT+IHYch2FfCJJCEjvAUySW+SgNboylbh4JYSu3C6VxwnMUr6gCMAh25k3up3+KdJsGw1qZPzcww==
X-Received: by 2002:a05:6000:40cb:b0:3d0:64c1:1a2e with SMTP id ffacd0b85a97d-3d064c11ba5mr1572165f8f.28.1756467048267;
        Fri, 29 Aug 2025 04:30:48 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:6202:f400:43c2:4394:d834:def5? ([2a02:2f04:6202:f400:43c2:4394:d834:def5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf270fd2dfsm3140942f8f.3.2025.08.29.04.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 04:30:47 -0700 (PDT)
Message-ID: <be706ee5-057c-4b0a-b0d3-54ca24087f3f@tuxon.dev>
Date: Fri, 29 Aug 2025 14:30:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro> <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
 <aLGGmI8bpKNVaSAa@shikoro>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <aLGGmI8bpKNVaSAa@shikoro>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Wolfram,

On 8/29/25 13:53, Wolfram Sang wrote:
> Hi Claudiu,
> 
>> I just checked it on latest linux-next and all good on my side. Would it be
>> possible that you don't have commit 2da2740fb9c8 ("soc: renesas: rz-sysc:
>> Add syscon/regmap support") in your tree?
> 
> Yes, I added it and it made the error go away, but still no USB. I

The drivers are not probed or you see no activity when connecting USB devices?

> switched to linux-next as of today, did neither help.
> 
>> This is how my tree looks like:
> 
> Mine is similar, except for a newer -next.
> 
> Let's try your config file next?

I used arm64 defconfig (arch/arm64/configs/defconfig).

Thank you,
Claudiu

