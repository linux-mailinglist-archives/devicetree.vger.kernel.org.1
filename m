Return-Path: <devicetree+bounces-28620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52F81EEA6
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 12:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE8BF1C21848
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 11:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5541446B3;
	Wed, 27 Dec 2023 11:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p9kYZLhA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB66446AC
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 11:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40d560818b8so24612245e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 03:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703677754; x=1704282554; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FmSFx1jPF/M69cx9+ZIEdkBwjIN8sLfHrVm6k0sk1/E=;
        b=p9kYZLhA8ZfPel2OqUiOC6o6fVpMDglqfJiePeZ8jQWuC6flKHodBLi8Ob9Z61dYrZ
         Ua9LewRJfO7rEX8gu06kM0ygURjit8uPHRPaA4zgL3cVzVp9l8TiA4mpeG+OPFbkoNlP
         jpkrxruY6Pctc7bC3giAylqEsudpVMBY1V6KavK2DIXqqGKlMoNL6ntvZIFaRl9/S634
         HHaF3p2+XQyamQHIRL5fC6OzKkzIlXiiovZUlG1HAYvYZCgdX0Mcvwqn1DA3feiOo0Bs
         VLw+Uvkuj4EBYAOVsPpKKkbase4uTRZqPsgE82Bx/MRkTXTjJO/HRVyUiCcyrOwLfr8K
         jfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703677754; x=1704282554;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FmSFx1jPF/M69cx9+ZIEdkBwjIN8sLfHrVm6k0sk1/E=;
        b=cBeSDTBWkxLrSQKE7gLeOM1tHqBxIghE9DbZTHt818anxuBqd4ZiT/l6Mf2hgw1Wt7
         0zrZs6Sb1BOaiJtNmZBSMRce9YggRBmrywHGYjnUABHGnWKjvwVYt1KfklSDG5rBhbOz
         nwQP4L7aXTjd5fn2gLNmw23yqCdag0Ta1+q26XMcuMiWMmy+0PSr+ZcZjEU+ssst7J5C
         +533iQ5Byh0RFp+I8EFHz6HNSTRp0nW1zpbXyIPh5BHm+mVumlvisQrEHJso15dwQzj2
         UgU3HrVD4vQSI3stN8B5WJU5WDpxeVhPKZP9SqlsNfPBrUSbgJcoD6X0vpxVApPUuf9G
         litQ==
X-Gm-Message-State: AOJu0Yz4zfaXTPTdA/JdWqk76/OZR0k75YIGxJUh5LWvkEQeIaWEwrZI
	mV2f6ToCDFmNq/X6Y+l5KVAq5i+t8c6cug==
X-Google-Smtp-Source: AGHT+IFe7scURBjNI5KDgaNVVtiYr/fQ6lpz2sriXPm8g6V5DdrGkVsOghEAZ/VNdYyYHGUh8jqdvw==
X-Received: by 2002:a05:600c:1d20:b0:40d:5bbe:ff8c with SMTP id l32-20020a05600c1d2000b0040d5bbeff8cmr878906wms.160.1703677754406;
        Wed, 27 Dec 2023 03:49:14 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id p2-20020a05600c1d8200b0040596352951sm32460032wms.5.2023.12.27.03.49.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Dec 2023 03:49:14 -0800 (PST)
Message-ID: <d105c2c5-4d36-4489-b7ac-ae8da74fa9d3@linaro.org>
Date: Wed, 27 Dec 2023 12:49:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/8] dt-bindings: marvell: a38x: convert the soc
 compatibles description to yaml
Content-Language: en-US
To: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231226-support-clearfog-gtr-l8-sfp-v3-0-fd1ac2d6bf2e@solid-run.com>
 <20231226-support-clearfog-gtr-l8-sfp-v3-1-fd1ac2d6bf2e@solid-run.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231226-support-clearfog-gtr-l8-sfp-v3-1-fd1ac2d6bf2e@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/12/2023 19:11, Josua Mayer wrote:
> Convert the existing txt binding for armada-38x socs to DT schema
> format.

...

> +---
> +$id: http://devicetree.org/schemas/arm/marvell/armada-38x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Armada 38x Platforms
> +
> +maintainers:
> +  - Gregory CLEMENT <gregory.clement@bootlin.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +
> +      - description: Armada 380 SoC
> +        items:
> +          - const: marvell,armada380
> +

Thanks for the conversion. I think this is still not what we want. The
main problem is of course in the original binding, not your conversion.
Compatible armada380 above alone is not correct. This is SoC and SoC
compatible cannot be used alone, because it is not specific enough to
differentiate boards. Same applies for further lists, which I removed
from the quote, for the same reasons.

What we could do here is to fix this instead of pure conversion:
1. Add this binding file with new compatibles for existing boards and
drop the TXT file, with explanation that you actually document properly
all existing board compatibles.
2. Add compatibles to existing DTS.
3. Add your new board compatibles.

At least this is what I would do for typical cases, but as I said
before, Marvell here is in some surprising limbo state.
Best regards,
Krzysztof


