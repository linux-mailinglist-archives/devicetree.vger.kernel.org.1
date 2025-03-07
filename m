Return-Path: <devicetree+bounces-155505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1FCA56EEF
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 18:22:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE6601894D4E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 17:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF5623F417;
	Fri,  7 Mar 2025 17:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="etX6k/nL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB10214293
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 17:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741368148; cv=none; b=cnIuvJKCRizp2tD6vz3kBhqds5jzWtSFJrldqS9kQoSNIrO1M5jwWhJdHc8EpO1bpV61geIc6ounhPGddtfFWZkAfhTV4MND61Fl6pcZv32nNubFtDvfE5ullaQctxkRDrRM8JI9n4Sw/xQ/KLQsQrHveNIhICyHV4DSqXHeizY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741368148; c=relaxed/simple;
	bh=ghV9ihfmg8YmSosaHyRmZbhBW4iEZyINguG2X264RDE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ld11w1g3LxPglXoOlSGM/Mquwmqzl0ZUmG4mmlwt8+jLcRQRMXxsHlXPvuaHdB0tDdNeAxeeAevi8ylZ2L4zvFRI5R7Y+UprIxfaKJRhqjCj3oB6gZ/j6HCrWhr22l+ixZVJF5lFMAeI3Olle6hgKqHK7AWOGlA0/bHKv2TS4tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=etX6k/nL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-abf5f4e82caso410787666b.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 09:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741368145; x=1741972945; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vse37ndJVrSuVrU7yJGVW1Lu8SXvK77ID0V4XIpDEEM=;
        b=etX6k/nL3xuOeiwQnkjus6WwhhYb/3nJL1rfG3pohQbeX3fnO1MtIKyBBYFDp2nAZW
         KdRAH7Sq+uuj5yRdtzshkvWCWVcRER3j619wBVZ4AUNME3t/2NG5Po4vOH6HF87wUpxK
         QYX3Pf6+Ooe+cvRnVNdGC1pUMVYs9jqLq9u/C+xPx6nAh6slXzlj7HD5uW97IE60Qq/H
         kfDGWyuNSrYxfdJo7uvs/4I5uh73PUx87FqaJJMJRaM60Jj1X6fQB6tGaSYKe60LvzEz
         ET0HU6ezZCcqXSMU9QfRDmzNkfPS/FkhUsskiyZdqwga6ZEyp1+2DShKT+rBDLM1xVTz
         ENsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741368145; x=1741972945;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vse37ndJVrSuVrU7yJGVW1Lu8SXvK77ID0V4XIpDEEM=;
        b=uHYTk1XgCJ8oKr1/jpsFL8abx4FqYJvQnVmYSm4g2txvOs9IWalrCZnKyxJsIwLDR+
         SpaBZoyCe5HuETxMK+tINI1j+TveYzqQuRYQ+tsZ5bY4prvgtZexbwqOtYG56cNMdA6F
         aeH2JZz+nOXPLMxRsddn9O+FG9Wvo7Zz+UdCuc5ofOZS5q+FA8iJBzaA5PrVINgptxUh
         xaanMsCm4K71NbVQUcyXLK6n1LvQ/9IZqAe8MbR/nK7p0VTVpKBNXbDfx5ZwSNlAgvcH
         cXlOCe0SQKvR9UesEubFFcTUjPekYVPjlCHMXbsBWg3PfViqEgMkq5h7EcMplGvRI6VU
         QrpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWngVdcjgXYAOLhcSrR58VWDfGlenJQPb45jkHggy0lTOQaEWZrUZLmUlZSXGS/lVPMGIFx/YW0kfkE@vger.kernel.org
X-Gm-Message-State: AOJu0YyJSSHbF3cuthYuzbtI2EFffd4z3DbWrizoS4xfzcshk/qeGqcf
	sCbUtLesemTaq8jX9LcWoBigHKSGxmuqgXYTj6iLOeZqDpzjGFMM5++naMQqYTM=
