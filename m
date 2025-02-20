Return-Path: <devicetree+bounces-149114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C01FA3E5B1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AD533AB710
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 20:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573801E9B25;
	Thu, 20 Feb 2025 20:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VATQUrUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1F41E47B7
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 20:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740082826; cv=none; b=c9lgQMitabS5eqFQj0z4oQlNcmvSDWqSoz4y7z6vTVaZ+EQ5gFd2gQShpyQHD1uC+jKZnn+DxVij2uv0ekpnZZrexhiRHBpUIk6DIwQj/77bbjx5yV5z56V+RDIZwC2GltHE+Vl0CLCXKZzCZqadsVmZiH7rmVwoxGGXbf+ImTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740082826; c=relaxed/simple;
	bh=9AJ8NJ3fQ71s31AL2ReKVKY4uz5K/1w53C9zcgxtO+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tC0B4cdytEO0MYL/bnJ1oSFxdFEMhd+ORQNwQmhtIjrFTAClctJmVoNgvdw91DVMNqE6cy5kql/aFcfgDMKfs93ptT7bfFKBowL34hxV96E6SmDzYX+fJ74jhrhQ1bGHPs2T9y0XUQDEpIoTtDfA9rmIYvgHSqmB8i5TfuMmVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VATQUrUp; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5fd0adce179so608974eaf.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740082823; x=1740687623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3YA0S6DeTYDLSFKZ0z+n+MPKwXA/ZHvwCQOrhZShsds=;
        b=VATQUrUpyhnfA/wKRR5imajWPBWt/CitSu1NwmIu5xZMmmgvi51TsTD3b7iDHmreTd
         fW397KmI+vuS8Y9unSiTWOvpzOClSXH8q2ytMJgrFUw8q7BIP4KZ0coUzZbxUfhPXExI
         6BdGBuc+E5IMnCfkHaYCH0eOnRdzL5x7RcShAYfzG1BvoxW5u2cwevhvYUdHkl+Ag1O/
         +dVjnqYOIKPjSMVHQefpq39AW4lhAicb8MPuAmeoeEj9iv8AQWQSTxxPuvUPwZ42Zz45
         33ykJ1otFBQixPV8p8jj0Nm2mHIcycNW7rZntb1SguOMqaxszLtC5gu/kvSiP6At7gDC
         Zq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740082823; x=1740687623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3YA0S6DeTYDLSFKZ0z+n+MPKwXA/ZHvwCQOrhZShsds=;
        b=IMAtMcZEi0VchxEf57XbhHDziFablcu9PzuSVN8vc0wbwwzp+D8PNcd8iYFpCxA7Zt
         xtR4GlUIXgbY98kQx2BbMSvPymmQW4hwGZvsa3kE/hH2qu9aTZAQe/glG2mVYh/Kz11X
         qsdYo7eqTHsad6hme+KOlxWiiYOV3ysTiM0AASvAenrRMnDNHEwYO8H+xLsffxQgO97N
         tYO+T+BmnuTw7mI8Vk7VKxuSe1ENZGjNC4o6be8yjVbNQ5gBds7CRdN3Gei9M7pG10B8
         XwXXnAgdnSlc1OMKD8A0l7kXQaJLpDGgkrHFBuud+vcNyejJlmAuNCiOwLyr+8AdJVPD
         paDw==
X-Forwarded-Encrypted: i=1; AJvYcCVxS58PKLLbP5HdNM4FthnVNP4W8YDs7BHhU0KIGhKUk6ic5sm0XLB7mJ/f2JfZXHgLmp6/p4GwfvXj@vger.kernel.org
X-Gm-Message-State: AOJu0YzT8+sPNdMA2PV2SE214jj9jLWNYNgDS9dHwZK3yx657VzTRrNU
	601cePVKmQ6/xlbji0DprK6gHOsAKzvDrc3QJPmN3oomnd21C/VxkLHrN4oSu7c=
X-Gm-Gg: ASbGncsxIGA98nmeLtlHpWiUXbPWu4R241fMq8c+CNTgtkPutteHCQXZQqvhbpC/0wb
	2HPULZmyjhEKSd9QhuspdN+MT/IUfIKDfA7UCH8xwM/miDfnvVk48uHu1kuFR5Vad6rrq8dLi7B
	weXyJHcCgBObMj/8K8c1i86A9jOGzxalHbGyP0nkVpkB8GK9567i0zhdFqrS4WjThXU32WyYbqZ
	uoCsbKhj+7WNLtppXO7x+XThUYc9YJqxFK3bYC3zNEeGQRs/J7D2/Z0oNCEc+xP7766fg9nEL6H
	t28M2WgYXEYmtLTvVl06+H9P8Yrs61OiNB3ScoJYe6+MRxtui1kq
X-Google-Smtp-Source: AGHT+IGSPaTaOucH2dLQqzNmLsQTf0sq/ili5Qrkv0KGKys857Oj5ka28XQilT2mB8kbG8XY9mj4fw==
X-Received: by 2002:a05:6808:2112:b0:3f3:d5a1:a928 with SMTP id 5614622812f47-3f4247c1ef4mr590369b6e.32.1740082823499;
        Thu, 20 Feb 2025 12:20:23 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f41a6fc550sm504082b6e.39.2025.02.20.12.20.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 12:20:22 -0800 (PST)
Message-ID: <13c5e420-a3ca-468b-8810-3528b24d8664@baylibre.com>
Date: Thu, 20 Feb 2025 14:20:20 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/14] iio: backend: add support for number of lanes
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220135429.8615-1-antoniu.miclaus@analog.com>
 <20250220135429.8615-6-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250220135429.8615-6-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/20/25 7:54 AM, Antoniu Miclaus wrote:
> Add iio backend support for number of lanes to be enabled.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
This is why I was pushing for a similar function to be an iio_backend
function in [1]. :-)

[1]: https://lore.kernel.org/linux-iio/94efa413-5fa9-4014-86c2-331442e9d42e@baylibre.com/

Not sure if that changes what we want to do here, but just pointing it
out as a similar case to help us decide what the most useful generic
function would be for this.



