Return-Path: <devicetree+bounces-121282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C26F9C620E
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 21:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E126A1F2128A
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 20:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBED219C82;
	Tue, 12 Nov 2024 20:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YAriotIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B621B217472
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 20:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731441733; cv=none; b=Bb/K0ZZxsXrBirbZYSo1RwTHNE/9OV/8rBkjyded4LKErdTZ9YtdJ4ToGTz/h0kYM8rYUk6KDbQ7on+ZhsP8gKX7EWjN/Q88+nHC9VXXtTb37nROT3WPCBCN9u5IVftyWr6s51Q28mEY2NF1GEGbn7X+auOLxVrlB/kz4DmhHwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731441733; c=relaxed/simple;
	bh=DsjL5XWtMu7LOlZcx8scvAGiiIKiZ9tDUiuwStI2eok=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=oZrRd++xsdfsVUBVogHkUjX2Z4S3Tp85vRgvRQbWHzuZ6GgsOhNbom8shLHtNtSmCGU+rquwKsD6Rb6s/+kjowN9SbsK//igQOO2KSl6srFJAkJuTApGuqqPqLq3FEdK1+3O3rEPX5ssuDB2F/Kxu248sfZM/Z+lBHkPVBpJCys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YAriotIG; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5ee64d75914so1291636eaf.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 12:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731441731; x=1732046531; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7sig4extPJZ96lJvrKPLyrOLWEJSmKbg3dopfHgQP/c=;
        b=YAriotIGM8nrz9v9FRsK5UNQhXmJOlV9owUgZnzo5/ga9y2GpqKdgG3kGJn0ZCcJUF
         GYWLqFIe+AMNbUVQbrEiLnwxgGGhyTj4x7O+z2jUPiHi9hrG71eoVVHV8E1GtMRiWA7q
         BYybb5C0xac1LAG/Gnp59Ao8+kMP9auQA5Kx9P1jBvUOyWaoBJ9CUolBzERIb3pfQ1Gi
         3ek+81tQkfCN3rst5W08TeYu2kaCZMgDqPkjDH6GvVgaXlOme/i9iqIraJMPg58LtsMa
         FpP4+t7b26RXyQCXw3LOnr5CK2fvHfg6/AqBRIWalt26/5oIsluGCBBz9eqOzXlR56Om
         LE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731441731; x=1732046531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7sig4extPJZ96lJvrKPLyrOLWEJSmKbg3dopfHgQP/c=;
        b=fjSqVJ0W5YLWGyQG3Uw2+efMzWy+oIt3XQjussvZFhirDPcga6ipGGR4UN58cuCbvg
         bwjKz7V2bAeNJiSs7hKFICor07o6dF3joBsxWuldVCftbSuTKeIrUsc1XBxcXDi6wLmY
         vYdgxyZjhStZC0A9RWVNlzUuYYa1wd1vSfqQwwUp98b1gQr8aIlCsVIUTIl9o+QDyhkf
         r/pf8RYQ+Ly3LdaYayZ998bU+UGAYK5gjYVIxmX0xPM2Uhf+HbAFBPEth9tbhhzjFAJu
         4eMqAxAzyIu3vCljFG9+DWmTEIK16VU2w4cVyI76OClDiVeObANQZoPpqUvkcFfeUQgf
         imXg==
X-Forwarded-Encrypted: i=1; AJvYcCVskkMOXAHvrsg9PTLusyS+jmp0+S+kG3QZerDhlRI26b7Emu9aE2+1wbV4lBH+1IQsPydseb17nNMt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl6hhXlwIuLXOXWWY/bdyGElZtqScniqX2o6KIu+haOQNccNZJ
	o8w8OFPtQEJMzIdcEnRbtTgu82RdHmzTiealaNK4HLe/aJQ6SvCE3OJxfpPDf5s=
X-Google-Smtp-Source: AGHT+IHvgnmHiHHXULfY05GGiY7fOLLPMb5a5l/JeZR/daEqHCvkzI6U/0uYYnu+Fc6sEEFJ3gXDJw==
X-Received: by 2002:a05:6820:4c89:b0:5eb:821c:df23 with SMTP id 006d021491bc7-5ee57b96a9bmr12114816eaf.2.1731441730645;
        Tue, 12 Nov 2024 12:02:10 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ee494fb9a2sm2503376eaf.1.2024.11.12.12.02.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 12:02:09 -0800 (PST)
Message-ID: <4b48ae8e-4eba-4d86-af8b-2b749c53639f@baylibre.com>
Date: Tue, 12 Nov 2024 14:02:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 8/8] iio: adc: ad4851: add ad485x driver
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20241111121203.3699-1-antoniu.miclaus@analog.com>
 <20241111121203.3699-9-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241111121203.3699-9-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/11/24 6:12 AM, Antoniu Miclaus wrote:
> Add support for the AD485X a fully buffered, 8-channel simultaneous
> sampling, 16/20-bit, 1 MSPS data acquisition system (DAS) with
> differential, wide common-mode range inputs.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v6 (implemented most of the review comments in v5):
What is the plan for addressing the rest of the comments?

I don't want to keep making the same comments over and over again.

