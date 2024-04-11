Return-Path: <devicetree+bounces-58178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3458A0A6C
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 09:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92949284031
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 07:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E0F13E408;
	Thu, 11 Apr 2024 07:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IEbRw7Ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F8513E3E5
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 07:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712821623; cv=none; b=LV205R5AcKvUtKocPqIf4CUUtDURGCbCzGCKWPZlzgS4sBtq+6DA/a5gUkZ7l+5zUj5YwR+tZEb+q3WySaFQLZlRqTUuQ7zmjLV1mEqBKH0JvKWoGKljxoTpCB+tznsdnrbaZkxO/kGqR5wbrbiuCX3+driA9EXHC/aGyr7i30M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712821623; c=relaxed/simple;
	bh=EZbpZVzDol2ochxhhoQafG44mGv61bdI5h13F/TClzU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MLg9CNRd8hkyZw9bKfN8wlaZAgc4341EgtRpqnrF9IT4vREZyp+v4HN5IxQUA0hCq0WTwupQvqQJffINM2tmdiwhibPrIQxMPrgEbM7EpWWR4FVS2L0gZE2mPm4JgJxE8w9aTCVN1wS4ge+rzaiNqTDGX6qy2Qxgvbp42w+GnB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IEbRw7Ps; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-343cfe8cae1so4712944f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 00:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712821620; x=1713426420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yzFgY9cLt511CDM/+jSri25GZnUmXDOO2qPwZ1Xf87s=;
        b=IEbRw7Ps3uKDPiJEnHl9ZNPezNl7DEKgj6CWzGqrMGZuo1PM9JEzQ2rEs1exInufyS
         jcah2PJdpxuXnWHOOi7NRaabI9c5RUV7eggvfhi8anvxf+0rypWRSln1/z6kRfYq3MQ+
         CKjjY0FjmGevZC8m/sAKZRO6J0zHQlGckeYLUwoJGqmR/tLZHROYx2yLVTxzGlEyQYfd
         Oygtw3cuP3/mtUnHJA6xMCDjCuY8Nqv2lPiFhnV4q6EJyxmV8kNKd7/tB9EoUvKiFtgW
         8iM4/X3r0/tM0lhWkeqDhkUWwwbPxi3DjI14ygoDN82ydo1jTsUHuziILCKqR7ksQq8z
         gOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712821620; x=1713426420;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yzFgY9cLt511CDM/+jSri25GZnUmXDOO2qPwZ1Xf87s=;
        b=jPylmImwlEbTTDQq+j20g0+IxPgiWTbHoShdXGsY+ST+lm6ZAULg4EyszG1f31b96P
         lEXeXf2q6Xm9ocTEHaYcS7E9WDLbPldvbAGk88UYF7nC6LZZbrOfOGHECgBIut48EcxI
         TXa7KTBd8yXdFqdSvnDphHyFckqVhGS4seNdRXh0Duubp6g3FipZhGGEVbMycZ/LW25t
         NDaemKjaRtFu7Nr8B6rvZS8KJr0jEySKN7Jtm68w+6f4QM/UixrhqFzylGwP3DErhaOZ
         i1pgK8GwCKBHxmxOYHFfd9gjhdlHOCJDMJgYir79D9CvEVTTHCjtv03LqD6c3rIES5DA
         QFew==
X-Forwarded-Encrypted: i=1; AJvYcCUTIMJPzEzcCLv8PrTs9T9nLe4ayZ+rldv/IfEXypBmx+wQjvqPjyTnoysNzg099pi4lrMwJLeZ3k0WFqhKhDKDLUJGiPla0tCs6w==
X-Gm-Message-State: AOJu0YwWLP/w/YxfKNK9MiqWl6gAApUY7vLX5s5o4x+j4xVGwoomnyNL
	SED2c5uZJKb9qSR5yc2S9Mqi8KT3u904cAf67AiUp0F/iW/8rGhf8RPPGTh6d8U=
X-Google-Smtp-Source: AGHT+IHN/1LW8cTEnJPn0noxnO3sVJdRgmSbkmIRqc9hO3tczHztPyZsmfT2drvV2a7Y8LezMCNm/Q==
X-Received: by 2002:adf:fece:0:b0:345:223:2dd8 with SMTP id q14-20020adffece000000b0034502232dd8mr2833997wrs.23.1712821619774;
        Thu, 11 Apr 2024 00:46:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id b13-20020a5d4d8d000000b003432d61d6b7sm1121448wru.51.2024.04.11.00.46.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 00:46:59 -0700 (PDT)
Message-ID: <3249d5dd-bbce-4dfb-b3b0-11f180602714@linaro.org>
Date: Thu, 11 Apr 2024 09:46:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/13] Remove the empty lines from sama5 and sama7 DT
 files
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240411073353.3831-1-mihai.sain@microchip.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240411073353.3831-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/04/2024 09:33, Mihai Sain wrote:
> This patch series removes the empty lines from sama5 and sama7 DT files.
> 
> Mihai Sain (13):
>   ARM: dts: microchip: sama7g5ek: Remove the empty line 50
>   ARM: dts: microchip: sama7g5: Remove the empty line 139
>   ARM: dts: microchip: sama5d2: Remove the empty lines 47 and 63
>   ARM: dts: microchip: sama5d27_som1_ek: Remove the empty lines
>   ARM: dts: microchip: sama5d27_wlsom1_ek: Remove the empty line 31
>   ARM: dts: microchip: sama5d29_curiosity: Remove the empty line 48
>   ARM: dts: microchip: sama5d2_icp: Remove the empty line 47
>   ARM: dts: microchip: sama5d2_ptc_ek: Remove the empty line 401
>   ARM: dts: microchip: sama5d2_xplained: Remove the empty line 710
>   ARM: dts: microchip: sama5d3_eds: Remove the empty line 24
>   ARM: dts: microchip: sama5d3_xplained: Remove the empty line 377
>   ARM: dts: microchip: sama5d4_xplained: Remove the empty line 247
>   ARM: dts: microchip: sama5d4ek: Remove the empty line 274

NAK for entire patchset.

Best regards,
Krzysztof


