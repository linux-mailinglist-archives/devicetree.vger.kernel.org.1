Return-Path: <devicetree+bounces-45526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0048E862470
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 12:14:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70A8D1F22890
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 11:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157DE2511E;
	Sat, 24 Feb 2024 11:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="us9/Sf6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BCF22339
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 11:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708773247; cv=none; b=YTc+r70xnLZV5sRNFkwDwXbz8BaQt7k/MotvqMfwelYacfuZvqqT84IbVW6K03/pon3WrXbBmUHvKYxKhWaOlqHczfbFigC9WZEfM1dGk/n4oc9JdKSM2erb/j0UWT+L9v1LzI/MaCR1LPUDKt9ZLvlhUX8lKYi1Z0fcnieEKHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708773247; c=relaxed/simple;
	bh=16tNo1nwUaKP7RUdss7358PFuUriGN5dnFAL7/DCQPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OcJ0II/NRjR3CfMNUOJNxaX/tCsD37hl1M0yCIUpLmDb0K9GwhlMiENJRWyqs0D9+LKDNzF7an5Jl/0mwgPLlWoRWR0kh0ziE4ssCHYqPWHpcjCTfE5npmTPuo91zcCAg7RDU6p3lWiIjxCW7QQp2t/Uc+Z6odHLX4iSPyPBG2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=us9/Sf6s; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-512bce554a5so1781411e87.3
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 03:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708773243; x=1709378043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x60cKKba0FOBLBccNYhCrTkKANTv2lRFI0vfK5nUgCg=;
        b=us9/Sf6s36zbOL8sRPSUIh4rAqikxMshYBxJUkAY/7coU7Tt59NZpiQ3OtNsBLqYzE
         SzuHNAU7o18o6p0JqazeNhM4Rq7uWL/wGFaJDaT3BLiZrENPeFtm4c3jcRmMxVvHcCBB
         HxlJpfQbl8ADBoD3yjEtpUCG5iCnsxytng2nXjLfYCLqjasZviItEN4e8edEKqhltSLl
         JgnuQb8+9WLaOdb95D5nNAqEEzYLSEbt/XwZE+8yu3F3sMn1ZN+MAURYypKToewrb85u
         /AQieRDqN6YoNiEmy/eIyF/jFuwXG1lhcI0NoC+sxxExiNFATdXS3C63K2p23Y9lmv2Z
         omnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708773243; x=1709378043;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x60cKKba0FOBLBccNYhCrTkKANTv2lRFI0vfK5nUgCg=;
        b=VZit913GRRRMEoHNRZRe/o9KXsatrZvNgBhv78c0cy2n9j8pifeImhTRxn8hkrfEIJ
         yEsbV+8yT0ZEWZTaDze8/914UXoUpz0DrZo2Li6o+r7DM+wcBx1OIvijG76X4Ntppg+N
         k4MYynTjsBRNembeGy0e/SY1jufLapyGC7yHyfiPEZwNuv/j//3so1h0A6Bx28+DyY+T
         MG3Z43cJLRdKfJHILnDI2qZv/oHdxP8Nl2fmHUvESCSWkj1VWPynThYysN6rOc3jPlLu
         1oqLdVU+hnd/RuJ9jgPvIuEunP4b2ApyxwOSIq8zu52RKVrdReh5PNuLurjBguCT8fjT
         2AjA==
X-Forwarded-Encrypted: i=1; AJvYcCVLN9lo6yXIgLQPm/3xR1DnWLyW4Ox09BgL3cVEIRb1johs/s6EefCfzU0azMw5geuoQKQTqM+oJu/Ia2JtSADXvkKveAkX8xm9ZQ==
X-Gm-Message-State: AOJu0Yxn5pjD7oyupSplG/gfzJ5hXArQP7ZtT4KAEQT6woWWsC2j2GOq
	qYesxKt72qU7qzPGbP3WUZiwDHdd6AhRYqPPD/G15kL+QVXPcffJ0t5lrfUB2OE=
X-Google-Smtp-Source: AGHT+IE8Ss+mINiXBJZusuYnODyKVNvVcgEEP8KA3QHKfwidwzPrWFqZ8I5wfBWngArlK01Il0FMTQ==
X-Received: by 2002:a05:6512:2010:b0:512:cbae:4e05 with SMTP id a16-20020a056512201000b00512cbae4e05mr1202927lfb.60.1708773243206;
        Sat, 24 Feb 2024 03:14:03 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id f17-20020a05651201d100b00512ed75e780sm172945lfp.249.2024.02.24.03.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Feb 2024 03:14:02 -0800 (PST)
Message-ID: <d6aa0673-5dce-4a04-b9d9-f7ff204c06f9@linaro.org>
Date: Sat, 24 Feb 2024 12:14:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] regulator: dt-bindings: promote infineon buck
 converters to their own binding
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, linux@roeck-us.net
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Zev Weiss <zev@bewilderbeest.net>,
 Patrick Rudolph <patrick.rudolph@9elements.com>,
 Peter Yin <peteryin.openbmc@gmail.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240223-moonrise-feminist-de59b9e1b3ba@spud>
 <20240223-blabber-obnoxious-353e519541a6@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240223-blabber-obnoxious-353e519541a6@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/02/2024 17:21, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> These devices are regulators may need to make use of the common
> regulator properties, but these are not permitted while only documented
> in trivial-devices.yaml
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


