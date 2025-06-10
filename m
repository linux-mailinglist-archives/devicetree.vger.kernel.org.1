Return-Path: <devicetree+bounces-184206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A42AD33D4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA0891884448
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E0928C5AB;
	Tue, 10 Jun 2025 10:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HShSdBfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF0527FD67
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749552080; cv=none; b=s2Ax6wbHtWX0j7wED78bT/ajMsE8Iyu1oygUjNn7MlsxJ665kjhIL9ww8xOZ9W2ceqr/i7axjniDYzN/gOYg27OQBWws+AYLM+3A37/hDJegYmhQOra3AM6I2M+mcxpXElva3nUD3f2FbiyP8UQRtouFNGcc9KzzB3445HTEUuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749552080; c=relaxed/simple;
	bh=iRnkwzf1Du9u4hsnolJebcEGre0EDCL3b2z2u3aiNi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K3fiTvxR09NOUsB5wS4GBsucyCBkZfJthIA6IzpbLZHuPaZttuIKRl3GYL2gPcCmJfJzcS2CRkCoc43HV+LbKui4EPypw7NvMJUy73VvG5L5t2yC4khW92CElDc6g/Za+N6GfVW1lZ08eVf40DrhV4MXMV81UqLU8bRkaShfQj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HShSdBfe; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a4f64cdc2dso408407f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749552077; x=1750156877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8UA2NbG9EDHv0P/Q9qiZE/8VacAymYnIGkHGmZES4YA=;
        b=HShSdBfezlq3lgKtSeu5iWcr0hDRwsFqZC8U67rQCd4W5gQsd8CSb66lPHrrXWpE/G
         4aFbFBDHimGpgyTpCi4KpVWBaG+aUez6MpWPzvc9pohicZqnEqgziP3o9W3foFv954pm
         2mm3qh8Lx6gHoxtUuaH1xmajG1xyuqVDBo3W1y8Xse4cdAPKOsZSBgGdp8r+Zd4mpL7u
         CCvzkJqvct+9bdkQ3ouffo0Hw2wciYzfwq/CMd+MnkkbH93RiuWPaUkMcaUF6LQG07wR
         4xrvm2HXJgC4KDUj3j1L8iMZH06OIzaXgJT2ohee9z0KTsbKGax0NRyWvXYaPuLPpFpv
         hjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749552077; x=1750156877;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UA2NbG9EDHv0P/Q9qiZE/8VacAymYnIGkHGmZES4YA=;
        b=KW5CDUIsKYB6G92CnQCD993RA3506ArO5Ijafy0KhygDjAB9DtSvLm9Ut7kcFdKOWz
         TRZF3tFoijJSPqi4HhsM9Q1EJHoUq9ZwkMW7yiEjyI+jq67jBMfYr46LcmfQk95cgE0f
         cJk5xErOZ8c2Sn3gxGJrITI8BETMPXxWROsNf8CwFtpqSgH3S2TCC5SmbbB1WKY4wa3M
         2IqiwEveVX46RGrNvZ7DLia3Kr66vvN346dp35rKjUkwEzricOU6HURbToPRxugeqy2q
         XoeXYwlJrxvznanVDVJtEMau2UfwWyu8eDmOvyWk3HostRO/2m50CRP37fpWs5jYXEdb
         eoLA==
X-Gm-Message-State: AOJu0Yw5IecCmNbaSsq0Z8/Kav1Hh5fCbPzy3PJVpZJ+2TtqWArVeDCz
	xRsrlVy3nYn/xwIqTRJ4pq9KzYrZOP8K9fjXaJAky+KyOaoFkDa3MyA1JDCL5cm1vaw=
X-Gm-Gg: ASbGncsq0tjzs7yWHMwkr+vQkcHHgLEbqui3g5zPs1FoJlvk0i4A53l1CqOY0UvOrhg
	gt9oIxqqZwrgHfJ0mwawLQoJ+JasBnjV/WjYKXyUPdNzZVQ4VM7tGl2rUz/4iHlzsJC26UKR2Vz
	97qK9p+VWtmc9/dRIg1Ss/Z49FtlrcyvsW5K08Z4MZNUcAdVQwA5mOoZYikpQR5yoUW2ZvCfCzn
	FcoUSUdNAm3S7BZg6Rz7ZrQzbE9bHjHmZx7M3INjHHyu1VxFmuIDoIXwLgIThA1NQuNF4fKf/wd
	xaYSd3375bq2xe9qdemLeSPHSYyrh+Hq/U8cp1S8ty3IO1EdmTRKrQuTrHOZEiGb8KtQ3GfO/f3
	eY+ZgIA==
X-Google-Smtp-Source: AGHT+IEGCivet49k7rVdlJ7V32CbEABQFZ7E3cMUXBQCR0ZGtvjDNbqtfiv1SNwlkPOU9wsg8V7TyA==
X-Received: by 2002:a05:6000:288e:b0:3a5:2dae:970f with SMTP id ffacd0b85a97d-3a5331a1855mr4833633f8f.13.1749552077001;
        Tue, 10 Jun 2025 03:41:17 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45307c78489sm87698215e9.4.2025.06.10.03.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 03:41:16 -0700 (PDT)
Message-ID: <99f846c6-4041-4d68-b2f7-c686aa8c2bca@linaro.org>
Date: Tue, 10 Jun 2025 12:41:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: trivial: Add tps53685 support
To: Chiang Brian <chiang.brian@inventec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250610102556.236300-1-chiang.brian@inventec.com>
 <20250610102556.236300-2-chiang.brian@inventec.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250610102556.236300-2-chiang.brian@inventec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/06/2025 12:25, Chiang Brian wrote:
> Add device type support for tps53685
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
> ---
> v8 -> v9:
> - No code changed, correct the order of Acked-by tag
> - Link to v8: https://lore.kernel.org/all/20250602042454.184643-2-chiang.brian@inventec.com/
Stop sending this to me 6 or more times. Every version you send multiple
times, that's way too much.

Best regards,
Krzysztof

