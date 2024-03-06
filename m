Return-Path: <devicetree+bounces-48640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B85872F52
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CFF0288015
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 07:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C397C5C5E8;
	Wed,  6 Mar 2024 07:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Urb0gCBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0DF5BAEA
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 07:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709709260; cv=none; b=lu4WcsrIgq9R8aQK91DDMGnkS46CZ3ikOT6jFAtkD6MV6PnJj6NOThNK3uiY4ViVW57i1wdZQsp0HtXiCF7xtN7A3SD7IqBe35VHo9ockaj5LC8Myke/BW1PXfCnThPu1ROXDzydw/fJ9UG2GP6eDG7HYkbb7Kvw9NpPuSKzBVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709709260; c=relaxed/simple;
	bh=PJz5VgJhJ3QniqYbnJEMV1SdYgsk90S2IsXlezyH2ZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iJguPNhLfY8TJMAoqLPDRtq9JmOP68cj5ID5Goby6WEx5Jgf3dvquXMVuLaQy+bYX1376biZ2jQPxTiwmObYdABAw3PeWWaZ1YDArr/djrNcJuCjMdvaOESZk3IVHJqbQ7+Ds1DyzbZt/kaxVsp4sFG0qnoitKp62M3FbN3svik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Urb0gCBJ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a452877ddcaso406225866b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 23:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709709257; x=1710314057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PJz5VgJhJ3QniqYbnJEMV1SdYgsk90S2IsXlezyH2ZY=;
        b=Urb0gCBJjlbNghmhGaGHNWCZuTXVnNk+66o2+75fSVDFWaGrQusssyFFYylDjdIJ2F
         tbnpcC270jlJxTQAtYn2V0wd26tU8bh/secKAFfcZqzuyHBNLej8TR9l0rlnpD9pqPGx
         sXXF1+p4WSrAQVACEKcHRTY2tr7pdcHMxhAdqgei4c7tR1CVUwMXP9wYugmMhQbVuYyc
         e9Bw+FGZvKzIqEyFxmoeowsv2eww4X5SpU+1A2XdDGiqchEPWM6YiHiYgLakYqIk/AUZ
         QRocBvUoocFEuQS07oDeo+NXzH+DbbywLYTWlXNGPp1LQg0uOZzJskZaJS8ORX0UqWNs
         YT3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709709257; x=1710314057;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PJz5VgJhJ3QniqYbnJEMV1SdYgsk90S2IsXlezyH2ZY=;
        b=l4vfkujFTm7/5Iy/nBl2L4vSszpS0iGY86/qX+/Sw5ZLY154JFm1J0F65dvKLRQ0gF
         2uYjNB5zNDHfmYL3HxEK+Z64L+EHbXVvGrxqPxBk2QeTVDJb9pW55r1KpP2fi7Ztl2v7
         puoTAMJqSygN7I0KXVG13g1/VCdvtEeOwL10rutU4BoqrWkYVOK8JV9bjiaNc7Y7RF9u
         5sXT+TCAckE48ioW77AViLmQooEYM0aobZPwk3QytiuKFA/pN3KiEpd+ouD3quG1nipi
         +n2XWMetg8fwq6aR44AkvIEn0NLdwIwVkOXwJ4mxv5mdO/KaJAKVUu+mNKc+FpiTIaMa
         vkiA==
X-Forwarded-Encrypted: i=1; AJvYcCW0qBReMiD1lIxLY52RSOQ0TKGzxEX2R3QjA8T6LsVQ8d25aef3QD/SwNdBL2uj/DvYOLbsNPidU8QuzU4bk6Z6bywjP1Kni1ED7g==
X-Gm-Message-State: AOJu0Yx2zJtzO+3tKXdjYwzzPM0aH0GuSyRWxSqHBuqSZv+TL/kWMNyg
	dSF9p7oOUkb4KsNL26uCNSWBk4f7XbPxSFh0m12DYhGAMqzpefBYInqubjCGouM=
X-Google-Smtp-Source: AGHT+IEecCk+TqZFdqb8f1EzPLA2CdGJLn2LnM5oErrBM2/NB5iMvFeVVka3XAupTqGzHL7ZOyo0jA==
X-Received: by 2002:a17:906:6805:b0:a45:b1e7:df8b with SMTP id k5-20020a170906680500b00a45b1e7df8bmr1561462ejr.64.1709709257349;
        Tue, 05 Mar 2024 23:14:17 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id y6-20020a056402358600b005645961ad39sm6535904edc.47.2024.03.05.23.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 23:14:16 -0800 (PST)
Message-ID: <a32a2655-7561-4339-8521-bc2558e0bdb1@linaro.org>
Date: Wed, 6 Mar 2024 08:14:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: hwmon: tda38640: Add interrupt &
 regulator properties
Content-Language: en-US
To: Naresh Solanki <naresh.solanki@9elements.com>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240305210747.1377506-1-naresh.solanki@9elements.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240305210747.1377506-1-naresh.solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/03/2024 22:07, Naresh Solanki wrote:
> Add properties for interrupt & regulator.
> Also update example.

Nothing improved.

Broken record. You got the same comment 3rd or 4th time!

NAK

Best regards,
Krzysztof


