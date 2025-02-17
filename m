Return-Path: <devicetree+bounces-147544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CAAA388D9
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42F511626DF
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4DE9224B08;
	Mon, 17 Feb 2025 16:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ralz/Kvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A147621ADD3
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739808342; cv=none; b=IEsDdwll+T9oJdYBMif0uYgrWEyF41s+7z/6z48O6tbWfMS/QS3sljJveiY8afaz0eRI3bz1+/py5Xkw9FAMhy42OoSTMc7mU/Hc52Ayz79av+5AVJTRljJnp1ewI3TZVO20Z1ZvqqtZx8xhlK1vP9ZOfpJAMhV2oVtbV/MgYB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739808342; c=relaxed/simple;
	bh=OiKA4aUo/Tp14RS4IEYPAeGfKurka1AQjhjppkRlX5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qr8AQD0CqoP223YwwH7gznkj4XWyDkDAdyroa90A8GYWxIkVVEyWNCVbtdYA5sldzxycUX8o/jM+i5zwcDFJFv9d2jABtxLm0QPbML3FSbbhYbcJsXd20UTiI7bMMD5be24Lo6fDwI0bcjnFsGhehNMYw4KvZ16X1UfrmkcjSAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ralz/Kvf; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-727008cb0eeso2275166a34.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739808340; x=1740413140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9fDCxlqqYTROYIopC71Fs2SbX6HlBUj2Qyjp/1jneC0=;
        b=ralz/KvfmbZGyIffTXjI+aBeiMJVLqa7h7FN3s3bcgdhu98zNNz3Yppmgf848zo8pr
         DeXWcVIfwdOr0ublAQz2p1gSY97mt3QHNH35Cem2rzXWHU0qQXEJ+rf+PmtTnk02Fb5O
         bIfKEiDsGLezAyXfvd2SM6EUElYT8/+OZkSgPBYB0BLrgQgr40e7hWeqIw49JHVOb4UP
         okdmBTD7enLPAzvtyGfvDsLQ2S1CIgxD+yUarpbOI/3kbXDITsNOVCxW7WzErJUxjesY
         JYX9v+qZoSDd4xfMQPcte9RqlceXKYdE+R8e8G9gFO4sUyjfbH/kanHfdceXcb6Xj7k1
         NAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739808340; x=1740413140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9fDCxlqqYTROYIopC71Fs2SbX6HlBUj2Qyjp/1jneC0=;
        b=tcAEDP/xiDPMjI4tXZPnoJvCwcPjDgd1+i8bj7DdKNvOZ9zluZJlYHiENCr84AdOKm
         SX5X4qBAN/dhwv9Dsm1G9OXOVzEyKWniYcA/Z8qTG33h2T4GRZTJ6COR7dzyjp+fcybE
         uKH9up8bkLbe5qZw5N931agonY3DmvhgofYJOlyCJgkqaa0NifExW6hbC7uEQHvNVn7r
         16ZYk/zWIg75adBqmoiTjeLtlHEfqKBXDfXiRwQHvssOtXn/YcIrZqu3dm/iSJ+iScaz
         WB2A9qym6jQp/8rWWwr4lSGSiCjFdJ862AC65EVFFUgDC8Z2nBpeb5nPG4wR413GX75r
         XqDw==
X-Forwarded-Encrypted: i=1; AJvYcCWe9F8s/AcdO+UCom/xlmFbywveFlaC0Y8MN+zv0dC0S6Ue4eCE3cujhxFZbP3vL6y1A6UN6VLBDEBB@vger.kernel.org
X-Gm-Message-State: AOJu0YxL4JQUtD3aluCcoUdHYKIyP4vE162sEZFF0m0too09SDX8ayNk
	vNZtixiGCT07gPwKhLHWr6nkAgf0gkDEnO18a8jCLB7bMOd8GGcHGVRhTy8Q7YQ=
X-Gm-Gg: ASbGncvenBuPrbWP6HU2Ca6B9ElJdDfRkKqnCvQmc1wVNsVdp3odT/f2vwL40kS8qbt
	f1IWCfdEpyK8KgWX//cJdCYbBhMLuWOJNuMS9qs9G8shFb+MhJyscRs23Jc5YGO6FlPmQ2WExKb
	tE0Bd39hC4VXF2j2vClqXgsBto4hVyZWCmt/JW3VSK0Oh5PdHReqXXD2y8dP09EyGHsYuIB//94
	nWg8bu4jOUPxvOYCoVeu4FcfP4DnDuxqylOZGFWcFl96bBj05UHiSYZFem/ayftzEKZLY1zmhXf
	L5gnbdABlELMb0Yf+pDubWDrW6W1bi8QMx//TgwKbcp2BANMmyf6
X-Google-Smtp-Source: AGHT+IFXxl2WaKxTJ2Vj4lUN/dvY7V3JkxZr75Hi2Fjyuc7TEbZCG+1LhZYOn3WC3wYUrCeDTRol8g==
X-Received: by 2002:a05:6830:4582:b0:727:25c6:1b69 with SMTP id 46e09a7af769-72725c61cc6mr1643254a34.1.1739808339759;
        Mon, 17 Feb 2025 08:05:39 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727256d9cf1sm588687a34.33.2025.02.17.08.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 08:05:38 -0800 (PST)
Message-ID: <d13d37ee-b98a-451e-a847-e07c56430560@baylibre.com>
Date: Mon, 17 Feb 2025 10:05:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] iio: adc: add helpers for parsing ADC nodes
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1738761899.git.mazziesaccount@gmail.com>
 <337895af7418a8e4b20b5a9322344b68082508ae.1738761899.git.mazziesaccount@gmail.com>
 <20250208164111.28ec9f2d@jic23-huawei>
 <ed0e43d8-9ab4-4614-9079-8a592ca8b185@gmail.com>
 <20250211190714.4db240d2@jic23-huawei>
 <dbbeb52c-18f4-415a-b2d4-520dd0184dda@baylibre.com>
 <26907711-45af-467b-89c1-8895ae3a7ab8@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <26907711-45af-467b-89c1-8895ae3a7ab8@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/17/25 12:29 AM, Matti Vaittinen wrote:
> Hi David!
> 
> Thanks for the input!
> 

...

> Absolutely. I had no intention to do anything hardware specific with these helpers. What I'd love to see is IIO-helpers which allowed passing device pointer and a pointer to iio_info - and getting the (known by the helper) device-tree properties parsed and filled in iio_info.
> 
> This sure does not help more complex drivers which require some 'not easily parsed' data from the device tree. But for simple drivers like the BD79124 this would allow drivers to omit open-coding the loop locating the channel nodes and getting the channel data.
> 
> Maybe a small improvement but one can't deny it still is an improvement, right? :)
> 
> Yours,
>  -- Matti
> 

If there are a decent number of drivers that can make use of it,
then sure. I'm a bit biased because I've been working on some
rather complex ADCs lately and not any simple ones. :-)


