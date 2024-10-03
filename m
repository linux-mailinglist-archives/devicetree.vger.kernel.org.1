Return-Path: <devicetree+bounces-107428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C48A98EABA
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:46:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 725591C216B4
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC71C85283;
	Thu,  3 Oct 2024 07:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mErQ1cbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898B93FB8B
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727941592; cv=none; b=h+oyGI46HbjdZ4FYZnP+Yrnys5411+hwL/KKBOsDnqjYCOYgNkheWmQ792g7KkwjkDNyCtUt6TiuDjtswk1TXWopMNlhZaRnG7wePHw4IVpP93J66jr2MQF3O+5NGf97AT6VGcfHLlprAhwFWeXSp5/6LtLv02eo1MqtaBWTKkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727941592; c=relaxed/simple;
	bh=apuvbVpWHb7MFHjQ0PxhcTZbkzJXN29DO+ntTYNJemI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jeXf48Ay0DzSd1z21XCUk/g+SOeQoOdAT+ppAjCzZBIVESCnb2iJ0aoxZWxB6zAgt9Xna6jjCvVjPHtutJE1jHaYRPD7dN0Z9GnxCEeB5ba1MbPP6ZN7gI89uysp+OssTdjLkpUrEZP8lZhlHyUTtmn/1Fh8Y6enaX0Dp9gLz54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mErQ1cbW; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37cd3419937so430861f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727941589; x=1728546389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H+01MGWoHABznmzKKhj+zA/q5OKddZoPDhpHMTncA3w=;
        b=mErQ1cbWn2T+XyGhq6vEsgNGVg4BfRI8VDAOVc0/sSa4pzYZi2BureZW4unqe3HaiN
         llGLx5iZJ8jxRq2C27YXSt5aBvk9HSIYAJ64z7uuEONy7lMUtecOpIH08D9oca82a6GV
         QH26rODtxfdFDS+8+6alF/S47RYmdNC9YfngiCo37LTsapoMLGa0Q+vVshXaDkGTl/Bi
         D8ToDCpn379DLuCBah8dyUj7sFHkgnZ8QyO7oX25twF5c5tb2bGn/3ZhSEDzHaL2dkt+
         2rGJbqoUtJD5LDZdHOKHrfk+vh9K69yEQEv6BjImc/fV/T12fHeslUxM+O8Gc1pLFLng
         OzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727941589; x=1728546389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H+01MGWoHABznmzKKhj+zA/q5OKddZoPDhpHMTncA3w=;
        b=KfzkU76K2UMR5cXGcHdo1MDdFu4PDFfbUWNlcZuKdaQbMrJ+oyQNNt8NuhlUUApTUB
         DusfyygYcnrToelmtHzkIUc9bXfyHHf7k0icgoJ0gKZm0d4ud1TJ8XVQqgcDj57/L974
         XIj/60WMlAd9PrRlq8YwTXwkQOsaBKpyf8oE2C1I9vGj3mBrJ90FwYmsHER4vxJJkYWP
         mWnWOTaqau505I2G68XvzKVd3YsANF90xTFMWyKhgrXcIIHCmxEyILBQ8rF+Wd8JbuHr
         ib0hTotfakXUUC3gPbCDPNkOoRaekAAyk14Pzta/aFc/1jtsLMysGOV/PC9LC+DMyK2Q
         /8BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYFTGfKbeSCR60B5j0WGsueqJDY+mJ6gYz9Mfm0XYXZ1K7Tr7TP12CMxiEFXUY/HPR0+aKDjbP3VQ3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5gQUe8NEqClPam+qduPFrYIO5eXe8X4B9d0A4ID3jTHMKGo8i
	1jRmCT8E80gFMc5nygF0N42k8nA+jiaYxkJ5VPH75nNtfPTIUuQLcOEcjKJD9aQ=
X-Google-Smtp-Source: AGHT+IFmSxB/Q7EYZFD10s5+kDNUAXKpfZGMfXmV7w3NC8ZyQpx6+9a9lJjBbEZrMdcUell4hVXdqQ==
X-Received: by 2002:adf:b609:0:b0:37c:d198:3167 with SMTP id ffacd0b85a97d-37cfba1849fmr4170560f8f.53.1727941588751;
        Thu, 03 Oct 2024 00:46:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082a6c2fsm657088f8f.72.2024.10.03.00.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 00:46:28 -0700 (PDT)
Message-ID: <ae3f50dc-8712-4ae1-b0c1-3f0b9058f77b@rivosinc.com>
Date: Thu, 3 Oct 2024 09:46:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v1 3/5] dt-bindings: riscv: d requires f
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241002-defeat-pavestone-73d712895f0b@spud>
 <20241002-deliverer-recite-2c5a05f50721@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20241002-deliverer-recite-2c5a05f50721@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 02/10/2024 18:10, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Per the specifications, the d extension for double-precision floating
> point operations depends on the f extension for single-precious floating
> point. Add that requirement to the bindings. This differs from the
> Linux implementation, where single-precious only is not supported.

Hey Conor,

While floating point is precious to have, I don't think single-precious
is the expected word here :).

> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index a06dbc6b49289..779f5cfab806e 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -564,6 +564,12 @@ properties:
>              https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
>  
>      allOf:
> +      - if:
> +          contains:
> +            const: d
> +        then:
> +          contains:
> +            const: f
>        # Zcb depends on Zca
>        - if:
>            contains:

Otherwise, looks good to me.

Reviewed-by: Clément Léger <cleger@rivosinc.com>

Clément

