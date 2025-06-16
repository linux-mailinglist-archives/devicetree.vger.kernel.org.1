Return-Path: <devicetree+bounces-186410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3B2ADBB8C
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 22:53:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CC3B18926FD
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 20:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F4E214812;
	Mon, 16 Jun 2025 20:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3e5LjKGi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581EC2101B3
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 20:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750107190; cv=none; b=TJnzYR8/NqODveguau2z957Y6rqUZPLRVZxQZ+cAEqsurAGHJ95DkWwcTLxlmiDAqX2KxlHihU9Xy+oNpDW/H1wjMLFd3Gh4nrJWz+8r0CXy3Xqj55owugSxIDrYbB5b16s5rIhlOtB377IAySH/lsK4xpYL68hkAei2y8A/aeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750107190; c=relaxed/simple;
	bh=Fgc2WWVhmZSNbwYEBSqxyC8hN2ImBZ7wr5GI6gGURtc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c/6RUvf2vrj/rXYbN8Ox5YqLoBtI3DkLlBQqyW/o2NoM/AOWhRBsIcT1zt3IJg1sExXeBQoRlZY9GmkDJ9SODPJknz8CYNfXLA43S/qbg7BHL+W91M+HDbb99ewzpRvMKZW9Eos3eoDTW1dCMYTvs7CQMV/UHxtwu0skoVq2JIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3e5LjKGi; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-400fa6eafa9so3511824b6e.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 13:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750107187; x=1750711987; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y8tqSOUPgM1bEdf4klAOUys4IG+Ji9moxOsELLoPJnk=;
        b=3e5LjKGi+PaHpPwAxSWsy05puAGIByyAtxpKsXJe3l9dzhTesO/jCjl9ZLznA7MK1I
         fnn0eSXXdYgyxvBH6soKWMdtwD7wM9P292MVT8PNw5XTIgBIW3lMSZTHL4gd4YI4btJ+
         r/Rw7y+8CV1Zf+oU2t0QFybi8Mh29RsLg/ltE8YCuY5VHtsrNt9jeH71VAIpCzYcrqV+
         oTgy7A+0Q8YrdRB7dwjT9cwjHMq5P5I9GawreWlDA2rWoM8Ez2laX8A0AdK0fZyLadpG
         l3XeGRpgcoIWbcAmM1nm+WK+lHijSoOaadGkn6EMVIwVH25xWVbfXj108PhDWSziLd16
         tiyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750107187; x=1750711987;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y8tqSOUPgM1bEdf4klAOUys4IG+Ji9moxOsELLoPJnk=;
        b=YQMiT/yPK/e1ltci+DMpgB4ClXlpiBXWG9+J6kqPqSTbr9lRmPUi694Sj79Sf4cAg3
         RAoSNzxvxjUeCO0GdOmfdrNrtHySA886bdX9nz4GxPqmB9LO9eXIuiQf2reRjfHhsQ/V
         sioDaT8mydTDlZPhxM0afiW/ze2ETQX14qiIIIiEBpVHpnX47GOrFYqGKwOf5v+Ou3XS
         gjdniwLou0fPCZ/3Xol2RNBQiisl/UQhcwYKDQqd8jhNlkmkxDXloAdOdDICK5yO3ekJ
         gL80bOfoZnEvPt6xZQtfgK+vJkBLCZy5urGwZkHPsUk+o2E0vf0GhuQIZNfLE21rHrYu
         a4LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQzPGiRRWZ2CJZN+KPor9lLRiDtSo2aFe2NURiWjRzvP+jImP443FJSLjXkgsBclwpfiXf7Ash6YfI@vger.kernel.org
X-Gm-Message-State: AOJu0YxR+oqyUz2sGZd7BtM03ay4UneoKhnevqbYI4MfW+F4I8E+rdv3
	+SG4QcA4vwl4ViEX+MFYMcsBDzm4hZYtTlAaocw4ouNRn5z+1P6hHSIuogQzJ9TtM6NShg0XfUR
	InQ5V
X-Gm-Gg: ASbGncuzKucBcGCoscF+p7HhH3+Z0bTOnSSZdvYg8DWmUzvxVdEYusKwWzAbETnuTt2
	zXoGGjTJDqoNG1+kHlDjLPDqP1N95SI44hgB6ZtvJYWQXDgX/7wQF3bVtpK2m+hapeeQTb/60Uj
	qZIFwpoVVUCxjd84pfV1rVucnhjSgLdQeSM/DO6Z5QLZcKbQqUIFdyVdwfwyZ5Vfg3AY+BrwGkh
	T/TsKdd6ysE3jV7vFVo2beHchMPB6r/ycoIHItgsLW6nvNROFAoHFJe15a+KMFi2zYb+u7y3og2
	7SMve/B+/PnS7xDrsTMLRqa4NQhf6bq0ouO+fBSjBVC1ZspI+vhDdwaJKGFl8njNvRwbNPXB5Gq
	YPJEX8jhvtF6y6jDcV2ShFZbBrYX7IrLMP2Hvs4kB0h5kyH8+tw==
X-Google-Smtp-Source: AGHT+IHzYq6GWzIf6b3qYtzYTGBw6n+PghC3rAzoIMdm1SgQulh9Kqlg0au1m+bSuRR9JTofx3sYSA==
X-Received: by 2002:a05:6808:2026:b0:406:6d79:49d2 with SMTP id 5614622812f47-40a7c24c65cmr7434326b6e.26.1750107187404;
        Mon, 16 Jun 2025 13:53:07 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:9583:1e37:58ed:10ae? ([2600:8803:e7e4:1d00:9583:1e37:58ed:10ae])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a740c2306sm1627122b6e.11.2025.06.16.13.53.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 13:53:07 -0700 (PDT)
Message-ID: <ac4aa95e-2309-49a0-b498-2bc3ee232a36@baylibre.com>
Date: Mon, 16 Jun 2025 15:53:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/11] iio: adc: ad4170: Add digital filter and sample
 frequency config support
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linus.walleij@linaro.org, brgl@bgdev.pl,
 marcelo.schmitt1@gmail.com
References: <cover.1749582679.git.marcelo.schmitt@analog.com>
 <dd8a615936dfebb6cd7c8110db2fbe0b81776608.1749582679.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <dd8a615936dfebb6cd7c8110db2fbe0b81776608.1749582679.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/10/25 3:32 PM, Marcelo Schmitt wrote:
> Add support for sinc3, sinc5, and averaged sinc5 digital filters along with
> sample frequency configuration.

Wouldn't mind having a sentence here explaining why post filter control
was omitted.

> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---

...

>  
> +static const char * const ad4170_filt_names[] = {
> +	[AD4170_SINC5_AVG] = "sinc5+avg",

Do we need to document this as possible type in
Documentation/ABI/testing/sysfs-bus-iio?

> +	[AD4170_SINC5] = "sinc5",
> +	[AD4170_SINC3] = "sinc3",
> +};
> +

