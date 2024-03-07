Return-Path: <devicetree+bounces-49031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECDF874B48
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 10:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4206C1C20E86
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E786984FCB;
	Thu,  7 Mar 2024 09:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FW9oejdN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B770584FAA
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 09:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709805077; cv=none; b=V5B3LWzH2DvTtuNYBiw3ywB+V2Vwg7sI6HkL5QBCLZ/G64HUEeiC9VqN0rd2D1MD5dYzmH31sWr0u6uSLLxbVF6LLtHkUwwSdnyZiMy4CBfWVkk+cHmkjI4+qFq1/XdA0E1mowRoDEjTQMzvlmzp9BwI23NWmk914/as4/HMT4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709805077; c=relaxed/simple;
	bh=6MGNA+aNGv2EFlpGWvJii5ukhWSrrxb47XaWbWrLnq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Auj9vUQx1ImRYpUEkZs/oKcm2BmIrfDINL7ljfbQbGtdTKviZvFAsUNq1G2nA4tlUyTBhh01snPDXXahuT4jwgLI4b1L05VjELeQ477n6tp7YD0/znIsSYe+KhEXQdC8w1F5zr3eoI8A5KOhwKiJ2dwaoAK3f+686SzxI/TYbRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FW9oejdN; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a293f2280c7so115065766b.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 01:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709805073; x=1710409873; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vPuG1GgZCZFh8L6eE5OaizmSSuRrqZZSqC4gJdbUVd4=;
        b=FW9oejdNUbXLSjW9fDu8aGAeF9BpUx2yzIGvcx4jvM/5jyWwNSgX2rOWVPWm0BUTut
         vJaQo2SNrNqz1kvnE42EslnxHl4wC+TqIJ5NFDG06rcpdkPbeY4Dt9FDJBZWV7MkRiEv
         GGiZOMGP4Z8Up5qg5iznhoRolT0DQ+OLQtsrWCnXZbj17CU7xeYu43eOzOT+VXUkYVVI
         LuiRLKuDGowK0vuPDywSZOXSOjplLR0EeAY/pVF4YVf2jHhHjpbh2ivt7DaRPTonTq8o
         +rLj+cPWUzrf62qQxX+oz8s7kDIZk9E6Xi/9D1zBcvpSkciNInlfcimKGW+XWAdYnOmN
         cKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709805073; x=1710409873;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vPuG1GgZCZFh8L6eE5OaizmSSuRrqZZSqC4gJdbUVd4=;
        b=VgdjP1/VKHrpVjHj3MyWyOx6pB80aZR5mrM/HUXCtu9hfkiF2VDsXWFrhZoDKV1pSX
         U/PC3ZcowkbLwSujW/n1SyGRwHdPCPZPTj/GSmNLRxoucIFW5FaMOTexkhWj0lwEbFJX
         6RNs6lZAcA3EOhiBvpBtGZ8U2IoPDx+bn7pTc6V+h7B4YLDg6C/2JEj6vSehQ3Z670US
         OtFcEcGPL/pRrc59XKFoPB2xb8nhCJRqQPBzpQMCpvxE7x0HBoRyT22DN6Oqwdod3YL1
         AdNpu3WzvlOjG7BWfKEkBe7tD49WQoM39oSsbKNu3rCZKt2sErIbsNDofdhyMDIBdIIv
         DetQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxNtSOWicYsOjbwKj9Sl8aR+7+b6RILJV9va8FLKmQNV0y3X/+bWEUMADeAW1U1XY8vYYnah3Ifur1Oet6Y/Eknbr0CHzc2xwTcg==
X-Gm-Message-State: AOJu0YzYgW7vsJFzVWyR4iVOMbgIUPIbAi+FJWaSCHwXBpf5efbCAsF9
	M6L3QwqB07WAaJI3r/IibkaWiI+UUVA3IAq8pwr4PvdREepiFRZGV9UKtOPYLuQ=
X-Google-Smtp-Source: AGHT+IFHoEIYEY6Ted4o99jFpLoI6E6AiXbzaCg7PxEgSzdZVkiHHcoYyQETNrILK0qH5rs2aftcIg==
X-Received: by 2002:a17:907:b9d8:b0:a45:c294:6e46 with SMTP id xa24-20020a170907b9d800b00a45c2946e46mr2688505ejc.64.1709805073038;
        Thu, 07 Mar 2024 01:51:13 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id f26-20020a17090624da00b00a45c2b4f228sm1189911ejb.43.2024.03.07.01.51.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 01:51:12 -0800 (PST)
Message-ID: <d20fca4d-486c-4139-a43f-3375e0ec5110@linaro.org>
Date: Thu, 7 Mar 2024 10:51:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: serial: renesas,scif: Move ref for
 serial.yaml at the end
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240306231007.13622-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240306231007.13622-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240306231007.13622-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/03/2024 00:10, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> In preparation for adding more validation checks move the ref for
> 'serial.yaml' to the end and also move reset check in 'allOf' block.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../bindings/serial/renesas,scif.yaml         | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/serial/renesas,scif.yaml b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> index 4610a5bd580c..af72c3420453 100644
> --- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> @@ -9,9 +9,6 @@ title: Renesas Serial Communication Interface with FIFO (SCIF)
>  maintainers:
>    - Geert Uytterhoeven <geert+renesas@glider.be>
>  
> -allOf:
> -  - $ref: serial.yaml#
> -
>  properties:
>    compatible:
>      oneOf:
> @@ -160,18 +157,21 @@ required:
>    - clock-names
>    - power-domains
>  
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        enum:
> -          - renesas,rcar-gen2-scif
> -          - renesas,rcar-gen3-scif
> -          - renesas,rcar-gen4-scif
> -          - renesas,scif-r9a07g044
> -then:
> -  required:
> -    - resets
> +allOf:
> +  - $ref: serial.yaml#
> +

Yeah, that's why usually we ask to put '$ref' and 'if' in allOf: block -
saves you one syntax reindent which will confuse git blame.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


