Return-Path: <devicetree+bounces-201051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 023F5B17271
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 15:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B996C621396
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 13:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5EA2D23A5;
	Thu, 31 Jul 2025 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEin94r9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAFE2D3A6E
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753969835; cv=none; b=sgcCOwvxv9KAp/Z2Zy8OeKFe6tWeUoxV7JguME9c31wCG79OfpcLzTAwdBm6mF8fQrM2CE3LJe6DCYWR/xth/XhikWqy/BALbGI1nbkUsduV45cv6awT2A4KGUlnlPZTfyj2mXmFcfJkSWeLpYw9P+4Co9hnQAXWLYbWEj8CVms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753969835; c=relaxed/simple;
	bh=5lxg9xauO3MeUewoXkq0nnjCyipVEFYu1QiDLPz8HQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r/fNvR8GhNTmq/WDEqWlcrL8Y9WJtf2/c0+dgElDDePQI5X2B1VWvvRDMEIvAp/bWckJ+TqcIEJxz7WF0WnP7UPB798DJWrofAl7S/yF7Ag1jjdBIXwqSU3KRzLsSEUxa79lsY5AqyllgprWn6uTjzyT/V00syCtUlX/RZ55aBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEin94r9; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b78294a233so346073f8f.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753969831; x=1754574631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ttbP0UASnXnUPdgY4WsQTV6ycnU/sxDT3VHkXEkJ2WI=;
        b=EEin94r9Pn844Zyh73bk8QooVaAByAK/ZD/7zPUUo+j7284Sfrxmx30l9IGYkMmcSb
         V/xHfU0EN0r1W0tX3NDWz9JMR4nHg63LYcY1B6ImfiwbxQIe/z0IURemAQb/gXI0CQZ8
         qCJ01GRVsTdovMWPmd59wET10HDK++ut8KYh2DWNiAYZvyttrdak/Z1c5OOjXpxHzt7u
         neru5XrEb/gK8iMxnNfzg1SGXss5o+Kpj8f6BrGJoreJf8YbDi4wCuNkzoK4RVC/KQvo
         4YOCScHhGPPhJiAUlBQdgUBa2OADaVnXzIQGgS+TMyJspSAoPNoSfD+JZ8YCCxJopYjI
         vMvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753969831; x=1754574631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ttbP0UASnXnUPdgY4WsQTV6ycnU/sxDT3VHkXEkJ2WI=;
        b=t23KppNKjkCFzl295xuc9jwXtvXKzOmK3Pw4ico9VV7szBAIZpZoIaaBLoBAOMcx2X
         wT3CWnWlQWUCw9lg7NAwSCHN6/cd16ggQ1Lgqvguu2O9xkSf7SDzu/VA/m0USzm4/bg0
         cW/3cpUOYFIvv4l+lnXcWA0UG/FdPFx+/efbr9dfUPLIogWmDUmT8h6h4iqZiwzz0P6b
         EIo2DgagTs/TcRL/FIiTsGav26ZpkH6kDbB6XSeoDfHaAdLXSBM5Ea49uhobubdLc+Th
         FqeMQmjvnRhxDuLCRSi4RN7VWFPP2tY6vohK20kfq/pOuL98+eq1XC1Y/W2RDSXsrS61
         m+Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWOVIqiVWB4ZMznDcAGdzxUVMev3pLfZy8qeu1/BGU89zJ46lw3sBg8KEdrGKVOqFxsizqH5fleyuE7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3UwTeIo5BO/B17n3TR4cHWtNbpcUYVWUsGhS7pVNMKLi9/B5a
	a2CRDdP8VISIYun8hgyYD7u3BVK6bYtT8lLVYmuesBhWFAynPZdo3yEu+Z0ERW+84f8=
X-Gm-Gg: ASbGncsrYWybEtb9VEDnp7Pambvd9skKL1EN3zW+aJ57jPxhrRmG0QggqnUqpd5zxTC
	YYgJAVzp9oGMJFikIdyXl3jJdimJ9zvOQT/t6RUXr6lVzEMURScCqumFh0IltQhTUbBETAeJGED
	6bT2phBTku/I8c86BIeSbHMrdQ0sP5rfrRW9MonM/shsKWpWDL3Y6L7FbspV8tMtH52Kj/qhLey
	KigG4jNKXmDikNIWVlPOcUK+FOnZxPFow5dSM3lQGfirhR3xB2Qhd/P4hHwSGO1roNYyxyXjV14
	45dI2rTjvFSkV/446VSJtPpbpueX24rVgqYO+p4r9Qx8o5KUpRW1opwhAqglKvqU+Ns3dLu4vyg
	aEjXop+zypmFzTVhqSQB0XcYnLrzMz1Q9Sp6YfxnrEU2Jav16Nked+vzPjKhojQ==
X-Google-Smtp-Source: AGHT+IHe5lAzWjWDvJCFogBIEALW5gpfBqEkMqvYFQycFRK8V9Sj7RWuB+XR82yqOPaZ8o9Y1wrxQA==
X-Received: by 2002:a05:6000:290a:b0:3b8:d082:41e with SMTP id ffacd0b85a97d-3b8d082070amr978411f8f.57.1753969831203;
        Thu, 31 Jul 2025 06:50:31 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b79c453328sm2657408f8f.46.2025.07.31.06.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 06:50:30 -0700 (PDT)
Message-ID: <b9e7954b-442f-459c-860f-909decd87979@linaro.org>
Date: Thu, 31 Jul 2025 15:50:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: timer: renesas,rz-mtu3: Use #pwm-cells = <3>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250527205823.377785-2-u.kleine-koenig@baylibre.com>
 <fmn3mrcbih3oq6hgl45jipdofko46ur2sux5p4lf3nzlpahklr@3tm5molhdfdx>
 <n4ivjvd6hq7phwkzbmvg2tqtejc6ufcybslnyh62kegjkhdvoj@cvfjwstrhlwh>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <n4ivjvd6hq7phwkzbmvg2tqtejc6ufcybslnyh62kegjkhdvoj@cvfjwstrhlwh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 31/07/2025 11:41, Uwe Kleine-König wrote:
> Hello Daniel,
> 
> On Mon, Jun 16, 2025 at 03:08:41PM +0200, Uwe Kleine-König wrote:
>> On Tue, May 27, 2025 at 10:58:22PM +0200, Uwe Kleine-König wrote:
>>> With the goal to unify all PWM bindings to use #pwm-cells = <3> update
>>> the renesas,rz-mtu3 binding accordingly. Keep <2> documented as a
>>> deprecated value at least until the in-tree device trees are fixed
>>> accordingly.
>>>
>>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
>>
>> I would expect that with the positive feedback by Biju Das and Rob
>> Herring it's on you to pick up this patch. Or would you prefer that I
>> take it via PWM?
> 
> I understood your silence as "Please pick that patch up via your PWM
> tree" and did that now.

Yep, sorry missed it.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

