Return-Path: <devicetree+bounces-192840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E40AF829A
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 23:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52550585AAC
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 21:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DBC2BD5A7;
	Thu,  3 Jul 2025 21:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y3WsPSGt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5229992A
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 21:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751578022; cv=none; b=jlFngJMEKLdRFo2A2pdxtijzcavMBwR1gQPALjJWfAc4FxqNj4IdMJDgpgsjMTsg0+eO8NOshVllFuzYxz9QI6n9jc6uk+eoAoYjDOJNRGdK3oAsgaNLhKC+b3/lyRxkSe+c/hwGcUr8zC4D5er9rALUj79bUh8+e+vMofenrRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751578022; c=relaxed/simple;
	bh=0eZUQlunxZ8ZDJSlGg5YWG682u4zGCezcHWcVBPA8Lc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GkPT+HovvhF55BPhS+Zon+3TMVkAyZKa7hIT1l9EOQUU2R+jc8cBfRVz3XnfVl+pb+uoi9XSpvbgKbmP012vBKxcRK+mTADjZ0xkGBzCmc0Yx0ZsyMumJWYNF6+uQ9Bz/tN6UbcYcPfqtUCI5FyPqgQWH5+6+wAGYpEI2cJlOug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y3WsPSGt; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72c27166ab3so289955a34.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 14:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751578019; x=1752182819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0oJ8ujZlzaPcZCmdOGOROSSXlk7hultXH6uDj8y1p0g=;
        b=y3WsPSGt6KofVFHQ15vJmM3j4/IE3YhCNFJXX/7eoDI9Idfalg08NbQzyTky8YYgb+
         DZboWJZJQCMIzuBFdJMKcmP+uxMC7RCD93/YJi6G74oA4ysjv4lHdwACyHP9Q4jpcf3c
         ktCAFiHdsD+hZHVuFa4V/Lob+dRRCL1BTkn0JeJfXn9IH107Ezg205pGN6P+qs87ei5O
         SWU26vw47OrdvnEtc2HTcLD3oSi1USljWqxIlhN2r6BM+4TUaFuv0EpmU789CH22bqFY
         Dro29edbfugyZgKnkG74Ve9tMdk/oIX7eVlxtYgJWlb1OvR2Bymo/MSCUHAWvRNya3oT
         WLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751578019; x=1752182819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0oJ8ujZlzaPcZCmdOGOROSSXlk7hultXH6uDj8y1p0g=;
        b=WX8YnEFFBFGANrfacYBd3eiAxUUFDxli6RHtsJ68cfGGq2+RI0EOzQu7xSOCXfiyit
         Icl7k1cXX85obCk7SvZpELfeHVGXIMs/biy2kTNtFJGUPJoa5zUXVl/yZqdrQr0eevO4
         DwSaPddUWQrjxWM11M34diF78VpBwsi8Tj4wGXyfJ9r3IQohQXUphtC56TAfAyFosSIW
         88HwhAruf/iNwUck0AO3PEwk+XwwvqrDCWOWjv0xPyRATBUt6U4pSVr3RbsBB8RhmbLS
         wHlQ7CkvYV9LQh8lNi9ReEceRRH+ZrlenleFekNG13fppd6JtlY9XPugGXNkRmmdmZIq
         PiOw==
X-Forwarded-Encrypted: i=1; AJvYcCX3tLaByeOlwkY9cnnQz2KfJmMRlIpDSG4MMa7EwcteUV1G47RaNGwaGsjd74fjHKxETNmSj1Vt0ATy@vger.kernel.org
X-Gm-Message-State: AOJu0YyJioChk2cq7jcUCj++btzdJjdCCjDTvwbQGNoM7Dco0XAbaPky
	MGDAiTaQv0ipVBfOMDjTaxXPUDTsutzqoii0mtVLSl0VxNXPtY+2yqEZbK33LAJhu7I=
X-Gm-Gg: ASbGnctfAMHgAtKuVzjQbr8Qx1bciO+sp8JcGzSGquQslBrutUisX6MJ6WITGDtLK4d
	sA3l8zbX5iYHZi496LaGLDpYkr2en28C2x+Kk1YIsxsMubM6/G/rUue3v3/CM3tTiDOS3X+FQFl
	ZcoA2onfVqpQJPffJ0Bf5YYUS6EU051hY59Ua896pf2t5pnst+7YD6OpsJreqIP/8neqaIY4B6c
	F4rekcWcD5ZeEl8WakOKAioWW0mfkGvO1PI6Ppdp/Y8x9Zx9agXeGaLKnyPzfEDWLhocaFQT5+t
	ZCnLfJXbAy+dgkdZ4I26XNHfkKCIydSHiyU+WzUMBDU8E9YyKEG+EiU6u8Fb0SfX8mv8y9rquf4
	o7BG3W10FT1SSC3t/tHq78AsjZ6CCeyO5CWSV7bY=
X-Google-Smtp-Source: AGHT+IHgAPBq1aur/7S/6mcI4NLp7GN7zcjgxxqJEIA8K08LOieFpkPn8SZoEH61J9kn9BXdbBYAmQ==
X-Received: by 2002:a05:6830:6b0c:b0:727:3439:5bdf with SMTP id 46e09a7af769-73ca12c508cmr453337a34.13.1751578019296;
        Thu, 03 Jul 2025 14:26:59 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4f2b:5167:10f4:c985? ([2600:8803:e7e4:1d00:4f2b:5167:10f4:c985])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73c9f938346sm126011a34.53.2025.07.03.14.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 14:26:58 -0700 (PDT)
Message-ID: <8f4b72bb-3c5f-4137-a4f9-5ce94631d3c1@baylibre.com>
Date: Thu, 3 Jul 2025 16:26:58 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: trivial-devices: Add Garmin lidar-lite-v3
To: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ~lkcamp/patches@lists.sr.ht, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701223341.36835-1-rodrigo.gobbi.7@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250701223341.36835-1-rodrigo.gobbi.7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/1/25 5:30 PM, Rodrigo Gobbi wrote:
> The compatible grmn,lidar-lite-v3 is managed by the same
> driver of pulsedlight,lidar-lite-v2, which is a trivial device.

As a general rule of thumb, using the driver as justification for
dt-bindings is never a good reason. The bindings describe the hardware,
not the driver.

Assuming I found the correct datasheet [1], I see a power enable pin
and a mode control pin, so I would say that this isn't a trivial device.
Therefore this will need it's own new file. We could at least add
power-gpios and power-supply properties. How to handle the mode pin
isn't so clear to me though, so might omit that for now.

[1]: https://static.garmin.com/pumac/LIDAR_Lite_v3_Operation_Manual_and_Technical_Specifications.pdf

> 
> Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
> Fixes: b257c1a45e99 ("iio: pulsedlight-lidar-lite-v2: add lidar-lite-v3 property")
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 8da408107e55..cd9d7d5eec51 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -107,6 +107,8 @@ properties:
>            - fsl,mpl3115
>              # MPR121: Proximity Capacitive Touch Sensor Controller
>            - fsl,mpr121
> +            # Optical Distance Measurement Sensor
> +          - grmn,lidar-lite-v3
>              # Honeywell Humidicon HIH-6130 humidity/temperature sensor
>            - honeywell,hi6130
>              # IBM Common Form Factor Power Supply Versions (all versions)


