Return-Path: <devicetree+bounces-149113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC56A3E5A3
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FBC21891059
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 20:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30C02641CA;
	Thu, 20 Feb 2025 20:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UgiSYnzY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83850214A8B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 20:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740082332; cv=none; b=h4/I8xvKUY2vQjv2ZmoxOM10m+exZFn4KbkbbLWMNS6DJ2rzcsRv7mmGkpBbetRHMVEormn/+MGNclKeTyLCcg9wW2b76JzD10RfKD0s+5uztIUJCmCrhsw9730K7lV+1SLdNatkhUaAl0wDRRuHxCzKJR2hN8sG4OGBu5rvNpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740082332; c=relaxed/simple;
	bh=LiLaY47ptzEOL9s852ObKqchaffB6bEYE6g2HwhyeVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ChA4G0Bsb1WI/NqBDFf4cGa0aEJS1HnYLHF6RdUe8wGbbdlg9kna/eb2xRhRJQPQ2KvBwlYiW52yZPKfBZ6KVwDwnwoU7gi7R0yeIsEO2gGKkTaNKzqQnUNyzdcWqPBZ5JQoHvtKEj0h8sIoA8Nu0OgpC6sWSeVRwgMcPXCl7Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UgiSYnzY; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2a01bcd0143so1018037fac.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740082329; x=1740687129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/P/yPrR/A9HckFg8NDpGWQQ83Dwa//epZsJwfz6xX2o=;
        b=UgiSYnzYShZXZRMd3K48ATtvBsXPBUVbqFRhPb2DbZaqzwdgF2x5qfxjLGgQrXY73R
         no8CKY8zjoM8P00AeoYtva1MR32RIjBZDdSQSYZos+CW/+5TAox9gNKZfIGe7eXGipGI
         V/QrMDA9GfHeLSUCcveosclNTcK3pET+eQPG/bp5ox4AOCPBcJ80fOo7CRycGOIoxZnl
         MZ2kOnTgZvQOGAIE1QfOZ4gVJz+t1/49Om+fDJeF80gkWQsV68suZFrEY4gW3ytYi/NV
         Jq6/Wpp1HkMQlASqssUzC0zrr0PHbqDXvtX6ZGo+Y5Wkwdj/5NVOtbUZ4BfHhQ5hdtsd
         CN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740082329; x=1740687129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/P/yPrR/A9HckFg8NDpGWQQ83Dwa//epZsJwfz6xX2o=;
        b=HMCR1HdSlX81kCnE9Re2XFjIbZLT9yIkGMqK/1eI7ZBy/1b2qnz89TTW6FopJwHz5/
         AOURrbHL3wFugDc1hp3ubRkUXAsiF5AgZkG4ziUUuwpuD50ZH+E6V2vwJmwLh1y8D8GM
         7kDVhKvEP3GbGPRvVIeIQ3p8f4lvpVJmR70foY8R1fyRfHtAHJZtyYnqcpAGsZKRvkAy
         O3DFYZc0IGMod406SyAOnYPSYJQ1NFD85jRMBCw/puevfsAD9YRi8DLWQSablxRb0E1/
         9Wq/WjebZYmCbZsDo4z+xpuvtExzcKiqjVd+n7WrL78Yu3oB6aNh38kFdcK/REdYXPgi
         5l0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVL7vcKhRFK6fw0n2rLhRiqAGHRiB+KaDgEoxlAEIiG3o9Jdl8FPKz61b6HJ3X2Kjx+wMQaBNsNVIyl@vger.kernel.org
X-Gm-Message-State: AOJu0YxKRVtiPjPAeY9l6GIrVO/vUK9cv+OYNiOo26RyI8c5nPoGifEK
	1woTu/+i7j99mQQLd0fn/pd8ZqszL0S0sDB6doVxT4MM/1lx0Cea0HR6dUeuhOs=
X-Gm-Gg: ASbGnctvpLXqaaHWaLeEK0/1hm3aGVvMq9sHGqPpc/R/Ugs5l3ftnWs6F1vk8ermLMz
	pAQL70e1we9ckXf8zsX4vA+j7hemU3OCMWK4n6DND9bo3auBMjhFYIuNc7X8PqgfSl3DelEwzB8
	sAG19Qus8GQUuCCIk5j2j+TaKHastHvuUc1LxwGZV6r5Bq2N9WtDQe4FEKfmmG9l2HzUf21Jm5Y
	VA5J0d6t+XBwc2nLY0SlEte9YsYu5uil8bEUcOEiKruxNKZdkX2YSDC+zEy9RQKFF0Huy7MDETF
	TCzunPjE2dWK3v4sL+cGUgcid6EpmOiBeDLQHxQHO8nNonohZRKM
X-Google-Smtp-Source: AGHT+IHtNExzuBCpI3aT6N9xaZhGItg913lty18yZz2F1e8Bv7HevKzEtGiBwXMthiOqYSepUFM7xA==
X-Received: by 2002:a05:6870:1e8e:b0:296:a1fc:91b5 with SMTP id 586e51a60fabf-2bd50c5679fmr373634fac.8.1740082329523;
        Thu, 20 Feb 2025 12:12:09 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b954868591sm6475964fac.12.2025.02.20.12.12.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 12:12:08 -0800 (PST)
Message-ID: <bc8b0004-6eef-43c0-a07d-a07d2e332737@baylibre.com>
Date: Thu, 20 Feb 2025 14:12:06 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Add support for AD4080 ADC
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220135429.8615-1-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250220135429.8615-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/20/25 7:54 AM, Antoniu Miclaus wrote:
> The AD4080 is a high-speed, low noise, low distortion, 20-bit, Easy
> Drive, successive approximation register (SAR) analog-to-digital
> converter (ADC). Maintaining high performance (signal-to-noise and
> distortion (SINAD) ratio > 90 dBFS) at signal frequencies in excess
> of 1 MHz enables the AD4080 to service a wide variety of precision,
> wide bandwidth data acquisition applications. Simplification of the
> input anti-alias filter design can be accomplished by applying over-
> sampling along with the integrated digital filtering and decimation to
> reduce noise and lower the output data rate for applications that do
> not require the lowest latency of the AD4080.
> 
It looks like this was just copied from the datasheet, so not useful
at all for a cover letter. We can read it in the datasheet.

Instead, please spend some time to explain the interesting and
unusual things about this driver that will help reviewers understand
*why* you are doing what you are doing. This is a very complex driver!

In particular, on this one, the documentation on the FPGA IP block isn't
very detailed. So it will be very helpful to know more about how all of
the sync stuff is supposed to work and what kind of filtering is the
FPGA doing in addition to the filtering done in the ADC chip.





