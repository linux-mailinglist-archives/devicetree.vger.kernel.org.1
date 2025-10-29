Return-Path: <devicetree+bounces-232779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C275C1B732
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ADAED34A453
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 728DD34F49C;
	Wed, 29 Oct 2025 14:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O/WSyaxN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D65F34F498
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749392; cv=none; b=DorFZCvRIBcn5c/VAOgna6Pm5ZMW7APVUoLfJtS82tPWCkBLUf2bIF+BWks6U+mp6Zzfpfrm+3DkiuCmopPFmIv39hNuHBBwMAfMXBladxwfmJWCDI6LR5h+NI3WUwz/tnWWK2KYoXJfz24lUU+KLDvajwDGhhaQuWaGl4T/UKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749392; c=relaxed/simple;
	bh=blmtGdraqZmNef4bdInUD56F+UCEYFIYeD4u5JV9gL4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kw+3xAG7IP7r77qsMDeLCUvxzv4yT7QjOqhR8u707xMCZcq7JylBXa8ePloxhVU1LTBmXr6Me5wYQg81yA+kcI+Ww5/56KnpwWn5bL5ftadjpNI3GU49raeXQCpOahifvU5IyyduPd9IM/RyKoINiYFqoPe0/axrmI1LxytoRAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O/WSyaxN; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b6d4e44c54aso1254650666b.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761749388; x=1762354188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1+/I2yfPoWDJTBN37DUOvTovSE+HP8yoku6LrNjmVH0=;
        b=O/WSyaxN1jPnwe9CaAkPCH1WWpqOse8xO9WAtBYvP80tlz5zRR7J5yKzTDCyjU6jko
         6BveBnqu327q+x9FO1ANtrB0RuFhenMYvTfShdZEc/Sb0Ug8HRdmtENVpWHMNd8EJJu5
         cDtQkSlYz3kbwXaeKmuMHGhqerTgVnvB9nyd7yP0aq1ExxnXOszYJmYTa45amAl6i4m4
         bdKSFBzN71LnZiHUf8SFHX/wLqYlVwt3VLVBOhmzl9ZPoQMKy7bfeQoG7a/+5mpZpvIY
         D9xmdoPqKJ/6+a+ivnXhQnem1bWiHdnq0YLm76KaDYxfvTslba5NXFvB6ejFkZiLtU1u
         b0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749388; x=1762354188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1+/I2yfPoWDJTBN37DUOvTovSE+HP8yoku6LrNjmVH0=;
        b=aVyXgf6IkD1D2Z4aBXCFXdqA1xSz9dwsX4f5Z2lanGO0Ty7BzTrD5lrPTxSt56HhL/
         Xjf1ekEeL1OPEbn0hEYOrvV+vz1BkxVdg1im9Sf5JWMcgWyR5ju1FwctuXAbN9IJ5pbu
         KzIZkapcCQjF57jPs07/uq6K34laIbDZsZKuj4wQERbnBeG6ZAAKYxNRxygcfRXNYe8k
         fD2Yr7SdWcTOpnu9GZjgSdiNANbotiy9dTzm/NASuBce+HRogM5E8fGkGcLlTJXafFuh
         dTazC+eiTf7SVga25DLyRfPxlajTgYRCYROwCU+5udANzI2aRF9wHlpljgQlNqjuMx8m
         Ewmw==
X-Forwarded-Encrypted: i=1; AJvYcCVg/vsZJT6uuIfJ/zuCEMZg5ux0lMQfZzNzoJIFKI9YrYimcljTdcWONv4juKsWnlbVPuGE37Ye/tIu@vger.kernel.org
X-Gm-Message-State: AOJu0YwDn8Wh8DgoXZwDOqdrKEM63HabhdSRwkI17K7aU0rWO0Rhu1I+
	t8SVE0OPqQm8n5okX4/HEaZXbIpCJWc87o4wslXLiQR2gIXamIaCHIR3
X-Gm-Gg: ASbGncs9za2P01ErYQNxg88xNkVXNLRKTwt55Uj3Fd3g9MKwP8IxUucbmt5P5dVy2M8
	krbmuP4jLn3BwnTtRes74KYsJAhfh2r49DBAPe8Hfy4XMvaWEaR5DP73IpBNiE9uZaN306upt8v
	Okgt9goAxy4Yk0n+8WqgyzUz7W98d06qo7YWuJr203YA6rfL5aCTva4u3OA7YtmV403EwrgbgMb
	jrK/8d870U5DmSM2iiMNAzThOMAS369qJFI6Tt4LxpO7po7VQhZdYXRFgHC/o5z8q7kLUBBMPBx
	Oxh9vmvj/jyoaMZIjDsgZ/8uQXU0xDGetDaSo62JwPWeJGMa3H4bQU9sT3WJCMaOQIGS+f0+l7E
	aoOTiYjLd3rDcPatQTsgZuWiKGnBtbzu7gRY0tuvSwnMFw9wkY1LFXzv06HEsL65ZgL+bf3VwRz
	jEVAe3zYOrXpNXyF5iukHu9JeHBKrbzkYU
X-Google-Smtp-Source: AGHT+IH7Dg5hdlveNGeW6IpzIDCcpEZ/tZk4UbIRTBBgmJ7JsmueX6/YbGVE72Hk++yrO2YhhzUdTg==
X-Received: by 2002:a17:907:7f0f:b0:b6d:95b3:7f11 with SMTP id a640c23a62f3a-b703d555a7amr325167466b.58.1761749387588;
        Wed, 29 Oct 2025 07:49:47 -0700 (PDT)
Received: from [10.25.210.164] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d854395absm1463176966b.62.2025.10.29.07.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 07:49:47 -0700 (PDT)
Message-ID: <b939e7f7-6be6-4f07-97f2-a3146682fbe7@gmail.com>
Date: Wed, 29 Oct 2025 07:49:44 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp: add aipstz-related definitions
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250821105634.1893-1-laurentiumihalcea111@gmail.com>
 <20250821105634.1893-4-laurentiumihalcea111@gmail.com>
 <cc465cae-a1b2-4116-82fa-ae42ad0706d3@kernel.org>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <cc465cae-a1b2-4116-82fa-ae42ad0706d3@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 8/24/2025 4:29 AM, Krzysztof Kozlowski wrote:
> On 21/08/2025 12:56, Laurentiu Mihalcea wrote:
>> +#endif /* __IMX8MP_AIPSTZ_H */
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>> index b62bb821cf61..afcd8c785cfd 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>> @@ -13,6 +13,7 @@
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/thermal/thermal.h>
>>  
>> +#include "imx8mp-aipstz.h"
> Completely unused define. Your patchset is not organized in logical chunks.


ACK, will squash this into patch 4.


>
>>  #include "imx8mp-pinfunc.h"
>>  
>>  / {
>
> Best regards,
> Krzysztof

