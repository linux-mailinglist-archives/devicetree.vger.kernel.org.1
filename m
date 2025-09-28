Return-Path: <devicetree+bounces-222260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3D6BA7986
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 01:56:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54DC83B0EE9
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 23:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B4421C179;
	Sun, 28 Sep 2025 23:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YA3Mtz9l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B81D5ADE
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759103802; cv=none; b=WZPetpaAmc/zO9Th3Csr7/57aAW0Y6iVnIPP28fgMgHikPNkUZNeE/q1JFNgam7kj2hWncqm7F0rsu5aCRoWtNFq7p4dsUA1W40LYo6QOmbFf/nJqy0xK8bd2pi2A2RrEOGRGU952Hsk9Vm+7Aj0GLWUXLzrA93vRbj1MRJvAW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759103802; c=relaxed/simple;
	bh=PBXcdUFXV2smj1ifaK+LoGQlD79BEM5RKJP30S7aDQM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ggsea1X8w5LMsCmrmF1ZNddR8rsxLIVNWOOXdtOC/Yr6az4u+3eROXNeNyoljHT7X6D4KRUUwjE5c0eP8slS25js5woGLq3xcAjWAb8jaODrlxMxsvw+G6xZwvdkO42knuZyTlgrvPFMe/anGW60rix0Y+xoIfvawq3aZ63moK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YA3Mtz9l; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-58120c35d47so663875e87.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 16:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759103798; x=1759708598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DbaERkJpuwwW2s0GTceO+zDUT/u2ovHBQ/LYQFgCFf8=;
        b=YA3Mtz9lp8WYOSmFrudhBWi8vzYu4Z1BF/jVUhu+kBx8y+v6YWH5ODtzpkIcPLJTNG
         CVYAOb/wH7AYEItgHcvVx94Kpz6JzBf0IEHFIrOcncuA/JvD9ay4MQW/b6vWkF1jeZub
         3GqFgfK3wJUe7vB2laoSuAqe9R2fFq15eSOr/qZbKgiIhKY8ymK0O3VmXzxkww0sPAj2
         trVqm8xINp72QCdwIWyTyrRFmMK/2EnrtDvN9K/FqtQH+ojqbniTNHNw8uya3mhoclbF
         HCtxZJNGdy/R9pMjTtYz7WsY1DyxMLRvldAZEV5oSzfJaTzsYsl7aOiF5grroj1jLNiM
         4onQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759103798; x=1759708598;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DbaERkJpuwwW2s0GTceO+zDUT/u2ovHBQ/LYQFgCFf8=;
        b=SZjeRQ93+4OGHlZleIuaxWXLXU15PYPl1gNTCZgXIjyffth4Lb1T+rv0WBvFQ83CJ2
         EKV/lA7LtU3GoSvXoGUbEcA05al2vBR5qbZ5H0o+waiP1G6o8hulu5k32Ndd3Du5XjQI
         jAegaF3TjdSHAAtf0sCLi3f0Qa7VCzYqJZ6+6vqdH9SY9Ekhs+Ky7E0+3HHg6EbSisOd
         ujPRbswUItsmxY7udzveg9ETWuxBvwLhfDBIMKuq43dNIgsfe0UCwneCN5HzKCTvrKFz
         Ti85QAxSrEggdhwLvNGXXa7hXqnRgXZ9JBy7Jjou9MyjarBebDpHoD3HuTvsi7KCbHSb
         8WXw==
X-Forwarded-Encrypted: i=1; AJvYcCVc57mEixmxiwlEtMNGmADTUP8nYOD3iLf2lEXfquuI/0yheV6SYCxd0W7SDQpwJ2Xm3x+GJVGu7xJP@vger.kernel.org
X-Gm-Message-State: AOJu0YwF7BfElzex6Ea+hC24YdfFN6ebwoNNugkmlS+bAjvPerjU/A4L
	1LhQ8rE7ZJ2HChMPIxknEz8nLffSYpXmEyiv/YqZ3U2ORqIMhRWwlJUoEzp7nfcKBqI=
X-Gm-Gg: ASbGncv8doEGnCIKbpl/3gDMyMzBFYFlFlYmGjfzVmJycjXeqKJgozJ5P6l7rXfgSRu
	DP/d6jL9cL2PWtHU3buqArpewNaRday0z53bEHBF9napnXXNkwf29a8BBND5GZIlCwy7UliUxzH
	l5e06aMSQjnXlRTvmrSl5+nVyGJnHz8Khps1jSl4bHDUFmTg5S4exByuCths5nNwtxFYNtUFXf1
	BJrKIgHXTRAziH+bXzUq7awIwOf12SnLKxpChVt8L6Z/xJ8W+A4wucrMjIcP2PixJq+68/RMtmx
	TbO768j07GpnrsuAy1WWcKzy5xkX1RzoFm+R60FWmwoxUGZY5F+VlCjyqeCWKPmetghKywPoPOg
	6Wrp4t6x+D0WSOLy5E/rui9v2Kgoub4bdxjQpRNUINyEk3ACfOTywM/kHwSrlczMFsNlsln1HQe
	qrIQ==
X-Google-Smtp-Source: AGHT+IEniNh/lC6fMtQqG7+hId5XHSg1wAZFEUUvL+8ztnzI/asQEKfDgprBwMaVnstmR6eSJxzAxg==
X-Received: by 2002:a05:6512:230a:b0:578:f613:ed9b with SMTP id 2adb3069b0e04-582d267c1d8mr1996930e87.8.1759103798319;
        Sun, 28 Sep 2025 16:56:38 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a32217sm3610507e87.115.2025.09.28.16.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 16:56:36 -0700 (PDT)
Message-ID: <99f2de20-054f-4122-82d7-dbbb2ee32482@linaro.org>
Date: Mon, 29 Sep 2025 02:56:33 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: i2c: add Samsung S5KJN1 image sensor device
 driver
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
References: <20250928200956.1215285-1-vladimir.zapolskiy@linaro.org>
 <20250928200956.1215285-3-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250928200956.1215285-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/28/25 23:09, Vladimir Zapolskiy wrote:
> Samsung S5KJN1 is a 50MP image sensor, it produces Bayer GRBG (2x2)
> frames in RAW10 output format, the maximum supported output resolution
> is 8160x6144 at 10 frames per second rate.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

<snip>

> +
> +#if 0
> +	/* V07 */
> +	ret = cci_write(s5kjn1->regmap, CCI_REG16(0x001e), 0x0007, NULL);
> +	if (ret)
> +		goto error;
> +#endif
> +

That's an unpleasant leftover, I'll remove it in v2 since it's been
tested that this commented out setting has no noticeable effect.

-- 
Best wishes,
Vladimir

