Return-Path: <devicetree+bounces-237835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323AC54DA6
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 00:53:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 06935342F5F
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F4D2C15BE;
	Wed, 12 Nov 2025 23:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I/k9Qgf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12522D2390
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 23:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991619; cv=none; b=toTJyd6t3UzOGAdijgEjeo1c8N23A1IadTu2WoD66Q+Kz6Sa8fftVWXrrC3BR8rMHzQjJ3EDcYawcYJ5vC60SycB8O6CR+2E+O02Fec1Ht0CGlAkA1A8U0iqVzVfd7qm012U6keMFWq0yKStxGufbGZvxrkTpNbqUN8CjA8zvLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991619; c=relaxed/simple;
	bh=kMdTi/9PzGiJMaxiPkLUgJ7n4V8tYlMU2D/cLBH81AA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nbEzTQ8IT+lLJ48rnRD7w1OO0XxRRo3FRkjl/7u67JGFzL9wDJ60N39pblThluzardFtXoYGzWeihpl3EwTrjTp0Y+bKQzO6nDhNNM67dY5aCoGGgGhSh4/0IO5JA9rksHOJukSUnrRxkmTkZ8GnIPESlteL5qZhuY09QZOE6eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I/k9Qgf5; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29844c68068so1484365ad.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762991617; x=1763596417; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MpudN9GMhBh6pD3dB69HdEEsYghlO45WOLumGV5q+OI=;
        b=I/k9Qgf5jd2DQHL9kiQj31pNzgNJggyjtU4eabwo1Gu0ItMH1ygNYCK33pzPaGo5CE
         jqo8NTIZa5VofQ8Mh0CTuSJo0wpSDnrc/Q9b6R/Bq7VXoDIIeEXOtYvtaz1G6duq/UTv
         KS1BUw08xv7HGIW0OBT8EJYwozira/+TdX5/D0Qhuw9vbbFHZ6sODd7W7J3ACjjGqJVB
         8cfK79GTdzUGZgKsiT32dRK2a+ffoIjhktWIJZFt1b1nFSjjS7plcN9DtdsVntcOiAlW
         cF8KyA1QSNLiWEDxhGNHU31ZKwshbyMooYzEpFDIN9RUUwJt/Nnui2gdPlemcMyLzQCr
         BzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762991617; x=1763596417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MpudN9GMhBh6pD3dB69HdEEsYghlO45WOLumGV5q+OI=;
        b=mj49l32u97hsHj+Y0wXpYkGBV/C1k3fzaeW7LFhBwhY//z/uZYkPa/BLKiEm+xYQoB
         EdQECZUmyeqHOwpsJ4IxFMGbVagDcYz27azxgZcLtUvdzAn12MyhlJjuRooYAYgxCUBN
         boDusHJfz35DucjYN1cH6GIlYq1ioSK5XB3+oqCVSvSGB0xzuc6JBMqWNmjLqzIWwqeW
         MjJV9BJjtKK5ibRBqS2QJAXrwK8Ls/EEzW9GfxpXpJbRTvGZYTZqsi9VQyZF30Hk3MMX
         WrYPv2zAKYKwQY2jr2fvl8uUk3eHp6ONmDYsxM2oorE885i2resRcrR+QCpGmQTqeawQ
         Ekog==
X-Forwarded-Encrypted: i=1; AJvYcCXhjU4kILnyuw1iTKaVA6YH4rVpjEz+ui4mB300pz+4C2llkGcWcL0Gw/tXi/uWxb+BcqDbePHBlQI6@vger.kernel.org
X-Gm-Message-State: AOJu0YxDsYPkm1rOsCfU9iyoWrPnDf48CsARYECgZMItk2HaA5UBWl3a
	8F0GBAQqgKQyu+pF1rDZ5xpf4jMh5orHT3iH8R52lZaEw34cx+YRaM2g
X-Gm-Gg: ASbGnctLnVC0an9pAqd3YcASKPBQZ4gix6DDZ9M9XSJxLbk/j7J/I52SyiL6rsDlLlT
	KzYaiiPxvNOUKIfPt4NDq+JdSeQuh1UfavNLykXvQIzX3jABSWgeXyIwuB1ZjW+mbBr9J/hc0rJ
	KSB9SL5D0lBhlwpbSDXiYRRsU9QAVroT4FxI7p8ThXNr0OpM3MuPsAb9+znCeUlkPQAgHeJY6fR
	0HmuuBW15/oTa3Y+92nYb4TE85wLX4dt0cqq7hVc+LsM4c2jLVqpxVzJ8yx+6TLUE8lZnFVyt35
	AobiA1xh3lIVODYvcnqdKJxsWzC1xLtpj3FbN9i4MIq/F9Q7t6y2WQj8lqo/wi8JhnaYYVrlkvm
	qxf4RAtNrLmdeKxCghj9gLLjB82ESO/HWXtUDlRs3bkGXnNtt4+ffyzPM0BXQR3Zq6bsxHGO+Oy
	RYd6HYez4ZTZ0T
X-Google-Smtp-Source: AGHT+IGt5oL86/oFkHaVKTMcmQvak29A8nDf4vHESVHp1UA4vDa+W7Wh11xzw7bq1b/+OE8a+9PL/g==
X-Received: by 2002:a17:903:22c8:b0:295:59ef:809e with SMTP id d9443c01a7336-2984ed41fd6mr55346245ad.24.1762991616951;
        Wed, 12 Nov 2025 15:53:36 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b106bsm3241805ad.58.2025.11.12.15.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 15:53:36 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 15:53:35 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 2/5] watchdog: loongson1: Simplify ls1x_wdt_probe code
Message-ID: <412c28f7-c552-4691-9cb2-98b67b4404ef@roeck-us.net>
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
 <7d792b573160cbeb0f797f6b8e2f5dcb54f8b490.1762482089.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d792b573160cbeb0f797f6b8e2f5dcb54f8b490.1762482089.git.zhoubinbin@loongson.cn>

On Fri, Nov 07, 2025 at 02:01:28PM +0800, Binbin Zhou wrote:
> Remove meaningless output to simplify ls1x_wdt_probe().
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/loongson1_wdt.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/watchdog/loongson1_wdt.c b/drivers/watchdog/loongson1_wdt.c
> index 8502263b0d6f..781f01f1f888 100644
> --- a/drivers/watchdog/loongson1_wdt.c
> +++ b/drivers/watchdog/loongson1_wdt.c
> @@ -108,11 +108,11 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>  	struct ls1x_wdt_drvdata *drvdata;
>  	struct watchdog_device *ls1x_wdt;
>  	unsigned long clk_rate;
> -	int err;
>  
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>  	if (!drvdata)
>  		return -ENOMEM;
> +	platform_set_drvdata(pdev, drvdata);
>  
>  	drvdata->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(drvdata->base))
> @@ -139,15 +139,7 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>  	watchdog_set_nowayout(ls1x_wdt, nowayout);
>  	watchdog_set_drvdata(ls1x_wdt, drvdata);
>  
> -	err = devm_watchdog_register_device(dev, &drvdata->wdt);
> -	if (err)
> -		return err;
> -
> -	platform_set_drvdata(pdev, drvdata);
> -
> -	dev_info(dev, "Loongson1 Watchdog driver registered\n");
> -
> -	return 0;
> +	return devm_watchdog_register_device(dev, &drvdata->wdt);
>  }
>  
>  #ifdef CONFIG_OF
> -- 
> 2.47.3
> 

