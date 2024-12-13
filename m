Return-Path: <devicetree+bounces-130968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E5B9F19A2
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C9AE166109
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFF61B4F15;
	Fri, 13 Dec 2024 23:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yBLDng+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962511B0F3D
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734131371; cv=none; b=eh3gI6QfSdJjQW7FzYftW6CBt2sqj+5l9hJDfhWd3eCThLAvdgL4UWP6sjBYO5UyZDr5kN3tFom4bSYg1ksKaEiLtkpxrn3d/UInQ255So2Odyh9EKVYj/3lo7amOw8PQp5xi33njs0vxve2fC79N601mWgyeyUywghRnooWL+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734131371; c=relaxed/simple;
	bh=a66lIxSlpOjSTxBDXLm5oz67ehuFCRs4HJpp5BjgPg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=J6d9pHFFVJLaqC+uRlUpxs2zcPjphELL3jeyeVCPpCtdrDOylXhSTRJfFNegxArER39SkIs4n81W8GM3ZiPooQmLFhcZFBLB9TNlveLSpcY9ig6zEMfxyNOryWP/s8niYvV9PJop6zxcguSVNNGLtAU0V25pKg7ha0EHSltWPaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yBLDng+e; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-71e15717a2dso1018734a34.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734131368; x=1734736168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=naGXFTMazXpixOxAatrKjd6JeusIndHF4os7SSqqSwY=;
        b=yBLDng+ewcd9pD4csewchmMn+U3PGK+ouCmHTLQ9WrfGsgyeUxf6Ex4hFgukJzrBjB
         srUqv0UUR0UVmUv3q9G28o99Jouexm3+OFRu/EVpk6YzuilEDcbYETBme1HKHRy5rUkc
         QURd91wtJpj0fiYPqJQdxDasGYAsojLZTZu5aDoDxFx1zo41JhW7cIKK5EIyeivdqKjK
         zItLfvB/EYks7cm6ctPA9cI2ouqjtVWr2u2sfaFb/P5jmHA7O25Vz4T9hccKOgQBhzTm
         94JR/ekutgRqhg4uczghCYvnOgug7ZbiqqVbXWf1ONlf9hrNbi9CAdqXh4kV5zDyUBhh
         AMPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734131368; x=1734736168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=naGXFTMazXpixOxAatrKjd6JeusIndHF4os7SSqqSwY=;
        b=AvUW3DebiPAlAvHn/cdOoe/0eHHC3U6zfBTj8E7VOVbP5TnQ2/48GeoiHk/wINA8nA
         DSMLWBIfQK0jFioenKoPmDNvbALYqAF51d6APl8rz/hfQzC6m17avAFhFyAdNUpIb7Zp
         csoKCgLcacQw/6/qIByXJuOIRT8cd5BJrYwdEinvwDozbFoQOHfBtFy/J7Fs4Mu72Adj
         lgFr2yogse4I0bgeHApbVrAwS7WMOPw/rHe8UHvYWB8BVCkeOIOXJLopQzCevf28phmv
         UUY8nYKI7Gw9UmWiVNpuknUI1hNI/mKvdBgwUmNGrBpJmfUYGw8CvU/nC1vayFVGbmKz
         JlMw==
X-Forwarded-Encrypted: i=1; AJvYcCVCIm7GdmUZnDe5ALn10F6cn6qA5ImjvbvAvi4cS7cTew7NG7VrmsipWyQKH0bgjQuMaSnDtkrd0Vkl@vger.kernel.org
X-Gm-Message-State: AOJu0YyTZTE0BM8Y8h6vO07vTP42G4dH0ZOfWCx3noufGGKEhRR28z0N
	eEWLolkzPdKDWJpd6336i2LmOJ9yMixPp8zPokOA5c4S2IiojgtW93oH6exA8qI=
X-Gm-Gg: ASbGnctKtEay9dutK0C6HoTZFZrqXH+sEUWUh7SR3Ebnk/ejn2RMtijJ/3HL9bqoNz3
	ohIDm2Og6ltUIvt3GhSB4lDvyga7MjR0QT4cYvomGrk1S0EmNdpOjLb+TxDFt4OBZia5TvOddYN
	WXkjnjPDBk8Iml8QXhn8UqoMcnpcVzSjBfYf8YroySu+7HMxN/Y7fE/1uXpJxh4yxGKkpsxBr1/
	E3psch02RciwYqNinw4D3H594YzdGWljyOZkYiMTKlunYD/Ps+2D7wQJioZZT/B1fZ1kFRX5ccA
	gzrWMnPxEUMMrdQTpg==
X-Google-Smtp-Source: AGHT+IHoJ9Ixk34ZMQqbJ1mkbnpXEc+OKf3C3bitRp9/AunmS1rwBG42IOuY5b+Pobx7K3tkl0VShw==
X-Received: by 2002:a05:6808:2208:b0:3eb:4b4c:80d8 with SMTP id 5614622812f47-3eba65ba0admr2149752b6e.0.1734131368695;
        Fri, 13 Dec 2024 15:09:28 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71e48308005sm139273a34.13.2024.12.13.15.09.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:09:28 -0800 (PST)
Message-ID: <99a14b87-90f1-4450-9e73-ae672edbf3e0@baylibre.com>
Date: Fri, 13 Dec 2024 17:09:27 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/8] iio: backend: add support for data size set
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20241213164445.23195-1-antoniu.miclaus@analog.com>
 <20241213164445.23195-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241213164445.23195-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/13/24 10:44 AM, Antoniu Miclaus wrote:
> Add backend support for setting the data size used.
> This setting can be adjusted within the IP cores interfacing devices.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


