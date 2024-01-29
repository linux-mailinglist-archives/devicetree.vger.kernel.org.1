Return-Path: <devicetree+bounces-36362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE9F840A82
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76F491F23FDF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F08155A23;
	Mon, 29 Jan 2024 15:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kiebt1bb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33917154C07
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706543383; cv=none; b=FhqiH/+MCphtAQeYCTewJAcBNXMJGyYLxu5yYLSELZnZp8IlSJTw9lIIKVo2vzhI5XNi+5JDr9LAC1iWhPW6ie/DwzUpfxZD/J9JZeULw+7AIslDURylg9jv5eSH6bZRSuDxrR+iDqqbJJV8h24nOUZ2wn2Y2oTeUOjZIpfYZe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706543383; c=relaxed/simple;
	bh=2CfCnJgG7bDdOffUGIKIBVC2yrEogTlLjEMAX0qDYR8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LjeJBYGkQno765rqTtskTlZzkzcfepi+H0U1sCljeDIwAaruxKlzlW6mTMp6IF0YTEGJylHMpEwuDuNzRxabW/oT6gSahK2z/UTjpiKstflVwAomQt1l09wZPXNPBlANtjz2iK4DyJn2BHxhHOBOjOt3Y2k09yzwrJ1lBmxUrjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kiebt1bb; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55ef4a66008so1499765a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706543379; x=1707148179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OpH5I/3DlgZTY2i+11DMbD/5wZ85SW37fuiNCEJ0wTk=;
        b=Kiebt1bbH5qA4N60849IRi095myQ3b0BiuzSseqJ4w8lf1+M1Jp2j3+A0bzulwQOBp
         g3Ni4g10czatx5QulDlIfCL8rJILXYgR8lqW41Z8UeaIqEVUqVB4IelRtx4274i4BQ/l
         g63trzFobUfDBqMVnWpLz9KuYiSPEiZXCdZjBJSkzH0JdSGwxBhp1u8JQrJefhaH0bJv
         dcjGHVEZG60NVcfQ+sQogb6aXz3pa0cjFPUQ5VOM0nezEwQD903uWITWufmriFJtB5Ke
         Cy7Rf6sNMZRLipMCxk6LrZdWDyYvjFf9AqfNFFb5DrLS85vj8JyWQgd+CeqM6Ogjk+cA
         knrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706543379; x=1707148179;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OpH5I/3DlgZTY2i+11DMbD/5wZ85SW37fuiNCEJ0wTk=;
        b=EEcm3aHKTiE7GSXdU57JWF92hF+Y6w0bPsL+wsoAZ2S+ZEgWs9H1o6iPWpTuVyuo95
         M1gyyjHsJ5r4W4xYRJ8SKgpFa/unuPspE4b+1Nz9Gai2ADWzaq36/x4blKtha8OHb+Ze
         gWzdPZw+Tt5DhgBtGnLF4ce8Gmqe1FSyUehAsyEWjGMgj6QiKWDb8hqk5V9abFcV7eN1
         sMeYNkUHPACLagWX+yLhcmo3PDFV/YkOOc3wbKo1/2jJlMMzcM6rYubveg74QdVYQyZG
         DUQ+d6YOt0oSUOhi97vbA21GNWpVjUQUwTjO4OHlb4RHrmztYFtO9UNDnh+2CsubsM/F
         jHDg==
X-Gm-Message-State: AOJu0YywDMu9iHavFOkVeaqMnqyPMMJkhRE3WM/doRWbS/UHS9Fi/zqb
	WSFcXChj01gVjGSXC5ngQc7l4VLwkLd3f4Fzl1bg9NQZUHnxTO4W0LNvsyIq65o=
X-Google-Smtp-Source: AGHT+IEU0tK3FQ1kpqnlD6N/Uudcdxa2ksoRDV+G2lJJ+keZohIbh/XuvhzxctgwtpyUcfy1LzrrBw==
X-Received: by 2002:a17:906:e098:b0:a2f:1817:2ef with SMTP id gh24-20020a170906e09800b00a2f181702efmr4691537ejb.70.1706543379340;
        Mon, 29 Jan 2024 07:49:39 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id c9-20020a17090603c900b00a2fc36776a7sm4128362eja.19.2024.01.29.07.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:49:38 -0800 (PST)
Message-ID: <0a3f5446-7179-4855-b627-72acedebd883@linaro.org>
Date: Mon, 29 Jan 2024 16:49:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dt-bindings: usb: ci-hdrc-usb2: add restrictions
 for reg, interrupts, clock and clock-names properties
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Cc: linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com,
 linux-usb@vger.kernel.org
References: <20240119071936.3481439-1-xu.yang_2@nxp.com>
 <20240119071936.3481439-4-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240119071936.3481439-4-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/01/2024 08:19, Xu Yang wrote:
> Change reg, interrupts, clock and clock-names as common properties and add
> restrictions on them for different compatibles.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v4:
>  - new patch since v3's discussion
>  - split the reg, interrupts, clock and clock-names properties into
>    common part and device-specific
> ---
>  .../devicetree/bindings/usb/ci-hdrc-usb2.yaml | 118 +++++++++++++++---
>  1 file changed, 102 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> index b7e664f7395b..78e30ca0a8ca 100644
> --- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> +++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> @@ -73,22 +73,10 @@ properties:
>                - nuvoton,npcm845-udc
>            - const: nuvoton,npcm750-udc
>  
> -  reg:
> -    minItems: 1
> -    maxItems: 2
> -
> -  interrupts:
> -    minItems: 1
> -    maxItems: 2
> -
> -  clocks:
> -    minItems: 1
> -    maxItems: 3
> -
> -  clock-names:
> -    minItems: 1
> -    maxItems: 3

Why all these are gone? They are supposed to be here. Your if:then: only
customizes them.

> -
> +  reg: true
> +  interrupts: true
> +  clocks: true
> +  clock-names: true

No. These are not booleans on other variants.

>    dr_mode: true
>  
>    power-domains:
> @@ -412,6 +400,104 @@ allOf:
>          samsung,picophy-pre-emp-curr-control: false
>          samsung,picophy-dc-vol-level-adjust: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          oneOf:
> +            - items:
> +                - const: fsl,imx27-usb

No, the syntax you need is contains:.

Look at existing code - there is no single binding with oneOf: in if: block.


Best regards,
Krzysztof


