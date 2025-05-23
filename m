Return-Path: <devicetree+bounces-180072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02927AC28B2
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B303C4E73FC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816EA29711A;
	Fri, 23 May 2025 17:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Wbth+dAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F97929290A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021613; cv=none; b=FXsXMXi1NFjr1gQ5Y6Ga0AXZF8ENQ0Hgzk60sZqCLPkYHl5ysn7hJ4V/MQjzhbMzqOJsiQ1eT81Uaa32OdULNYxND/A7xrHN9U6nzpSQoSX+LayJCJF+6KL8bnfa8JOZiQXZ2CL1ZDLMKf9y5GNJDXNQBSel7Il9c7ibvgHog54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021613; c=relaxed/simple;
	bh=qt/HVkr9zL2lJNeN6p4tMwnsp0x3rx/30xKqdVxveFw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y6SfN+E3V39Pf1WuaCNKfr711WIRI2AXkxrLljl1Pz0o8mZBA3NnMMKXWQbaaTtTJSN/gMPdte7M9n5+P8r9CUksi4mERdHmkPo31XQpGQsdT2cY9ssUcFrUfGqB/UANBfN0ljjB2BaXhG0aFCrxrLBgQWeJnsrmdhFtXlGhA+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Wbth+dAX; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6f8ae08e3b3so866876d6.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748021609; x=1748626409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qt/HVkr9zL2lJNeN6p4tMwnsp0x3rx/30xKqdVxveFw=;
        b=Wbth+dAXzBz7lwOEsCJZTtABNMJFUPNXtpVH5pdm0cKiz4a/FumZ/GwF8dp+73P2ep
         dEWQGvXf06lLcEcjKDiWu9IQdXzxJmU8QXElXPvfTsfpYJNs9WGSdrPtVYIJ16a09bv2
         McuNVBhP3VxVaV8M0BWgSJj0yPR0LS30RNn4aKcO8cEoQZiYf98CNJBMCknO+qJperM+
         HNuw9WcAtuFpuz5smi4wF7BDWpyLR8ak2xlPit6jtXD84EJCHFEMBykw4QscnD/hIbN/
         9ePn2rEGOK19OLAIEm6ArBJPFPCkAvdD7QoEz0k9GIGo49Cor8QWNRwHv2/eOzaVYIhi
         /jig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021609; x=1748626409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qt/HVkr9zL2lJNeN6p4tMwnsp0x3rx/30xKqdVxveFw=;
        b=r295KauTMGPis39WwcPsnKB3JKO3f3DEusNAyCoR9XQVvYcHurWIF3LmIO+IW8x/5h
         WOYZt5mxJZtSn78jB9sNgz2D5uIdfcD2YeOBW6N77kKMRdWR6W8xPCRwB0/sbXziRjLK
         IiHaZbkZO/cvu9AqMguK5O0MfYfnjVfQ4kstHgz0k97D7ZwQkixslvqhWsh/HqCmRq4c
         17WjNfBzsD+pZrqlw98ZLKWGubSnoXdW4n4e5d1BCI38HdKrySNaL/S6y0CA4QJvwq0q
         PXg0DvLH/AIChO/WGfVvWtxDGd0GSp7NRrBdsViYA7XQoC09miNVd3g+zvqmKXYgdDCY
         Nl4g==
X-Forwarded-Encrypted: i=1; AJvYcCVl6L66cMV27Lc/e/x+HPcGlin/KPDkIA1csk083lXnRFNDXLiL0jSP6QrzbJggJCDfYjMxqSBE04LW@vger.kernel.org
X-Gm-Message-State: AOJu0YzOtbdEX2ZH9eK0IvDeR28WXefjYS724QHd1sYeVJ4tb/z9+KBb
	wgdq3G6xf4EhwPuHvoJpIM1BAsi0rIqxC+XrAZOUey2g5PF0wb6rupYeAKfWHEsGZIjuZ45s5PX
	6oEleOlI=
X-Gm-Gg: ASbGnctluWULzDV5UphQ2QlTJe1O8yZWBwuwM+SeJHcIEEd9PtCWYZ6QpP7RT6SvpdW
	cuT3GDJnBhGQJCVav3yE2z9Nwm2gfuYLIOQD/QzXEOeUYja1kFQY55/VPgyRTray1lRU+47Arh9
	vSkcs3J2jK0qwhgNI30H7DV1wQ2YHTL+WvYrJ8JdAt5idVy6I2fijKw53QFGZRlx+EkioWOPpXP
	w0hNyzQQP3zMFpG6NnJfIpXcWiiSlj/3Z73scHoZ8IXpNenPVQKB1QZIiqMPUpCNLR55pVsrpWV
	JI2xW+jruYe5Epyf7vfNhnKrXYalr7rx+qgdeXl20550Qf6JSrsz4UtQzO60UIsTVa1v5EpB8cP
	AT1bozTwmvn1n2e63ElY=
X-Google-Smtp-Source: AGHT+IGfoUQU6tMr9zPYUJ6jdUAQDnehNSnxPg9FvM8hXpb+wki2yPOFQiObmL3C04ljtIMxkfbFrg==
X-Received: by 2002:ad4:5dc4:0:b0:6d8:a1fe:7293 with SMTP id 6a1803df08f44-6fa9d2ec0dcmr4244776d6.42.1748021609392;
        Fri, 23 May 2025 10:33:29 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f8b08afb37sm117198226d6.49.2025.05.23.10.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 10:33:28 -0700 (PDT)
Message-ID: <b8b0f11c-844d-4925-a8fb-cb92cc93f8cf@baylibre.com>
Date: Fri, 23 May 2025 13:33:26 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] pwm: axi-pwmgen: fix missing separate external
 clock
To: David Lechner <dlechner@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250522-pwm-axi-pwmgen-add-external-clock-v2-0-086ea9e6ecf0@baylibre.com>
 <20250522-pwm-axi-pwmgen-add-external-clock-v2-3-086ea9e6ecf0@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20250522-pwm-axi-pwmgen-add-external-clock-v2-3-086ea9e6ecf0@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2025-05-22 10:49, David Lechner wrote:
> Add proper support for external clock to the AXI PWM generator driver.
>
> In most cases, the HDL for this IP block is compiled with the default
> ASYNC_CLK_EN=1. With this option, there is a separate external clock
> that drives the PWM output separate from the peripheral clock. So the
> driver should be enabling the "axi" clock to power the peripheral and
> the "ext" clock to drive the PWM output.
>
> When ASYNC_CLK_EN=0, the "axi" clock is also used to drive the PWM
> output and there is no "ext" clock.
>
> Previously, if there was a separate external clock, users had to specify
> only the external clock and (incorrectly) omit the AXI clock in order
> to get the correct operating frequency for the PWM output.
>
> The devicetree bindings are updated to fix this shortcoming and this
> patch changes the driver to match the new bindings. To preserve
> compatibility with any existing dtbs that specify only one clock, we
> don't require the clock name on the first clock.
>
> Fixes: 41814fe5c782 ("pwm: Add driver for AXI PWM generator")
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Thanks for fixing this!

Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>


