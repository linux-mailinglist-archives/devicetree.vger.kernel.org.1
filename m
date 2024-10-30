Return-Path: <devicetree+bounces-117578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 111DF9B6F81
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 22:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 341761C227E7
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595FF218318;
	Wed, 30 Oct 2024 21:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="TxTjl6FG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57476217909
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 21:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324507; cv=none; b=uUx1vV0e7LKPxTURn5apSMoDM2HTGSi9kDSEdS4AHr/REzR3VTRffE9zwCxp/d8SMZTynlQAxZPxk5mgs1Z9Dm9ulLmTOob2DAMQ1bTiy4rAnOYlJl8ZWHC4Zp+EfMhBa/0l0Tsa7DPp23XsHNLRY5U0oBulJ4H/O8rroLpyqyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324507; c=relaxed/simple;
	bh=RvmR17dczNIeoFW11OEaNexBaQ6D/CYv7PqXzDryWXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rsBCwuMyLnYnSUjQTUtn1HSNp1zBcBiCmmYy0FXkhyAVWJSpPw92iM/RvVIe6so3o0EVudtbz0dTBiozJoay18ot2W6lWFA4YCGcrDMXtAZVVYud0PK8O5ZEWZrC3c9u6PdggKTGA2EFz95cfSGXsGKUa2t+f9IYvZsxUT0lLDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=TxTjl6FG; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6d18dff41cdso2044446d6.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1730324504; x=1730929304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bfzdBjgNBayDdNyFN0s82vygdMnTioCx1ueOKnyTHa8=;
        b=TxTjl6FG4YAFHPOizymZIOzxBw4byQ+bZz8gt1c52roJc/U+xGBa4d2lj+ZWOn9WT/
         giOM8e0jzerD00DCxeV7VFZbjBPQ1V4KWbbmR/MzGM5B7IXql38wtIHZwUi6UOVsW3AT
         hR45fGb4tMBslrXn/MHrS7XZpvnJnY7RG0/bk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730324504; x=1730929304;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfzdBjgNBayDdNyFN0s82vygdMnTioCx1ueOKnyTHa8=;
        b=ujYkLxWbHhodSrBuykFX3A5yLL1nAlohEy8SWXrNBy/am+++CAaWhbB458iE+gvxbF
         KvaIOiiZ3PpO+tCaYvTnM79eSt3N1LWp+S9J/FiVyAm+QpZ3sZl8i4wsSGwQADl0S7G2
         fDpMXiGeuvgDBlAxYuqwY/kki9jNUIrVgcfFHJP+Z+/tLUmJ6JeB1x5yYSyrwFZlItMs
         JWg/PuIMrtGl9bTZk0v7NZhGIExOz2U1CFWVeItjyk/Fbz8zi0/4KJfEFs8BC5CSsK5E
         xK88zQJ+6vS9lKrBEEsZtye6HwyDWHDcBWrGd8tE1MAUCPWkqPM2kGU0Jsgtn1GT8hlr
         Knfg==
X-Gm-Message-State: AOJu0YzqZ+ne67DIq+0JmpfOcEJOG77LZQJFUvxXJUnZf0Ds6ltwXs9u
	p9Hq0vJLWDogpRGLyQC1gF5tGAxalZEPapGwmpE6FKD5is0EIxwDgIseUtaPiw==
X-Google-Smtp-Source: AGHT+IFLfa1DPSp5HPKZWtt7TUZnjzOaRmXwS60hSjSPPEa5OJdyOUcDPqxoGWS8IaPVhryI4Qexwg==
X-Received: by 2002:a05:6214:1645:b0:6d3:456e:947 with SMTP id 6a1803df08f44-6d3456e0a89mr50320226d6.14.1730324504105;
        Wed, 30 Oct 2024 14:41:44 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d35415a62asm644386d6.80.2024.10.30.14.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 14:41:42 -0700 (PDT)
Message-ID: <c6b02317-e65f-444a-906d-e56f33dac9f4@broadcom.com>
Date: Wed, 30 Oct 2024 14:41:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] hwrng: bcm74110 - Add Broadcom BCM74110 RNG driver
To: Markus Mayer <mmayer@broadcom.com>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Aurelien Jarno <aurelien@aurel32.net>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Golle <daniel@makrotopia.org>,
 Francesco Dolcini <francesco.dolcini@toradex.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20241030213400.802264-1-mmayer@broadcom.com>
 <20241030213400.802264-3-mmayer@broadcom.com>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <20241030213400.802264-3-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/24 14:33, Markus Mayer wrote:
> Add a driver for the random number generator present on the Broadcom
> BCM74110 SoC.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---
>   drivers/char/hw_random/Kconfig        |  14 +++
>   drivers/char/hw_random/Makefile       |   1 +
>   drivers/char/hw_random/bcm74110-rng.c | 125 ++++++++++++++++++++++++++
>   3 files changed, 140 insertions(+)
>   create mode 100644 drivers/char/hw_random/bcm74110-rng.c
> 
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index b51d9e243f35..90ae35aeb23a 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -99,6 +99,20 @@ config HW_RANDOM_BCM2835
>   
>   	  If unsure, say Y.
>   
> +config HW_RANDOM_BCM74110
> +	tristate "Broadcom BCM74110 Random Number Generator support"
> +	depends on ARCH_BCM2835 || ARCH_BCM_NSP || ARCH_BCM_5301X || \
> +		   ARCH_BCMBCA || BCM63XX || ARCH_BRCMSTB || COMPILE_TEST

AFAICT this driver is only present on STB chips so limiting to 
ARCH_BRCMSTB || COMPILE_TEST should suffice for now.
-- 
Florian

