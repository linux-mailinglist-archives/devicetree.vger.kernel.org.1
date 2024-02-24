Return-Path: <devicetree+bounces-45480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9A2862120
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 01:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42D6C2862C3
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 00:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718641FB4;
	Sat, 24 Feb 2024 00:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="T3nJgwwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F8C1C0F
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 00:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708734068; cv=none; b=Gcfzk9FQArvZk6sj/Msj3L1AkB3cebIvNbhzx9OjNWLp3faRm6CPlp3zZQiTU0DY6A8Fo6teBaZvM+YejWnIkuFYlnOill4z5hHmN5I5X3FCBPf8PWwZxP2r8HT81w95F6KAQqUEi2iYhnKVaTa1RNXv0cnnCrainRK/Kbshxnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708734068; c=relaxed/simple;
	bh=1L3/kBnWbedasAfije4Fqx7n1ELmB4pYOi26Q3qbJ/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5z4kEzEC2OAmRbAgHkr5HwXW9/RpGQq/0ezc7EF7oWWAm1VEdBiD+TjLbfUFI5NqsXPjNORAr4AbYE5+Ebqq00hh2zEyFvKzAj8owFwCMnQxRYzV2G5la2DZG9ex0Ww8auVN+ouNRa+I07ljo0PdjARXtca9I+bAGKoU8PiIzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=T3nJgwwL; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6e2e44aad03so393359a34.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 16:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1708734065; x=1709338865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rDQLnws0v2S59G/sqDIOuFnQTbfpKB47FDyiyYI8hNc=;
        b=T3nJgwwLy+Yoq2f9TWNgPAViuvS60NtKnmhZpZuzznyHOlh5JyafMrqAuHelDLjltB
         9CyAqds2FprrtLrytC4KUKdXsmXfAPHnPgewSkRvcgRVOQc8FEJ4h8CKYnNXzhsFLTbI
         5u/jPLmuqsp7Iwhk0XeAqvfA4DHUCL1kG5PZ/iRBk1bWOjmKcA3Ejdb5HDxjbPOWQq2Z
         Gj7tuA4Hdd5sAukYp0rUJ97YkvOt0MB2RP4Rm1NDPdO++GqA4u+Vth6tBE+F5g5njfsA
         ItBmpvFpJ7MXiZhEsSGc+pGu4Za78BPLnXuIzkky2aSW8KJqqqrlTzBKHvDbuAOCBeha
         3Plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708734065; x=1709338865;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rDQLnws0v2S59G/sqDIOuFnQTbfpKB47FDyiyYI8hNc=;
        b=p9TDQvWOV5bZ/QEOLa7iwTEICSoJ7sFvQ9SbbCIebAMjYP4Vc30/rgdbc5mYu0IcUS
         YZ0l8NIxQKdbOTs+dX4Ga8r5JVl0zcBjWBHh5iYeVmo0iIFpSrckJru696zoLOUsrMQm
         rzU1/nXpHvFgLPhbqFcm8MLQeBLk4pWfyCO1a2cvXWr0dPCKrxi/WE6m1VB/YY7tQ6Un
         mOx3+MbaqPADumMh2X1/OU2+R8OH4GjZ4SQez62mtDeA/NXIAmWkh062rQDZQd5wdvI6
         KFhJfb91ebJmjDBdS6Uhxm30YzzBhwWBUbhgM7X5BZaVruFYZXzNgaaCK9IwCkHBNTpB
         Ywwg==
X-Forwarded-Encrypted: i=1; AJvYcCVybWFWJLAnj/9KFcm88PQxPoxWwxYTnYK06OQlM13E85D2RZ7c5BEnjABmzoECZkssL9+PvOH+c9g7I2xF7YFKG5Bt+766zaDs3Q==
X-Gm-Message-State: AOJu0YxVerrFsgUtUbR2g4zPOX598fNZVsoTwz3wYOeUqRevC5Qscx0/
	T+QaneiUsWjOE2aOnBaPQqlBE27R4yKlIjQp/Css7UqvK4UdKnoB0v0L2rYtido=
X-Google-Smtp-Source: AGHT+IHtYGNnLW4fMlBUFbgiQqoyqfMiTfYYs6wv2IUYocKyqZoKhNuExbj7FT3INM1TM9Pe4uPbhA==
X-Received: by 2002:a9d:7a43:0:b0:6e4:7762:bff with SMTP id z3-20020a9d7a43000000b006e477620bffmr1412297otm.34.1708734065521;
        Fri, 23 Feb 2024 16:21:05 -0800 (PST)
Received: from [192.168.20.11] ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id y5-20020a62b505000000b006e0447d48b0sm60806pfe.23.2024.02.23.16.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 16:21:05 -0800 (PST)
Message-ID: <8773c0ad-3762-4fe8-a7bf-66d3f1546bf6@tweaklogic.com>
Date: Sat, 24 Feb 2024 10:50:58 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] dt-bindings: iio: light: Avago APDS9306
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marek Vasut <marex@denx.de>, Anshul Dalal <anshulusr@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20240218054826.2881-1-subhajit.ghosh@tweaklogic.com>
 <20240218054826.2881-5-subhajit.ghosh@tweaklogic.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20240218054826.2881-5-subhajit.ghosh@tweaklogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/2/24 16:18, Subhajit Ghosh wrote:
> Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor.
> Extend avago,apds9300.yaml schema file to support apds9306 device.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> ---
> v6 -> v7:
>   - Removed wrong patch dependency statement
>   - Added tag
>     https://lore.kernel.org/all/5089c549-505f-4342-b3fe-bed8a29b6ce1@linaro.org/
>     https://lore.kernel.org/all/20240206-gambling-tricycle-510794e20ca8@spud/
> 
> v5 -> v6:
>   - Write proper commit messages
>   - Add vdd-supply in a separate commit
>   - Add Interrupt macro in a separate commit
>     Link: https://lore.kernel.org/all/1d0a80a6-dba5-4db8-a7a8-73d4ffe7a37e@linaro.org/
>     
> v2 -> v5:
>   - Removed 'required' for Interrupts and 'oneOf' for compatibility strings
>     as per below reviews:
>     Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/
>     Link: https://lore.kernel.org/lkml/22e9e5e9-d26a-46e9-8986-5062bbfd72ec@linaro.org/
> ---
>   Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> index e07a074f6acf..b750096530bc 100644
> --- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> @@ -12,11 +12,13 @@ maintainers:
>   description: |
>     Datasheet: https://www.avagotech.com/docs/AV02-1077EN
>     Datasheet: https://www.avagotech.com/docs/AV02-4191EN
> +  Datasheet: https://www.avagotech.com/docs/AV02-4755EN
>   
>   properties:
>     compatible:
>       enum:
>         - avago,apds9300
> +      - avago,apds9306
>         - avago,apds9960
>   
>     reg:
Hi,

This is actually [PATCH v7 4/5]. I made a copy pasting error in the subject line of this patch
while adding the recipients!
Very sorry about that.

Regards,
Subhajit Ghosh

