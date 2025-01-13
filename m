Return-Path: <devicetree+bounces-137946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C6A0B2B2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E52327A30AF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 300EB2397A7;
	Mon, 13 Jan 2025 09:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oIT55bXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637D823A56F
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 09:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736760361; cv=none; b=WY0kcPP5tPUccMJVV4k4EqejV2/y/HoVSh0WbM2i0KAxjLgD4YMf9Gu6f2OZR/tMonk5Tk1HnpD93+NdY8G1iM9/STlP/Jd2V3NkwlRApbpFt8I2HUdSpZhai/Rw5Z7xfeF2tDbeR2X/o0eCT1yB1SOSoXx6djIwjVM6JGNZXWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736760361; c=relaxed/simple;
	bh=LzhQ97fHILTYwmA3VvX34lCCeJsGHBrrga3Q8maQrXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Bq6iWmFrynFqYt90xwDh9C4mEoT6hFjFBgDHzYi6xVtTHFXgyMIsRLD5Mkx0GDsTSxYBp1IKqthWLXcnI7Fg1TjhLbC/DolJFj0DLtpIU5kyPqvtyrIb5p0CCPfvz+ctt5obVo6XaPP17NTiIItMobsJ52tgsnScD5Ycp/qeCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oIT55bXS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436345cc17bso28579395e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 01:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736760358; x=1737365158; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1oTNvOqfukHrgIuovSK0uBo5g5AB7kI/WzXWHrElV1A=;
        b=oIT55bXSjBZ4i4nZ/u4nxOIIJAH6KZ+MUS9iHKW4dojKQ54ytHKXHSaBLizrI82f1W
         TU7bUu4U+Mz7jXg3sALsUrovvUKtuzF/AscPs1JjAKo+d3w9Vyb75pIPQsSx0wLqNW7O
         L3ybu+mWGJwGVbwDzgZGkg37QYrKqjBZD8m4WoTXpYiDHtpwb4KOOhGXezofsDF/G+rK
         jE5YHrY4bgkiG+IOGUqXzmoMzI4oUiV9KqmNxvZbAKvv3+Zlou+Nl4IPC9lTaAAejKA1
         yoazC1HrYhdytEnz4MjdblaEDbq/S5zwm0xHTytpzvoHaxIl7V6r6wG+FwI6UlxqMLFA
         +bBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736760358; x=1737365158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oTNvOqfukHrgIuovSK0uBo5g5AB7kI/WzXWHrElV1A=;
        b=BVhg5D9Rll9foDl2K1SPHXvcxo43fXtUq+RzlEpoHhPDhpQNjm92JQZnB6LXGip6Q0
         xrp59UykpWQXTLJKh5IRSOS4OD9XorQvRqp54ZoP6QfsnNmKasWT2Lg1pwyInvJdTZHY
         AUippOsCL8KMnYvh/VE7UOVfcBpWPSJkNqgUATmtuQWcgjh+yoznF25zG2sq5dRXm/fF
         su4pKQHIEHkSOiRHGWb0BOaDPmE6YLUiy83t7oadIFw9FC0YCDZ6urLOMhQnDyJquVaz
         l4cithZsjV8li9IGBaxWjto5CNfLes+vyu+9eBvPnaXsWAkiLH62ZQSIT7bvkyrcyGlM
         9vMA==
X-Forwarded-Encrypted: i=1; AJvYcCXbiLi6MWRVuIXnhdRozLxy3lOKhRamFAOS6HLVWUAAkWsrQ8/96JQMcuhyhDowcjwIOyA817YDyBEX@vger.kernel.org
X-Gm-Message-State: AOJu0YxiZEjkDl3DOoRStPAWobBdP5cUa8gYP4Nm+Tu/c8rA5yG8v06h
	OCKSjMiMM4BzaTE5OBX8nMws9HctjKZNfKhOqE8FTZG2qd2DS8BHDIZwTysvoz0=
X-Gm-Gg: ASbGnctCNE8oC53Sep6qKfaxfLb3MP5Y1f0uG5HCfFuaHLpVq0NogEnRhWVB7JJcF+2
	+7zuJHWXZlIcGb93B94ShNp3uUt6UsP503vjC+XjTjvPrEjAfirAOCF2mJ76MaBJS0OBad81nyg
	amJ3YlxDPLk1DwQWkAkE1tgrCcshZjCyiu/01qpXTjB3gtakpEYo5q4yeoyM41bRhyBVXFu/iCr
	N1SvbrgDdWxg0Gj1KTHLnlg1V7S5VaNAE8LK3uNP8gz8cj+J0wlNX3Ls9yA+LqkG2hNk/mbCA4q
	IRZrPxOVsEnIIo3mLPf6
X-Google-Smtp-Source: AGHT+IGrBvoo7a9T5ollC4Kafzr+5dvI/yM48bSNQ9PzhCKzvzS2+NRcCKfJfrFmUMRa61h//DtHbg==
X-Received: by 2002:a5d:47a6:0:b0:385:d7a7:ad60 with SMTP id ffacd0b85a97d-38a872f6a32mr16896203f8f.3.1736760357235;
        Mon, 13 Jan 2025 01:25:57 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9e03e5fsm136289565e9.18.2025.01.13.01.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2025 01:25:56 -0800 (PST)
Message-ID: <a679d4df-839b-4fd0-87b6-0e2ea2e357b1@linaro.org>
Date: Mon, 13 Jan 2025 10:25:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 2/2] thermal: Add support for Airoha EN7581
 thermal sensor
To: Christian Marangi <ansuelsmth@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@airoha.com
References: <20241218073016.2200-1-ansuelsmth@gmail.com>
 <20241218073016.2200-2-ansuelsmth@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20241218073016.2200-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 18/12/2024 08:29, Christian Marangi wrote:
> Add support for Airoha EN7581 thermal sensor. This provide support for
> reading the CPU or SoC Package sensor and to setup trip points for hot
> and critical condition. An interrupt is fired to react on this and
> doesn't require passive poll to read the temperature.
> 
> The thermal regs provide a way to read the ADC value from an external
> register placed in the Chip SCU regs. Monitor will read this value and
> fire an interrupt if the trip condition configured is reached.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---

Sorry fpr the delay, this month has been complicate for patch review.

I'm reviewing it now

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

