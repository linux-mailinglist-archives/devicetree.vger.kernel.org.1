Return-Path: <devicetree+bounces-146559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16807A356D8
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 07:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1C031631E9
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 06:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 076701FC0F3;
	Fri, 14 Feb 2025 06:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Na+XqpLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDC11DDC2A
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 06:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739513658; cv=none; b=tV38QEgHs+dFy4ART9mEnqMciJWeXXIegp0o9EwaE6R/MQXPRIfhGAe40IuHyLs8MuVcDTnXgWO9J6bsAMz6Bx8QeVmkpNW57bKyk+FzY6EtnavFdvTwOx/1LknI1McRWZ/rn67d+pt1N33lbWOOe23p7j8PvwbWdFFaUSN+OzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739513658; c=relaxed/simple;
	bh=E+zHukzTxoUAqQh1pniz8wv7WSmBiWd4YYjBi2Wtb9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y61RoRGKBDcZaZYirqYh2FoL7sZncvvFgFUGRC2Zwl5p7CbbzNzZzqJeFbvIyJ3i999EzpfYagY5mmAKbB69fKeOhB+gA8F93VXZbEcvR4XxAU37qEIuEzrcr40BDqJrLdD5jyV6I4zp/qNW8MuEHz6XZoaiTjMUL6mOuHlw9QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Na+XqpLG; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab7430e27b2so316748766b.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 22:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739513655; x=1740118455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+zHukzTxoUAqQh1pniz8wv7WSmBiWd4YYjBi2Wtb9c=;
        b=Na+XqpLGWcI+DhFBWBNj8ihX3QXlbhQ7PWgqxkpSpXNDqQ7cyzcARnDBQ6OeTzqT8q
         Qo6IAHxgXcX4muL+yCs3x9kmHzqf+PFkIoLYesZOJrZQfYPCSMBlzHDLzFTL2ujvkWxB
         aMGsBAlWvxUr3PSoQDxXgGrgZCYSPVLWLFM1WTptbZNj2Mu1ELYD8+ZVzoAsrArbHmJe
         LPLD6Cwyre0y5aTZfmQZOrnC6Xtl575jZgAXw1u2imNWFV/CBOXFnDBP/zSkGFquCI1P
         jFh0Qw2QPFAEsBd/CWxFKITxtGy4Ga8K7/4EuTjdn0WD3mVOXNvmiSVNhOQDoZVgCu62
         fDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739513655; x=1740118455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+zHukzTxoUAqQh1pniz8wv7WSmBiWd4YYjBi2Wtb9c=;
        b=seg4S53vfzWjixXCLeRZMXp6bnXUk+zdm2/EFWuegWVMGid4HPwUDGzrKdqqwFqHMT
         or4Rdj7tOb/jGRBYHWtonE3+P8vPiFDEi619pSyP6h0sG+GzGzFF3MfMGGrJrPn3kh1P
         m6r70YHt8HZ/PVo2w1G+SGbIlYodPTgmQZtiWgPBqlTa7sAQU782UUPeohKdGz/ef1jZ
         pbP/Qc8yvLYu0Q6NWzQbl8nBidl1cOFkf5ZxXnNUBukuuohZN010fxAgoBWqpnPy3JaI
         bcLGvJj8EotZCl09tpXNp+KdFNFCFr63osiN81ZCnLc8KUVsVJxROwuOueOnzRyXI5v5
         1ayw==
X-Forwarded-Encrypted: i=1; AJvYcCVq/S7NP6XlEw8Lxr3XS2Bzh6oJE6egbR1B1UiG47a/w2bYl9nRxFAVT0Fa4Xu6B+d2DKUsG4IyaxB8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfa+APIqaJOluQoBL7aFrBW8d5r0v+5F9qZehKfDQ3bxIN8F3K
	Un7jgbKZxCv1zGfIRec4q6zNj23TL3++tX1/mjEhvePKfp4LzQoUiZMjWMq1L8E=
X-Gm-Gg: ASbGnct2wsZIxJ8UtDsv470lXAIuju6PK5nSs/1ctgFDnVyOzdPYqU9rzvpNd9YzT6R
	GQRvTaEIW7EnSIurkOa2xsA5k2y/ejEFeIxEYDgJUvWzFmPO/ISDxRUz+Eq3+5I9AQV6L7EFciX
	E0QFJaGRTJl4yLMg91dOJQUJgqK9ZbutzthbdtvmgkeU7qG9NsxgOMx/Eu08R+hhmGXOXNodEHe
	V6KrOQBvtGrqt49YwjBcB3ynu/3r65j/DrZNGNvx7A7hEpF6bfnOQ9dqCJqGo9QvCOhI6JxNwnO
	2374x2j80Vjs6TwNaL+MZvly
X-Google-Smtp-Source: AGHT+IEmV/spFwDvPJBmBni+qOvQYaJLBVXLCJxYkFEXGyz6aAo+8zl5YqR1HK+HjXkmRorI/a/vqw==
X-Received: by 2002:a17:907:724c:b0:ab7:d10b:e1de with SMTP id a640c23a62f3a-ab7f339c868mr973175866b.13.1739513655453;
        Thu, 13 Feb 2025 22:14:15 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532580c5sm276049766b.56.2025.02.13.22.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 22:14:14 -0800 (PST)
Message-ID: <f4967c68-d79d-4ba5-ad0c-5526e7e1ccec@linaro.org>
Date: Fri, 14 Feb 2025 06:14:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] spi: s3c64xx: add support for
 samsung,exynos990-spi
To: Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: alim.akhtar@samsung.com, andi.shyti@kernel.org, andre.draszik@linaro.org,
 broonie@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-spi@vger.kernel.org, peter.griffin@linaro.org, robh@kernel.org
References: <20250212191241.280-1-wachiturroxd150@gmail.com>
 <bad7b5b6-c61b-4e93-9415-6476976c8e81@linaro.org>
 <Z65MYSNuDdCFNlv6@droid-r8s>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <Z65MYSNuDdCFNlv6@droid-r8s>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/13/25 7:47 PM, Denzeel Oliva wrote:
> Yes, Exynos990 has SPI nodes with 256-byte FIFOs, and you can see this in
> the downstream kernel. Here are some relevant references:

thanks for the references!

