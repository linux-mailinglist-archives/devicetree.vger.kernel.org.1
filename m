Return-Path: <devicetree+bounces-146124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC9FA3388E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 08:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91A243A06C8
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 07:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945A7207E17;
	Thu, 13 Feb 2025 07:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="um1hTdoP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA9020764A
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 07:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739430660; cv=none; b=OX4yUqRGfWDlAEEdkXtFIzLI4JocZgRLDCSu/pismPRR5/D6/TtcsJR4ooq1iaUj9rPFZox2XPJeQjZa9Fnsj27IGhl6t/uqlHdSEsYoH09AmvyUONCZm2KRl0gs6KAp50E3ciwIcXzGt4tBb322CyzAvyxacJ2uyby+jshJwzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739430660; c=relaxed/simple;
	bh=1JzLXGxL0QmiLI5Q7L2Av98JRC5DJw0hUHJfC6Qg2Bw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ZEzSZ3JuYsDtuIdXkP16WtUWm4B8IpN2JvJOSEJySVz44Lfm8qzKJD6uMOVlOTMG8cbz0iTMUKq1r3187cFXzeljhM+cFtvpZXHd3tPsthyW9cUx0uYGRG8idP/9h1ptKqYxNwXsUBcZUV5L3JxX1cNhRRilVHZErhAuzPmKnUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=um1hTdoP; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ab7430e27b2so114160766b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739430657; x=1740035457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fM8nRNJfG7rUd02T8erTfV5HvN4Rbdhc15q2XjlMewU=;
        b=um1hTdoPBVMHAK/ZiGthqfaEd0BOvHcMehdhyGzNN+ELhG8nX3Q+kt3fSJ+4jMuN1W
         14UgncLJRs71GaPq/kRoZ9MFvParFrkUvKnRC3aa9ZRDiOYGsSJZZiKYqlqaWE81sF+I
         Frfj2avDxONZP9QTmKgXCAND2AAJQiTLtreLza8ti+GeLfHuX24jPqEHFWeKCoekWnE1
         awRAfC5weqdh+orzdee16f3p9X8Bfc9uIpd0ia46JMAa2aRishrNo4tx3T8nOoBc63ln
         oBPnrxrAOcKAlxlaSraoHGr6d+pSY5Ab4E4GJ+NL1HXvy7chia+tqOPQP9Uy2gUn9JiT
         jIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739430657; x=1740035457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fM8nRNJfG7rUd02T8erTfV5HvN4Rbdhc15q2XjlMewU=;
        b=CLz/VTPAE8tavaBM1PzwnDWbKEoqbHA5GVxR3o5TTHXJevyb15qKBIBDn11nL7A5w8
         WkD3UU8xf/bnw3k0oejBEE5fZi7uxczAt7o5t5X2YH1pibr2lavtNcg90G0sT8t5u5r1
         WUw6XQsMUrpjB/d9CpXNKltlKrcmELrH5BkdeanJRt7xKuJ6fB87VFg/raaFP2ulywpw
         8Nd8b4JqpUfIb2RUHUGjWCjBdRSUZ9Ok/F7XtO2knHebrsqSnX4heFEtNibIP58aUaHO
         +V67ukmsP8NuRN6f5k1kJUSy1S2yye4BCW3lgdvm7LVckviy3dqgdd7pFCIxo5gGALQd
         6T8A==
X-Forwarded-Encrypted: i=1; AJvYcCUi5Gks0c6CVj1IA0CcK/C0wijuMpJZtK99WYN345GPgQnFtZoufyrqEDItxb9XfpQEZXbIGjVNdNGi@vger.kernel.org
X-Gm-Message-State: AOJu0YxJOJcC+LCoc+hXnB2l8YkLd8mN5IltbcdtQDBVi8BocTYvkc8D
	D2K/lI+0udjxglXstAHey+YyMvcSPznPNScCsrzmA30iZbN71dESGfkb3+M+Pto=
X-Gm-Gg: ASbGncul96frJj9GLE+DZH3qKOx+8R9dA/NGATcFCgrJaScVXvQRr11SJgZ+5KxkWy5
	fZDVpmRKTqgS5saljwdDWoC06uozkQ8PgkJrcsK6w1vRW314U6Ps2t5dIMLTG4yplGrHAJdSEBA
	BHVT+/Bch8vWK+C1DkbBlMD1GRwi/Sy/zLLYwmEbMVZtFBMMU3t9DSYHaRzZb/YC0/LBqyqh06m
	psbhkcYXdFKOePVTp6Of3oOGZf0PASj/7fOIRzwKPEnhA28sXbF1xRMQdwcHQ8gaS5Z47paE2Yy
	O756RKhPs0i8p5/eZpL1CJch
X-Google-Smtp-Source: AGHT+IHtrPRE46nXKkFCt4DHjiN8hmdANTLc5iX661OAdX/npX13cIu7Ky0HIkuVU57aNRMuRQab9w==
X-Received: by 2002:a17:907:3d93:b0:ab7:8520:e953 with SMTP id a640c23a62f3a-ab7f34d4f0dmr512307166b.55.1739430657085;
        Wed, 12 Feb 2025 23:10:57 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1d349esm659748a12.33.2025.02.12.23.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 23:10:56 -0800 (PST)
Message-ID: <feefbcf2-e441-4cd1-a3de-40bfd4d7197a@linaro.org>
Date: Thu, 13 Feb 2025 07:10:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] spi: s3c64xx: add support exynos990-spi to new
 port config data
To: Denzeel Oliva <wachiturroxd150@gmail.com>, andi.shyti@kernel.org,
 broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alim.akhtar@samsung.com, peter.griffin@linaro.org,
 andre.draszik@linaro.org, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250212191241.280-1-wachiturroxd150@gmail.com>
 <20250212191241.280-3-wachiturroxd150@gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250212191241.280-3-wachiturroxd150@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/12/25 7:12 PM, Denzeel Oliva wrote:
> +static const struct s3c64xx_spi_port_config exynos990_spi_port_config = {
> +	/* fifo-depth must be specified in the device tree. */
> +	.fifo_depth	= 0,

have you tried testing without specifying the fifo_depth in DT?

You'll probably hit a divide by zero at:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/spi/spi-s3c64xx.c#n664

I assume the controller can work with 0 sized FIFO depth, and if so, the
driver has to be updated to allow 0 sized FIFOs.

btw, how did you test the set?