X-Gm-Gg: ASbGncvtjyrveWZJUTtvgIuM07c7j4e3lM/NAfIEMWmspKjTxP/Dv5U8y3nbthOdu+U
	0xj+eiEs9hy/agnLKWu62w9+StuQwa6IIMZC0nld0dcicdnzZy0NVIczgdQ6wgL9eDzLCqETSqo
	hhPtMwfq0PBsRo/tKX4AlZlVwci/aBH/lW2s51qsRNRQvJwgg3bkIDqiBVhG8pzOJqoO3kiRdlA
	4jUfsMu+SWFgLu/W5/BKG3RUvidGH2kXGmfQGRLQlZMZD/AZ5WOVtx5h7OriaS1RZg/ZrnXmGMv
	dz4xsCjc61EkYMThHNrz/YDXNrJ3e9BLy0zfVKD3VTXQFBY7+g45vcvGLdl+Cdw=
X-Google-Smtp-Source: AGHT+IGr645XsGNFfy2D7vw+gO6HKk73sp4lP/e3Bd4vMO2M4emrS5p1ZDikAS21V2w6uEA4dxu5ag==
X-Received: by 2002:a17:907:94ce:b0:ac1:e1e1:1f37 with SMTP id a640c23a62f3a-ac25273af3dmr535156566b.10.1741368145070;
        Fri, 07 Mar 2025 09:22:25 -0800 (PST)
Received: from [192.168.68.113] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-ac2395174c8sm300319266b.85.2025.03.07.09.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Mar 2025 09:22:24 -0800 (PST)
Message-ID: <f662da0e-431f-4e04-b8ee-e8b04a08337d@linaro.org>
Date: Fri, 7 Mar 2025 17:22:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: rockchip,otp: Add support for
 rk3562 and rk3568
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Kever,


On 27/02/2025 11:08, Kever Yang wrote:
> Add compatible entry for the otp controller in rk3562 and rk3568, add schema
> for different clock names for new entry.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Am unable to apply this patch, Could you rebase it on top of linux-next 
or 
https://web.git.kernel.org/pub/scm/linux/kernel/git/srini/nvmem.git/log/?h=for-next


--srini

> 
> Changes in v2:
> - Update the commit message and add maxItems in schema.
> 
>   .../bindings/nvmem/rockchip,otp.yaml          | 53 ++++++++++++++++---
>   1 file changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> index a44d44b32809..7572f4a1d73b 100644
> --- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
> @@ -14,6 +14,8 @@ properties:
>       enum:
>         - rockchip,px30-otp
>         - rockchip,rk3308-otp
> +      - rockchip,rk3562-otp
> +      - rockchip,rk3568-otp
>         - rockchip,rk3588-otp
>   
>     reg:
> @@ -25,19 +27,15 @@ properties:
>   
>     clock-names:
>       minItems: 3
> -    items:
> -      - const: otp
> -      - const: apb_pclk
> -      - const: phy
> -      - const: arb
> +    maxItems: 4
>   
>     resets:
>       minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>   
>     reset-names:
>       minItems: 1
> -    maxItems: 3
> +    maxItems: 4
>   
>   required:
>     - compatible
> @@ -62,12 +60,45 @@ allOf:
>         properties:
>           clocks:
>             maxItems: 3
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
>           resets:
>             maxItems: 1
>           reset-names:
>             items:
>               - const: phy
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3562-otp
> +              - rockchip,rk3568-otp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: usr
> +            - const: sbpi
> +            - const: apb_pclk
> +            - const: phy
> +        resets:
> +          minItems: 4
> +          maxItems: 4
> +        reset-names:
> +          items:
> +            - const: usr
> +            - const: sbpi
> +            - const: apb
> +            - const: phy
> +
>     - if:
>         properties:
>           compatible:
> @@ -78,8 +109,16 @@ allOf:
>         properties:
>           clocks:
>             minItems: 4
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: otp
> +            - const: apb_pclk
> +            - const: phy
> +            - const: arb
>           resets:
>             minItems: 3
> +          maxItems: 3
>           reset-names:
>             items:
>               - const: otp

