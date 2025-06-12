Return-Path: <devicetree+bounces-185153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82429AD699A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 619D53AC11D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907F121CA1F;
	Thu, 12 Jun 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="RLCBQkHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A2820FA86
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714773; cv=none; b=KS+qrWkyLErEHt87WFup2Po5fYs9ZzdiVFnRspaCiERoRFuiXk0pajw2Zzg1NIAsgrPXuzx3Nsr9j8VKIDq459htr9QOV5SS26oO0wu+32WKxtnepbig7fhfTZ6D9zf4Mb+HkeRknsNwNq3MiDaYcudrPQ3oZEhZKRdM9O9WUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714773; c=relaxed/simple;
	bh=yvHjrzaORTg7HRp2cirzIboSTrREVTHWqhVe9uNJ0K8=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=FP+LA2GHVogDJvlpFpqPzYMcEvWkoa2prdZjBTwvkjbzdS0FxAzI2QLaEM3h+jHe6PpToyiEHs2xKSjCkiliYoltdmlNTxd7NnPNjyabGyM2lQ/Zy+BKOYbMifHQvcvEhq15Ofw8E4027Q9ByP9j7lWhf0naZ/36c9PFXpzrBmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=RLCBQkHZ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-23649faf69fso6268915ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1749714771; x=1750319571; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pazdt4UO8fSmAZ8X2Dzo6ZIiUJV5NstAi6JvpdaZT9Y=;
        b=RLCBQkHZ8jP6HvGGhegFGnGD6by24ZM1+EnYt0SuYuHMCkZI3EuB1sMwcNgdaot22V
         Hbz5sqFg44fuByeyE92k8gzzVa72IUP91Jr00FCK9B4Oi024nkPtvDeMuqRY5cH3P60E
         q5eNouixjCDEvRUwGOIEvPy5dHPi8NpUM5ZTn3OEOXYb3INJeDyxOFx++LBWijhazTQ0
         eo9lXLzU8bFfTEwgu4EDXTEex7/US3L2dk/Yc1JD4F9Zq9Z5XcKPG1ycSWpEkDR4RWx6
         awFXekjauMl6Trhe3TGNEwOY7nDS9BtM0NNw8tnOayuQk1L2nd38CFcpS6zsk4iBFr7D
         7y/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714771; x=1750319571;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pazdt4UO8fSmAZ8X2Dzo6ZIiUJV5NstAi6JvpdaZT9Y=;
        b=S9GGsdkLwyORm669YiT+CXJvfGFYvwIgnaTWzxxZfAR0IqYejNlJmK/YjmBz2TOV6F
         udV8b48st2YgqyRf3Bp24JCJ7QaM/EhHuiIHq8imybjwrE8/FQbvycG6y7xHWEdM20Lx
         7b5oqdTXyuY+moxbLbpNTEzKcFRdxQ4ASHmhIcgmLFvmogchFdqfG9Hp+aGOVEHj5wZ3
         G9WYjU27BV4bQ1QROTjeEtOOBWs/FN3zteptnO7vLmaQqq7dICgBPOzhEzNgJhIgwCjN
         6MT6ctdBNYNNG4hlbYDuTpY98tJFzF5kA0hWcMZ4PbewQp9y/InLC/prCXWrhfPEyrU3
         oAxg==
X-Forwarded-Encrypted: i=1; AJvYcCWKNfi2qj3z8Q0zH4WjnPrAzJR/6IK3h3kEgHxocgs2QHefLpAwGsLGmdAfo/l9m+eBBU04Uo6iQ3e0@vger.kernel.org
X-Gm-Message-State: AOJu0YztYo3rFCxSNW2YE13LpSzXTSTfIDEsvFZeFjuBvRtrR7r/C/c2
	y4/7z2aRC147eUOkQVT84tgNccIUjg0K+dTGUMLLRfQ8uJvLtklhejA3HB4GpXMVHw==
X-Gm-Gg: ASbGnctricTng7K6Io7bwgnexeFAPvnYvE4IcrXJ4uHFszPOqcW091Nm8kQzgJ/+Ime
	kVv10HmuzFmJW8sKpns/8DKGSF1H8tZyYnHaKnZ7pXAMx1Yf21fefr8yFq5hIkNIeNV4+fGy5ot
	zldtavxUobKS8jYWE0iMP9PDJbA3DK0bcNB50YcegJex9ZRF69s0wQsdLiwGPCgJehHfDHcUKhG
	hwHRjFhyqHSSWWtnecktifYpjnevl7MnqhWfHWBeDqzouVSFkDLxaAUXVElGaeHZdIcXNlFMcxz
	/UFVIWgXiBma1fFE9k9kKt4SNjN/UTNtfkTnxafmOe/ToXi1pfdcYN3klooHA06WrS2bO36oK97
	YmOD6rfrfmhJDEVzLQRJcvcBFQW3N8QK/TRTv
X-Google-Smtp-Source: AGHT+IH+iM21neRDkS3iLHmw85CSGogpx1dZt1CBDEgP7B9uVu0yQx7SMX5oOR3fyeuigU6VN7u09A==
X-Received: by 2002:a17:902:d552:b0:234:b41e:37a4 with SMTP id d9443c01a7336-2364d62da2emr25581555ad.6.1749714771066;
        Thu, 12 Jun 2025 00:52:51 -0700 (PDT)
Received: from ?IPV6:2401:4900:1c80:1e2f:fba8:7ac:6a76:1eca? ([2401:4900:1c80:1e2f:fba8:7ac:6a76:1eca])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e719958sm7780205ad.226.2025.06.12.00.52.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 00:52:50 -0700 (PDT)
Message-ID: <525877c8-6c64-45b3-b4aa-a52768e59b86@beagleboard.org>
Date: Thu, 12 Jun 2025 13:22:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: herve.codina@bootlin.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 luca.ceresoli@bootlin.com, robh@kernel.org, thomas.petazzoni@bootlin.com,
 wsa+renesas@sang-engineering.com
References: <20250205173918.600037-1-herve.codina@bootlin.com>
Subject: Re: [RFC PATCH 0/3] i2c: Introduce i2c bus extensions
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250205173918.600037-1-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I have tested this patch series for use with pocketbeagle 2 connector 
driver [0]. To get a better idea how it looks in real devicetree, see 
the base tree [1] and the overlay [2]. Since it also used gpio and pwm 
nexus nodes, along with providing pinmux for pins, it can provide a 
better picture of how the different pieces (export-symbols, nexus nodes, 
etc) look when combined.


I also have a question for Herve. Do you already have any working 
patches for similar extension for SPI and UART in some private tree?


[0]: https://github.com/Ayush1325/linux/tree/beagle-cape-v1

[1]: 
https://github.com/Ayush1325/BeagleBoard-DeviceTrees/commit/bf9d981ebf5f1a5704df1e7deba2188c70eb5d6f

[2]: 
https://github.com/Ayush1325/linux/commit/4ebc8467c98b5df3c30935e1d3736f9a64c1b08d


Tested-by: Ayush Singh <ayush@beagleboard.org>


