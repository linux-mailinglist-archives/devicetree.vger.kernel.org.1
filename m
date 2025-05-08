Return-Path: <devicetree+bounces-175222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA0CAB021F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80CD19E638F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A692E2882CC;
	Thu,  8 May 2025 18:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h/NKT0MV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15C7286D60
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 18:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746727431; cv=none; b=ZeyoHSXGIsGukJprf+mBjuf1HmuPs4lGLSCImVRxyFh51jbJTBhs+lTs+SEvu06siA9WV1GS4+XkcpQ2Jei9mjSMkHAIfSNHCODQuLG2lVYSXBGtFNLarHH7O5LVThmAJdHA8WRjmOPqhkadi/i9jK/Oz+u5nQEMVjYgvpwDvAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746727431; c=relaxed/simple;
	bh=BPaM3uBsQYkug/7fouL8TiZUFIRkQwryGGOrlftw3rI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JpeBNuIDkGepULjMmlmDEej9UiyQ1U4BfoOQ1vTlHRnmf//rDyYrRVoJRIq1yMQ7a4i0f6CLQ7VH7D+ITotTC06L8EIAilJn1DgvJhpu8vOFclp7wLaQ/Q4377KSlupWnA9rgHJw+S+U1PrF4qPZ7FfinAz/39h5+KglSHDxGlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h/NKT0MV; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-6060167af73so758760eaf.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 11:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746727428; x=1747332228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDIMXcUh+1t2oaHEL05AcYmEhaIiuHzLG4RdkwQs3gQ=;
        b=h/NKT0MV3szo5YA+cTcEaMfm/g+f0KzQJ91PosONwMUNS0wToMj+tFls38jgaX1uPk
         oOzMwrNE4VZBd+m2MuNC8R8iNS/DIQpoczEJb6rPaaX1jcu8CwuvfdP4yttusT6yyTfM
         qPl21SWeECE2vCHispLqKCQZhaVar87SqRnOQtj1ZOcW9+2NRXWqhPPUJTBl5/2zFYfM
         ay6NY5O9EN1S/u5TU8pkcohEr11mqVa1mTZXSizJxPXrnr8HD6/wQFoLXnvvAw3onxsU
         7Mq+4mTzDcR8lB2ZQu3Fcy7MlIH3WZxucn6FVPqI/dKX4HZCGo0Oj30UwsFsBfG3HTXN
         VfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746727428; x=1747332228;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDIMXcUh+1t2oaHEL05AcYmEhaIiuHzLG4RdkwQs3gQ=;
        b=T6R0FZ3ih01amjmATmop8htVpbqua0ny95BAmfF11vizhxJiER4VKeIXc3fZbDFTq8
         hjqnqmdi8EVWbYMtAu8cGHXRnPTqu94q5tXQUNpLDQU/119hq0BwRSms4Ppl4rWKpW0d
         Oh0HXpR/QWHQ84YFdrxLl99iUExZ07zPOxs7Ke+V9tt9+Mv+O+2NYnEs2nS6IvyAgpeu
         U5xUX85z2NBfeHq/7F+LYrXnE6eek+LJUTOY8KtLQubYnZmYRtQQxJeIdfjngDFQ6hfN
         zzFLGcwdM+gXR/qyR3tmU+rWYszV+DJfHQA0cQmqAejPdE9atqYOB6Ql2JL8MoCEJLOA
         7UWg==
X-Forwarded-Encrypted: i=1; AJvYcCUo2vnrukAcjwZMI/XloQZdPWw0XAjLkNDf/1AyLtXHeuviTK5wbYlZnTUNvfqTbSpMPO66QYYFJ7Ej@vger.kernel.org
X-Gm-Message-State: AOJu0YxOyGaUfKUPHuCmGoYm74a9ZeYYO24iG0JabOYaMqaJP+V621wU
	2X/ziOAMphjU7idmrMDsIhr0pElUob6GgynlUNd+psMx2Kxk0AmU0x0vsvcZtS8=
X-Gm-Gg: ASbGncuZt5fzUJC5FeBKOR88sOPr2RQ8BOgHk4kQKjfbJSCNUvQNsH7SMseVdk1cB0d
	dRotVapeQG+UHzXwP9yjg14lPuJgq1NDIDYSiIdWeYnC8mM7qRIUFzR44ttmFHGfyW/rvn0MmAq
	U0Mql89pLqri5QDCiO8/SUDc1IuKcfjAFtH7NqFe0GjjbLGLNT5iupZRcx/mUTvcnPNkeJL6Xfj
	TylkANzdfiKlXGMiZQcNro+uiLkWWpx5zzqI1qhmnv4t0zDMH50/Rjgd0Jwn9JLeJQ9rrYiaODV
	cTZo0ab00Hj/8ljPhrgnSxigbW4WHfgvvesr6aD0hjeUyHp7RKVbnGaQ6kAMEt02zrYg4Bi7UWJ
	nsUyKaNKwgn1uMQRFVg==
X-Google-Smtp-Source: AGHT+IEf3U6aBnbW0K6M59yOkNClYiW3gx4S2YQp31BRyUSuIa+tQqcacAiU4K9X6FdN1TJqPPe90A==
X-Received: by 2002:a05:6820:818d:b0:606:9ed9:c38 with SMTP id 006d021491bc7-6083fdc3f6cmr408574eaf.0.1746727427735;
        Thu, 08 May 2025 11:03:47 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e? ([2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-403803995e7sm60463b6e.46.2025.05.08.11.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 11:03:47 -0700 (PDT)
Message-ID: <1f8e1576-a850-4ddc-9be1-16e59756c65a@baylibre.com>
Date: Thu, 8 May 2025 13:03:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/12] iio: adc: ad7768-1: add multiple scan types to
 support 16-bits mode
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com,
 David Lechner <dlechner@baylire.com>
References: <cover.1746662899.git.Jonathan.Santos@analog.com>
 <8b8f861422b15b1316a1513cd66abc544ab8c5bd.1746662899.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <8b8f861422b15b1316a1513cd66abc544ab8c5bd.1746662899.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/8/25 12:04 PM, Jonathan Santos wrote:
> When the device is configured to decimation x8, only possible in the
> sinc5 filter, output data is reduced to 16-bits in order to support
> 1 MHz of sampling frequency due to clock limitation.
> 
> Use multiple scan types feature to enable the driver to switch
> scan type at runtime, making it possible to support both 24-bit and
> 16-bit resolution.
> 
> Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Reviewed-by: David Lechner <dlechner@baylire.com>

Typo in my email: baylibre.com

> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

