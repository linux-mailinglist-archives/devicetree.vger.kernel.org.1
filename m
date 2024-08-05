Return-Path: <devicetree+bounces-91034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 129589478F3
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 12:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34A9D1C20327
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B18B14D456;
	Mon,  5 Aug 2024 10:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GLANCelV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01BB768EC
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 10:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722852161; cv=none; b=i5bdYDk7pyxhYxkiMvy8hrF/X+qGhNtY5KMStDoLxZFAf/QdPa6V9mBcjOwqomHpO9FZmCrArTiYQmfXvnLmK0rPME9gRn4mid4gxBLUg9MXYPyv9WE3QMtEw15JeyO80i71VVRoFXq9D+9pdq+tkjcDTPDkl/LfEnmvap9lqJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722852161; c=relaxed/simple;
	bh=2l+wah5GBSKlwPnxiyWx1DLzVHRFO/SZopA2iDbRiP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IjpAh3+Bago5CtYnTm3EhFt+fU+3e/ZEMdTCYniPgzHuQBE3F/l2FKvI4RmCFCqk6T4XklJ8EJnCa7fy36BFpa9jVsJYAZXJtH2Sw2VOKCJDPuMpiqM3LygM3GJLmyFhJ4qfT+S8AlRZRrWLo6c6hhmSFp7bSzDvEpt3wy2ACRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GLANCelV; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-368380828d6so7076014f8f.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 03:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722852158; x=1723456958; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mjioQ4H+uyrR3to9I+NOwzfyZ+1chgZBnC/PTL+4EbQ=;
        b=GLANCelVKfZUum4u+brxDLreTXs75zghrJkm4Xmmyek8/KMf0vw/kOP5B1Bs22vKfQ
         Dp+SQL8Fu51ER5Y4+RLdzN1J/v1uOG6QYBwuedVWxRCBq9cEsSxITaUS4hzX//4tbu6i
         9ywWLt+wXAEKueM5dKizY5uCqgAPlLdV16eGrDoOL339gSpYnTn+bzcgIwqX4nLwa9AW
         CTy64PWrBguVLNWTlwYXPVVSHsMCY8C+Nc1GQEPUUXmqFBT0rDVXqyeazf2X57b2uGuP
         M1mjbNXmUAMmfV7W++oix9DBxpC2hJ6lHzWjhBDs5aB41N28ojpUw5WDmMk6aV7pHTs1
         /g0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722852158; x=1723456958;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjioQ4H+uyrR3to9I+NOwzfyZ+1chgZBnC/PTL+4EbQ=;
        b=PgAxKZMauT2rf+N1gE67Evlr7cyqz4bdiWXq/RQ+OOzWY4x+RTdDyNW8ZqPdYxLzTF
         rSaPUEOlYsFGlBu8rXzaneoBJ/yWuRCthy+S1+Pup68TiEFfo7D7VX4cSetmMK4EHJcd
         HMCqKOTPiGyGj0rdmK02R5WckIYnTqcyUHxnfMQJg6ZahhJnZZt2uN0gsSEoS3d2Yc2r
         jtNeuO8ASQKN3k+nJxZfkZZiQPfO1wH37EggihCHCVF5Z32RwIzzSlvJz+66kVs0euOo
         WaPoSarnj0qr7ZXPR3HgaOqA2i0p7D/U8dRsYCfs4w7/J2ytkEtdtG0gsfGijBOZrLnI
         dFDw==
X-Forwarded-Encrypted: i=1; AJvYcCWT5QcD2qVwSxKWnH0Ab1dc3ftV6axPQOYmqAIX2Xmc5QgbINvzfJBng6AqH4UCsqg0FblxKGKwozwlKH5BP7WdK11FydhHgpndTw==
X-Gm-Message-State: AOJu0YyVkSxHAuNBO+6Dlnt24cXIQKQIkPt2vvEwBNUhh4g+W+cNmv8J
	bPvsc74QHOnn4ONG7d/IVfcVpKY+SggOIg3XpZB1UwkGk9wEwrv6Lzqs23i2lxw=
X-Google-Smtp-Source: AGHT+IEJu0nVrnPJypFiu0KWzikIUtZjc23B8O4pBdgupqKLI1fmeVQihOAI5koeJsAh94yqHIGvYA==
X-Received: by 2002:a5d:6345:0:b0:367:96b9:760a with SMTP id ffacd0b85a97d-36bbc164214mr7487283f8f.41.1722852157945;
        Mon, 05 Aug 2024 03:02:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbd06d007sm9316865f8f.90.2024.08.05.03.02.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Aug 2024 03:02:37 -0700 (PDT)
Message-ID: <18a81793-9ed6-4b2f-b16a-b18738bb3526@linaro.org>
Date: Mon, 5 Aug 2024 12:02:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] pinctrl: pinctrl-zynqmp: Add Versal platform
 support
To: "Potthuri, Sai Krishna" <sai.krishna.potthuri@amd.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Simek, Michal" <michal.simek@amd.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "Buddhabhatti, Jay" <jay.buddhabhatti@amd.com>,
 "Kundanala, Praveen Teja" <praveen.teja.kundanala@amd.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "saikrishna12468@gmail.com" <saikrishna12468@gmail.com>,
 "git (AMD-Xilinx)" <git@amd.com>
References: <20240801120029.1807180-1-sai.krishna.potthuri@amd.com>
 <bf1faea5-bc1e-46df-bf68-c222570c09a2@linaro.org>
 <CH2PR12MB426446B0084EEE56C13DA6ECDBBE2@CH2PR12MB4264.namprd12.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CH2PR12MB426446B0084EEE56C13DA6ECDBBE2@CH2PR12MB4264.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/08/2024 10:58, Potthuri, Sai Krishna wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Sunday, August 4, 2024 8:20 PM
>> To: Potthuri, Sai Krishna <sai.krishna.potthuri@amd.com>; Linus Walleij
>> <linus.walleij@linaro.org>; Simek, Michal <michal.simek@amd.com>; Rob
>> Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
>> Buddhabhatti, Jay <jay.buddhabhatti@amd.com>; Kundanala, Praveen Teja
>> <praveen.teja.kundanala@amd.com>; Greg Kroah-Hartman
>> <gregkh@linuxfoundation.org>
>> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
>> linux-gpio@vger.kernel.org; devicetree@vger.kernel.org;
>> saikrishna12468@gmail.com; git (AMD-Xilinx) <git@amd.com>
>> Subject: Re: [PATCH v3 0/3] pinctrl: pinctrl-zynqmp: Add Versal platform
>> support
>>
>> On 01/08/2024 14:00, Sai Krishna Potthuri wrote:
>>> Update the binding and pinctrl-zynqmp driver to add Versal platform
>>> support.
>>> Add Get Attribute ID in the Xilinx firmware driver to get the pin
>>> information from Xilinx Platform Management Firmware.
>>
>> Any particular reason why you are developing patches on some quite old
>> kernel?
> I created this patch series on top of latest Pin control subsystem tree(Linus Walleij),
> 'for-next' branch.

I have doubts... otherwise get_maintainers.pl would point different
address. Assuming you indeed use for-next branch, then sending process
is wrong - you use some unusual commands instead of expected
get_maintainers.pl or b4.

Best regards,
Krzysztof


