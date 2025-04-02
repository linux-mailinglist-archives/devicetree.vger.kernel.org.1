Return-Path: <devicetree+bounces-162497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3DA78987
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 10:11:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 674BB16EC23
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 08:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF8B23373E;
	Wed,  2 Apr 2025 08:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CQGgFccE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB77233720
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 08:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743581495; cv=none; b=PhlCzEsbmBlGJ7YjXV0BSAREUhBJEpVSeRkc5tYLbZ/qNOJ7bF5BlZQ4cWmLrYHyK2+BBGO58iLGKpg8lQOnRvJp24evddCHocoVwlC+mFjhA/giuu9Vf0UgYX8ni452Nb65da4JCXfQ42Z6rNL5hYAx+ivjiO+HUoU+53xhH3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743581495; c=relaxed/simple;
	bh=0cjdRtAyc7Px1cY6aHSxrqx02qbVdI+k/2UMUqPwMk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sm71n+OOiYSgzheWF6WLW5HjZPHAJkknStaEoy3kVeo4a0b0awRzP1etyKDKqu6YLv5/hPrApnAT40iI907brf5Tl4v0EPW9ROxtefeVSidVllwqUG81SAMB2CzgOgq8pJf5fXJvZnqO641EvMgGow74x/sfVeV8wRHZlIzjfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CQGgFccE; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso61145335e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 01:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743581492; x=1744186292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dWB4iyOPjGa3JvhHFf0OgRFJSrqP/oOM2ls8icvbkUg=;
        b=CQGgFccEALP9ATYuS6WWClLU+UeHbfI0FthAwXU8cbcQBFktL1D0xJ0XHkOmy2rSaK
         gt8he5G87QlBoyTp/r+FL9A2m+bAihWL2heWRrygtkl9Ce4aEpHKaxLgGronwissRVGN
         9QqZSmScWW0YtQZOeqw0wlKsBZLltx1vqTQiva4VG7x/8WQgJrlbS6tHRcv0bhIxqf8U
         aByF/Yw9TXVU269LzVTeDFn23YMcH7VdBbR0HTXbmlBvLkOD5cXQdYcwVd0zVmwN8F53
         WcbH5+RUvH++fZhfU/luv7KRhfg2Dqof3T43OwCBZ5COjSq7nlGrhi12Bpc7gFA5ij+/
         Kc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743581492; x=1744186292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dWB4iyOPjGa3JvhHFf0OgRFJSrqP/oOM2ls8icvbkUg=;
        b=dOVb+diUh0MMqXT7m4jR2uwxjHHusYum29bWMAsIv/Zlc2zsCV4sTOsEWprPKd2OVq
         X6v7FiCTUEvvL3nLKFWFrBZzcjP24eaJjeYqJqrD3J8vfpqkc8LVNLkvL4U6f2gYexB1
         Ek9sBmjDLl1R/QZ2ob1L9lZi5FU9ukC1kBG+0KpUMPTJfdzG8rNxnPbAa6ZjljcbwdFE
         2PLAolzQ4UCG5HmMqbEHVEZ0GbEJQPL3CqEaJlKPk2P7TLXfvj4JaXlhBNcL99+RgYma
         su04G8gLOS2Q1DDl7gxcdZOPoZcjKOByPjSNz9jqFqHwBTI/Z9qXYVJs0PvSpXvj2vHP
         I2Tw==
X-Forwarded-Encrypted: i=1; AJvYcCWYo4YKWhupAijj3N9WxHTbtcf0oBHPHGBZD2bcetWSGqftJQ0WDZWn1yzsltBYskC4aG2LsJlLf5k+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrgv6KVK1QSAQKelIKnZjWdy3O7dFQ+d5A6ung/oXw8uRt/efg
	5va7UH2qKPkUlRQY1Ku7GrHgM6nPEneKO354tkSS8ZdsGWMr4nIczR0haomKNrg=
X-Gm-Gg: ASbGncvY6dfOIX53Tr4oOhvsgZYfVssPOtU7SAOEUd3nYeM7sGRRji1RQg15wmRJbTf
	8UQPVvp6fiDu7eSmGP2KlYUTwBRvkrawAFQVNlkFuYK/5nORbNGI7nZ1FB0pw7ohcdxkOmU4Ldd
	Pue8EqrO3nhb61a0pRbQTZ7jpgU1M03o8zOKOjxTKt184SqdCloYWGbh9Ua/l2Zr4HfIn9pNsy3
	kXoq6uPl4kjRAYvdpM8WmJ9Gc70+PGqQDtpi801gY0k5jpsSUOaSSC6mELCUWKduPImxS70IiyN
	rH8KzZ1PhiBrJ8neptuNvPAwqEXTDX04BImFGv7kiyntmiY0oEY1vMi4o6L9qP0=
X-Google-Smtp-Source: AGHT+IGBlatt9XRxf1VEZzEp39rZq64LmfgcstZnSIvck/QvLxH5SbIITWq2cnYOJybXJkyGikBbpw==
X-Received: by 2002:a05:600c:8411:b0:43c:fcbc:968c with SMTP id 5b1f17b1804b1-43eb3af4581mr16487215e9.7.1743581491995;
        Wed, 02 Apr 2025 01:11:31 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39c0b79e0afsm16439234f8f.65.2025.04.02.01.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 01:11:31 -0700 (PDT)
Message-ID: <e1ce7e09-0398-41e5-ace8-50b9547622d1@linaro.org>
Date: Wed, 2 Apr 2025 09:11:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] mux: gpio: add optional regulator support
To: Mark Brown <broonie@kernel.org>
Cc: peda@axentia.se, andersson@kernel.org, krzk+dt@kernel.org,
 ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@oss.qualcomm.com,
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 johan+linaro@kernel.org, Christopher Obbard <christopher.obbard@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
 <20250327100633.11530-3-srinivas.kandagatla@linaro.org>
 <e8bf5dca-16b1-4bcf-b3ab-3367f29264db@sirena.org.uk>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <e8bf5dca-16b1-4bcf-b3ab-3367f29264db@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 01/04/2025 11:16, Mark Brown wrote:
> On Thu, Mar 27, 2025 at 10:06:29AM +0000, srinivas.kandagatla@linaro.org wrote:
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> Some of the external muxes needs powering up using a regulator.
>> This is the case with Lenovo T14s laptop which has a external audio mux
>> to handle US/EURO headsets.
> 
> The ASoC bits of this series look fine, what's the plan with the mux
> bits?  It looks like the two parts can just get merged independently.
ASoC bits and codec bindings can go independently, there is no compile 
time dependency.

--srini

