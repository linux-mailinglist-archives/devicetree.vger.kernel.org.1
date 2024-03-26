Return-Path: <devicetree+bounces-53410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF90C88C2A1
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 13:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 956A51C29878
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0786D1CC;
	Tue, 26 Mar 2024 12:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lxkU/d8N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F9D5A0FA
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 12:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711457594; cv=none; b=YzgvBrfCIcBgE9nmw4jQuZTJF2GlUL25nlpmHF+20ShNAvpGFBrCKgPvfqC0N6Yrp83UY177WezbhlqTSsaKEPJFURy+AKNwLPuvwPz/xZ4yGaL+OoQgDc8oGdH/SLMrMvy9JZOJrF3Pnl5CM9Ok4KzreSF7b+sTdVIasnRDyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711457594; c=relaxed/simple;
	bh=D0gf/IIiOdRrTzQPmEqs6dw22YmfE35wanB04bQzG/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FPl2uXjRu6U5K0Fvk/tp+xw+ouM0NmL88jYilG7111XngcAayL9xYnmTpIjUas22RR0H1xh09Y84e+XKDgzefNxok9uBOUbYxvMnV3A1hbqGlx7CWr36t/Yd/ELd6V9S3mju/petYiQEAaEUzIQkKAeSmPuMFxTpzfhjYMTUN4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lxkU/d8N; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56c1922096cso2196897a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 05:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711457591; x=1712062391; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jqY7dtezuqLgE8Dj4vNtSyeNX5nIll55/bWPSb26Glw=;
        b=lxkU/d8NRCqdkLY5I0XLEzx/NmONxDnR5YYdgFYHpZUNqvNm9YXL5SvOzUvAuDESU4
         vudo5j7/uRajqDH4AW0yFmcPxeuc0Td0RN1BsHkVlE3eZm6uLBYal0Ym5sUM5ogygQ9M
         q2jhJaVYgx0DNxg0BdH3WK8Mgj4qln7sfSbRnAa6KRFUXIoKSNxnfeogMMPDW8O0Ipcg
         114gaLM9QSOUanqxZVaumgBn7UcqoWmUJh52H1Z+Hf0XrHwNaGadzLMooLM0sXh5a9fi
         0wrwM60l1HnH4EFC/vQlOYY60ovq6aL/cIYzj5tkibagxLu6Q0q87udsI7Io3fUYJpbG
         j7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711457591; x=1712062391;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqY7dtezuqLgE8Dj4vNtSyeNX5nIll55/bWPSb26Glw=;
        b=CDJpaWuGjjEnMLrG28r81Df+vfCOJqespKbnq3ZUH7VI0d2KysVEXo0eFiQHJGI89J
         BJ8k/qfRHSx+vU4MRQjQidkm2Jt+L3HJ6juoCj7sFeqJVu41e7Mx04VI+rYmmwhdoX6X
         wABekZBhobf0P476U+jMMRwtgMcc1NtE6TyZdyHcbC7N9l9SU0qw1f6sVWhpjOKi0zGl
         1JmNpNzB/DjZBtaWIEIkEGcOzHzlABSMK+uf/b5KFfvgHo0bWNpTiGEBki02vSS8gH9h
         dzbjNrExcXCcU89sz1J5IlcNFJT2c7cWKpxwSb4G01NOle91yPTW4boDYNy9RbMaS3zV
         BTpA==
X-Forwarded-Encrypted: i=1; AJvYcCUeyhgkDh082TlfmBB+LrulqEL7U7OYfzEh524Tp58GeozWpckwDhaUtr15k3Du4iGYZMqXen+BcrTKrfd/SQqGD4vXghHaw+eTHQ==
X-Gm-Message-State: AOJu0YyZafbkcbrEsdiD+QxX7B+pBA2YnH8qqM+7Kh9HAUVDslKm0uvM
	o0u+oJgxWEzIuugzUkoLPJrx2GtSCrGQDd6BYPDtJy+6TEGNyxmgejHNnMBmun4=
X-Google-Smtp-Source: AGHT+IHvGrE9FCVBLaz0A22qY2bJudIEne42Hu5s+1uin/aDnnu0wMnBjHUI5mUImBPH6muq7dWg8g==
X-Received: by 2002:a17:907:7ea7:b0:a47:31c8:81f5 with SMTP id qb39-20020a1709077ea700b00a4731c881f5mr1049303ejc.47.1711457591158;
        Tue, 26 Mar 2024 05:53:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id q11-20020a17090622cb00b00a4655513f0bsm4171767eja.88.2024.03.26.05.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 05:53:10 -0700 (PDT)
Message-ID: <727c3a30-d704-4d28-af40-a01e28ca042e@linaro.org>
Date: Tue, 26 Mar 2024 13:53:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] virt: vmgenid: add support for devicetree bindings
To: kernel test robot <lkp@intel.com>, Sudan Landge <sudanl@amazon.com>,
 tytso@mit.edu, Jason@zx2c4.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 sathyanarayanan.kuppuswamy@linux.intel.com, thomas.lendacky@amd.com,
 dan.j.williams@intel.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, graf@amazon.de, dwmw@amazon.co.uk,
 bchalios@amazon.es, xmarcalx@amazon.co.uk
References: <20240325195306.13133-5-sudanl@amazon.com>
 <202403262047.aZVjmDY5-lkp@intel.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <202403262047.aZVjmDY5-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 13:48, kernel test robot wrote:
> Hi Sudan,
> 
> kernel test robot noticed the following build errors:

...

>    134		ret = setup_vmgenid_state(state, remapped_ptr);
>    135		if (ret)
>    136			goto out;
>    137	
>    138		state->irq = platform_get_irq(pdev, 0);
>    139		if (state->irq < 0) {
>    140			ret = state->irq;
>    141			goto out;
>    142		}
>    143		pdev->dev.driver_data = state;
>    144	
>    145		ret =  devm_request_irq(&pdev->dev, state->irq,
>    146					vmgenid_of_irq_handler,
>    147					IRQF_SHARED, "vmgenid", &pdev->dev);
>    148		if (ret)
>    149			pdev->dev.driver_data = NULL;
>    150	
>    151	out:
>    152		return ret;
>    153	#else
>  > 154		(void)dev;

So this code was not even built...

Best regards,
Krzysztof


